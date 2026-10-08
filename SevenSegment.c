      // Hex values for Common Cathode 7-segment (0-9)
unsigned char arraycc[] = {0xBF, 0x86, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

void main() {
    int i;

    TRISB = 0x00;    // Set Port B as output
    PORTB = 0x00;    // Initialize Port B to 0

    while(1) {       // Infinite loop to keep the counter running

        // Count Up: 0 to 9
        for(i = 0; i < 10; i++) {
            PORTB = arraycc[i];
            Delay_ms(1000);
        }

        // Count Down: 9 to 0
        for(i = 9; i >= 0; i--) {
            PORTB = arraycc[i];
            Delay_ms(1000);
        }

    }
}