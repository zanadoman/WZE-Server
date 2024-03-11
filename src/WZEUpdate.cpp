#include "WZEServer.hpp"

using namespace neo;

struct ip
{
    uint8 a;
    uint8 b;
    uint8 c;
    uint8 d;
};

namespace wze
{
    uint8 server::Update()
    {
        while (SDLNet_UDP_Recv(this->Socket, this->Packet))
        {
            printf("FROM: %d.%d.%d.%d:%d GOT: ", ((ip*)&this->Packet->address.host)->a, ((ip*)&this->Packet->address.host)->b, ((ip*)&this->Packet->address.host)->c, ((ip*)&this->Packet->address.host)->d, this->Packet->address.port);
            for (uint8 i = 0; i < this->Packet->len; i++)
            {
                putchar(this->Packet->data[i]);
            }
            putchar('\n');
        }

        return 0;
    }
}