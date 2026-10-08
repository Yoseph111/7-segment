#line 1 "C:/Users/DELL/OneDrive/Documents/Embedded Assignment/7 Segment/SevenSegment.c"

unsigned char arraycc[] = {0xBF, 0x86, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

void main() {
 int i;

 TRISB = 0x00;
 PORTB = 0x00;

 while(1) {


 for(i = 0; i < 10; i++) {
 PORTB = arraycc[i];
 Delay_ms(1000);
 }


 for(i = 9; i >= 0; i--) {
 PORTB = arraycc[i];
 Delay_ms(1000);
 }

 }
}
