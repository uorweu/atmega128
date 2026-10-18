
build/test/test.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__ctors_end>
       4:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
       8:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
       c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      10:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      14:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      18:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      1c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      20:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      24:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      30:	0c 94 b1 00 	jmp	0x162	; 0x162 <__vector_12>
      34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      3c:	0c 94 5a 02 	jmp	0x4b4	; 0x4b4 <__vector_15>
      40:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      44:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      48:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      4c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      50:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      54:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      58:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      5c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      60:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      64:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      68:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      6c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      70:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      74:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      78:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      7c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      80:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      84:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      88:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>

0000008c <__ctors_end>:
      8c:	11 24       	eor	r1, r1
      8e:	1f be       	out	0x3f, r1	; 63
      90:	cf ef       	ldi	r28, 0xFF	; 255
      92:	d0 e1       	ldi	r29, 0x10	; 16
      94:	de bf       	out	0x3e, r29	; 62
      96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
      98:	15 e0       	ldi	r17, 0x05	; 5
      9a:	a0 e0       	ldi	r26, 0x00	; 0
      9c:	b1 e0       	ldi	r27, 0x01	; 1
      9e:	ec e2       	ldi	r30, 0x2C	; 44
      a0:	f3 e1       	ldi	r31, 0x13	; 19
      a2:	00 e0       	ldi	r16, 0x00	; 0
      a4:	0b bf       	out	0x3b, r16	; 59
      a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
      a8:	07 90       	elpm	r0, Z+
      aa:	0d 92       	st	X+, r0
      ac:	ae 3a       	cpi	r26, 0xAE	; 174
      ae:	b1 07       	cpc	r27, r17
      b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
      b2:	25 e0       	ldi	r18, 0x05	; 5
      b4:	ae ea       	ldi	r26, 0xAE	; 174
      b6:	b5 e0       	ldi	r27, 0x05	; 5
      b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
      ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
      bc:	a3 3d       	cpi	r26, 0xD3	; 211
      be:	b2 07       	cpc	r27, r18
      c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
      c2:	0e 94 11 09 	call	0x1222	; 0x1222 <main>
      c6:	0c 94 94 09 	jmp	0x1328	; 0x1328 <_exit>

000000ca <__bad_interrupt>:
      ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <relay_init>:
#include "relay.h"

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
      ce:	10 92 ae 05 	sts	0x05AE, r1	; 0x8005ae <__data_end>
      d2:	08 95       	ret

000000d4 <relay_set_raw>:
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
      d4:	8f 70       	andi	r24, 0x0F	; 15
      d6:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
      da:	08 95       	ret

000000dc <relay_get_state>:
uint8_t relay_get_state(void) { return relay_state; }
      dc:	80 91 ae 05 	lds	r24, 0x05AE	; 0x8005ae <__data_end>
      e0:	08 95       	ret

000000e2 <relay_on>:
void relay_on(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state | (1 << num));
      e2:	84 30       	cpi	r24, 0x04	; 4
      e4:	60 f4       	brcc	.+24     	; 0xfe <relay_on+0x1c>
      e6:	21 e0       	ldi	r18, 0x01	; 1
      e8:	30 e0       	ldi	r19, 0x00	; 0
      ea:	01 c0       	rjmp	.+2      	; 0xee <relay_on+0xc>
      ec:	22 0f       	add	r18, r18
      ee:	8a 95       	dec	r24
      f0:	ea f7       	brpl	.-6      	; 0xec <relay_on+0xa>
      f2:	80 91 ae 05 	lds	r24, 0x05AE	; 0x8005ae <__data_end>
      f6:	82 2b       	or	r24, r18

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
      f8:	8f 70       	andi	r24, 0x0F	; 15
      fa:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
uint8_t relay_get_state(void) { return relay_state; }
void relay_on(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state | (1 << num));
}
      fe:	08 95       	ret

00000100 <relay_off>:
void relay_off(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state & ~(1 << num));
     100:	84 30       	cpi	r24, 0x04	; 4
     102:	80 f4       	brcc	.+32     	; 0x124 <relay_off+0x24>
     104:	21 e0       	ldi	r18, 0x01	; 1
     106:	30 e0       	ldi	r19, 0x00	; 0
     108:	a9 01       	movw	r20, r18
     10a:	02 c0       	rjmp	.+4      	; 0x110 <relay_off+0x10>
     10c:	44 0f       	add	r20, r20
     10e:	55 1f       	adc	r21, r21
     110:	8a 95       	dec	r24
     112:	e2 f7       	brpl	.-8      	; 0x10c <relay_off+0xc>
     114:	ca 01       	movw	r24, r20
     116:	80 95       	com	r24
     118:	90 91 ae 05 	lds	r25, 0x05AE	; 0x8005ae <__data_end>
     11c:	89 23       	and	r24, r25

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     11e:	8f 70       	andi	r24, 0x0F	; 15
     120:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
void relay_on(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state | (1 << num));
}
void relay_off(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state & ~(1 << num));
}
     124:	08 95       	ret

00000126 <relay_toggle>:
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
     126:	84 30       	cpi	r24, 0x04	; 4
     128:	60 f4       	brcc	.+24     	; 0x142 <relay_toggle+0x1c>
     12a:	21 e0       	ldi	r18, 0x01	; 1
     12c:	30 e0       	ldi	r19, 0x00	; 0
     12e:	01 c0       	rjmp	.+2      	; 0x132 <relay_toggle+0xc>
     130:	22 0f       	add	r18, r18
     132:	8a 95       	dec	r24
     134:	ea f7       	brpl	.-6      	; 0x130 <relay_toggle+0xa>
     136:	80 91 ae 05 	lds	r24, 0x05AE	; 0x8005ae <__data_end>
     13a:	82 27       	eor	r24, r18

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     13c:	8f 70       	andi	r24, 0x0F	; 15
     13e:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
void relay_off(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state & ~(1 << num));
}
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
     142:	08 95       	ret

00000144 <relay_mode_0_2>:

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     144:	85 e0       	ldi	r24, 0x05	; 5
     146:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
    if (num < 4) relay_set_raw(relay_state & ~(1 << num));
}
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
     14a:	08 95       	ret

0000014c <relay_mode_1_3>:

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     14c:	8a e0       	ldi	r24, 0x0A	; 10
     14e:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
}
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
void relay_mode_1_3(void) { relay_set_raw(RELAY_1_BIT | RELAY_3_BIT); }
     152:	08 95       	ret

00000154 <relay_all_on>:

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     154:	8f e0       	ldi	r24, 0x0F	; 15
     156:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
void relay_toggle(uint8_t num) {
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
void relay_mode_1_3(void) { relay_set_raw(RELAY_1_BIT | RELAY_3_BIT); }
void relay_all_on(void) { relay_set_raw(0x0F); }
     15a:	08 95       	ret

0000015c <relay_all_off>:

static uint8_t relay_state;


void relay_init(void) { relay_state = 0; }
void relay_set_raw(uint8_t state) { relay_state = state & 0x0F; }
     15c:	10 92 ae 05 	sts	0x05AE, r1	; 0x8005ae <__data_end>
    if (num < 4) relay_set_raw(relay_state ^ (1 << num));
}
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
void relay_mode_1_3(void) { relay_set_raw(RELAY_1_BIT | RELAY_3_BIT); }
void relay_all_on(void) { relay_set_raw(0x0F); }
void relay_all_off(void) { relay_set_raw(0); }
     160:	08 95       	ret

00000162 <__vector_12>:
#include <util/atomic.h>

// Button latch OE must connect to PG1/RD_L, with its 10k pull-up retained.
// Real LCD/buttons/7-segment clock; relay outputs remain simulated.
static volatile uint16_t ticks;
ISR(TIMER1_COMPA_vect) {
     162:	1f 92       	push	r1
     164:	0f 92       	push	r0
     166:	0f b6       	in	r0, 0x3f	; 63
     168:	0f 92       	push	r0
     16a:	11 24       	eor	r1, r1
     16c:	8f 93       	push	r24
     16e:	9f 93       	push	r25
  ticks++;
     170:	80 91 af 05 	lds	r24, 0x05AF	; 0x8005af <ticks>
     174:	90 91 b0 05 	lds	r25, 0x05B0	; 0x8005b0 <ticks+0x1>
     178:	01 96       	adiw	r24, 0x01	; 1
     17a:	90 93 b0 05 	sts	0x05B0, r25	; 0x8005b0 <ticks+0x1>
     17e:	80 93 af 05 	sts	0x05AF, r24	; 0x8005af <ticks>
}
     182:	9f 91       	pop	r25
     184:	8f 91       	pop	r24
     186:	0f 90       	pop	r0
     188:	0f be       	out	0x3f, r0	; 63
     18a:	0f 90       	pop	r0
     18c:	1f 90       	pop	r1
     18e:	18 95       	reti

00000190 <lcd_send_cmd>:
#define PG4 4

#include <avr/interrupt.h>

void lcd_send_cmd(uint8_t cmd) {
  uint8_t sreg = SREG;
     190:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
     192:	f8 94       	cli
  PORTG_REG &= ~(1 << PG4);   // Dedicated LCD RS LOW: command
     194:	e5 e6       	ldi	r30, 0x65	; 101
     196:	f0 e0       	ldi	r31, 0x00	; 0
     198:	90 81       	ld	r25, Z
     19a:	9f 7e       	andi	r25, 0xEF	; 239
     19c:	90 83       	st	Z, r25
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
     19e:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xb2f>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
     1a2:	85 e0       	ldi	r24, 0x05	; 5
     1a4:	98 2f       	mov	r25, r24
     1a6:	9a 95       	dec	r25
     1a8:	f1 f7       	brne	.-4      	; 0x1a6 <lcd_send_cmd+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL2, cmd);          // CSEL2 loads the LCD data latch
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
     1aa:	90 81       	ld	r25, Z
     1ac:	98 60       	ori	r25, 0x08	; 8
     1ae:	90 83       	st	Z, r25
     1b0:	9a e0       	ldi	r25, 0x0A	; 10
     1b2:	9a 95       	dec	r25
     1b4:	f1 f7       	brne	.-4      	; 0x1b2 <lcd_send_cmd+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches command)
     1b6:	90 81       	ld	r25, Z
     1b8:	97 7f       	andi	r25, 0xF7	; 247
     1ba:	90 83       	st	Z, r25
     1bc:	8a 95       	dec	r24
     1be:	f1 f7       	brne	.-4      	; 0x1bc <lcd_send_cmd+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
     1c0:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
     1c2:	80 e9       	ldi	r24, 0x90	; 144
     1c4:	91 e0       	ldi	r25, 0x01	; 1
     1c6:	01 97       	sbiw	r24, 0x01	; 1
     1c8:	f1 f7       	brne	.-4      	; 0x1c6 <lcd_send_cmd+0x36>
  _delay_us(100);             // Standard command execution time (> 37 us)
}
     1ca:	08 95       	ret

000001cc <lcd_send_data>:


void lcd_send_data(uint8_t data) {
  uint8_t sreg = SREG;
     1cc:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
     1ce:	f8 94       	cli
  PORTG_REG |= (1 << PG4);    // Dedicated LCD RS HIGH: character data
     1d0:	e5 e6       	ldi	r30, 0x65	; 101
     1d2:	f0 e0       	ldi	r31, 0x00	; 0
     1d4:	90 81       	ld	r25, Z
     1d6:	90 61       	ori	r25, 0x10	; 16
     1d8:	90 83       	st	Z, r25
     1da:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xb2e>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
     1de:	85 e0       	ldi	r24, 0x05	; 5
     1e0:	98 2f       	mov	r25, r24
     1e2:	9a 95       	dec	r25
     1e4:	f1 f7       	brne	.-4      	; 0x1e2 <lcd_send_data+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL1, data);        // CSEL1 loads the LCD data latch

  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
     1e6:	90 81       	ld	r25, Z
     1e8:	98 60       	ori	r25, 0x08	; 8
     1ea:	90 83       	st	Z, r25
     1ec:	9a e0       	ldi	r25, 0x0A	; 10
     1ee:	9a 95       	dec	r25
     1f0:	f1 f7       	brne	.-4      	; 0x1ee <lcd_send_data+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
     1f2:	90 81       	ld	r25, Z
     1f4:	97 7f       	andi	r25, 0xF7	; 247
     1f6:	90 83       	st	Z, r25
     1f8:	8a 95       	dec	r24
     1fa:	f1 f7       	brne	.-4      	; 0x1f8 <lcd_send_data+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
     1fc:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
     1fe:	88 ec       	ldi	r24, 0xC8	; 200
     200:	90 e0       	ldi	r25, 0x00	; 0
     202:	01 97       	sbiw	r24, 0x01	; 1
     204:	f1 f7       	brne	.-4      	; 0x202 <lcd_send_data+0x36>

  _delay_us(50);              // Standard data execution time (> 43 us)
}
     206:	08 95       	ret

00000208 <lcd_clear>:
  lcd_send_cmd(0x06);
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
     208:	81 e0       	ldi	r24, 0x01	; 1
     20a:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     20e:	80 e4       	ldi	r24, 0x40	; 64
     210:	9c e9       	ldi	r25, 0x9C	; 156
     212:	01 97       	sbiw	r24, 0x01	; 1
     214:	f1 f7       	brne	.-4      	; 0x212 <lcd_clear+0xa>
  _delay_ms(10);
}
     216:	08 95       	ret

00000218 <lcd_init>:
  SREG = sreg;                // Restore interrupts

  _delay_us(50);              // Standard data execution time (> 43 us)
}

void lcd_init(void){
     218:	0f 93       	push	r16
     21a:	1f 93       	push	r17
     21c:	cf 93       	push	r28
     21e:	df 93       	push	r29
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
     220:	80 b7       	in	r24, 0x30	; 48
     222:	87 7f       	andi	r24, 0xF7	; 247
     224:	80 bf       	out	0x30, r24	; 48
  PORTG_REG &= ~((1 << PG3) | (1 << PG4));
     226:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     22a:	87 7e       	andi	r24, 0xE7	; 231
     22c:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  DDRG_REG |= (1 << PG3) | (1 << PG4);
     230:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     234:	88 61       	ori	r24, 0x18	; 24
     236:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     23a:	88 ee       	ldi	r24, 0xE8	; 232
     23c:	93 e0       	ldi	r25, 0x03	; 3
     23e:	20 e9       	ldi	r18, 0x90	; 144
     240:	31 e0       	ldi	r19, 0x01	; 1
     242:	f9 01       	movw	r30, r18
     244:	31 97       	sbiw	r30, 0x01	; 1
     246:	f1 f7       	brne	.-4      	; 0x244 <lcd_init+0x2c>
     248:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
     24a:	d9 f7       	brne	.-10     	; 0x242 <lcd_init+0x2a>

  // Power-on delay for HD44780
  _delay_ms(100);

  // Standard HD44780 8-bit initialization sequence
  lcd_send_cmd(0x38);
     24c:	88 e3       	ldi	r24, 0x38	; 56
     24e:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     252:	00 e4       	ldi	r16, 0x40	; 64
     254:	1c e9       	ldi	r17, 0x9C	; 156
     256:	c8 01       	movw	r24, r16
     258:	01 97       	sbiw	r24, 0x01	; 1
     25a:	f1 f7       	brne	.-4      	; 0x258 <lcd_init+0x40>
  _delay_ms(10);
  lcd_send_cmd(0x38);
     25c:	88 e3       	ldi	r24, 0x38	; 56
     25e:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     262:	c0 e2       	ldi	r28, 0x20	; 32
     264:	de e4       	ldi	r29, 0x4E	; 78
     266:	ce 01       	movw	r24, r28
     268:	01 97       	sbiw	r24, 0x01	; 1
     26a:	f1 f7       	brne	.-4      	; 0x268 <lcd_init+0x50>
  _delay_ms(5);
  lcd_send_cmd(0x38);
     26c:	88 e3       	ldi	r24, 0x38	; 56
     26e:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     272:	ce 01       	movw	r24, r28
     274:	01 97       	sbiw	r24, 0x01	; 1
     276:	f1 f7       	brne	.-4      	; 0x274 <lcd_init+0x5c>
  _delay_ms(5);

  // Function set: 8-bit, 2 lines, 5x8 font
  lcd_send_cmd(0x38);
     278:	88 e3       	ldi	r24, 0x38	; 56
     27a:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     27e:	ce 01       	movw	r24, r28
     280:	01 97       	sbiw	r24, 0x01	; 1
     282:	f1 f7       	brne	.-4      	; 0x280 <lcd_init+0x68>
  _delay_ms(5);

  // Display ON, Cursor OFF, Blink OFF (0x0C) for clean look
  lcd_send_cmd(0x0C);
     284:	8c e0       	ldi	r24, 0x0C	; 12
     286:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     28a:	ce 01       	movw	r24, r28
     28c:	01 97       	sbiw	r24, 0x01	; 1
     28e:	f1 f7       	brne	.-4      	; 0x28c <lcd_init+0x74>
  _delay_ms(5);

  // Clear display (clears the 2 solid black rows)
  lcd_clear();
     290:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
     294:	c8 01       	movw	r24, r16
     296:	01 97       	sbiw	r24, 0x01	; 1
     298:	f1 f7       	brne	.-4      	; 0x296 <lcd_init+0x7e>
  _delay_ms(10);

  // Entry mode set: increment cursor, no display shift
  lcd_send_cmd(0x06);
     29a:	86 e0       	ldi	r24, 0x06	; 6
     29c:	0e 94 c8 00 	call	0x190	; 0x190 <lcd_send_cmd>
     2a0:	21 97       	sbiw	r28, 0x01	; 1
     2a2:	f1 f7       	brne	.-4      	; 0x2a0 <lcd_init+0x88>
  _delay_ms(5);
}
     2a4:	df 91       	pop	r29
     2a6:	cf 91       	pop	r28
     2a8:	1f 91       	pop	r17
     2aa:	0f 91       	pop	r16
     2ac:	08 95       	ret

