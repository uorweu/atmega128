#ifndef HOST_AVR_IO_H
#define HOST_AVR_IO_H
#ifdef __AVR__
#error Host test headers must not be used for AVR firmware
#endif
#include <stdint.h>
extern uint8_t ASSR, TCCR0, TCNT0, OCR0, TIFR, TIMSK;
enum { AS0 = 3, WGM01 = 3, CS02 = 2, CS01 = 1, OCF0 = 1, OCIE0 = 1 };
#endif
