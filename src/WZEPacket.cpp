#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    address server::packet::GetAddress()
    {
        return this->Address;
    }

    neo::uint8 server::packet::GetSize()
    {
        return this->Size;
    }

    const void* server::packet::GetData()
    {
        return this->Payload.Serialized.Data;
    }
}