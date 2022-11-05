/*
 */

#include <mcs51/8051.h>
#define LED P2

void delay(int);


void main(void)
{

    // Insert code
    unsigned int i;
    LED = 0xFE;
    while(1){
        for(i =  0; i < 7; i++){
            delay(100);
            LED = (LED << 1) | 0x01;

        }
        for(i = 0 ; i < 7 ; i ++){
            delay(100);
            LED = (LED >> 1) | 0x080;
        }
    }
}


void delay(int x){

    int i , j ;
    for (i = 0 ; i < x ; i++){
        for ( j = 0 ; j < 600 ; j++);
    }
}
