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
            for (uint8 j = 0; j < Server->IncomingPackets[i]->GetSize(); j++)
            {
                putchar(((char*)Server->IncomingPackets[i]->GetData())[j]);
            }
            putchar('\n');

            if (Server->IncomingPackets[i]->GetSize() == 4 && ((char*)Server->IncomingPackets[i]->GetData())[0] == 's'
                                                           && ((char*)Server->IncomingPackets[i]->GetData())[1] == 't'
                                                           && ((char*)Server->IncomingPackets[i]->GetData())[2] == 'o'
                                                           && ((char*)Server->IncomingPackets[i]->GetData())[3] == 'p')
            {
                delete Server;

                return 0;
            }
        }

        SDL_Delay(3000);
    }

    delete Server;

    return 0;
}