#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    server::server(uint16 Port)
    {
        if (SDL_Init(SDL_INIT_EVERYTHING) != 0)
        {
            printf("wze::server.server(): SDL_Innit() failed\nParams: Port: %d\n", Port);
            exit(1);
        }
        if (SDLNet_Init() != 0)
        {
            printf("wze::server.server(): SDLNet_Init() failed\nParams: Port: %d\n", Port);
            exit(1);
        }

        if ((this->Socket = SDLNet_UDP_Open(Port)) == NULL)
        {
            printf("wze::server.server(): SDLNet_UDP_Open() failed\nParams: Port: %d\n", Port);
            exit(1);
        }
    }

    server::~server()
    {
        for (uint64 i = 0; i < this->IncomingPackets.Length(); i++)
        {
            delete this->IncomingPackets[i];
        }

        SDLNet_UDP_Close(this->Socket);
        SDLNet_Quit();
        SDL_Quit();
    }

    uint8 server::Send(address Address, uint64 ID, uint8 Size, const void* Data)
    {
        packet Packet;
        UDPpacket raw;

        if (sizeof(Packet.Payload.Serialized.Data) < Size)
        {
            printf("wze::server.Send(): Size must not be greater than%ld\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Size: %d, Data: %p\n", sizeof(Packet.Payload.Serialized.Data), Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.Port, ID, Size, Data); 
            exit(1);
        }

        Packet.Address = Address;
        Packet.Size = Size;
        Packet.Payload.Serialized.Tick = SDL_GetTicks64();
        Packet.Payload.Serialized.ID = ID;
        memory::CopyTo(Data, Packet.Payload.Serialized.Data, Size);
        
        raw.address.host = Packet.Address.IPv4.Raw;
        raw.address.port = Packet.Address.Port;
        raw.len = Packet.Size;
        raw.data = Packet.Payload.Raw;

        if (SDLNet_UDP_Send(this->Socket, -1, &raw) != 1)
        {
            printf("wze::server.Send(): SDLNet_UDP_Send() failed\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Size: %d, Data: %p\n", Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.IPv4.Serialized.A, Address.Port, ID, Size, Data); 
            exit(1);
        }

        return 0;
    }

    uint8 server::Receive()
    {
        UDPpacket raw;
        uint64 i;

        for (uint64 i = 0; i < this->IncomingPackets.Length(); i++)
        {
            delete this->IncomingPackets[i];
        }

        raw.maxlen = PACKET_SIZE;
        i = 0;

        while (true)
        {
            if (i == this->IncomingPackets.Length())
            {
                this->IncomingPackets.Insert(this->IncomingPackets.Length(), 10);
            }

            if ((this->IncomingPackets[i] = new packet) == NULL)
            {
                printf("wze::server.receive(): Memory allocation failed\n");
                exit(1);
            }

            raw.data = this->IncomingPackets[i]->Payload.Raw;
            if (SDLNet_UDP_Recv(this->Socket, &raw) != 1)
            {
                delete this->IncomingPackets[i];
                break;
            }

            this->IncomingPackets[i]->Address.IPv4.Raw = raw.address.host;
            this->IncomingPackets[i]->Address.Port = raw.address.port;
            this->IncomingPackets[i]->Size = raw.len - (PACKET_SIZE - sizeof(this->IncomingPackets[this->IncomingPackets.Length() - 1]->Payload.Serialized.Data));
        
            i++;
        }
        if (i < this->IncomingPackets.Length())
        {
            this->IncomingPackets.Remove(i, this->IncomingPackets.Length() - i);
        }
        
        return 0;
    }

    address server::ResolveHost(const char* Host, uint16 Port)
    {
        address result;

        IPaddress address;

        if (Host == NULL)
        {
            printf("wze::server::ResolveHost(): Host must not be NULL\nParams: Host: %p, Port: %d\n", Host, Port);
            exit(1);
        }

        address.host = 0;

        SDLNet_ResolveHost(&address, Host, 0);

        result.IPv4.Raw = address.host;
        result.Port = Port;

        return result;
    }
}