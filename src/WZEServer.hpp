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
            server(neo::uint16 Port);
            ~server();

        private:
            UDPsocket Socket;
            UDPpacket* Packet;
    };
}