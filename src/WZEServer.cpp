#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    server::server(uint16 Port, uint8 PacketSize)
    {
        if (SDL_Init(SDL_INIT_EVERYTHING) != 0)
        {
            printf("wze::server.server(): SDL_Innit() failed\nParams: Port: %d, PacketSize: %d\n", Port, PacketSize);
            exit(1);
        }
        if (SDLNet_Init() != 0)
        {
            printf("wze::server.server(): SDLNet_Init() failed\nParams: Port: %d, PacketSize: %d\n", Port, PacketSize);
            exit(1);
        }

        this->Port = Port;
        this->PacketSize = PacketSize;
        if ((this->Socket = SDLNet_UDP_Open(Port)) == NULL)
        {
            printf("wze::server.server(): SDLNet_UDP_Open() failed\nParams: Port: %d, PacketSize: %d\n", Port, PacketSize);
            exit(1);
        }
        if ((this->Packet = SDLNet_AllocPacket(64)) == NULL)
        {
            printf("wze::server.server(): SDLNet_AllocPacket() failed\nParams: Port: %d, PacketSize: %d\n", Port, PacketSize);
            exit(1);
        }

    }

    server::~server()
    {
        SDLNet_FreePacket(this->Packet);
        SDLNet_UDP_Close(this->Socket);
        SDLNet_Quit();
        SDL_Quit();
    }

    uint8 server::Send(uint32 IP, uint16 Port, const uint8* Data, uint8 Size)
    {
        UDPpacket packet;

        packet.address.host = IP;
        packet.address.port = Port;
        packet.data = (uint8*)Data;
        packet.len = Size;

        SDLNet_UDP_Send(this->Socket, -1, &packet);

        return 0;
    }
}