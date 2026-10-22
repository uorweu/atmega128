/* Test the actual driver with simulated GPIO, shared bus, and elapsed time. */
#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/interrupt.h>
static uint8_t SREG, PORTG, DDRG;
uint8_t ASSR;
#define PG3 3
#define PG4 4
#define cli() (SREG &= 0x7F)
#define TEST_GPIO_BUS
#include "../src/drivers/lcd.c"

static unsigned count, phase;
static uint8_t values[128], modes[128], saved_sreg;
static double elapsed;
void io_bus_write(uint16_t address, uint8_t data) {
    assert(!(SREG & 0x80));
    assert(!(PORTG & LCD_E_MASK));
    assert(count < 128 && phase == 0);
    assert(address == EXTERNAL_MEM + ((PORTG & LCD_RS_MASK) ? CSEL1 : CSEL2));
    modes[count] = !!(PORTG & LCD_RS_MASK);
    values[count++] = data;
    phase = 1;
}
void test_delay_us(double us) {
    if (phase == 1 || phase == 3) {
        assert(us == 1 && !(PORTG & LCD_E_MASK));
        assert(!(SREG & 0x80));
        phase = (phase == 1) ? 2 : 0;
    } else if (phase == 2) {
        assert(us == 2 && (PORTG & LCD_E_MASK));
        assert(!(SREG & 0x80));
        phase = 3;
    } else {
        assert(us == 60 && SREG == saved_sreg);
    }
    elapsed += us;
}
void test_delay_ms(double ms) {
    assert(phase == 0 && SREG == saved_sreg);
    elapsed += ms * 1000;
}
static void reset(uint8_t status) {
    count = phase = 0;
    elapsed = 0;
    SREG = saved_sreg = status;
    PORTG = 0x07; /* Preserve the shared XMEM pins. */
}
int main(void) {
    for (unsigned status = 0; status < 256; status++) {
        reset((uint8_t)status);
        lcd_send_cmd(0x0C);
        assert(elapsed == 64 && SREG == status && PORTG == 0x07);
        lcd_send_data('A');
        assert(elapsed == 128 && SREG == status && PORTG == 0x17);
        assert(count == 2 && modes[0] == 0 && modes[1] == 1);
    }
    for (unsigned cmd = 0; cmd < 256; cmd++) {
        reset(0x80);
        lcd_send_cmd((uint8_t)cmd);
        assert(elapsed == ((cmd >= 1 && cmd <= 3) ? 3004 : 64));
        assert(values[0] == cmd && !modes[0]);
    }
    reset(0x80);
    lcd_clear();
    assert(elapsed == 3004 && count == 1 && values[0] == 1);
    const uint8_t bases[] = {0x00, 0x40, 0x14, 0x54};
    for (unsigned row = 0; row < 256; row++) {
        for (unsigned col = 0; col < 20; col++) {
            reset(0x80);
            lcd_set_cursor(row, col);
            assert(values[0] == (0x80 | (bases[row > 3 ? 3 : row] + col)));
        }
    }
    reset(0x80);
    lcd_send_string("");
    assert(count == 0 && elapsed == 0);
    lcd_send_string("AB");
    assert(count == 2 && values[0] == 'A' && values[1] == 'B' && elapsed == 128);
    reset(0x80);
    lcd_send_string_animated("AB", 2);
    assert(count == 2 && elapsed == 4128);
    reset(0x80);
    lcd_send_string_animated("A", 0);
    assert(count == 1 && elapsed == 64);
    reset(0x80);
    ASSR = 0xFF;
    DDRG = 0x07;
    lcd_init();
    const uint8_t init[] = {0x38, 0x38, 0x38, 0x38, 0x0C, 0x01, 0x06};
    assert(count == sizeof init && elapsed == 148388);
    assert(DDRG == 0x1F && ASSR == (uint8_t)(0xFF & ~(1 << AS0)));
    for (unsigned i = 0; i < count; i++) assert(!modes[i] && values[i] == init[i]);
    puts("LCD driver tests passed");
}
