#include "../../src/WZEServer.hpp"

using namespace neo;
using namespace wze;

sint32 main()
{
    server* Server;

    Server = new server(25565);

    delete Server;

    return 0;
}