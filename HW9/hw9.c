#include<8051.h>
void delay(int t){
	int i;
	for(i=0;i<t;i++){}
}
void main(){
	int j = 0;	
	while(1){
		P2=0;
		delay(10000);
		P2=1;
		delay(10000);
	}

}

