#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

#define PORT 49152

sint32 main()
{
    server* Server;
    packet* Packet;

    Server = new server(PORT);
    Packet = new packet();

    while (true)
    {
        while (Server->Receive(Packet))
        {
            printf("%d\n", Packet->Size);
            for (uint8 i = 0; i < Packet->Size; i++)
            {
                putchar(((char*)Packet->Data)[i]);
            }
            putchar('\n');
        }
    }

    delete Packet;
    delete Server;

    return 0;
}