000002ae <lcd_set_cursor>:
void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(10);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
     2ae:	0f 93       	push	r16
     2b0:	1f 93       	push	r17
     2b2:	cf 93       	push	r28
     2b4:	df 93       	push	r29
     2b6:	00 d0       	rcall	.+0      	; 0x2b8 <lcd_set_cursor+0xa>
     2b8:	00 d0       	rcall	.+0      	; 0x2ba <lcd_set_cursor+0xc>
     2ba:	cd b7       	in	r28, 0x3d	; 61
     2bc:	de b7       	in	r29, 0x3e	; 62
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
     2be:	00 91 f0 02 	lds	r16, 0x02F0	; 0x8002f0 <MainMenu+0x19>
     2c2:	10 91 f1 02 	lds	r17, 0x02F1	; 0x8002f1 <MainMenu+0x1a>
     2c6:	20 91 f2 02 	lds	r18, 0x02F2	; 0x8002f2 <MainMenu+0x1b>
     2ca:	30 91 f3 02 	lds	r19, 0x02F3	; 0x8002f3 <MainMenu+0x1c>
     2ce:	09 83       	std	Y+1, r16	; 0x01
     2d0:	1a 83       	std	Y+2, r17	; 0x02
     2d2:	2b 83       	std	Y+3, r18	; 0x03
     2d4:	3c 83       	std	Y+4, r19	; 0x04
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
     2d6:	84 30       	cpi	r24, 0x04	; 4
     2d8:	08 f0       	brcs	.+2      	; 0x2dc <lcd_set_cursor+0x2e>
     2da:	83 e0       	ldi	r24, 0x03	; 3
     2dc:	fe 01       	movw	r30, r28
     2de:	e8 0f       	add	r30, r24
     2e0:	f1 1d       	adc	r31, r1
     2e2:	81 81       	ldd	r24, Z+1	; 0x01
     2e4:	86 0f       	add	r24, r22
     2e6:	80 68       	ori	r24, 0x80	; 128
}
     2e8:	0f 90       	pop	r0
     2ea:	0f 90       	pop	r0
     2ec:	0f 90       	pop	r0
     2ee:	0f 90       	pop	r0
     2f0:	df 91       	pop	r29
     2f2:	cf 91       	pop	r28
     2f4:	1f 91       	pop	r17
     2f6:	0f 91       	pop	r16
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
     2f8:	0c 94 c8 00 	jmp	0x190	; 0x190 <lcd_send_cmd>

000002fc <lcd_send_string>:
}

void lcd_send_string(const char* str){
     2fc:	cf 93       	push	r28
     2fe:	df 93       	push	r29
     300:	ec 01       	movw	r28, r24
  while(*str){
     302:	89 91       	ld	r24, Y+
     304:	81 11       	cpse	r24, r1
     306:	03 c0       	rjmp	.+6      	; 0x30e <lcd_send_string+0x12>
    lcd_send_data(*str++);
  }
}
     308:	df 91       	pop	r29
     30a:	cf 91       	pop	r28
     30c:	08 95       	ret
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
     30e:	0e 94 e6 00 	call	0x1cc	; 0x1cc <lcd_send_data>
     312:	f7 cf       	rjmp	.-18     	; 0x302 <lcd_send_string+0x6>

00000314 <lcd_send_string_animated>:
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
     314:	ef 92       	push	r14
     316:	ff 92       	push	r15
     318:	0f 93       	push	r16
     31a:	1f 93       	push	r17
     31c:	cf 93       	push	r28
     31e:	df 93       	push	r29
     320:	8b 01       	movw	r16, r22
     322:	ec 01       	movw	r28, r24
     324:	80 ea       	ldi	r24, 0xA0	; 160
     326:	e8 2e       	mov	r14, r24
     328:	8f e0       	ldi	r24, 0x0F	; 15
     32a:	f8 2e       	mov	r15, r24
  while (*str) {
     32c:	89 91       	ld	r24, Y+
     32e:	81 11       	cpse	r24, r1
     330:	07 c0       	rjmp	.+14     	; 0x340 <lcd_send_string_animated+0x2c>
    lcd_send_data(*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
      _delay_ms(1);
    }
  }
}
     332:	df 91       	pop	r29
     334:	cf 91       	pop	r28
     336:	1f 91       	pop	r17
     338:	0f 91       	pop	r16
     33a:	ff 90       	pop	r15
     33c:	ef 90       	pop	r14
     33e:	08 95       	ret
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data(*str++);
     340:	0e 94 e6 00 	call	0x1cc	; 0x1cc <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
     344:	90 e0       	ldi	r25, 0x00	; 0
     346:	80 e0       	ldi	r24, 0x00	; 0
     348:	80 17       	cp	r24, r16
     34a:	91 07       	cpc	r25, r17
     34c:	79 f3       	breq	.-34     	; 0x32c <lcd_send_string_animated+0x18>
     34e:	f7 01       	movw	r30, r14
     350:	31 97       	sbiw	r30, 0x01	; 1
     352:	f1 f7       	brne	.-4      	; 0x350 <lcd_send_string_animated+0x3c>
     354:	01 96       	adiw	r24, 0x01	; 1
     356:	f8 cf       	rjmp	.-16     	; 0x348 <lcd_send_string_animated+0x34>

00000358 <lcd_display>:
    }
  }
}

void lcd_display(void){
  lcd_send_cmd(0x0C);
     358:	8c e0       	ldi	r24, 0x0C	; 12
     35a:	0c 94 c8 00 	jmp	0x190	; 0x190 <lcd_send_cmd>

0000035e <seg7_init>:

static uint16_t timer0_tick_count = 0;

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
     35e:	80 b7       	in	r24, 0x30	; 48
     360:	87 7f       	andi	r24, 0xF7	; 247
     362:	80 bf       	out	0x30, r24	; 48
    current_digit = 0;
     364:	10 92 b4 05 	sts	0x05B4, r1	; 0x8005b4 <current_digit>
    timer0_tick_count = 0;
     368:	10 92 b2 05 	sts	0x05B2, r1	; 0x8005b2 <timer0_tick_count+0x1>
     36c:	10 92 b1 05 	sts	0x05B1, r1	; 0x8005b1 <timer0_tick_count>
    dp_mask = 0;
     370:	10 92 b3 05 	sts	0x05B3, r1	; 0x8005b3 <dp_mask>
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
     374:	e0 e0       	ldi	r30, 0x00	; 0
     376:	f1 e0       	ldi	r31, 0x01	; 1
     378:	8f ef       	ldi	r24, 0xFF	; 255
     37a:	80 83       	st	Z, r24
     37c:	81 83       	std	Z+1, r24	; 0x01
     37e:	82 83       	std	Z+2, r24	; 0x02
     380:	83 83       	std	Z+3, r24	; 0x03
     382:	84 83       	std	Z+4, r24	; 0x04
     384:	85 83       	std	Z+5, r24	; 0x05
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
     386:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xb31>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
     38a:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xb30>

    // Configure Timer0 for 2.0 ms CTC interrupt (500 Hz):
    // Prescaler 256 (16MHz / 256 = 62.5 kHz) -> 125 counts (OCR0 = 124) = 2.0 ms
    // Refresh rate for 6 digits = 500 Hz / 6 = 83.3 Hz (clean, zero flicker)
    TCCR0 = (1 << WGM01) | (1 << CS02) | (1 << CS01);
     38e:	8e e0       	ldi	r24, 0x0E	; 14
     390:	83 bf       	out	0x33, r24	; 51
    TCNT0 = 0;
     392:	12 be       	out	0x32, r1	; 50
    OCR0  = (F_CPU / 256UL / 500UL) - 1;
     394:	8c e7       	ldi	r24, 0x7C	; 124
     396:	81 bf       	out	0x31, r24	; 49
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
     398:	82 e0       	ldi	r24, 0x02	; 2
     39a:	86 bf       	out	0x36, r24	; 54
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
     39c:	87 b7       	in	r24, 0x37	; 55
     39e:	82 60       	ori	r24, 0x02	; 2
     3a0:	87 bf       	out	0x37, r24	; 55
    sei();                      // Enable global interrupts
     3a2:	78 94       	sei
}
     3a4:	08 95       	ret

000003a6 <seg7_set_digit>:
        clock_tick_1s();
    }
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
     3a6:	86 30       	cpi	r24, 0x06	; 6
     3a8:	28 f4       	brcc	.+10     	; 0x3b4 <seg7_set_digit+0xe>
        display_buffer[pos] = value;
     3aa:	e8 2f       	mov	r30, r24
     3ac:	f0 e0       	ldi	r31, 0x00	; 0
     3ae:	e0 50       	subi	r30, 0x00	; 0
     3b0:	ff 4f       	sbci	r31, 0xFF	; 255
     3b2:	60 83       	st	Z, r22
    }
}
     3b4:	08 95       	ret

000003b6 <seg7_set_array>:

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     3b6:	2f b7       	in	r18, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     3b8:	f8 94       	cli
     3ba:	fc 01       	movw	r30, r24
     3bc:	90 e0       	ldi	r25, 0x00	; 0
     3be:	80 e0       	ldi	r24, 0x00	; 0
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
            display_buffer[i] = digits[i];
     3c0:	31 91       	ld	r19, Z+
     3c2:	dc 01       	movw	r26, r24
     3c4:	a0 50       	subi	r26, 0x00	; 0
     3c6:	bf 4f       	sbci	r27, 0xFF	; 255
     3c8:	3c 93       	st	X, r19
     3ca:	01 96       	adiw	r24, 0x01	; 1
    }
}

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
     3cc:	86 30       	cpi	r24, 0x06	; 6
     3ce:	91 05       	cpc	r25, r1
     3d0:	b9 f7       	brne	.-18     	; 0x3c0 <seg7_set_array+0xa>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     3d2:	2f bf       	out	0x3f, r18	; 63
            display_buffer[i] = digits[i];
        }
    }
}
     3d4:	08 95       	ret

000003d6 <seg7_set_number>:

void seg7_set_number(uint32_t num) {
     3d6:	8f 92       	push	r8
     3d8:	9f 92       	push	r9
     3da:	af 92       	push	r10
     3dc:	bf 92       	push	r11
     3de:	ef 92       	push	r14
     3e0:	ff 92       	push	r15
     3e2:	0f 93       	push	r16
     3e4:	1f 93       	push	r17
     3e6:	cf 93       	push	r28
     3e8:	df 93       	push	r29
     3ea:	00 d0       	rcall	.+0      	; 0x3ec <seg7_set_number+0x16>
     3ec:	00 d0       	rcall	.+0      	; 0x3ee <seg7_set_number+0x18>
     3ee:	00 d0       	rcall	.+0      	; 0x3f0 <seg7_set_number+0x1a>
     3f0:	cd b7       	in	r28, 0x3d	; 61
     3f2:	de b7       	in	r29, 0x3e	; 62
     3f4:	8e 01       	movw	r16, r28
     3f6:	09 5f       	subi	r16, 0xF9	; 249
     3f8:	1f 4f       	sbci	r17, 0xFF	; 255
     3fa:	9e 01       	movw	r18, r28
     3fc:	2f 5f       	subi	r18, 0xFF	; 255
     3fe:	3f 4f       	sbci	r19, 0xFF	; 255
     400:	79 01       	movw	r14, r18
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        digits[i] = num % 10;
     402:	2a e0       	ldi	r18, 0x0A	; 10
     404:	82 2e       	mov	r8, r18
     406:	91 2c       	mov	r9, r1
     408:	a1 2c       	mov	r10, r1
     40a:	b1 2c       	mov	r11, r1
     40c:	a5 01       	movw	r20, r10
     40e:	94 01       	movw	r18, r8
     410:	0e 94 5e 09 	call	0x12bc	; 0x12bc <__udivmodsi4>
     414:	f8 01       	movw	r30, r16
     416:	62 93       	st	-Z, r22
     418:	8f 01       	movw	r16, r30
        num /= 10;
     41a:	b9 01       	movw	r22, r18
     41c:	ca 01       	movw	r24, r20
    }
}

void seg7_set_number(uint32_t num) {
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
     41e:	ee 15       	cp	r30, r14
     420:	ff 05       	cpc	r31, r15
     422:	a1 f7       	brne	.-24     	; 0x40c <__LOCK_REGION_LENGTH__+0xc>
        digits[i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
     424:	cf 01       	movw	r24, r30
     426:	0e 94 db 01 	call	0x3b6	; 0x3b6 <seg7_set_array>
}
     42a:	26 96       	adiw	r28, 0x06	; 6
     42c:	0f b6       	in	r0, 0x3f	; 63
     42e:	f8 94       	cli
     430:	de bf       	out	0x3e, r29	; 62
     432:	0f be       	out	0x3f, r0	; 63
     434:	cd bf       	out	0x3d, r28	; 61
     436:	df 91       	pop	r29
     438:	cf 91       	pop	r28
     43a:	1f 91       	pop	r17
     43c:	0f 91       	pop	r16
     43e:	ff 90       	pop	r15
     440:	ef 90       	pop	r14
     442:	bf 90       	pop	r11
     444:	af 90       	pop	r10
     446:	9f 90       	pop	r9
     448:	8f 90       	pop	r8
     44a:	08 95       	ret

0000044c <seg7_set_dp_mask>:

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
     44c:	80 93 b3 05 	sts	0x05B3, r24	; 0x8005b3 <dp_mask>
}
     450:	08 95       	ret

00000452 <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL4) to prevent ghosting
    LED_7CONTROL = 0x00;
     452:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xb31>

    // 2. Load the segment pattern for the active digit (via CSEL3)
    uint8_t val = display_buffer[current_digit];
     456:	30 91 b4 05 	lds	r19, 0x05B4	; 0x8005b4 <current_digit>
     45a:	e3 2f       	mov	r30, r19
     45c:	f0 e0       	ldi	r31, 0x00	; 0
     45e:	e0 50       	subi	r30, 0x00	; 0
     460:	ff 4f       	sbci	r31, 0xFF	; 255
     462:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEGMENT_MAP[val] : SEG_BLANK;
     464:	20 e0       	ldi	r18, 0x00	; 0
     466:	e0 31       	cpi	r30, 0x10	; 16
     468:	70 f4       	brcc	.+28     	; 0x486 <seg7_update+0x34>
     46a:	f0 e0       	ldi	r31, 0x00	; 0
     46c:	ec 50       	subi	r30, 0x0C	; 12
     46e:	fd 4f       	sbci	r31, 0xFD	; 253
     470:	20 81       	ld	r18, Z

    // 2b. Turn on Decimal Point if enabled for this digit
    if (val < 16 && (dp_mask & (1 << current_digit))) {
     472:	80 91 b3 05 	lds	r24, 0x05B3	; 0x8005b3 <dp_mask>
     476:	90 e0       	ldi	r25, 0x00	; 0
     478:	02 c0       	rjmp	.+4      	; 0x47e <seg7_update+0x2c>
     47a:	95 95       	asr	r25
     47c:	87 95       	ror	r24
     47e:	3a 95       	dec	r19
     480:	e2 f7       	brpl	.-8      	; 0x47a <seg7_update+0x28>
     482:	80 fd       	sbrc	r24, 0
        seg_pattern |= SEG7_DP_MASK; // Decimal point is segment-data bit 0.
     484:	21 60       	ori	r18, 0x01	; 1
    }

    LED_7DATA = seg_pattern;
     486:	20 93 03 11 	sts	0x1103, r18	; 0x801103 <__bss_end+0xb30>
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);
     48a:	20 91 b4 05 	lds	r18, 0x05B4	; 0x8005b4 <current_digit>
     48e:	81 e0       	ldi	r24, 0x01	; 1
     490:	90 e0       	ldi	r25, 0x00	; 0
     492:	01 c0       	rjmp	.+2      	; 0x496 <seg7_update+0x44>
     494:	88 0f       	add	r24, r24
     496:	2a 95       	dec	r18
     498:	ea f7       	brpl	.-6      	; 0x494 <seg7_update+0x42>
     49a:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xb31>

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
     49e:	80 91 b4 05 	lds	r24, 0x05B4	; 0x8005b4 <current_digit>
     4a2:	90 e0       	ldi	r25, 0x00	; 0
     4a4:	01 96       	adiw	r24, 0x01	; 1
     4a6:	66 e0       	ldi	r22, 0x06	; 6
     4a8:	70 e0       	ldi	r23, 0x00	; 0
     4aa:	0e 94 4a 09 	call	0x1294	; 0x1294 <__divmodhi4>
     4ae:	80 93 b4 05 	sts	0x05B4, r24	; 0x8005b4 <current_digit>
}
     4b2:	08 95       	ret

