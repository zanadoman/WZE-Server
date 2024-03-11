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
        SDLNet_UDP_Close(this->Socket);
        SDLNet_Quit();
        SDL_Quit();
    }

    uint8 server::Send(packet* Packet)
    {
        UDPpacket raw;
        
        raw.address.host = Packet->Address.IPv4.Raw;
        raw.address.port = Packet->Address.Port;
        raw.data = Packet->Payload.Raw;
        raw.len = Packet->Size;

        if (SDLNet_UDP_Send(this->Socket, -1, &raw) != 1)
        {
            printf("wze::server.Send(): SDLNet_UDP_Send() failed\nParams: Packet: %p\n", Packet);
            exit(1);
        }

        return 0;
    }

    bool server::Receive(packet* Packet)
    {
        UDPpacket raw;

        raw.maxlen = PACKET_SIZE;
        raw.data = Packet->Payload.Raw;

        if (SDLNet_UDP_Recv(this->Socket, &raw) == 1)
        {
            Packet->Address.IPv4.Raw = raw.address.host;
            Packet->Address.Port = raw.address.port;
            Packet->Size = raw.len - (PACKET_SIZE - sizeof(Packet->Payload.Serialized.Data));

            return true;
        }

        Packet->Address.IPv4.Raw = 0;
        Packet->Address.Port = 0;
        Packet->Size = 0;
        
        return false;
    }
}