#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    server::server()
    {
        puts("Server started.");
    }

    server::~server()
    {
        puts("Server stopped.");
    }
}