000004b4 <__vector_15>:
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
     4b4:	1f 92       	push	r1
     4b6:	0f 92       	push	r0
     4b8:	0f b6       	in	r0, 0x3f	; 63
     4ba:	0f 92       	push	r0
     4bc:	11 24       	eor	r1, r1
     4be:	0b b6       	in	r0, 0x3b	; 59
     4c0:	0f 92       	push	r0
     4c2:	2f 93       	push	r18
     4c4:	3f 93       	push	r19
     4c6:	4f 93       	push	r20
     4c8:	5f 93       	push	r21
     4ca:	6f 93       	push	r22
     4cc:	7f 93       	push	r23
     4ce:	8f 93       	push	r24
     4d0:	9f 93       	push	r25
     4d2:	af 93       	push	r26
     4d4:	bf 93       	push	r27
     4d6:	ef 93       	push	r30
     4d8:	ff 93       	push	r31
    seg7_update();
     4da:	0e 94 29 02 	call	0x452	; 0x452 <seg7_update>

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     4de:	80 91 b1 05 	lds	r24, 0x05B1	; 0x8005b1 <timer0_tick_count>
     4e2:	90 91 b2 05 	lds	r25, 0x05B2	; 0x8005b2 <timer0_tick_count+0x1>
     4e6:	01 96       	adiw	r24, 0x01	; 1
    if (timer0_tick_count >= 500) {
     4e8:	84 3f       	cpi	r24, 0xF4	; 244
     4ea:	21 e0       	ldi	r18, 0x01	; 1
     4ec:	92 07       	cpc	r25, r18
     4ee:	b8 f4       	brcc	.+46     	; 0x51e <__vector_15+0x6a>

ISR(TIMER0_COMP_vect) {
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     4f0:	90 93 b2 05 	sts	0x05B2, r25	; 0x8005b2 <timer0_tick_count+0x1>
     4f4:	80 93 b1 05 	sts	0x05B1, r24	; 0x8005b1 <timer0_tick_count>
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
}
     4f8:	ff 91       	pop	r31
     4fa:	ef 91       	pop	r30
     4fc:	bf 91       	pop	r27
     4fe:	af 91       	pop	r26
     500:	9f 91       	pop	r25
     502:	8f 91       	pop	r24
     504:	7f 91       	pop	r23
     506:	6f 91       	pop	r22
     508:	5f 91       	pop	r21
     50a:	4f 91       	pop	r20
     50c:	3f 91       	pop	r19
     50e:	2f 91       	pop	r18
     510:	0f 90       	pop	r0
     512:	0b be       	out	0x3b, r0	; 59
     514:	0f 90       	pop	r0
     516:	0f be       	out	0x3f, r0	; 63
     518:	0f 90       	pop	r0
     51a:	1f 90       	pop	r1
     51c:	18 95       	reti
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
     51e:	10 92 b2 05 	sts	0x05B2, r1	; 0x8005b2 <timer0_tick_count+0x1>
     522:	10 92 b1 05 	sts	0x05B1, r1	; 0x8005b1 <timer0_tick_count>
        clock_tick_1s();
     526:	0e 94 f6 02 	call	0x5ec	; 0x5ec <clock_tick_1s>
    }
}
     52a:	e6 cf       	rjmp	.-52     	; 0x4f8 <__vector_15+0x44>

0000052c <button_update>:
static uint8_t last_raw    = 0x00;
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
     52c:	cf 93       	push	r28
}
static inline uint8_t io_bus_read(uint16_t address) {
    return *(volatile uint8_t *)(uintptr_t)address;
     52e:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xb2d>
  READ_BUTTONS;
     532:	20 93 d2 05 	sts	0x05D2, r18	; 0x8005d2 <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
     536:	80 91 bf 05 	lds	r24, 0x05BF	; 0x8005bf <last_raw>
     53a:	80 95       	com	r24
     53c:	82 23       	and	r24, r18
     53e:	80 93 be 05 	sts	0x05BE, r24	; 0x8005be <press_event>
     542:	e5 eb       	ldi	r30, 0xB5	; 181
     544:	f5 e0       	ldi	r31, 0x05	; 5
  held_event  = 0x00;
     546:	50 e0       	ldi	r21, 0x00	; 0
     548:	40 e0       	ldi	r20, 0x00	; 0
     54a:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     54c:	a1 e0       	ldi	r26, 0x01	; 1
     54e:	b0 e0       	ldi	r27, 0x00	; 0
      hold_cnt[i]++;
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     550:	cb e1       	ldi	r28, 0x1B	; 27
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     552:	bd 01       	movw	r22, r26
     554:	04 2e       	mov	r0, r20
     556:	01 c0       	rjmp	.+2      	; 0x55a <button_update+0x2e>
     558:	66 0f       	add	r22, r22
     55a:	0a 94       	dec	r0
     55c:	ea f7       	brpl	.-6      	; 0x558 <button_update+0x2c>
    if (raw & bit) {
     55e:	82 2f       	mov	r24, r18
     560:	86 23       	and	r24, r22
     562:	c9 f0       	breq	.+50     	; 0x596 <button_update+0x6a>
      hold_cnt[i]++;
     564:	80 81       	ld	r24, Z
     566:	8f 5f       	subi	r24, 0xFF	; 255
     568:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
     56a:	83 32       	cpi	r24, 0x23	; 35
     56c:	40 f0       	brcs	.+16     	; 0x57e <button_update+0x52>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
     56e:	83 52       	subi	r24, 0x23	; 35
     570:	99 0b       	sbc	r25, r25
     572:	87 70       	andi	r24, 0x07	; 7
     574:	99 27       	eor	r25, r25
     576:	89 2b       	or	r24, r25
     578:	11 f4       	brne	.+4      	; 0x57e <button_update+0x52>
          held_event |= bit;
     57a:	36 2b       	or	r19, r22
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     57c:	c0 83       	st	Z, r28
     57e:	4f 5f       	subi	r20, 0xFF	; 255
     580:	5f 4f       	sbci	r21, 0xFF	; 255
     582:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
     584:	48 30       	cpi	r20, 0x08	; 8
     586:	51 05       	cpc	r21, r1
     588:	21 f7       	brne	.-56     	; 0x552 <button_update+0x26>
     58a:	30 93 bd 05 	sts	0x05BD, r19	; 0x8005bd <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
     58e:	20 93 bf 05 	sts	0x05BF, r18	; 0x8005bf <last_raw>
}
     592:	cf 91       	pop	r28
     594:	08 95       	ret
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
        }
      }
    } else {
      hold_cnt[i] = 0;
     596:	10 82       	st	Z, r1
     598:	f2 cf       	rjmp	.-28     	; 0x57e <button_update+0x52>

0000059a <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
     59a:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <press_event>
     59e:	08 95       	ret

000005a0 <button_held>:
uint8_t button_held(void)      { return held_event;  }
     5a0:	80 91 bd 05 	lds	r24, 0x05BD	; 0x8005bd <held_event>
     5a4:	08 95       	ret

000005a6 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
     5a6:	80 91 bf 05 	lds	r24, 0x05BF	; 0x8005bf <last_raw>
     5aa:	08 95       	ret

000005ac <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
     5ac:	90 91 be 05 	lds	r25, 0x05BE	; 0x8005be <press_event>
     5b0:	80 91 bd 05 	lds	r24, 0x05BD	; 0x8005bd <held_event>
     5b4:	89 2b       	or	r24, r25
     5b6:	08 95       	ret

000005b8 <clock_start>:
    clock_set_time(12, 0, 0);
    is_running = 1;
}

void clock_start(void) {
    is_running = 1;
     5b8:	81 e0       	ldi	r24, 0x01	; 1
     5ba:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
}
     5be:	08 95       	ret

000005c0 <clock_pause>:

void clock_pause(void) {
    is_running = 0;
     5c0:	10 92 06 01 	sts	0x0106, r1	; 0x800106 <is_running>
}
     5c4:	08 95       	ret

000005c6 <clock_is_running>:

uint8_t clock_is_running(void) {
    return is_running;
     5c6:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
}
     5ca:	08 95       	ret

000005cc <clock_get_time>:
        sys_time.seconds = (s < 60) ? s : 0;
    }
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
     5cc:	fc 01       	movw	r30, r24
    if (t) {
     5ce:	89 2b       	or	r24, r25
     5d0:	61 f0       	breq	.+24     	; 0x5ea <clock_get_time+0x1e>
        ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     5d2:	8f b7       	in	r24, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     5d4:	f8 94       	cli
            t->hours = sys_time.hours;
     5d6:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <sys_time>
     5da:	90 83       	st	Z, r25
            t->minutes = sys_time.minutes;
     5dc:	90 91 08 01 	lds	r25, 0x0108	; 0x800108 <sys_time+0x1>
     5e0:	91 83       	std	Z+1, r25	; 0x01
            t->seconds = sys_time.seconds;
     5e2:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <sys_time+0x2>
     5e6:	92 83       	std	Z+2, r25	; 0x02
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     5e8:	8f bf       	out	0x3f, r24	; 63
        }
    }
}
     5ea:	08 95       	ret

000005ec <clock_tick_1s>:

void clock_tick_1s(void) {
    if (!is_running) return;
     5ec:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
     5f0:	88 23       	and	r24, r24
     5f2:	09 f1       	breq	.+66     	; 0x636 <clock_tick_1s+0x4a>

    sys_time.seconds++;
     5f4:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time+0x2>
     5f8:	8f 5f       	subi	r24, 0xFF	; 255
     5fa:	80 93 09 01 	sts	0x0109, r24	; 0x800109 <sys_time+0x2>
    if (sys_time.seconds >= 60) {
     5fe:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time+0x2>
     602:	8c 33       	cpi	r24, 0x3C	; 60
     604:	c0 f0       	brcs	.+48     	; 0x636 <clock_tick_1s+0x4a>
        sys_time.seconds = 0;
     606:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <sys_time+0x2>
        sys_time.minutes++;
     60a:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sys_time+0x1>
     60e:	8f 5f       	subi	r24, 0xFF	; 255
     610:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <sys_time+0x1>
        if (sys_time.minutes >= 60) {
     614:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sys_time+0x1>
     618:	8c 33       	cpi	r24, 0x3C	; 60
     61a:	68 f0       	brcs	.+26     	; 0x636 <clock_tick_1s+0x4a>
            sys_time.minutes = 0;
     61c:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <sys_time+0x1>
            sys_time.hours++;
     620:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <sys_time>
     624:	8f 5f       	subi	r24, 0xFF	; 255
     626:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
            if (sys_time.hours >= 24) {
     62a:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <sys_time>
     62e:	88 31       	cpi	r24, 0x18	; 24
     630:	10 f0       	brcs	.+4      	; 0x636 <clock_tick_1s+0x4a>
                sys_time.hours = 0;
     632:	10 92 07 01 	sts	0x0107, r1	; 0x800107 <sys_time>
            }
        }
    }
}
     636:	08 95       	ret

00000638 <clock_update_display>:

void clock_update_display(void) {
     638:	cf 93       	push	r28
     63a:	df 93       	push	r29
     63c:	cd b7       	in	r28, 0x3d	; 61
     63e:	de b7       	in	r29, 0x3e	; 62
     640:	29 97       	sbiw	r28, 0x09	; 9
     642:	0f b6       	in	r0, 0x3f	; 63
     644:	f8 94       	cli
     646:	de bf       	out	0x3e, r29	; 62
     648:	0f be       	out	0x3f, r0	; 63
     64a:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t snapshot;
    clock_get_time(&snapshot);
     64c:	ce 01       	movw	r24, r28
     64e:	07 96       	adiw	r24, 0x07	; 7
     650:	0e 94 e6 02 	call	0x5cc	; 0x5cc <clock_get_time>
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     654:	8a e0       	ldi	r24, 0x0A	; 10
     656:	0e 94 26 02 	call	0x44c	; 0x44c <seg7_set_dp_mask>

    const uint8_t digits[SEG7_NUM_DIGITS] = {
        snapshot.hours / 10, snapshot.hours % 10,
     65a:	8f 81       	ldd	r24, Y+7	; 0x07
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     65c:	2a e0       	ldi	r18, 0x0A	; 10
     65e:	62 2f       	mov	r22, r18
     660:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     664:	89 83       	std	Y+1, r24	; 0x01
     666:	9a 83       	std	Y+2, r25	; 0x02
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
     668:	88 85       	ldd	r24, Y+8	; 0x08
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     66a:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     66e:	8b 83       	std	Y+3, r24	; 0x03
     670:	9c 83       	std	Y+4, r25	; 0x04
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
        snapshot.seconds / 10, snapshot.seconds % 10
     672:	89 85       	ldd	r24, Y+9	; 0x09
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     674:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     678:	8d 83       	std	Y+5, r24	; 0x05
     67a:	9e 83       	std	Y+6, r25	; 0x06
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
        snapshot.seconds / 10, snapshot.seconds % 10
    };
    seg7_set_array(digits);
     67c:	ce 01       	movw	r24, r28
     67e:	01 96       	adiw	r24, 0x01	; 1
     680:	0e 94 db 01 	call	0x3b6	; 0x3b6 <seg7_set_array>
}
     684:	29 96       	adiw	r28, 0x09	; 9
     686:	0f b6       	in	r0, 0x3f	; 63
     688:	f8 94       	cli
     68a:	de bf       	out	0x3e, r29	; 62
     68c:	0f be       	out	0x3f, r0	; 63
     68e:	cd bf       	out	0x3d, r28	; 61
     690:	df 91       	pop	r29
     692:	cf 91       	pop	r28
     694:	08 95       	ret

00000696 <clock_set_time>:
uint8_t clock_is_running(void) {
    return is_running;
}

void clock_set_time(uint8_t h, uint8_t m, uint8_t s) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     696:	9f b7       	in	r25, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     698:	f8 94       	cli
        sys_time.hours = (h < 24) ? h : 0;
     69a:	88 31       	cpi	r24, 0x18	; 24
     69c:	08 f0       	brcs	.+2      	; 0x6a0 <clock_set_time+0xa>
     69e:	80 e0       	ldi	r24, 0x00	; 0
     6a0:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
        sys_time.minutes = (m < 60) ? m : 0;
     6a4:	6c 33       	cpi	r22, 0x3C	; 60
     6a6:	08 f0       	brcs	.+2      	; 0x6aa <clock_set_time+0x14>
     6a8:	60 e0       	ldi	r22, 0x00	; 0
     6aa:	60 93 08 01 	sts	0x0108, r22	; 0x800108 <sys_time+0x1>
        sys_time.seconds = (s < 60) ? s : 0;
     6ae:	4c 33       	cpi	r20, 0x3C	; 60
     6b0:	08 f0       	brcs	.+2      	; 0x6b4 <clock_set_time+0x1e>
     6b2:	40 e0       	ldi	r20, 0x00	; 0
     6b4:	40 93 09 01 	sts	0x0109, r20	; 0x800109 <sys_time+0x2>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     6b8:	9f bf       	out	0x3f, r25	; 63
    }
    clock_update_display();
     6ba:	0c 94 1c 03 	jmp	0x638	; 0x638 <clock_update_display>

000006be <clock_init>:

static volatile ClockTime_t sys_time = {12, 0, 0};
static volatile uint8_t is_running = 1;

void clock_init(void) {
    clock_set_time(12, 0, 0);
     6be:	40 e0       	ldi	r20, 0x00	; 0
     6c0:	60 e0       	ldi	r22, 0x00	; 0
     6c2:	8c e0       	ldi	r24, 0x0C	; 12
     6c4:	0e 94 4b 03 	call	0x696	; 0x696 <clock_set_time>
    is_running = 1;
     6c8:	81 e0       	ldi	r24, 0x01	; 1
     6ca:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
}
     6ce:	08 95       	ret

000006d0 <action_7seg_time>:
// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================

