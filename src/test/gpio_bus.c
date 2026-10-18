// Diagnostic bus for make test. XMEM stays disabled throughout.
// PA0..7 = AD0..7; PC0..7 = A8..15; PG2 = ALE; PG1/0 = RD_L/WR_L.
#include "define.h"
#include "io_bus.h"
#include <avr/io.h>
#include <util/delay.h>
#include <util/atomic.h>
#define BUS_WR  (1 << PG0)
#define BUS_RD  (1 << PG1)
#define BUS_ALE (1 << PG2)
void io_bus_init(void) {
    MCUCR &= ~(1 << SRE);
    // Set inactive strobes before enabling their GPIO drivers.
    PORTG = (PORTG | BUS_WR | BUS_RD) & ~BUS_ALE;
    DDRG |= BUS_WR | BUS_RD | BUS_ALE;
    DDRA = 0;
    PORTA = 0;
    PORTC = 0;
    DDRC = 0xFF;
}
// Caller holds interrupts disabled across the complete transfer.
static void bus_address(uint16_t address) {
    PORTG = (PORTG | BUS_WR | BUS_RD) & ~BUS_ALE;
    PORTC = (uint8_t)(address >> 8);
    PORTA = (uint8_t)address;
    DDRA = 0xFF;
    _delay_us(2);
    PORTG |= BUS_ALE;
    _delay_us(2);
    PORTG &= ~BUS_ALE;
    _delay_us(2); // Hold address after LE falls.
}
void io_bus_write(uint16_t address, uint8_t data) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        bus_address(address);
        PORTA = data;
        _delay_us(2);
        PORTG &= ~BUS_WR;
        _delay_us(2);
        PORTG |= BUS_WR;
        _delay_us(2); // Data hold after the output latch closes.
        DDRA = 0;
        PORTA = 0;
    }
}
uint8_t io_bus_read(uint16_t address) {
    uint8_t data;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        bus_address(address);
        DDRA = 0; // Release AD bus BEFORE enabling U4 outputs.
        PORTA = 0; // Disable pull-ups.
        _delay_us(2);
        PORTG &= ~BUS_RD; // OE low and selected button LE high.
        _delay_us(2);
        data = PINA;
        PORTG |= BUS_RD;
        _delay_us(2);
    }
    return data;
}
