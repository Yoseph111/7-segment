
_main:

;SevenSegment.c,4 :: 		void main() {
;SevenSegment.c,7 :: 		TRISB = 0x00;    // Set Port B as output
	CLRF       TRISB+0
;SevenSegment.c,8 :: 		PORTB = 0x00;    // Initialize Port B to 0
	CLRF       PORTB+0
;SevenSegment.c,10 :: 		while(1) {       // Infinite loop to keep the counter running
L_main0:
;SevenSegment.c,13 :: 		for(i = 0; i < 10; i++) {
	CLRF       R1+0
	CLRF       R1+1
L_main2:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      10
	SUBWF      R1+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;SevenSegment.c,14 :: 		PORTB = arraycc[i];
	MOVF       R1+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegment.c,15 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;SevenSegment.c,13 :: 		for(i = 0; i < 10; i++) {
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;SevenSegment.c,16 :: 		}
	GOTO       L_main2
L_main3:
;SevenSegment.c,19 :: 		for(i = 9; i >= 0; i--) {
	MOVLW      9
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main6:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      0
	SUBWF      R1+0, 0
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;SevenSegment.c,20 :: 		PORTB = arraycc[i];
	MOVF       R1+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegment.c,21 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;SevenSegment.c,19 :: 		for(i = 9; i >= 0; i--) {
	MOVLW      1
	SUBWF      R1+0, 1
	BTFSS      STATUS+0, 0
	DECF       R1+1, 1
;SevenSegment.c,22 :: 		}
	GOTO       L_main6
L_main7:
;SevenSegment.c,24 :: 		}
	GOTO       L_main0
;SevenSegment.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