// --- Mode 1: Display Current Running Real-Time Clock ---
static void action_7seg_time(void) {
     6d0:	cf 93       	push	r28
     6d2:	df 93       	push	r29
     6d4:	cd b7       	in	r28, 0x3d	; 61
     6d6:	de b7       	in	r29, 0x3e	; 62
     6d8:	68 97       	sbiw	r28, 0x18	; 24
     6da:	0f b6       	in	r0, 0x3f	; 63
     6dc:	f8 94       	cli
     6de:	de bf       	out	0x3e, r29	; 62
     6e0:	0f be       	out	0x3f, r0	; 63
     6e2:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t ct;
    clock_get_time(&ct);
     6e4:	ce 01       	movw	r24, r28
     6e6:	46 96       	adiw	r24, 0x16	; 22
     6e8:	0e 94 e6 02 	call	0x5cc	; 0x5cc <clock_get_time>
    clock_update_display(); // Updates 7-segment display with HH.MM.SS (DPs enabled!)
     6ec:	0e 94 1c 03 	call	0x638	; 0x638 <clock_update_display>

    lcd_set_cursor(0, 0);
     6f0:	60 e0       	ldi	r22, 0x00	; 0
     6f2:	80 e0       	ldi	r24, 0x00	; 0
     6f4:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== CURRENT TIME ===");
     6f8:	8a e0       	ldi	r24, 0x0A	; 10
     6fa:	93 e0       	ldi	r25, 0x03	; 3
     6fc:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>

    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     700:	20 e2       	ldi	r18, 0x20	; 32
     702:	29 83       	std	Y+1, r18	; 0x01
     704:	84 e5       	ldi	r24, 0x54	; 84
     706:	8a 83       	std	Y+2, r24	; 0x02
     708:	89 e4       	ldi	r24, 0x49	; 73
     70a:	8b 83       	std	Y+3, r24	; 0x03
     70c:	8d e4       	ldi	r24, 0x4D	; 77
     70e:	8c 83       	std	Y+4, r24	; 0x04
     710:	85 e4       	ldi	r24, 0x45	; 69
     712:	8d 83       	std	Y+5, r24	; 0x05
     714:	4a e3       	ldi	r20, 0x3A	; 58
     716:	4e 83       	std	Y+6, r20	; 0x06
    row1[6] = ' '; row1[7] = ' ';
     718:	2f 83       	std	Y+7, r18	; 0x07
     71a:	28 87       	std	Y+8, r18	; 0x08
    row1[8] = '0' + (ct.hours / 10);
     71c:	8e 89       	ldd	r24, Y+22	; 0x16
     71e:	3a e0       	ldi	r19, 0x0A	; 10
     720:	63 2f       	mov	r22, r19
     722:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     726:	80 5d       	subi	r24, 0xD0	; 208
     728:	89 87       	std	Y+9, r24	; 0x09
    row1[9] = '0' + (ct.hours % 10);
     72a:	90 5d       	subi	r25, 0xD0	; 208
     72c:	9a 87       	std	Y+10, r25	; 0x0a
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     72e:	2b 87       	std	Y+11, r18	; 0x0b
     730:	4c 87       	std	Y+12, r20	; 0x0c
     732:	2d 87       	std	Y+13, r18	; 0x0d
    row1[13] = '0' + (ct.minutes / 10);
     734:	8f 89       	ldd	r24, Y+23	; 0x17
     736:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     73a:	80 5d       	subi	r24, 0xD0	; 208
     73c:	8e 87       	std	Y+14, r24	; 0x0e
    row1[14] = '0' + (ct.minutes % 10);
     73e:	90 5d       	subi	r25, 0xD0	; 208
     740:	9f 87       	std	Y+15, r25	; 0x0f
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     742:	28 8b       	std	Y+16, r18	; 0x10
     744:	49 8b       	std	Y+17, r20	; 0x11
     746:	2a 8b       	std	Y+18, r18	; 0x12
    row1[18] = '0' + (ct.seconds / 10);
     748:	88 8d       	ldd	r24, Y+24	; 0x18
     74a:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     74e:	80 5d       	subi	r24, 0xD0	; 208
     750:	8b 8b       	std	Y+19, r24	; 0x13
    row1[19] = '0' + (ct.seconds % 10);
     752:	90 5d       	subi	r25, 0xD0	; 208
     754:	9c 8b       	std	Y+20, r25	; 0x14
    row1[20] = '\0';
     756:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(1, 0);
     758:	60 e0       	ldi	r22, 0x00	; 0
     75a:	81 e0       	ldi	r24, 0x01	; 1
     75c:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string(row1);
     760:	ce 01       	movw	r24, r28
     762:	01 96       	adiw	r24, 0x01	; 1
     764:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>

    lcd_set_cursor(2, 0);
     768:	60 e0       	ldi	r22, 0x00	; 0
     76a:	82 e0       	ldi	r24, 0x02	; 2
     76c:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("REAL-TIME CLOCK RUN ");
     770:	8f e1       	ldi	r24, 0x1F	; 31
     772:	93 e0       	ldi	r25, 0x03	; 3
     774:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     778:	60 e0       	ldi	r22, 0x00	; 0
     77a:	83 e0       	ldi	r24, 0x03	; 3
     77c:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     780:	84 e3       	ldi	r24, 0x34	; 52
     782:	93 e0       	ldi	r25, 0x03	; 3
     784:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
}
     788:	68 96       	adiw	r28, 0x18	; 24
     78a:	0f b6       	in	r0, 0x3f	; 63
     78c:	f8 94       	cli
     78e:	de bf       	out	0x3e, r29	; 62
     790:	0f be       	out	0x3f, r0	; 63
     792:	cd bf       	out	0x3d, r28	; 61
     794:	df 91       	pop	r29
     796:	cf 91       	pop	r28
     798:	08 95       	ret

0000079a <adjust_draw_lcd>:
    lcd_clear();
    adjust_draw_lcd();
    adjust_update_7seg();
}

static void adjust_draw_lcd(void) {
     79a:	cf 93       	push	r28
     79c:	df 93       	push	r29
     79e:	cd b7       	in	r28, 0x3d	; 61
     7a0:	de b7       	in	r29, 0x3e	; 62
     7a2:	aa 97       	sbiw	r28, 0x2a	; 42
     7a4:	0f b6       	in	r0, 0x3f	; 63
     7a6:	f8 94       	cli
     7a8:	de bf       	out	0x3e, r29	; 62
     7aa:	0f be       	out	0x3f, r0	; 63
     7ac:	cd bf       	out	0x3d, r28	; 61
    lcd_set_cursor(0, 0);
     7ae:	60 e0       	ldi	r22, 0x00	; 0
     7b0:	80 e0       	ldi	r24, 0x00	; 0
     7b2:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== ADJUST CLOCK ===");
     7b6:	89 e4       	ldi	r24, 0x49	; 73
     7b8:	93 e0       	ldi	r25, 0x03	; 3
     7ba:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>

    // Row 1: " TIME:  HH : MM : SS"
    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     7be:	80 e2       	ldi	r24, 0x20	; 32
     7c0:	8e 8b       	std	Y+22, r24	; 0x16
     7c2:	94 e5       	ldi	r25, 0x54	; 84
     7c4:	9f 8b       	std	Y+23, r25	; 0x17
     7c6:	99 e4       	ldi	r25, 0x49	; 73
     7c8:	98 8f       	std	Y+24, r25	; 0x18
     7ca:	9d e4       	ldi	r25, 0x4D	; 77
     7cc:	99 8f       	std	Y+25, r25	; 0x19
     7ce:	95 e4       	ldi	r25, 0x45	; 69
     7d0:	9a 8f       	std	Y+26, r25	; 0x1a
     7d2:	9a e3       	ldi	r25, 0x3A	; 58
     7d4:	9b 8f       	std	Y+27, r25	; 0x1b
    row1[6] = ' '; row1[7] = ' ';
     7d6:	8c 8f       	std	Y+28, r24	; 0x1c
     7d8:	8d 8f       	std	Y+29, r24	; 0x1d
    row1[8] = '0' + adjust_digits[0];
     7da:	eb e0       	ldi	r30, 0x0B	; 11
     7dc:	f1 e0       	ldi	r31, 0x01	; 1
     7de:	20 81       	ld	r18, Z
     7e0:	20 5d       	subi	r18, 0xD0	; 208
     7e2:	2e 8f       	std	Y+30, r18	; 0x1e
    row1[9] = '0' + adjust_digits[1];
     7e4:	21 81       	ldd	r18, Z+1	; 0x01
     7e6:	20 5d       	subi	r18, 0xD0	; 208
     7e8:	2f 8f       	std	Y+31, r18	; 0x1f
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     7ea:	88 a3       	std	Y+32, r24	; 0x20
     7ec:	99 a3       	std	Y+33, r25	; 0x21
     7ee:	8a a3       	std	Y+34, r24	; 0x22
    row1[13] = '0' + adjust_digits[2];
     7f0:	22 81       	ldd	r18, Z+2	; 0x02
     7f2:	20 5d       	subi	r18, 0xD0	; 208
     7f4:	2b a3       	std	Y+35, r18	; 0x23
    row1[14] = '0' + adjust_digits[3];
     7f6:	23 81       	ldd	r18, Z+3	; 0x03
     7f8:	20 5d       	subi	r18, 0xD0	; 208
     7fa:	2c a3       	std	Y+36, r18	; 0x24
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     7fc:	8d a3       	std	Y+37, r24	; 0x25
     7fe:	9e a3       	std	Y+38, r25	; 0x26
     800:	8f a3       	std	Y+39, r24	; 0x27
    row1[18] = '0' + adjust_digits[4];
     802:	84 81       	ldd	r24, Z+4	; 0x04
     804:	80 5d       	subi	r24, 0xD0	; 208
     806:	88 a7       	std	Y+40, r24	; 0x28
    row1[19] = '0' + adjust_digits[5];
     808:	85 81       	ldd	r24, Z+5	; 0x05
     80a:	80 5d       	subi	r24, 0xD0	; 208
     80c:	89 a7       	std	Y+41, r24	; 0x29
    row1[20] = '\0';
     80e:	1a a6       	std	Y+42, r1	; 0x2a
    lcd_set_cursor(1, 0);
     810:	60 e0       	ldi	r22, 0x00	; 0
     812:	81 e0       	ldi	r24, 0x01	; 1
     814:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string(row1);
     818:	ce 01       	movw	r24, r28
     81a:	46 96       	adiw	r24, 0x16	; 22
     81c:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>

    // Row 2: " CURSOR:        ^   " (Arrow directly beneath the selected digit)
    char row2[21] = " CURSOR:            ";
     820:	85 e1       	ldi	r24, 0x15	; 21
     822:	e3 e7       	ldi	r30, 0x73	; 115
     824:	f3 e0       	ldi	r31, 0x03	; 3
     826:	de 01       	movw	r26, r28
     828:	11 96       	adiw	r26, 0x01	; 1
     82a:	01 90       	ld	r0, Z+
     82c:	0d 92       	st	X+, r0
     82e:	8a 95       	dec	r24
     830:	e1 f7       	brne	.-8      	; 0x82a <adjust_draw_lcd+0x90>
    static const uint8_t arrow_cols[6] = {8, 9, 13, 14, 18, 19};
    row2[arrow_cols[adjust_pos]] = '^';
     832:	e0 91 c1 05 	lds	r30, 0x05C1	; 0x8005c1 <adjust_pos>
     836:	f0 e0       	ldi	r31, 0x00	; 0
     838:	ec 5f       	subi	r30, 0xFC	; 252
     83a:	fc 4f       	sbci	r31, 0xFC	; 252
     83c:	e0 81       	ld	r30, Z
     83e:	81 e0       	ldi	r24, 0x01	; 1
     840:	90 e0       	ldi	r25, 0x00	; 0
     842:	8c 0f       	add	r24, r28
     844:	9d 1f       	adc	r25, r29
     846:	8e 0f       	add	r24, r30
     848:	91 1d       	adc	r25, r1
     84a:	fc 01       	movw	r30, r24
     84c:	8e e5       	ldi	r24, 0x5E	; 94
     84e:	80 83       	st	Z, r24
    row2[20] = '\0';
     850:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(2, 0);
     852:	60 e0       	ldi	r22, 0x00	; 0
     854:	82 e0       	ldi	r24, 0x02	; 2
     856:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string(row2);
     85a:	ce 01       	movw	r24, r28
     85c:	01 96       	adiw	r24, 0x01	; 1
     85e:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>

    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
     862:	60 e0       	ldi	r22, 0x00	; 0
     864:	83 e0       	ldi	r24, 0x03	; 3
     866:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("GO:Save       1:Exit");
     86a:	8e e5       	ldi	r24, 0x5E	; 94
     86c:	93 e0       	ldi	r25, 0x03	; 3
     86e:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
}
     872:	aa 96       	adiw	r28, 0x2a	; 42
     874:	0f b6       	in	r0, 0x3f	; 63
     876:	f8 94       	cli
     878:	de bf       	out	0x3e, r29	; 62
     87a:	0f be       	out	0x3f, r0	; 63
     87c:	cd bf       	out	0x3d, r28	; 61
     87e:	df 91       	pop	r29
     880:	cf 91       	pop	r28
     882:	08 95       	ret

00000884 <action_version>:
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- System Info Actions ---
static void action_version(void) {
    lcd_set_cursor(0, 0);
     884:	60 e0       	ldi	r22, 0x00	; 0
     886:	80 e0       	ldi	r24, 0x00	; 0
     888:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== SYSTEM INFO ====");
     88c:	88 e8       	ldi	r24, 0x88	; 136
     88e:	93 e0       	ldi	r25, 0x03	; 3
     890:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     894:	60 e0       	ldi	r22, 0x00	; 0
     896:	81 e0       	ldi	r24, 0x01	; 1
     898:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("FIRMWARE: V2.0 FINAL");
     89c:	8d e9       	ldi	r24, 0x9D	; 157
     89e:	93 e0       	ldi	r25, 0x03	; 3
     8a0:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     8a4:	60 e0       	ldi	r22, 0x00	; 0
     8a6:	82 e0       	ldi	r24, 0x02	; 2
     8a8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("BUILD DATE: OCT 2026");
     8ac:	82 eb       	ldi	r24, 0xB2	; 178
     8ae:	93 e0       	ldi	r25, 0x03	; 3
     8b0:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     8b4:	60 e0       	ldi	r22, 0x00	; 0
     8b6:	83 e0       	ldi	r24, 0x03	; 3
     8b8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     8bc:	84 e3       	ldi	r24, 0x34	; 52
     8be:	93 e0       	ldi	r25, 0x03	; 3
     8c0:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

000008c4 <action_about>:
}

static void action_about(void) {
    lcd_set_cursor(0, 0);
     8c4:	60 e0       	ldi	r22, 0x00	; 0
     8c6:	80 e0       	ldi	r24, 0x00	; 0
     8c8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== ATMEGA128A =====");
     8cc:	87 ec       	ldi	r24, 0xC7	; 199
     8ce:	93 e0       	ldi	r25, 0x03	; 3
     8d0:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     8d4:	60 e0       	ldi	r22, 0x00	; 0
     8d6:	81 e0       	ldi	r24, 0x01	; 1
     8d8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("16MHZ EXT MEM BUS   ");
     8dc:	8c ed       	ldi	r24, 0xDC	; 220
     8de:	93 e0       	ldi	r25, 0x03	; 3
     8e0:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     8e4:	60 e0       	ldi	r22, 0x00	; 0
     8e6:	82 e0       	ldi	r24, 0x02	; 2
     8e8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("SCHMITT TRIGGER IN  ");
     8ec:	81 ef       	ldi	r24, 0xF1	; 241
     8ee:	93 e0       	ldi	r25, 0x03	; 3
     8f0:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     8f4:	60 e0       	ldi	r22, 0x00	; 0
     8f6:	83 e0       	ldi	r24, 0x03	; 3
     8f8:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     8fc:	84 e3       	ldi	r24, 0x34	; 52
     8fe:	93 e0       	ldi	r25, 0x03	; 3
     900:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000904 <adjust_update_7seg>:
    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
    lcd_send_string("GO:Save       1:Exit");
}

static void adjust_update_7seg(void) {
     904:	0f 93       	push	r16
     906:	1f 93       	push	r17
     908:	cf 93       	push	r28
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     90a:	8a e0       	ldi	r24, 0x0A	; 10
     90c:	0e 94 26 02 	call	0x44c	; 0x44c <seg7_set_dp_mask>
     910:	0b e0       	ldi	r16, 0x0B	; 11
     912:	11 e0       	ldi	r17, 0x01	; 1

    for (uint8_t i = 0; i < 6; i++) {
     914:	c0 e0       	ldi	r28, 0x00	; 0
        if (i == adjust_pos && !adjust_blink_phase) {
     916:	80 91 c1 05 	lds	r24, 0x05C1	; 0x8005c1 <adjust_pos>
     91a:	8c 13       	cpse	r24, r28
     91c:	05 c0       	rjmp	.+10     	; 0x928 <adjust_update_7seg+0x24>
     91e:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <adjust_blink_phase>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
     922:	6f ef       	ldi	r22, 0xFF	; 255
static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
        if (i == adjust_pos && !adjust_blink_phase) {
     924:	88 23       	and	r24, r24
     926:	11 f0       	breq	.+4      	; 0x92c <adjust_update_7seg+0x28>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
     928:	f8 01       	movw	r30, r16
     92a:	60 81       	ld	r22, Z
     92c:	8c 2f       	mov	r24, r28
     92e:	0e 94 d3 01 	call	0x3a6	; 0x3a6 <seg7_set_digit>

static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
     932:	cf 5f       	subi	r28, 0xFF	; 255
     934:	0f 5f       	subi	r16, 0xFF	; 255
     936:	1f 4f       	sbci	r17, 0xFF	; 255
     938:	c6 30       	cpi	r28, 0x06	; 6
     93a:	69 f7       	brne	.-38     	; 0x916 <adjust_update_7seg+0x12>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
        }
    }
}
     93c:	cf 91       	pop	r28
     93e:	1f 91       	pop	r17
     940:	0f 91       	pop	r16
     942:	08 95       	ret

00000944 <action_7seg_adjust>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- Mode 2: Adjust Clock Function ---
static void action_7seg_adjust(void) {
     944:	cf 93       	push	r28
     946:	df 93       	push	r29
     948:	00 d0       	rcall	.+0      	; 0x94a <action_7seg_adjust+0x6>
     94a:	1f 92       	push	r1
     94c:	cd b7       	in	r28, 0x3d	; 61
     94e:	de b7       	in	r29, 0x3e	; 62
    current_state = STATE_ADJUST_CLOCK;
     950:	83 e0       	ldi	r24, 0x03	; 3
     952:	90 e0       	ldi	r25, 0x00	; 0
     954:	90 93 d1 05 	sts	0x05D1, r25	; 0x8005d1 <current_state+0x1>
     958:	80 93 d0 05 	sts	0x05D0, r24	; 0x8005d0 <current_state>
    clock_pause(); // Pause clock ticks during manual editing
     95c:	0e 94 e0 02 	call	0x5c0	; 0x5c0 <clock_pause>

    ClockTime_t ct;
    clock_get_time(&ct);
     960:	ce 01       	movw	r24, r28
     962:	01 96       	adiw	r24, 0x01	; 1
     964:	0e 94 e6 02 	call	0x5cc	; 0x5cc <clock_get_time>
    adjust_digits[0] = ct.hours / 10;
     968:	89 81       	ldd	r24, Y+1	; 0x01
     96a:	eb e0       	ldi	r30, 0x0B	; 11
     96c:	f1 e0       	ldi	r31, 0x01	; 1
     96e:	2a e0       	ldi	r18, 0x0A	; 10
     970:	62 2f       	mov	r22, r18
     972:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     976:	80 83       	st	Z, r24
    adjust_digits[1] = ct.hours % 10;
     978:	91 83       	std	Z+1, r25	; 0x01
    adjust_digits[2] = ct.minutes / 10;
     97a:	8a 81       	ldd	r24, Y+2	; 0x02
     97c:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     980:	82 83       	std	Z+2, r24	; 0x02
    adjust_digits[3] = ct.minutes % 10;
     982:	93 83       	std	Z+3, r25	; 0x03
    adjust_digits[4] = ct.seconds / 10;
     984:	8b 81       	ldd	r24, Y+3	; 0x03
     986:	0e 94 3e 09 	call	0x127c	; 0x127c <__udivmodqi4>
     98a:	84 83       	std	Z+4, r24	; 0x04
    adjust_digits[5] = ct.seconds % 10;
     98c:	95 83       	std	Z+5, r25	; 0x05

    adjust_pos = 0; // Start at Digit 0 (Hours tens)
     98e:	10 92 c1 05 	sts	0x05C1, r1	; 0x8005c1 <adjust_pos>
    adjust_blink_phase = 1;
     992:	81 e0       	ldi	r24, 0x01	; 1
     994:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
    adjust_blink_timer = 0;
     998:	10 92 c0 05 	sts	0x05C0, r1	; 0x8005c0 <adjust_blink_timer>

    lcd_clear();
     99c:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
    adjust_draw_lcd();
     9a0:	0e 94 cd 03 	call	0x79a	; 0x79a <adjust_draw_lcd>
    adjust_update_7seg();
     9a4:	0e 94 82 04 	call	0x904	; 0x904 <adjust_update_7seg>
}
     9a8:	0f 90       	pop	r0
     9aa:	0f 90       	pop	r0
     9ac:	0f 90       	pop	r0
     9ae:	df 91       	pop	r29
     9b0:	cf 91       	pop	r28
     9b2:	08 95       	ret

000009b4 <action_7seg_countup>:
    }
}

