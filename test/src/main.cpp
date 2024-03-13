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
            printf("Server: ");
            for (uint8 j = 0; j < Server->IncomingPackets[i].GetSize(); j++)
            {
                putchar(((char*)Server->IncomingPackets[i].GetData())[j]);
            }
            putchar('\n');
        }

        SDL_Delay(3000);
    }

    delete Server;

    return 0;
}