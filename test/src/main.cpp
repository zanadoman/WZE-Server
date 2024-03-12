#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

#define PORT 49152

sint32 main()
{
    server* Server;

    Server = new server(PORT);

    while (true)
    {
        Server->Receive();

        for (uint64 i = 0; i < Server->IncomingPackets.Length(); i++)
        {
            if (Server->IncomingPackets[i]->Size == 4 && ((char*)Server->IncomingPackets[i]->Data)[0] == 's' && ((char*)Server->IncomingPackets[i]->Data)[1] == 't' && ((char*)Server->IncomingPackets[i]->Data)[2] == 'o' && ((char*)Server->IncomingPackets[i]->Data)[3] == 'p')
            {
                delete Server;

                return 0;
            }

            for (uint8 j = 0; j < Server->IncomingPackets[i]->Size; j++)
            {
                putchar(((char*)Server->IncomingPackets[i]->Data)[j]);
            }
            putchar('\n');
        }
    }

    delete Server;

    return 0;
}