// --- Mode 3: Count Up ---
static void action_7seg_countup(void) {
    count_val++;
     9b4:	80 91 c2 05 	lds	r24, 0x05C2	; 0x8005c2 <count_val>
     9b8:	90 91 c3 05 	lds	r25, 0x05C3	; 0x8005c3 <count_val+0x1>
     9bc:	01 96       	adiw	r24, 0x01	; 1
     9be:	90 93 c3 05 	sts	0x05C3, r25	; 0x8005c3 <count_val+0x1>
     9c2:	80 93 c2 05 	sts	0x05C2, r24	; 0x8005c2 <count_val>
    seg7_set_dp_mask(0x00); // No decimal points in count up
     9c6:	80 e0       	ldi	r24, 0x00	; 0
     9c8:	0e 94 26 02 	call	0x44c	; 0x44c <seg7_set_dp_mask>
    seg7_set_number(count_val);
     9cc:	60 91 c2 05 	lds	r22, 0x05C2	; 0x8005c2 <count_val>
     9d0:	70 91 c3 05 	lds	r23, 0x05C3	; 0x8005c3 <count_val+0x1>
     9d4:	90 e0       	ldi	r25, 0x00	; 0
     9d6:	80 e0       	ldi	r24, 0x00	; 0
     9d8:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <seg7_set_number>

    lcd_set_cursor(0, 0);
     9dc:	60 e0       	ldi	r22, 0x00	; 0
     9de:	80 e0       	ldi	r24, 0x00	; 0
     9e0:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== COUNT UP MODE ==");
     9e4:	86 e0       	ldi	r24, 0x06	; 6
     9e6:	94 e0       	ldi	r25, 0x04	; 4
     9e8:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     9ec:	60 e0       	ldi	r22, 0x00	; 0
     9ee:	81 e0       	ldi	r24, 0x01	; 1
     9f0:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
     9f4:	8b e1       	ldi	r24, 0x1B	; 27
     9f6:	94 e0       	ldi	r25, 0x04	; 4
     9f8:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     9fc:	60 e0       	ldi	r22, 0x00	; 0
     9fe:	82 e0       	ldi	r24, 0x02	; 2
     a00:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("COUNTER INCREASING  ");
     a04:	80 e3       	ldi	r24, 0x30	; 48
     a06:	94 e0       	ldi	r25, 0x04	; 4
     a08:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     a0c:	60 e0       	ldi	r22, 0x00	; 0
     a0e:	83 e0       	ldi	r24, 0x03	; 3
     a10:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     a14:	84 e3       	ldi	r24, 0x34	; 52
     a16:	93 e0       	ldi	r25, 0x03	; 3
     a18:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000a1c <action_7seg_mode4>:
}

// --- Mode 4: Test All 8s ---
static void action_7seg_mode4(void) {
    seg7_set_dp_mask(0x0A); // DPs on for test
     a1c:	8a e0       	ldi	r24, 0x0A	; 10
     a1e:	0e 94 26 02 	call	0x44c	; 0x44c <seg7_set_dp_mask>
    seg7_set_number(888888);
     a22:	68 e3       	ldi	r22, 0x38	; 56
     a24:	70 e9       	ldi	r23, 0x90	; 144
     a26:	8d e0       	ldi	r24, 0x0D	; 13
     a28:	90 e0       	ldi	r25, 0x00	; 0
     a2a:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <seg7_set_number>

    lcd_set_cursor(0, 0);
     a2e:	60 e0       	ldi	r22, 0x00	; 0
     a30:	80 e0       	ldi	r24, 0x00	; 0
     a32:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== 7-SEG MODE 4 ===");
     a36:	85 e4       	ldi	r24, 0x45	; 69
     a38:	94 e0       	ldi	r25, 0x04	; 4
     a3a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     a3e:	60 e0       	ldi	r22, 0x00	; 0
     a40:	81 e0       	ldi	r24, 0x01	; 1
     a42:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("ALL DIGITS SET TO 8 ");
     a46:	8a e5       	ldi	r24, 0x5A	; 90
     a48:	94 e0       	ldi	r25, 0x04	; 4
     a4a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     a4e:	60 e0       	ldi	r22, 0x00	; 0
     a50:	82 e0       	ldi	r24, 0x02	; 2
     a52:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("TESTING SEGMENTS    ");
     a56:	8f e6       	ldi	r24, 0x6F	; 111
     a58:	94 e0       	ldi	r25, 0x04	; 4
     a5a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     a5e:	60 e0       	ldi	r22, 0x00	; 0
     a60:	83 e0       	ldi	r24, 0x03	; 3
     a62:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     a66:	84 e3       	ldi	r24, 0x34	; 52
     a68:	93 e0       	ldi	r25, 0x03	; 3
     a6a:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000a6e <action_relay_0_2>:
}

// --- Relay Actions ---
static void action_relay_0_2(void) {
    relay_mode_0_2();
     a6e:	0e 94 a2 00 	call	0x144	; 0x144 <relay_mode_0_2>

    lcd_set_cursor(0, 0);
     a72:	60 e0       	ldi	r22, 0x00	; 0
     a74:	80 e0       	ldi	r24, 0x00	; 0
     a76:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== RELAYS 0 & 2 ===");
     a7a:	84 e8       	ldi	r24, 0x84	; 132
     a7c:	94 e0       	ldi	r25, 0x04	; 4
     a7e:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     a82:	60 e0       	ldi	r22, 0x00	; 0
     a84:	81 e0       	ldi	r24, 0x01	; 1
     a86:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL0:ON   RL1:OFF    ");
     a8a:	89 e9       	ldi	r24, 0x99	; 153
     a8c:	94 e0       	ldi	r25, 0x04	; 4
     a8e:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     a92:	60 e0       	ldi	r22, 0x00	; 0
     a94:	82 e0       	ldi	r24, 0x02	; 2
     a96:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL2:ON   RL3:OFF    ");
     a9a:	8e ea       	ldi	r24, 0xAE	; 174
     a9c:	94 e0       	ldi	r25, 0x04	; 4
     a9e:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     aa2:	60 e0       	ldi	r22, 0x00	; 0
     aa4:	83 e0       	ldi	r24, 0x03	; 3
     aa6:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     aaa:	84 e3       	ldi	r24, 0x34	; 52
     aac:	93 e0       	ldi	r25, 0x03	; 3
     aae:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000ab2 <action_relay_1_3>:
}

static void action_relay_1_3(void) {
    relay_mode_1_3();
     ab2:	0e 94 a6 00 	call	0x14c	; 0x14c <relay_mode_1_3>

    lcd_set_cursor(0, 0);
     ab6:	60 e0       	ldi	r22, 0x00	; 0
     ab8:	80 e0       	ldi	r24, 0x00	; 0
     aba:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== RELAYS 1 & 3 ===");
     abe:	83 ec       	ldi	r24, 0xC3	; 195
     ac0:	94 e0       	ldi	r25, 0x04	; 4
     ac2:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     ac6:	60 e0       	ldi	r22, 0x00	; 0
     ac8:	81 e0       	ldi	r24, 0x01	; 1
     aca:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL0:OFF  RL1:ON     ");
     ace:	88 ed       	ldi	r24, 0xD8	; 216
     ad0:	94 e0       	ldi	r25, 0x04	; 4
     ad2:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     ad6:	60 e0       	ldi	r22, 0x00	; 0
     ad8:	82 e0       	ldi	r24, 0x02	; 2
     ada:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL2:OFF  RL3:ON     ");
     ade:	8d ee       	ldi	r24, 0xED	; 237
     ae0:	94 e0       	ldi	r25, 0x04	; 4
     ae2:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     ae6:	60 e0       	ldi	r22, 0x00	; 0
     ae8:	83 e0       	ldi	r24, 0x03	; 3
     aea:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     aee:	84 e3       	ldi	r24, 0x34	; 52
     af0:	93 e0       	ldi	r25, 0x03	; 3
     af2:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000af6 <action_relay_all_on>:
}

static void action_relay_all_on(void) {
    relay_all_on();
     af6:	0e 94 aa 00 	call	0x154	; 0x154 <relay_all_on>

    lcd_set_cursor(0, 0);
     afa:	60 e0       	ldi	r22, 0x00	; 0
     afc:	80 e0       	ldi	r24, 0x00	; 0
     afe:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS ON ==");
     b02:	82 e0       	ldi	r24, 0x02	; 2
     b04:	95 e0       	ldi	r25, 0x05	; 5
     b06:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     b0a:	60 e0       	ldi	r22, 0x00	; 0
     b0c:	81 e0       	ldi	r24, 0x01	; 1
     b0e:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL0:ON   RL1:ON     ");
     b12:	87 e1       	ldi	r24, 0x17	; 23
     b14:	95 e0       	ldi	r25, 0x05	; 5
     b16:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     b1a:	60 e0       	ldi	r22, 0x00	; 0
     b1c:	82 e0       	ldi	r24, 0x02	; 2
     b1e:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL2:ON   RL3:ON     ");
     b22:	8c e2       	ldi	r24, 0x2C	; 44
     b24:	95 e0       	ldi	r25, 0x05	; 5
     b26:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     b2a:	60 e0       	ldi	r22, 0x00	; 0
     b2c:	83 e0       	ldi	r24, 0x03	; 3
     b2e:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     b32:	84 e3       	ldi	r24, 0x34	; 52
     b34:	93 e0       	ldi	r25, 0x03	; 3
     b36:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000b3a <action_relay_all_off>:
}

static void action_relay_all_off(void) {
    relay_all_off();
     b3a:	0e 94 ae 00 	call	0x15c	; 0x15c <relay_all_off>

    lcd_set_cursor(0, 0);
     b3e:	60 e0       	ldi	r22, 0x00	; 0
     b40:	80 e0       	ldi	r24, 0x00	; 0
     b42:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS OFF =");
     b46:	81 e4       	ldi	r24, 0x41	; 65
     b48:	95 e0       	ldi	r25, 0x05	; 5
     b4a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(1, 0);
     b4e:	60 e0       	ldi	r22, 0x00	; 0
     b50:	81 e0       	ldi	r24, 0x01	; 1
     b52:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL0:OFF  RL1:OFF    ");
     b56:	86 e5       	ldi	r24, 0x56	; 86
     b58:	95 e0       	ldi	r25, 0x05	; 5
     b5a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(2, 0);
     b5e:	60 e0       	ldi	r22, 0x00	; 0
     b60:	82 e0       	ldi	r24, 0x02	; 2
     b62:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("RL2:OFF  RL3:OFF    ");
     b66:	8b e6       	ldi	r24, 0x6B	; 107
     b68:	95 e0       	ldi	r25, 0x05	; 5
     b6a:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    lcd_set_cursor(3, 0);
     b6e:	60 e0       	ldi	r22, 0x00	; 0
     b70:	83 e0       	ldi	r24, 0x03	; 3
     b72:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     b76:	84 e3       	ldi	r24, 0x34	; 52
     b78:	93 e0       	ldi	r25, 0x03	; 3
     b7a:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>

00000b7e <menu_init>:
static uint8_t adjust_blink_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
     b7e:	cf 93       	push	r28
     b80:	df 93       	push	r29
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
     b82:	ef e6       	ldi	r30, 0x6F	; 111
     b84:	f2 e0       	ldi	r31, 0x02	; 2
     b86:	a2 e5       	ldi	r26, 0x52	; 82
     b88:	b2 e0       	ldi	r27, 0x02	; 2
     b8a:	b6 8b       	std	Z+22, r27	; 0x16
     b8c:	a5 8b       	std	Z+21, r26	; 0x15
     b8e:	10 8e       	std	Z+24, r1	; 0x18
     b90:	17 8a       	std	Z+23, r1	; 0x17
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
     b92:	c5 e3       	ldi	r28, 0x35	; 53
     b94:	d2 e0       	ldi	r29, 0x02	; 2
     b96:	56 96       	adiw	r26, 0x16	; 22
     b98:	dc 93       	st	X, r29
     b9a:	ce 93       	st	-X, r28
     b9c:	55 97       	sbiw	r26, 0x15	; 21
     b9e:	58 96       	adiw	r26, 0x18	; 24
     ba0:	fc 93       	st	X, r31
     ba2:	ee 93       	st	-X, r30
     ba4:	57 97       	sbiw	r26, 0x17	; 23
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
     ba6:	1e 8a       	std	Y+22, r1	; 0x16
     ba8:	1d 8a       	std	Y+21, r1	; 0x15
     baa:	b8 8f       	std	Y+24, r27	; 0x18
     bac:	af 8b       	std	Y+23, r26	; 0x17
    MainMenu.first_item = &Main_Item1;
     bae:	27 ed       	ldi	r18, 0xD7	; 215
     bb0:	32 e0       	ldi	r19, 0x02	; 2
     bb2:	d9 01       	movw	r26, r18
     bb4:	56 96       	adiw	r26, 0x16	; 22
     bb6:	fc 93       	st	X, r31
     bb8:	ee 93       	st	-X, r30
     bba:	55 97       	sbiw	r26, 0x15	; 21

    // Wire up 7-SEG Menu (4 items)
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
     bbc:	68 e1       	ldi	r22, 0x18	; 24
     bbe:	72 e0       	ldi	r23, 0x02	; 2
     bc0:	8b ef       	ldi	r24, 0xFB	; 251
     bc2:	91 e0       	ldi	r25, 0x01	; 1
     bc4:	db 01       	movw	r26, r22
     bc6:	56 96       	adiw	r26, 0x16	; 22
     bc8:	9c 93       	st	X, r25
     bca:	8e 93       	st	-X, r24
     bcc:	55 97       	sbiw	r26, 0x15	; 21
     bce:	58 96       	adiw	r26, 0x18	; 24
     bd0:	1c 92       	st	X, r1
     bd2:	1e 92       	st	-X, r1
     bd4:	57 97       	sbiw	r26, 0x17	; 23
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
     bd6:	ce ed       	ldi	r28, 0xDE	; 222
     bd8:	d1 e0       	ldi	r29, 0x01	; 1
     bda:	dc 01       	movw	r26, r24
     bdc:	56 96       	adiw	r26, 0x16	; 22
     bde:	dc 93       	st	X, r29
     be0:	ce 93       	st	-X, r28
     be2:	55 97       	sbiw	r26, 0x15	; 21
     be4:	58 96       	adiw	r26, 0x18	; 24
     be6:	7c 93       	st	X, r23
     be8:	6e 93       	st	-X, r22
     bea:	57 97       	sbiw	r26, 0x17	; 23
    Seg_Item3.next = &Seg_Item4; Seg_Item3.prev = &Seg_Item2;
     bec:	41 ec       	ldi	r20, 0xC1	; 193
     bee:	51 e0       	ldi	r21, 0x01	; 1
     bf0:	5e 8b       	std	Y+22, r21	; 0x16
     bf2:	4d 8b       	std	Y+21, r20	; 0x15
     bf4:	98 8f       	std	Y+24, r25	; 0x18
     bf6:	8f 8b       	std	Y+23, r24	; 0x17
    Seg_Item4.next = NULL;       Seg_Item4.prev = &Seg_Item3;
     bf8:	da 01       	movw	r26, r20
     bfa:	56 96       	adiw	r26, 0x16	; 22
     bfc:	1c 92       	st	X, r1
     bfe:	1e 92       	st	-X, r1
     c00:	55 97       	sbiw	r26, 0x15	; 21
     c02:	58 96       	adiw	r26, 0x18	; 24
     c04:	dc 93       	st	X, r29
     c06:	ce 93       	st	-X, r28
     c08:	57 97       	sbiw	r26, 0x17	; 23
    SegMenu.first_item = &Seg_Item1;
     c0a:	70 93 d4 02 	sts	0x02D4, r23	; 0x8002d4 <SegMenu+0x16>
     c0e:	60 93 d3 02 	sts	0x02D3, r22	; 0x8002d3 <SegMenu+0x15>

    // Wire up Relay Menu (4 items)
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
     c12:	64 ea       	ldi	r22, 0xA4	; 164
     c14:	71 e0       	ldi	r23, 0x01	; 1
     c16:	87 e8       	ldi	r24, 0x87	; 135
     c18:	91 e0       	ldi	r25, 0x01	; 1
     c1a:	db 01       	movw	r26, r22
     c1c:	56 96       	adiw	r26, 0x16	; 22
     c1e:	9c 93       	st	X, r25
     c20:	8e 93       	st	-X, r24
     c22:	55 97       	sbiw	r26, 0x15	; 21
     c24:	58 96       	adiw	r26, 0x18	; 24
     c26:	1c 92       	st	X, r1
     c28:	1e 92       	st	-X, r1
     c2a:	57 97       	sbiw	r26, 0x17	; 23
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
     c2c:	ca e6       	ldi	r28, 0x6A	; 106
     c2e:	d1 e0       	ldi	r29, 0x01	; 1
     c30:	dc 01       	movw	r26, r24
     c32:	56 96       	adiw	r26, 0x16	; 22
     c34:	dc 93       	st	X, r29
     c36:	ce 93       	st	-X, r28
     c38:	55 97       	sbiw	r26, 0x15	; 21
     c3a:	58 96       	adiw	r26, 0x18	; 24
     c3c:	7c 93       	st	X, r23
     c3e:	6e 93       	st	-X, r22
     c40:	57 97       	sbiw	r26, 0x17	; 23
    Relay_Item3.next = &Relay_Item4; Relay_Item3.prev = &Relay_Item2;
     c42:	4d e4       	ldi	r20, 0x4D	; 77
     c44:	51 e0       	ldi	r21, 0x01	; 1
     c46:	5e 8b       	std	Y+22, r21	; 0x16
     c48:	4d 8b       	std	Y+21, r20	; 0x15
     c4a:	98 8f       	std	Y+24, r25	; 0x18
     c4c:	8f 8b       	std	Y+23, r24	; 0x17
    Relay_Item4.next = NULL;         Relay_Item4.prev = &Relay_Item3;
     c4e:	da 01       	movw	r26, r20
     c50:	56 96       	adiw	r26, 0x16	; 22
     c52:	1c 92       	st	X, r1
     c54:	1e 92       	st	-X, r1
     c56:	55 97       	sbiw	r26, 0x15	; 21
     c58:	58 96       	adiw	r26, 0x18	; 24
     c5a:	dc 93       	st	X, r29
     c5c:	ce 93       	st	-X, r28
     c5e:	57 97       	sbiw	r26, 0x17	; 23
    RelayMenu.first_item = &Relay_Item1;
     c60:	70 93 bb 02 	sts	0x02BB, r23	; 0x8002bb <RelayMenu+0x16>
     c64:	60 93 ba 02 	sts	0x02BA, r22	; 0x8002ba <RelayMenu+0x15>

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
     c68:	a0 e3       	ldi	r26, 0x30	; 48
     c6a:	b1 e0       	ldi	r27, 0x01	; 1
     c6c:	c3 e1       	ldi	r28, 0x13	; 19
     c6e:	d1 e0       	ldi	r29, 0x01	; 1
     c70:	56 96       	adiw	r26, 0x16	; 22
     c72:	dc 93       	st	X, r29
     c74:	ce 93       	st	-X, r28
     c76:	55 97       	sbiw	r26, 0x15	; 21
     c78:	58 96       	adiw	r26, 0x18	; 24
     c7a:	1c 92       	st	X, r1
     c7c:	1e 92       	st	-X, r1
     c7e:	57 97       	sbiw	r26, 0x17	; 23
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
     c80:	1e 8a       	std	Y+22, r1	; 0x16
     c82:	1d 8a       	std	Y+21, r1	; 0x15
     c84:	b8 8f       	std	Y+24, r27	; 0x18
     c86:	af 8b       	std	Y+23, r26	; 0x17
    SystemMenu.first_item = &Sys_Item1;
     c88:	b0 93 a2 02 	sts	0x02A2, r27	; 0x8002a2 <SystemMenu+0x16>
     c8c:	a0 93 a1 02 	sts	0x02A1, r26	; 0x8002a1 <SystemMenu+0x15>

    // Set initial engine pointers
    current_menu = &MainMenu;
     c90:	30 93 cf 05 	sts	0x05CF, r19	; 0x8005cf <current_menu+0x1>
     c94:	20 93 ce 05 	sts	0x05CE, r18	; 0x8005ce <current_menu>
    current_item = current_menu->first_item;
     c98:	f0 93 cd 05 	sts	0x05CD, r31	; 0x8005cd <current_item+0x1>
     c9c:	e0 93 cc 05 	sts	0x05CC, r30	; 0x8005cc <current_item>
    top_display_item = current_menu->first_item;
     ca0:	f0 93 cb 05 	sts	0x05CB, r31	; 0x8005cb <top_display_item+0x1>
     ca4:	e0 93 ca 05 	sts	0x05CA, r30	; 0x8005ca <top_display_item>
    cursor_row = 1;
     ca8:	81 e0       	ldi	r24, 0x01	; 1
     caa:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
    current_state = STATE_WELCOME;
     cae:	10 92 d1 05 	sts	0x05D1, r1	; 0x8005d1 <current_state+0x1>
     cb2:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state>
    active_action_func = NULL;
     cb6:	10 92 c9 05 	sts	0x05C9, r1	; 0x8005c9 <active_action_func+0x1>
     cba:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func>
    welcome_char_idx = 0;
     cbe:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <welcome_char_idx>
    welcome_timer = 0;
     cc2:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_timer>

    blink_counter = 0;
     cc6:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <blink_counter>
    blink_on = 1;
     cca:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
    action_tick = 0;
     cce:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <action_tick>
    count_val = 0;
     cd2:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <count_val+0x1>
     cd6:	10 92 c2 05 	sts	0x05C2, r1	; 0x8005c2 <count_val>

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
}
     cda:	df 91       	pop	r29
     cdc:	cf 91       	pop	r28
    blink_on = 1;
    action_tick = 0;
    count_val = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
     cde:	0c 94 04 01 	jmp	0x208	; 0x208 <lcd_clear>

