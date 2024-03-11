#include "WZEServer.hpp"

using namespace neo;

namespace wze
{
    packet::packet()
    {
        this->Address.IPv4.Raw = 0;
        this->Address.Port = 0;
        this->Data = this->Payload.Serialized.Data;
        this->Size = 0;
    }

    packet::packet(address Address, uint64 ID, const void* Data, uint8 Size)
    {
        if (sizeof(this->Payload.Serialized.Data) < Size)
        {
            printf("wze::packet(): Size must not be greater than %ld\nParams: Address: %d.%d.%d.%d:%d, ID: %lld, Data: %p, Size: %d\n", sizeof(this->Payload.Serialized.Data), Address.IPv4.Serialized.A, Address.IPv4.Serialized.B, Address.IPv4.Serialized.C, Address.IPv4.Serialized.D, Address.Port, ID, Data, Size);
            exit(1);
        }

        this->Address = Address;
        this->Data = this->Payload.Serialized.Data;
        this->Size = Size;
        this->Payload.Serialized.Tick = SDL_GetTicks64();
        this->Payload.Serialized.ID = ID;
        memory::CopyTo(Data, this->Payload.Serialized.Data, Size);
    }
}