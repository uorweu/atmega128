#ifndef IO_BUS_H
#define IO_BUS_H
#include <stdint.h>
#ifdef TEST_GPIO_BUS
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
}
static inline uint8_t io_bus_read(uint16_t address) {
    return *(volatile uint8_t *)(uintptr_t)address;
}
#endif
#endif
