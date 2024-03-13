#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    bool server::packet::operator == (packet Packet)
    {
        if (this->Address.IPv4.Raw != Packet.Address.IPv4.Raw || this->Address.Port != Packet.Address.Port || this->Size != Packet.Size || this->Payload.Serialized.ID != Packet.Payload.Serialized.ID)
        {
            return false;
        }
        for (uint8 i = 0; i < this->Size; i++)
        {
            if (this->Payload.Serialized.Data[i] != Packet.Payload.Serialized.Data[i])
            {
                return false;
            }
        }

        return true;
    }

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