00000ce2 <menu_draw>:
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
     ce2:	ef 92       	push	r14
     ce4:	ff 92       	push	r15
     ce6:	0f 93       	push	r16
     ce8:	1f 93       	push	r17
     cea:	cf 93       	push	r28
     cec:	df 93       	push	r29
     cee:	cd b7       	in	r28, 0x3d	; 61
     cf0:	de b7       	in	r29, 0x3e	; 62
     cf2:	65 97       	sbiw	r28, 0x15	; 21
     cf4:	0f b6       	in	r0, 0x3f	; 63
     cf6:	f8 94       	cli
     cf8:	de bf       	out	0x3e, r29	; 62
     cfa:	0f be       	out	0x3f, r0	; 63
     cfc:	cd bf       	out	0x3d, r28	; 61
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
     cfe:	60 e0       	ldi	r22, 0x00	; 0
     d00:	80 e0       	ldi	r24, 0x00	; 0
     d02:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    if (current_menu == &MainMenu && !blink_on) {
     d06:	e0 91 ce 05 	lds	r30, 0x05CE	; 0x8005ce <current_menu>
     d0a:	f0 91 cf 05 	lds	r31, 0x05CF	; 0x8005cf <current_menu+0x1>
     d0e:	82 e0       	ldi	r24, 0x02	; 2
     d10:	e7 3d       	cpi	r30, 0xD7	; 215
     d12:	f8 07       	cpc	r31, r24
     d14:	69 f5       	brne	.+90     	; 0xd70 <menu_draw+0x8e>
     d16:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
     d1a:	81 11       	cpse	r24, r1
     d1c:	29 c0       	rjmp	.+82     	; 0xd70 <menu_draw+0x8e>
        lcd_send_string("                    ");
     d1e:	80 e8       	ldi	r24, 0x80	; 128
     d20:	95 e0       	ldi	r25, 0x05	; 5
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
     d22:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
     d26:	e0 90 ca 05 	lds	r14, 0x05CA	; 0x8005ca <top_display_item>
     d2a:	f0 90 cb 05 	lds	r15, 0x05CB	; 0x8005cb <top_display_item+0x1>
    for (uint8_t r = 1; r <= 3; r++) {
     d2e:	11 e0       	ldi	r17, 0x01	; 1
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
     d30:	00 e2       	ldi	r16, 0x20	; 32
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
     d32:	60 e0       	ldi	r22, 0x00	; 0
     d34:	81 2f       	mov	r24, r17
     d36:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
        if (temp != NULL) {
     d3a:	e1 14       	cp	r14, r1
     d3c:	f1 04       	cpc	r15, r1
     d3e:	09 f4       	brne	.+2      	; 0xd42 <menu_draw+0x60>
     d40:	4e c0       	rjmp	.+156    	; 0xdde <menu_draw+0xfc>
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     d42:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     d46:	81 17       	cp	r24, r17
     d48:	59 f1       	breq	.+86     	; 0xda0 <menu_draw+0xbe>
     d4a:	80 e2       	ldi	r24, 0x20	; 32
     d4c:	0e 94 e6 00 	call	0x1cc	; 0x1cc <lcd_send_data>
     d50:	d7 01       	movw	r26, r14
     d52:	fe 01       	movw	r30, r28
     d54:	31 96       	adiw	r30, 0x01	; 1
            char buf[20];
            uint8_t len = 0;
     d56:	90 e0       	ldi	r25, 0x00	; 0
     d58:	9f 01       	movw	r18, r30
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     d5a:	8d 91       	ld	r24, X+
     d5c:	81 11       	cpse	r24, r1
     d5e:	25 c0       	rjmp	.+74     	; 0xdaa <menu_draw+0xc8>
     d60:	f9 01       	movw	r30, r18
     d62:	e9 0f       	add	r30, r25
     d64:	f1 1d       	adc	r31, r1
            while (len < 19) buf[len++] = ' ';
     d66:	93 31       	cpi	r25, 0x13	; 19
     d68:	11 f1       	breq	.+68     	; 0xdae <menu_draw+0xcc>
     d6a:	9f 5f       	subi	r25, 0xFF	; 255
     d6c:	01 93       	st	Z+, r16
     d6e:	fb cf       	rjmp	.-10     	; 0xd66 <menu_draw+0x84>
     d70:	de 01       	movw	r26, r28
     d72:	11 96       	adiw	r26, 0x01	; 1
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
     d74:	90 e0       	ldi	r25, 0x00	; 0
     d76:	9d 01       	movw	r18, r26
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     d78:	81 91       	ld	r24, Z+
     d7a:	81 11       	cpse	r24, r1
     d7c:	0c c0       	rjmp	.+24     	; 0xd96 <menu_draw+0xb4>
     d7e:	f9 01       	movw	r30, r18
     d80:	e9 0f       	add	r30, r25
     d82:	f1 1d       	adc	r31, r1
        while (len < 20) buf[len++] = ' ';
     d84:	80 e2       	ldi	r24, 0x20	; 32
     d86:	94 31       	cpi	r25, 0x14	; 20
     d88:	41 f0       	breq	.+16     	; 0xd9a <menu_draw+0xb8>
     d8a:	9f 5f       	subi	r25, 0xFF	; 255
     d8c:	81 93       	st	Z+, r24
     d8e:	fb cf       	rjmp	.-10     	; 0xd86 <menu_draw+0xa4>
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     d90:	9f 5f       	subi	r25, 0xFF	; 255
     d92:	8d 93       	st	X+, r24
     d94:	f1 cf       	rjmp	.-30     	; 0xd78 <menu_draw+0x96>
     d96:	94 31       	cpi	r25, 0x14	; 20
     d98:	d9 f7       	brne	.-10     	; 0xd90 <menu_draw+0xae>
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
     d9a:	1d 8a       	std	Y+21, r1	; 0x15
        lcd_send_string(buf);
     d9c:	c9 01       	movw	r24, r18
     d9e:	c1 cf       	rjmp	.-126    	; 0xd22 <menu_draw+0x40>
    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     da0:	8e e3       	ldi	r24, 0x3E	; 62
     da2:	d4 cf       	rjmp	.-88     	; 0xd4c <menu_draw+0x6a>
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     da4:	9f 5f       	subi	r25, 0xFF	; 255
     da6:	81 93       	st	Z+, r24
     da8:	d8 cf       	rjmp	.-80     	; 0xd5a <menu_draw+0x78>
     daa:	93 31       	cpi	r25, 0x13	; 19
     dac:	d9 f7       	brne	.-10     	; 0xda4 <menu_draw+0xc2>
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
     dae:	1c 8a       	std	Y+20, r1	; 0x14
            lcd_send_string(buf);
     db0:	c9 01       	movw	r24, r18
     db2:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
            temp = temp->next;
     db6:	f7 01       	movw	r30, r14
     db8:	e5 88       	ldd	r14, Z+21	; 0x15
     dba:	f6 88       	ldd	r15, Z+22	; 0x16
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
     dbc:	1f 5f       	subi	r17, 0xFF	; 255
     dbe:	14 30       	cpi	r17, 0x04	; 4
     dc0:	09 f0       	breq	.+2      	; 0xdc4 <menu_draw+0xe2>
     dc2:	b7 cf       	rjmp	.-146    	; 0xd32 <menu_draw+0x50>
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}
     dc4:	65 96       	adiw	r28, 0x15	; 21
     dc6:	0f b6       	in	r0, 0x3f	; 63
     dc8:	f8 94       	cli
     dca:	de bf       	out	0x3e, r29	; 62
     dcc:	0f be       	out	0x3f, r0	; 63
     dce:	cd bf       	out	0x3d, r28	; 61
     dd0:	df 91       	pop	r29
     dd2:	cf 91       	pop	r28
     dd4:	1f 91       	pop	r17
     dd6:	0f 91       	pop	r16
     dd8:	ff 90       	pop	r15
     dda:	ef 90       	pop	r14
     ddc:	08 95       	ret
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
     dde:	80 e8       	ldi	r24, 0x80	; 128
     de0:	95 e0       	ldi	r25, 0x05	; 5
     de2:	0e 94 7e 01 	call	0x2fc	; 0x2fc <lcd_send_string>
     de6:	ea cf       	rjmp	.-44     	; 0xdbc <menu_draw+0xda>

00000de8 <menu_down>:

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
     de8:	e0 91 cc 05 	lds	r30, 0x05CC	; 0x8005cc <current_item>
     dec:	f0 91 cd 05 	lds	r31, 0x05CD	; 0x8005cd <current_item+0x1>
     df0:	30 97       	sbiw	r30, 0x00	; 0
     df2:	e1 f0       	breq	.+56     	; 0xe2c <menu_down+0x44>
     df4:	85 89       	ldd	r24, Z+21	; 0x15
     df6:	96 89       	ldd	r25, Z+22	; 0x16
     df8:	00 97       	sbiw	r24, 0x00	; 0
     dfa:	c1 f0       	breq	.+48     	; 0xe2c <menu_down+0x44>
        current_item = current_item->next;
     dfc:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     e00:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
        if (cursor_row < 3) {
     e04:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     e08:	83 30       	cpi	r24, 0x03	; 3
     e0a:	28 f4       	brcc	.+10     	; 0xe16 <menu_down+0x2e>
            cursor_row++;
     e0c:	8f 5f       	subi	r24, 0xFF	; 255
     e0e:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
     e12:	0c 94 71 06 	jmp	0xce2	; 0xce2 <menu_draw>
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
     e16:	e0 91 ca 05 	lds	r30, 0x05CA	; 0x8005ca <top_display_item>
     e1a:	f0 91 cb 05 	lds	r31, 0x05CB	; 0x8005cb <top_display_item+0x1>
     e1e:	85 89       	ldd	r24, Z+21	; 0x15
     e20:	96 89       	ldd	r25, Z+22	; 0x16
     e22:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     e26:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
     e2a:	f3 cf       	rjmp	.-26     	; 0xe12 <menu_down+0x2a>
        }
        menu_draw();
    }
}
     e2c:	08 95       	ret

00000e2e <menu_up>:

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
     e2e:	e0 91 cc 05 	lds	r30, 0x05CC	; 0x8005cc <current_item>
     e32:	f0 91 cd 05 	lds	r31, 0x05CD	; 0x8005cd <current_item+0x1>
     e36:	30 97       	sbiw	r30, 0x00	; 0
     e38:	e1 f0       	breq	.+56     	; 0xe72 <menu_up+0x44>
     e3a:	87 89       	ldd	r24, Z+23	; 0x17
     e3c:	90 8d       	ldd	r25, Z+24	; 0x18
     e3e:	00 97       	sbiw	r24, 0x00	; 0
     e40:	c1 f0       	breq	.+48     	; 0xe72 <menu_up+0x44>
        current_item = current_item->prev;
     e42:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     e46:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
        if (cursor_row > 1) {
     e4a:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     e4e:	82 30       	cpi	r24, 0x02	; 2
     e50:	28 f0       	brcs	.+10     	; 0xe5c <menu_up+0x2e>
            cursor_row--;
     e52:	81 50       	subi	r24, 0x01	; 1
     e54:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
     e58:	0c 94 71 06 	jmp	0xce2	; 0xce2 <menu_draw>
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
     e5c:	e0 91 ca 05 	lds	r30, 0x05CA	; 0x8005ca <top_display_item>
     e60:	f0 91 cb 05 	lds	r31, 0x05CB	; 0x8005cb <top_display_item+0x1>
     e64:	87 89       	ldd	r24, Z+23	; 0x17
     e66:	90 8d       	ldd	r25, Z+24	; 0x18
     e68:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     e6c:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
     e70:	f3 cf       	rjmp	.-26     	; 0xe58 <menu_up+0x2a>
        }
        menu_draw();
    }
}
     e72:	08 95       	ret

00000e74 <menu_enter>:

