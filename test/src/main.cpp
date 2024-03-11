#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

#define PORT 49152
#define PACKET_SIZE 64

sint32 main()
{
    server* Server;

    Server = new server(PORT, PACKET_SIZE);

    while (true)
    {
        Server->Update();
    }

    delete Server;

    return 0;
}