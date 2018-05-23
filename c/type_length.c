#include "stdio.h"

int main()
{
    char uint8 = 0;
    signed char int8 = 0;
    unsigned short uint16 = 0;
    signed short int16 = 0;
    unsigned int uint32 = 0;
    signed int sint32 = 0;
    int int32 = 0;
    float fp32 = 0;
    double fp64 = 0;
    unsigned long ulong = 0;
    long xlong = 0;

    printf("unsigned char is %d bit\n\r", sizeof(uint8)*8);
    printf("signed char is %d bit\n\r", sizeof(int8)*8);
    printf("unsigned short is %d bit\n\r", sizeof(uint16)*8);
    printf("signed short is %d bit\n\r", sizeof(int16)*8);
    printf("unsigned int is %d bit\n\r", sizeof(uint32)*8);
    printf("signed int is %d bit\n\r", sizeof(sint32)*8);
    printf("int is %d bit\n\r", sizeof(int32)*8);
    printf("float fp32 is %d bit\n\r", sizeof(fp32)*8);
    printf("double fp64 is %d bit\n\r", sizeof(fp64)*8);
    printf("unsigned long is %d bit\n\r", sizeof(ulong)*8);
    printf("long is %d bit\n\r", sizeof(xlong)*8);
}
