#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <net/if.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <sys/ioctl.h>

#include <linux/can.h>
#include <linux/can/raw.h>

#ifndef PF_CAN
#define PF_CAN 29
#endif

#ifndef AF_CAN
#define AF_CAN PF_CAN
#endif

using namespace std;

class SocketCAN
{
    private:
    int skt;
    struct ifreq ifr;
    struct sockaddr_can addr;
    struct can_frame frame;
    
    public:
    SocketCAN();
    void setupSocketCAN_interface(char*);
    void sendCANframe(char*, int);
    void receiveCANframe();
    void printreceiveCANframe();
};