void menu_enter(void) {
    if (current_item == NULL) return;
     e74:	e0 91 cc 05 	lds	r30, 0x05CC	; 0x8005cc <current_item>
     e78:	f0 91 cd 05 	lds	r31, 0x05CD	; 0x8005cd <current_item+0x1>
     e7c:	30 97       	sbiw	r30, 0x00	; 0
     e7e:	89 f1       	breq	.+98     	; 0xee2 <menu_enter+0x6e>
    if (current_item->child_menu != NULL) {
     e80:	a1 8d       	ldd	r26, Z+25	; 0x19
     e82:	b2 8d       	ldd	r27, Z+26	; 0x1a
     e84:	10 97       	sbiw	r26, 0x00	; 0
     e86:	b1 f0       	breq	.+44     	; 0xeb4 <menu_enter+0x40>
        current_menu = current_item->child_menu;
     e88:	b0 93 cf 05 	sts	0x05CF, r27	; 0x8005cf <current_menu+0x1>
     e8c:	a0 93 ce 05 	sts	0x05CE, r26	; 0x8005ce <current_menu>
        current_item = current_menu->first_item;
     e90:	55 96       	adiw	r26, 0x15	; 21
     e92:	8d 91       	ld	r24, X+
     e94:	9c 91       	ld	r25, X
     e96:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     e9a:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
        top_display_item = current_menu->first_item;
     e9e:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     ea2:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
        cursor_row = 1;
     ea6:	81 e0       	ldi	r24, 0x01	; 1
     ea8:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     eac:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
        menu_draw();
     eb0:	0c 94 71 06 	jmp	0xce2	; 0xce2 <menu_draw>
    } else if (current_item->action != NULL) {
     eb4:	83 8d       	ldd	r24, Z+27	; 0x1b
     eb6:	94 8d       	ldd	r25, Z+28	; 0x1c
     eb8:	00 97       	sbiw	r24, 0x00	; 0
     eba:	99 f0       	breq	.+38     	; 0xee2 <menu_enter+0x6e>
        current_state = STATE_RUNNING;
     ebc:	22 e0       	ldi	r18, 0x02	; 2
     ebe:	30 e0       	ldi	r19, 0x00	; 0
     ec0:	30 93 d1 05 	sts	0x05D1, r19	; 0x8005d1 <current_state+0x1>
     ec4:	20 93 d0 05 	sts	0x05D0, r18	; 0x8005d0 <current_state>
        active_action_func = current_item->action;
     ec8:	90 93 c9 05 	sts	0x05C9, r25	; 0x8005c9 <active_action_func+0x1>
     ecc:	80 93 c8 05 	sts	0x05C8, r24	; 0x8005c8 <active_action_func>
        action_tick = 0;
     ed0:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <action_tick>
        lcd_clear();
     ed4:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
        active_action_func(); // render initial action view
     ed8:	e0 91 c8 05 	lds	r30, 0x05C8	; 0x8005c8 <active_action_func>
     edc:	f0 91 c9 05 	lds	r31, 0x05C9	; 0x8005c9 <active_action_func+0x1>
     ee0:	09 94       	ijmp
    }
}
     ee2:	08 95       	ret

00000ee4 <menu_back>:

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
     ee4:	e0 91 ce 05 	lds	r30, 0x05CE	; 0x8005ce <current_menu>
     ee8:	f0 91 cf 05 	lds	r31, 0x05CF	; 0x8005cf <current_menu+0x1>
     eec:	07 88       	ldd	r0, Z+23	; 0x17
     eee:	f0 8d       	ldd	r31, Z+24	; 0x18
     ef0:	e0 2d       	mov	r30, r0
     ef2:	30 97       	sbiw	r30, 0x00	; 0
     ef4:	a9 f0       	breq	.+42     	; 0xf20 <menu_back+0x3c>
        // Return to parent menu
        current_menu = current_menu->parent_menu;
     ef6:	f0 93 cf 05 	sts	0x05CF, r31	; 0x8005cf <current_menu+0x1>
     efa:	e0 93 ce 05 	sts	0x05CE, r30	; 0x8005ce <current_menu>
        current_item = current_menu->first_item;
     efe:	85 89       	ldd	r24, Z+21	; 0x15
     f00:	96 89       	ldd	r25, Z+22	; 0x16
     f02:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     f06:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
        top_display_item = current_menu->first_item;
     f0a:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     f0e:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
        cursor_row = 1;
     f12:	81 e0       	ldi	r24, 0x01	; 1
     f14:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     f18:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
        menu_draw();
     f1c:	0c 94 71 06 	jmp	0xce2	; 0xce2 <menu_draw>
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
     f20:	10 92 d1 05 	sts	0x05D1, r1	; 0x8005d1 <current_state+0x1>
     f24:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state>
        welcome_char_idx = 0;
     f28:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <welcome_char_idx>
        welcome_timer = 0;
     f2c:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_timer>
        lcd_clear();
     f30:	0c 94 04 01 	jmp	0x208	; 0x208 <lcd_clear>

00000f34 <menu_update>:
     f34:	cf 93       	push	r28
     f36:	0e 94 d6 02 	call	0x5ac	; 0x5ac <button_triggered>
     f3a:	c8 2f       	mov	r28, r24
     f3c:	0e 94 cd 02 	call	0x59a	; 0x59a <button_pressed>
     f40:	20 91 d0 05 	lds	r18, 0x05D0	; 0x8005d0 <current_state>
     f44:	30 91 d1 05 	lds	r19, 0x05D1	; 0x8005d1 <current_state+0x1>
     f48:	85 ff       	sbrs	r24, 5
     f4a:	2c c0       	rjmp	.+88     	; 0xfa4 <menu_update+0x70>
     f4c:	21 15       	cp	r18, r1
     f4e:	31 05       	cpc	r19, r1
     f50:	49 f1       	breq	.+82     	; 0xfa4 <menu_update+0x70>
     f52:	23 30       	cpi	r18, 0x03	; 3
     f54:	31 05       	cpc	r19, r1
     f56:	11 f4       	brne	.+4      	; 0xf5c <menu_update+0x28>
     f58:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <clock_start>
     f5c:	10 92 d1 05 	sts	0x05D1, r1	; 0x8005d1 <current_state+0x1>
     f60:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state>
     f64:	10 92 c9 05 	sts	0x05C9, r1	; 0x8005c9 <active_action_func+0x1>
     f68:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func>
     f6c:	87 ed       	ldi	r24, 0xD7	; 215
     f6e:	92 e0       	ldi	r25, 0x02	; 2
     f70:	90 93 cf 05 	sts	0x05CF, r25	; 0x8005cf <current_menu+0x1>
     f74:	80 93 ce 05 	sts	0x05CE, r24	; 0x8005ce <current_menu>
     f78:	80 91 ec 02 	lds	r24, 0x02EC	; 0x8002ec <MainMenu+0x15>
     f7c:	90 91 ed 02 	lds	r25, 0x02ED	; 0x8002ed <MainMenu+0x16>
     f80:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     f84:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
     f88:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     f8c:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
     f90:	81 e0       	ldi	r24, 0x01	; 1
     f92:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
     f96:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <welcome_char_idx>
     f9a:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_timer>
     f9e:	cf 91       	pop	r28
     fa0:	0c 94 04 01 	jmp	0x208	; 0x208 <lcd_clear>
     fa4:	21 15       	cp	r18, r1
     fa6:	31 05       	cpc	r19, r1
     fa8:	09 f0       	breq	.+2      	; 0xfac <menu_update+0x78>
     faa:	54 c0       	rjmp	.+168    	; 0x1054 <__DATA_REGION_LENGTH__+0x54>
     fac:	88 23       	and	r24, r24
     fae:	21 f1       	breq	.+72     	; 0xff8 <menu_update+0xc4>
     fb0:	81 e0       	ldi	r24, 0x01	; 1
     fb2:	90 e0       	ldi	r25, 0x00	; 0
     fb4:	90 93 d1 05 	sts	0x05D1, r25	; 0x8005d1 <current_state+0x1>
     fb8:	80 93 d0 05 	sts	0x05D0, r24	; 0x8005d0 <current_state>
     fbc:	87 ed       	ldi	r24, 0xD7	; 215
     fbe:	92 e0       	ldi	r25, 0x02	; 2
     fc0:	90 93 cf 05 	sts	0x05CF, r25	; 0x8005cf <current_menu+0x1>
     fc4:	80 93 ce 05 	sts	0x05CE, r24	; 0x8005ce <current_menu>
     fc8:	80 91 ec 02 	lds	r24, 0x02EC	; 0x8002ec <MainMenu+0x15>
     fcc:	90 91 ed 02 	lds	r25, 0x02ED	; 0x8002ed <MainMenu+0x16>
     fd0:	90 93 cd 05 	sts	0x05CD, r25	; 0x8005cd <current_item+0x1>
     fd4:	80 93 cc 05 	sts	0x05CC, r24	; 0x8005cc <current_item>
     fd8:	90 93 cb 05 	sts	0x05CB, r25	; 0x8005cb <top_display_item+0x1>
     fdc:	80 93 ca 05 	sts	0x05CA, r24	; 0x8005ca <top_display_item>
     fe0:	81 e0       	ldi	r24, 0x01	; 1
     fe2:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
     fe6:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <blink_counter>
     fea:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
     fee:	0e 94 04 01 	call	0x208	; 0x208 <lcd_clear>
     ff2:	cf 91       	pop	r28
     ff4:	0c 94 71 06 	jmp	0xce2	; 0xce2 <menu_draw>
     ff8:	80 91 c4 05 	lds	r24, 0x05C4	; 0x8005c4 <welcome_timer>
     ffc:	8f 5f       	subi	r24, 0xFF	; 255
     ffe:	83 30       	cpi	r24, 0x03	; 3
    1000:	20 f4       	brcc	.+8      	; 0x100a <__DATA_REGION_LENGTH__+0xa>
    1002:	80 93 c4 05 	sts	0x05C4, r24	; 0x8005c4 <welcome_timer>
    1006:	cf 91       	pop	r28
    1008:	08 95       	ret
    100a:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_timer>
    100e:	60 91 c5 05 	lds	r22, 0x05C5	; 0x8005c5 <welcome_char_idx>
    1012:	66 30       	cpi	r22, 0x06	; 6
    1014:	90 f4       	brcc	.+36     	; 0x103a <__DATA_REGION_LENGTH__+0x3a>
    1016:	6b 5f       	subi	r22, 0xFB	; 251
    1018:	80 e0       	ldi	r24, 0x00	; 0
    101a:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    101e:	e0 91 c5 05 	lds	r30, 0x05C5	; 0x8005c5 <welcome_char_idx>
    1022:	f0 e0       	ldi	r31, 0x00	; 0
    1024:	eb 56       	subi	r30, 0x6B	; 107
    1026:	fa 4f       	sbci	r31, 0xFA	; 250
    1028:	80 81       	ld	r24, Z
    102a:	0e 94 e6 00 	call	0x1cc	; 0x1cc <lcd_send_data>
    102e:	80 91 c5 05 	lds	r24, 0x05C5	; 0x8005c5 <welcome_char_idx>
    1032:	8f 5f       	subi	r24, 0xFF	; 255
    1034:	80 93 c5 05 	sts	0x05C5, r24	; 0x8005c5 <welcome_char_idx>
    1038:	e6 cf       	rjmp	.-52     	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    103a:	66 31       	cpi	r22, 0x16	; 22
    103c:	20 f7       	brcc	.-56     	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    103e:	ca ef       	ldi	r28, 0xFA	; 250
    1040:	c6 0f       	add	r28, r22
    1042:	6c 2f       	mov	r22, r28
    1044:	81 e0       	ldi	r24, 0x01	; 1
    1046:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    104a:	ec 2f       	mov	r30, r28
    104c:	f0 e0       	ldi	r31, 0x00	; 0
    104e:	e4 56       	subi	r30, 0x64	; 100
    1050:	fa 4f       	sbci	r31, 0xFA	; 250
    1052:	ea cf       	rjmp	.-44     	; 0x1028 <__DATA_REGION_LENGTH__+0x28>
    1054:	23 30       	cpi	r18, 0x03	; 3
    1056:	31 05       	cpc	r19, r1
    1058:	09 f0       	breq	.+2      	; 0x105c <__DATA_REGION_LENGTH__+0x5c>
    105a:	7d c0       	rjmp	.+250    	; 0x1156 <__stack+0x57>
    105c:	c0 ff       	sbrs	r28, 0
    105e:	1b c0       	rjmp	.+54     	; 0x1096 <__DATA_REGION_LENGTH__+0x96>
    1060:	80 91 c1 05 	lds	r24, 0x05C1	; 0x8005c1 <adjust_pos>
    1064:	88 23       	and	r24, r24
    1066:	a9 f0       	breq	.+42     	; 0x1092 <__DATA_REGION_LENGTH__+0x92>
    1068:	81 50       	subi	r24, 0x01	; 1
    106a:	80 93 c1 05 	sts	0x05C1, r24	; 0x8005c1 <adjust_pos>
    106e:	81 e0       	ldi	r24, 0x01	; 1
    1070:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
    1074:	10 92 c0 05 	sts	0x05C0, r1	; 0x8005c0 <adjust_blink_timer>
    1078:	0e 94 cd 03 	call	0x79a	; 0x79a <adjust_draw_lcd>
    107c:	0e 94 82 04 	call	0x904	; 0x904 <adjust_update_7seg>
    1080:	80 91 c0 05 	lds	r24, 0x05C0	; 0x8005c0 <adjust_blink_timer>
    1084:	8f 5f       	subi	r24, 0xFF	; 255
    1086:	84 31       	cpi	r24, 0x14	; 20
    1088:	08 f0       	brcs	.+2      	; 0x108c <__DATA_REGION_LENGTH__+0x8c>
    108a:	59 c0       	rjmp	.+178    	; 0x113e <__stack+0x3f>
    108c:	80 93 c0 05 	sts	0x05C0, r24	; 0x8005c0 <adjust_blink_timer>
    1090:	ba cf       	rjmp	.-140    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    1092:	85 e0       	ldi	r24, 0x05	; 5
    1094:	ea cf       	rjmp	.-44     	; 0x106a <__DATA_REGION_LENGTH__+0x6a>
    1096:	c1 ff       	sbrs	r28, 1
    1098:	08 c0       	rjmp	.+16     	; 0x10aa <__DATA_REGION_LENGTH__+0xaa>
    109a:	80 91 c1 05 	lds	r24, 0x05C1	; 0x8005c1 <adjust_pos>
    109e:	85 30       	cpi	r24, 0x05	; 5
    10a0:	11 f0       	breq	.+4      	; 0x10a6 <__DATA_REGION_LENGTH__+0xa6>
    10a2:	8f 5f       	subi	r24, 0xFF	; 255
    10a4:	e2 cf       	rjmp	.-60     	; 0x106a <__DATA_REGION_LENGTH__+0x6a>
    10a6:	80 e0       	ldi	r24, 0x00	; 0
    10a8:	e0 cf       	rjmp	.-64     	; 0x106a <__DATA_REGION_LENGTH__+0x6a>
    10aa:	c2 ff       	sbrs	r28, 2
    10ac:	0e c0       	rjmp	.+28     	; 0x10ca <__DATA_REGION_LENGTH__+0xca>
    10ae:	e0 91 c1 05 	lds	r30, 0x05C1	; 0x8005c1 <adjust_pos>
    10b2:	f0 e0       	ldi	r31, 0x00	; 0
    10b4:	e5 5f       	subi	r30, 0xF5	; 245
    10b6:	fe 4f       	sbci	r31, 0xFE	; 254
    10b8:	80 81       	ld	r24, Z
    10ba:	90 e0       	ldi	r25, 0x00	; 0
    10bc:	01 96       	adiw	r24, 0x01	; 1
    10be:	6a e0       	ldi	r22, 0x0A	; 10
    10c0:	70 e0       	ldi	r23, 0x00	; 0
    10c2:	0e 94 4a 09 	call	0x1294	; 0x1294 <__divmodhi4>
    10c6:	80 83       	st	Z, r24
    10c8:	d2 cf       	rjmp	.-92     	; 0x106e <__DATA_REGION_LENGTH__+0x6e>
    10ca:	c3 ff       	sbrs	r28, 3
    10cc:	0c c0       	rjmp	.+24     	; 0x10e6 <__DATA_REGION_LENGTH__+0xe6>
    10ce:	e0 91 c1 05 	lds	r30, 0x05C1	; 0x8005c1 <adjust_pos>
    10d2:	f0 e0       	ldi	r31, 0x00	; 0
    10d4:	e5 5f       	subi	r30, 0xF5	; 245
    10d6:	fe 4f       	sbci	r31, 0xFE	; 254
    10d8:	80 81       	ld	r24, Z
    10da:	88 23       	and	r24, r24
    10dc:	11 f0       	breq	.+4      	; 0x10e2 <__DATA_REGION_LENGTH__+0xe2>
    10de:	81 50       	subi	r24, 0x01	; 1
    10e0:	f2 cf       	rjmp	.-28     	; 0x10c6 <__DATA_REGION_LENGTH__+0xc6>
    10e2:	89 e0       	ldi	r24, 0x09	; 9
    10e4:	f0 cf       	rjmp	.-32     	; 0x10c6 <__DATA_REGION_LENGTH__+0xc6>
    10e6:	84 ff       	sbrs	r24, 4
    10e8:	cb cf       	rjmp	.-106    	; 0x1080 <__DATA_REGION_LENGTH__+0x80>
    10ea:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <adjust_digits>
    10ee:	9a e0       	ldi	r25, 0x0A	; 10
    10f0:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <adjust_digits+0x1>
    10f4:	29 9f       	mul	r18, r25
    10f6:	80 0d       	add	r24, r0
    10f8:	11 24       	eor	r1, r1
    10fa:	20 91 0d 01 	lds	r18, 0x010D	; 0x80010d <adjust_digits+0x2>
    10fe:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <adjust_digits+0x3>
    1102:	29 9f       	mul	r18, r25
    1104:	60 0d       	add	r22, r0
    1106:	11 24       	eor	r1, r1
    1108:	20 91 0f 01 	lds	r18, 0x010F	; 0x80010f <adjust_digits+0x4>
    110c:	40 91 10 01 	lds	r20, 0x0110	; 0x800110 <adjust_digits+0x5>
    1110:	29 9f       	mul	r18, r25
    1112:	40 0d       	add	r20, r0
    1114:	11 24       	eor	r1, r1
    1116:	4c 33       	cpi	r20, 0x3C	; 60
    1118:	08 f0       	brcs	.+2      	; 0x111c <__stack+0x1d>
    111a:	4b e3       	ldi	r20, 0x3B	; 59
    111c:	6c 33       	cpi	r22, 0x3C	; 60
    111e:	08 f0       	brcs	.+2      	; 0x1122 <__stack+0x23>
    1120:	6b e3       	ldi	r22, 0x3B	; 59
    1122:	88 31       	cpi	r24, 0x18	; 24
    1124:	08 f0       	brcs	.+2      	; 0x1128 <__stack+0x29>
    1126:	87 e1       	ldi	r24, 0x17	; 23
    1128:	0e 94 4b 03 	call	0x696	; 0x696 <clock_set_time>
    112c:	0e 94 dc 02 	call	0x5b8	; 0x5b8 <clock_start>
    1130:	81 e0       	ldi	r24, 0x01	; 1
    1132:	90 e0       	ldi	r25, 0x00	; 0
    1134:	90 93 d1 05 	sts	0x05D1, r25	; 0x8005d1 <current_state+0x1>
    1138:	80 93 d0 05 	sts	0x05D0, r24	; 0x8005d0 <current_state>
    113c:	58 cf       	rjmp	.-336    	; 0xfee <menu_update+0xba>
    113e:	10 92 c0 05 	sts	0x05C0, r1	; 0x8005c0 <adjust_blink_timer>
    1142:	81 e0       	ldi	r24, 0x01	; 1
    1144:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <adjust_blink_phase>
    1148:	91 11       	cpse	r25, r1
    114a:	80 e0       	ldi	r24, 0x00	; 0
    114c:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
    1150:	cf 91       	pop	r28
    1152:	0c 94 82 04 	jmp	0x904	; 0x904 <adjust_update_7seg>
    1156:	22 30       	cpi	r18, 0x02	; 2
    1158:	31 05       	cpc	r19, r1
    115a:	01 f5       	brne	.+64     	; 0x119c <__stack+0x9d>
    115c:	80 ff       	sbrs	r24, 0
    115e:	0b c0       	rjmp	.+22     	; 0x1176 <__stack+0x77>
    1160:	81 e0       	ldi	r24, 0x01	; 1
    1162:	90 e0       	ldi	r25, 0x00	; 0
    1164:	90 93 d1 05 	sts	0x05D1, r25	; 0x8005d1 <current_state+0x1>
    1168:	80 93 d0 05 	sts	0x05D0, r24	; 0x8005d0 <current_state>
    116c:	10 92 c9 05 	sts	0x05C9, r1	; 0x8005c9 <active_action_func+0x1>
    1170:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func>
    1174:	3c cf       	rjmp	.-392    	; 0xfee <menu_update+0xba>
    1176:	e0 91 c8 05 	lds	r30, 0x05C8	; 0x8005c8 <active_action_func>
    117a:	f0 91 c9 05 	lds	r31, 0x05C9	; 0x8005c9 <active_action_func+0x1>
    117e:	30 97       	sbiw	r30, 0x00	; 0
    1180:	09 f4       	brne	.+2      	; 0x1184 <__stack+0x85>
    1182:	41 cf       	rjmp	.-382    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    1184:	80 91 c6 05 	lds	r24, 0x05C6	; 0x8005c6 <action_tick>
    1188:	8f 5f       	subi	r24, 0xFF	; 255
    118a:	8a 30       	cpi	r24, 0x0A	; 10
    118c:	18 f4       	brcc	.+6      	; 0x1194 <__stack+0x95>
    118e:	80 93 c6 05 	sts	0x05C6, r24	; 0x8005c6 <action_tick>
    1192:	39 cf       	rjmp	.-398    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    1194:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <action_tick>
    1198:	cf 91       	pop	r28
    119a:	09 94       	ijmp
    119c:	21 30       	cpi	r18, 0x01	; 1
    119e:	31 05       	cpc	r19, r1
    11a0:	09 f0       	breq	.+2      	; 0x11a4 <__stack+0xa5>
    11a2:	31 cf       	rjmp	.-414    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    11a4:	c3 ff       	sbrs	r28, 3
    11a6:	12 c0       	rjmp	.+36     	; 0x11cc <__stack+0xcd>
    11a8:	0e 94 f4 06 	call	0xde8	; 0xde8 <menu_down>
    11ac:	80 91 ce 05 	lds	r24, 0x05CE	; 0x8005ce <current_menu>
    11b0:	90 91 cf 05 	lds	r25, 0x05CF	; 0x8005cf <current_menu+0x1>
    11b4:	87 5d       	subi	r24, 0xD7	; 215
    11b6:	92 40       	sbci	r25, 0x02	; 2
    11b8:	09 f0       	breq	.+2      	; 0x11bc <__stack+0xbd>
    11ba:	25 cf       	rjmp	.-438    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    11bc:	80 91 c7 05 	lds	r24, 0x05C7	; 0x8005c7 <blink_counter>
    11c0:	8f 5f       	subi	r24, 0xFF	; 255
    11c2:	8e 31       	cpi	r24, 0x1E	; 30
    11c4:	98 f4       	brcc	.+38     	; 0x11ec <__stack+0xed>
    11c6:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <blink_counter>
    11ca:	1d cf       	rjmp	.-454    	; 0x1006 <__DATA_REGION_LENGTH__+0x6>
    11cc:	c2 ff       	sbrs	r28, 2
    11ce:	03 c0       	rjmp	.+6      	; 0x11d6 <__stack+0xd7>
    11d0:	0e 94 17 07 	call	0xe2e	; 0xe2e <menu_up>
    11d4:	eb cf       	rjmp	.-42     	; 0x11ac <__stack+0xad>
    11d6:	98 2f       	mov	r25, r24
    11d8:	92 71       	andi	r25, 0x12	; 18
    11da:	19 f0       	breq	.+6      	; 0x11e2 <__stack+0xe3>
    11dc:	0e 94 3a 07 	call	0xe74	; 0xe74 <menu_enter>
    11e0:	e5 cf       	rjmp	.-54     	; 0x11ac <__stack+0xad>
    11e2:	80 ff       	sbrs	r24, 0
    11e4:	e3 cf       	rjmp	.-58     	; 0x11ac <__stack+0xad>
    11e6:	0e 94 72 07 	call	0xee4	; 0xee4 <menu_back>
    11ea:	e0 cf       	rjmp	.-64     	; 0x11ac <__stack+0xad>
    11ec:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <blink_counter>
    11f0:	81 e0       	ldi	r24, 0x01	; 1
    11f2:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <blink_on>
    11f6:	91 11       	cpse	r25, r1
    11f8:	80 e0       	ldi	r24, 0x00	; 0
    11fa:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
    11fe:	60 e0       	ldi	r22, 0x00	; 0
    1200:	80 e0       	ldi	r24, 0x00	; 0
    1202:	0e 94 57 01 	call	0x2ae	; 0x2ae <lcd_set_cursor>
    1206:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
    120a:	81 11       	cpse	r24, r1
    120c:	05 c0       	rjmp	.+10     	; 0x1218 <__stack+0x119>
    120e:	80 e8       	ldi	r24, 0x80	; 128
    1210:	95 e0       	ldi	r25, 0x05	; 5
    1212:	cf 91       	pop	r28
    1214:	0c 94 7e 01 	jmp	0x2fc	; 0x2fc <lcd_send_string>
    1218:	80 91 ce 05 	lds	r24, 0x05CE	; 0x8005ce <current_menu>
    121c:	90 91 cf 05 	lds	r25, 0x05CF	; 0x8005cf <current_menu+0x1>
    1220:	f8 cf       	rjmp	.-16     	; 0x1212 <__stack+0x113>

