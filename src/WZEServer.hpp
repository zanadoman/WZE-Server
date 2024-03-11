#include "inc/NeoTypes++.hpp"

#ifdef __linux__
    #include <SDL2/SDL_net.h>
#endif

#ifdef _WIN64
    #include "inc/SDL_net.h"
    #undef main
#endif

namespace wze
{
    class server
    {
        public:
            server(neo::uint16 Port, neo::uint8 PacketSize);
            ~server();
            neo::uint8 Update();
            neo::uint8 Send(neo::uint32 IP, neo::uint16 Port, const neo::uint8* Data, neo::uint8 Size);

        private:
            neo::uint16 Port;
            neo::uint8 PacketSize;
            UDPsocket Socket;
            UDPpacket* Packet;
    };
}