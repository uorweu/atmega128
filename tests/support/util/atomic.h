#ifndef HOST_UTIL_ATOMIC_H
#define HOST_UTIL_ATOMIC_H
#ifdef __AVR__
#error Host test headers must not be used for AVR firmware
#endif
// Host tests are single-threaded; AVR builds use avr-libc's real interrupt guard.
#define ATOMIC_RESTORESTATE 0
#define ATOMIC_BLOCK(mode) for (int atomic_once = 1; atomic_once; atomic_once = 0)
#endif