00001222 <main>:

int main(void) {
  // Retain the hardware XMEM configuration of the working static menu.
  MCUCR |= (1 << SRE);
    1222:	85 b7       	in	r24, 0x35	; 53
    1224:	80 68       	ori	r24, 0x80	; 128
    1226:	85 bf       	out	0x35, r24	; 53
  lcd_init();
    1228:	0e 94 0c 01 	call	0x218	; 0x218 <lcd_init>
  clock_init();
    122c:	0e 94 5f 03 	call	0x6be	; 0x6be <clock_init>
  menu_init();
    1230:	0e 94 bf 05 	call	0xb7e	; 0xb7e <menu_init>

  // Timer1 provides a 10 ms tick at 16 MHz; PG3/PG4 remain LCD E/RS.
  TCCR1A = 0;
    1234:	1f bc       	out	0x2f, r1	; 47
  TCCR1B = 0;
    1236:	1e bc       	out	0x2e, r1	; 46
  TCNT1 = 0;
    1238:	1d bc       	out	0x2d, r1	; 45
    123a:	1c bc       	out	0x2c, r1	; 44
  OCR1A = (F_CPU / 64UL / 100UL) - 1;
    123c:	83 ec       	ldi	r24, 0xC3	; 195
    123e:	99 e0       	ldi	r25, 0x09	; 9
    1240:	9b bd       	out	0x2b, r25	; 43
    1242:	8a bd       	out	0x2a, r24	; 42
  TIFR = (1 << OCF1A);
    1244:	80 e1       	ldi	r24, 0x10	; 16
    1246:	86 bf       	out	0x36, r24	; 54
  TIMSK |= (1 << OCIE1A);
    1248:	87 b7       	in	r24, 0x37	; 55
    124a:	80 61       	ori	r24, 0x10	; 16
    124c:	87 bf       	out	0x37, r24	; 55
  TCCR1B = (1 << WGM12) | (1 << CS11) | (1 << CS10);
    124e:	8b e0       	ldi	r24, 0x0B	; 11
    1250:	8e bd       	out	0x2e, r24	; 46
  seg7_init(); // Timer0 scans digits and supplies the ONLY 1-second clock tick.
    1252:	0e 94 af 01 	call	0x35e	; 0x35e <seg7_init>
  sei();
    1256:	78 94       	sei

  uint16_t processed = 0;
    1258:	d0 e0       	ldi	r29, 0x00	; 0
    125a:	c0 e0       	ldi	r28, 0x00	; 0

  while (1) {
    uint16_t now;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    125c:	2f b7       	in	r18, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
    125e:	f8 94       	cli
      now = ticks;
    1260:	80 91 af 05 	lds	r24, 0x05AF	; 0x8005af <ticks>
    1264:	90 91 b0 05 	lds	r25, 0x05B0	; 0x8005b0 <ticks+0x1>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
    1268:	2f bf       	out	0x3f, r18	; 63
    }
    if (processed == now) continue;
    126a:	c8 17       	cp	r28, r24
    126c:	d9 07       	cpc	r29, r25
    126e:	b1 f3       	breq	.-20     	; 0x125c <main+0x3a>
    processed++;
    1270:	21 96       	adiw	r28, 0x01	; 1
    button_update(); // Read active-HIGH button bits at CSEL0 (0x1100).
    1272:	0e 94 96 02 	call	0x52c	; 0x52c <button_update>
    menu_update();
    1276:	0e 94 9a 07 	call	0xf34	; 0xf34 <menu_update>
    127a:	f0 cf       	rjmp	.-32     	; 0x125c <main+0x3a>

0000127c <__udivmodqi4>:
    127c:	99 1b       	sub	r25, r25
    127e:	79 e0       	ldi	r23, 0x09	; 9
    1280:	04 c0       	rjmp	.+8      	; 0x128a <__udivmodqi4_ep>

00001282 <__udivmodqi4_loop>:
    1282:	99 1f       	adc	r25, r25
    1284:	96 17       	cp	r25, r22
    1286:	08 f0       	brcs	.+2      	; 0x128a <__udivmodqi4_ep>
    1288:	96 1b       	sub	r25, r22

0000128a <__udivmodqi4_ep>:
    128a:	88 1f       	adc	r24, r24
    128c:	7a 95       	dec	r23
    128e:	c9 f7       	brne	.-14     	; 0x1282 <__udivmodqi4_loop>
    1290:	80 95       	com	r24
    1292:	08 95       	ret

00001294 <__divmodhi4>:
    1294:	97 fb       	bst	r25, 7
    1296:	07 2e       	mov	r0, r23
    1298:	16 f4       	brtc	.+4      	; 0x129e <__divmodhi4+0xa>
    129a:	00 94       	com	r0
    129c:	07 d0       	rcall	.+14     	; 0x12ac <__divmodhi4_neg1>
    129e:	77 fd       	sbrc	r23, 7
    12a0:	09 d0       	rcall	.+18     	; 0x12b4 <__divmodhi4_neg2>
    12a2:	0e 94 80 09 	call	0x1300	; 0x1300 <__udivmodhi4>
    12a6:	07 fc       	sbrc	r0, 7
    12a8:	05 d0       	rcall	.+10     	; 0x12b4 <__divmodhi4_neg2>
    12aa:	3e f4       	brtc	.+14     	; 0x12ba <__divmodhi4_exit>

000012ac <__divmodhi4_neg1>:
    12ac:	90 95       	com	r25
    12ae:	81 95       	neg	r24
    12b0:	9f 4f       	sbci	r25, 0xFF	; 255
    12b2:	08 95       	ret

000012b4 <__divmodhi4_neg2>:
    12b4:	70 95       	com	r23
    12b6:	61 95       	neg	r22
    12b8:	7f 4f       	sbci	r23, 0xFF	; 255

000012ba <__divmodhi4_exit>:
    12ba:	08 95       	ret

000012bc <__udivmodsi4>:
    12bc:	a1 e2       	ldi	r26, 0x21	; 33
    12be:	1a 2e       	mov	r1, r26
    12c0:	aa 1b       	sub	r26, r26
    12c2:	bb 1b       	sub	r27, r27
    12c4:	fd 01       	movw	r30, r26
    12c6:	0d c0       	rjmp	.+26     	; 0x12e2 <__udivmodsi4_ep>

000012c8 <__udivmodsi4_loop>:
    12c8:	aa 1f       	adc	r26, r26
    12ca:	bb 1f       	adc	r27, r27
    12cc:	ee 1f       	adc	r30, r30
    12ce:	ff 1f       	adc	r31, r31
    12d0:	a2 17       	cp	r26, r18
    12d2:	b3 07       	cpc	r27, r19
    12d4:	e4 07       	cpc	r30, r20
    12d6:	f5 07       	cpc	r31, r21
    12d8:	20 f0       	brcs	.+8      	; 0x12e2 <__udivmodsi4_ep>
    12da:	a2 1b       	sub	r26, r18
    12dc:	b3 0b       	sbc	r27, r19
    12de:	e4 0b       	sbc	r30, r20
    12e0:	f5 0b       	sbc	r31, r21

000012e2 <__udivmodsi4_ep>:
    12e2:	66 1f       	adc	r22, r22
    12e4:	77 1f       	adc	r23, r23
    12e6:	88 1f       	adc	r24, r24
    12e8:	99 1f       	adc	r25, r25
    12ea:	1a 94       	dec	r1
    12ec:	69 f7       	brne	.-38     	; 0x12c8 <__udivmodsi4_loop>
    12ee:	60 95       	com	r22
    12f0:	70 95       	com	r23
    12f2:	80 95       	com	r24
    12f4:	90 95       	com	r25
    12f6:	9b 01       	movw	r18, r22
    12f8:	ac 01       	movw	r20, r24
    12fa:	bd 01       	movw	r22, r26
    12fc:	cf 01       	movw	r24, r30
    12fe:	08 95       	ret

00001300 <__udivmodhi4>:
    1300:	aa 1b       	sub	r26, r26
    1302:	bb 1b       	sub	r27, r27
    1304:	51 e1       	ldi	r21, 0x11	; 17
    1306:	07 c0       	rjmp	.+14     	; 0x1316 <__udivmodhi4_ep>

00001308 <__udivmodhi4_loop>:
    1308:	aa 1f       	adc	r26, r26
    130a:	bb 1f       	adc	r27, r27
    130c:	a6 17       	cp	r26, r22
    130e:	b7 07       	cpc	r27, r23
    1310:	10 f0       	brcs	.+4      	; 0x1316 <__udivmodhi4_ep>
    1312:	a6 1b       	sub	r26, r22
    1314:	b7 0b       	sbc	r27, r23

00001316 <__udivmodhi4_ep>:
    1316:	88 1f       	adc	r24, r24
    1318:	99 1f       	adc	r25, r25
    131a:	5a 95       	dec	r21
    131c:	a9 f7       	brne	.-22     	; 0x1308 <__udivmodhi4_loop>
    131e:	80 95       	com	r24
    1320:	90 95       	com	r25
    1322:	bc 01       	movw	r22, r24
    1324:	cd 01       	movw	r24, r26
    1326:	08 95       	ret

00001328 <_exit>:
    1328:	f8 94       	cli

0000132a <__stop_program>:
    132a:	ff cf       	rjmp	.-2      	; 0x132a <__stop_program>
