#ifndef HOST_AVR_IO_H
#define HOST_AVR_IO_H
#ifdef __AVR__
#error Host test headers must not be used for AVR firmware
#endif
#include <stdint.h>
extern uint8_t ASSR, TCCR0, TCNT0, OCR0, TIFR, TIMSK;
extern uint8_t TCCR2, TCNT2, OCR2;
extern uint8_t XMCRA, MCUCR, TCCR1A, TCCR1B;
extern uint16_t TCNT1, OCR1A;
enum { SRW11 = 1, SRE = 7, SRW10 = 6, OCF1A = 4, OCIE1A = 4, WGM12 = 3, CS11 = 1, CS10 = 0, AS0 = 3, WGM01 = 3, CS02 = 2, CS01 = 1, OCF0 = 1, OCIE0 = 1, WGM21 = 3, CS21 = 1, CS20 = 0, OCF2 = 7, OCIE2 = 7 };
#endif
