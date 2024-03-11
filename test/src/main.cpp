#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

#define PORT 49152

sint32 main()
{
    server* Server;
    packet Packet;

    Server = new server(PORT);

    while (true)
    {
        while (Server->Receive(&Packet))
        {
            if (Packet.Size == 4 && ((char*)Packet.Data)[0] == 's' && ((char*)Packet.Data)[1] == 't' && ((char*)Packet.Data)[2] == 'o' && ((char*)Packet.Data)[3] == 'p')
            {
                delete Server;
                return 0;
            }

            for (uint8 i = 0; i < Packet.Size; i++)
            {
                putchar(((char*)Packet.Data)[i]);
            }
            putchar('\n');
        }
    }

    delete Server;

    return 0;
}