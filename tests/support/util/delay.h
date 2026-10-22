#ifndef HOST_AVR_DELAY_H
#define HOST_AVR_DELAY_H
#ifdef __AVR__
#error Host test headers must not be used for AVR firmware
#endif
void test_delay_us(double us);
void test_delay_ms(double ms);
#define _delay_us(us) test_delay_us(us)
#define _delay_ms(ms) test_delay_ms(ms)
#endif
