#ifndef HOST_AVR_INTERRUPT_H
#define HOST_AVR_INTERRUPT_H
#ifdef __AVR__
#error Host test headers must not be used for AVR firmware
#endif
#define ISR(vector) void vector(void)
#define sei() ((void)0)
#endif
