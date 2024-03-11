#include "inc/NeoTypes++.hpp"

#ifdef __linux__
    #include <SDL2/SDL_net.h>
#endif

#ifdef _WIN64
    #include "inc/SDL_net.h"
    #undef main
#endif

#define PACKET_SIZE 256

namespace wze
{
    struct address
    {
        union
        {
            struct
            {
                neo::uint8 A;
                neo::uint8 B;
                neo::uint8 C;
                neo::uint8 D;
            } Serialized;
            neo::uint32 Raw;
        } IPv4;
        neo::uint32 Port;
    };

    class packet
    {
        friend class server;

        public:
            address Address;
            const void* Data;
            neo::uint8 Size;
            packet();
            packet(address Address, neo::uint64 ID, const void* Data, neo::uint8 Size);

        private:
            union
            {
                struct
                {
                    neo::uint64 Tick;
                    neo::uint64 ID;
                    neo::uint8 Data[PACKET_SIZE - (sizeof(Tick) + sizeof(ID))];
                } Serialized;
                neo::uint8 Raw[PACKET_SIZE];
            } Payload;
    };

    class server
    {
        public:
            server(neo::uint16 Port);
            ~server();
            neo::uint8 Send(packet* Packet);
            bool Receive(packet* Packet);

        private:
            UDPsocket Socket;
    };
}