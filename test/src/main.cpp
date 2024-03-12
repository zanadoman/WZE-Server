#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

#define PORT 49152

sint32 main()
{
    server* Server;
    address Address;
    uint64 i;

    Server = new server(PORT);
    i = 0;

    while (true)
    {
        printf("Loop: %lld.\n", i++);

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

            Address = Server->IncomingPackets[i]->GetAddress();
            packet Packet(Address, 0, "online", sizeof("online") - sizeof(char));
            Server->Send(&Packet);
        }

        printf("Done\n");

        SDL_Delay(3000);
    }

    delete Server;

    return 0;
}