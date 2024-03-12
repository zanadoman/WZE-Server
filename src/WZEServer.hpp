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
        neo::uint16 Port;
    };

    class server
    {
        class packet
        {
            friend class server;

            public:
                address GetAddress();
                neo::uint8 GetSize();
                const void* GetData();

            private:
                address Address;
                neo::uint8 Size;
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

        public:
            server(neo::uint16 Port);
            ~server();
            neo::uint8 Send(address Address, neo::uint64 ID, neo::uint8 Size, const void* Data);
            neo::uint8 Receive();
            static address ResolveHost(const char* Host, neo::uint16 Port);

            neo::array<packet*> IncomingPackets;
            neo::array<packet*> OutgoingPackets;

        private:
            UDPsocket Socket;
            neo::uint8 OrderIncomingPackages();
            neo::uint8 OrderIncomingPackagesMerge();
    };
}