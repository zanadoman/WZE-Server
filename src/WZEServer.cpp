#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    server::server(uint16 Port)
    {
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
    }
}