
build/segtest/segtest.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__ctors_end>
   4:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   8:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
   c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  10:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  14:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  18:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  1c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  20:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  24:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  28:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  2c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  30:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  34:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  38:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  3c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  40:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  44:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  48:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  4c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  50:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  54:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  58:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  5c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  60:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  64:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  68:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  6c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  70:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  74:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  78:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  7c:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  80:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  84:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>
  88:	0c 94 5d 00 	jmp	0xba	; 0xba <__bad_interrupt>

0000008c <__ctors_end>:
  8c:	11 24       	eor	r1, r1
  8e:	1f be       	out	0x3f, r1	; 63
  90:	cf ef       	ldi	r28, 0xFF	; 255
  92:	d0 e1       	ldi	r29, 0x10	; 16
  94:	de bf       	out	0x3e, r29	; 62
  96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
  98:	11 e0       	ldi	r17, 0x01	; 1
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	e4 ee       	ldi	r30, 0xE4	; 228
  a0:	f3 e0       	ldi	r31, 0x03	; 3
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	ac 39       	cpi	r26, 0x9C	; 156
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>
  b2:	0e 94 46 01 	call	0x28c	; 0x28c <main>
  b6:	0c 94 f0 01 	jmp	0x3e0	; 0x3e0 <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000be <lcd_send_cmd>:
#define PG4 4

#include <avr/interrupt.h>

void lcd_send_cmd(uint8_t cmd) {
  uint8_t sreg = SREG;
  be:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
  c0:	f8 94       	cli
  PORTG_REG &= ~(1 << PG4);   // Dedicated LCD RS LOW: command
  c2:	e5 e6       	ldi	r30, 0x65	; 101
  c4:	f0 e0       	ldi	r31, 0x00	; 0
  c6:	90 81       	ld	r25, Z
  c8:	9f 7e       	andi	r25, 0xEF	; 239
  ca:	90 83       	st	Z, r25
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
  cc:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <_end+0xf66>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
  d0:	85 e0       	ldi	r24, 0x05	; 5
  d2:	98 2f       	mov	r25, r24
  d4:	9a 95       	dec	r25
  d6:	f1 f7       	brne	.-4      	; 0xd4 <lcd_send_cmd+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL2, cmd);          // CSEL2 loads the LCD data latch
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
  d8:	90 81       	ld	r25, Z
  da:	98 60       	ori	r25, 0x08	; 8
  dc:	90 83       	st	Z, r25
  de:	9a e0       	ldi	r25, 0x0A	; 10
  e0:	9a 95       	dec	r25
  e2:	f1 f7       	brne	.-4      	; 0xe0 <lcd_send_cmd+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches command)
  e4:	90 81       	ld	r25, Z
  e6:	97 7f       	andi	r25, 0xF7	; 247
  e8:	90 83       	st	Z, r25
  ea:	8a 95       	dec	r24
  ec:	f1 f7       	brne	.-4      	; 0xea <lcd_send_cmd+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
  ee:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
  f0:	80 e9       	ldi	r24, 0x90	; 144
  f2:	91 e0       	ldi	r25, 0x01	; 1
  f4:	01 97       	sbiw	r24, 0x01	; 1
  f6:	f1 f7       	brne	.-4      	; 0xf4 <lcd_send_cmd+0x36>
  _delay_us(100);             // Standard command execution time (> 37 us)
}
  f8:	08 95       	ret

000000fa <lcd_send_data>:


void lcd_send_data(uint8_t data) {
  uint8_t sreg = SREG;
  fa:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
  fc:	f8 94       	cli
  PORTG_REG |= (1 << PG4);    // Dedicated LCD RS HIGH: character data
  fe:	e5 e6       	ldi	r30, 0x65	; 101
 100:	f0 e0       	ldi	r31, 0x00	; 0
 102:	90 81       	ld	r25, Z
 104:	90 61       	ori	r25, 0x10	; 16
 106:	90 83       	st	Z, r25
 108:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <_end+0xf65>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
 10c:	85 e0       	ldi	r24, 0x05	; 5
 10e:	98 2f       	mov	r25, r24
 110:	9a 95       	dec	r25
 112:	f1 f7       	brne	.-4      	; 0x110 <lcd_send_data+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL1, data);        // CSEL1 loads the LCD data latch

  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
 114:	90 81       	ld	r25, Z
 116:	98 60       	ori	r25, 0x08	; 8
 118:	90 83       	st	Z, r25
 11a:	9a e0       	ldi	r25, 0x0A	; 10
 11c:	9a 95       	dec	r25
 11e:	f1 f7       	brne	.-4      	; 0x11c <lcd_send_data+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
 120:	90 81       	ld	r25, Z
 122:	97 7f       	andi	r25, 0xF7	; 247
 124:	90 83       	st	Z, r25
 126:	8a 95       	dec	r24
 128:	f1 f7       	brne	.-4      	; 0x126 <lcd_send_data+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
 12a:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 12c:	88 ec       	ldi	r24, 0xC8	; 200
 12e:	90 e0       	ldi	r25, 0x00	; 0
 130:	01 97       	sbiw	r24, 0x01	; 1
 132:	f1 f7       	brne	.-4      	; 0x130 <lcd_send_data+0x36>

  _delay_us(50);              // Standard data execution time (> 43 us)
}
 134:	08 95       	ret

00000136 <lcd_clear>:
  lcd_send_cmd(0x06);
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
 136:	81 e0       	ldi	r24, 0x01	; 1
 138:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 13c:	80 e4       	ldi	r24, 0x40	; 64
 13e:	9c e9       	ldi	r25, 0x9C	; 156
 140:	01 97       	sbiw	r24, 0x01	; 1
 142:	f1 f7       	brne	.-4      	; 0x140 <lcd_clear+0xa>
  _delay_ms(10);
}
 144:	08 95       	ret

00000146 <lcd_init>:
  SREG = sreg;                // Restore interrupts

  _delay_us(50);              // Standard data execution time (> 43 us)
}

void lcd_init(void){
 146:	0f 93       	push	r16
 148:	1f 93       	push	r17
 14a:	cf 93       	push	r28
 14c:	df 93       	push	r29
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
 14e:	80 b7       	in	r24, 0x30	; 48
 150:	87 7f       	andi	r24, 0xF7	; 247
 152:	80 bf       	out	0x30, r24	; 48
  PORTG_REG &= ~((1 << PG3) | (1 << PG4));
 154:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 158:	87 7e       	andi	r24, 0xE7	; 231
 15a:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  DDRG_REG |= (1 << PG3) | (1 << PG4);
 15e:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 162:	88 61       	ori	r24, 0x18	; 24
 164:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 168:	88 ee       	ldi	r24, 0xE8	; 232
 16a:	93 e0       	ldi	r25, 0x03	; 3
 16c:	20 e9       	ldi	r18, 0x90	; 144
 16e:	31 e0       	ldi	r19, 0x01	; 1
 170:	f9 01       	movw	r30, r18
 172:	31 97       	sbiw	r30, 0x01	; 1
 174:	f1 f7       	brne	.-4      	; 0x172 <lcd_init+0x2c>
 176:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
 178:	d9 f7       	brne	.-10     	; 0x170 <lcd_init+0x2a>

  // Power-on delay for HD44780
  _delay_ms(100);

  // Standard HD44780 8-bit initialization sequence
  lcd_send_cmd(0x38);
 17a:	88 e3       	ldi	r24, 0x38	; 56
 17c:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 180:	00 e4       	ldi	r16, 0x40	; 64
 182:	1c e9       	ldi	r17, 0x9C	; 156
 184:	c8 01       	movw	r24, r16
 186:	01 97       	sbiw	r24, 0x01	; 1
 188:	f1 f7       	brne	.-4      	; 0x186 <lcd_init+0x40>
  _delay_ms(10);
  lcd_send_cmd(0x38);
 18a:	88 e3       	ldi	r24, 0x38	; 56
 18c:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 190:	c0 e2       	ldi	r28, 0x20	; 32
 192:	de e4       	ldi	r29, 0x4E	; 78
 194:	ce 01       	movw	r24, r28
 196:	01 97       	sbiw	r24, 0x01	; 1
 198:	f1 f7       	brne	.-4      	; 0x196 <lcd_init+0x50>
  _delay_ms(5);
  lcd_send_cmd(0x38);
 19a:	88 e3       	ldi	r24, 0x38	; 56
 19c:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 1a0:	ce 01       	movw	r24, r28
 1a2:	01 97       	sbiw	r24, 0x01	; 1
 1a4:	f1 f7       	brne	.-4      	; 0x1a2 <lcd_init+0x5c>
  _delay_ms(5);

  // Function set: 8-bit, 2 lines, 5x8 font
  lcd_send_cmd(0x38);
 1a6:	88 e3       	ldi	r24, 0x38	; 56
 1a8:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 1ac:	ce 01       	movw	r24, r28
 1ae:	01 97       	sbiw	r24, 0x01	; 1
 1b0:	f1 f7       	brne	.-4      	; 0x1ae <lcd_init+0x68>
  _delay_ms(5);

  // Display ON, Cursor OFF, Blink OFF (0x0C) for clean look
  lcd_send_cmd(0x0C);
 1b2:	8c e0       	ldi	r24, 0x0C	; 12
 1b4:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 1b8:	ce 01       	movw	r24, r28
 1ba:	01 97       	sbiw	r24, 0x01	; 1
 1bc:	f1 f7       	brne	.-4      	; 0x1ba <lcd_init+0x74>
  _delay_ms(5);

  // Clear display (clears the 2 solid black rows)
  lcd_clear();
 1be:	0e 94 9b 00 	call	0x136	; 0x136 <lcd_clear>
 1c2:	c8 01       	movw	r24, r16
 1c4:	01 97       	sbiw	r24, 0x01	; 1
 1c6:	f1 f7       	brne	.-4      	; 0x1c4 <lcd_init+0x7e>
  _delay_ms(10);

  // Entry mode set: increment cursor, no display shift
  lcd_send_cmd(0x06);
 1c8:	86 e0       	ldi	r24, 0x06	; 6
 1ca:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 1ce:	21 97       	sbiw	r28, 0x01	; 1
 1d0:	f1 f7       	brne	.-4      	; 0x1ce <lcd_init+0x88>
  _delay_ms(5);
}
 1d2:	df 91       	pop	r29
 1d4:	cf 91       	pop	r28
 1d6:	1f 91       	pop	r17
 1d8:	0f 91       	pop	r16
 1da:	08 95       	ret

000001dc <lcd_set_cursor>:
void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(10);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
 1dc:	0f 93       	push	r16
 1de:	1f 93       	push	r17
 1e0:	cf 93       	push	r28
 1e2:	df 93       	push	r29
 1e4:	00 d0       	rcall	.+0      	; 0x1e6 <lcd_set_cursor+0xa>
 1e6:	00 d0       	rcall	.+0      	; 0x1e8 <lcd_set_cursor+0xc>
 1e8:	cd b7       	in	r28, 0x3d	; 61
 1ea:	de b7       	in	r29, 0x3e	; 62
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
 1ec:	00 91 00 01 	lds	r16, 0x0100	; 0x800100 <__DATA_REGION_ORIGIN__>
 1f0:	10 91 01 01 	lds	r17, 0x0101	; 0x800101 <__DATA_REGION_ORIGIN__+0x1>
 1f4:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__DATA_REGION_ORIGIN__+0x2>
 1f8:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__DATA_REGION_ORIGIN__+0x3>
 1fc:	09 83       	std	Y+1, r16	; 0x01
 1fe:	1a 83       	std	Y+2, r17	; 0x02
 200:	2b 83       	std	Y+3, r18	; 0x03
 202:	3c 83       	std	Y+4, r19	; 0x04
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 204:	84 30       	cpi	r24, 0x04	; 4
 206:	08 f0       	brcs	.+2      	; 0x20a <lcd_set_cursor+0x2e>
 208:	83 e0       	ldi	r24, 0x03	; 3
 20a:	fe 01       	movw	r30, r28
 20c:	e8 0f       	add	r30, r24
 20e:	f1 1d       	adc	r31, r1
 210:	81 81       	ldd	r24, Z+1	; 0x01
 212:	86 0f       	add	r24, r22
 214:	80 68       	ori	r24, 0x80	; 128
}
 216:	0f 90       	pop	r0
 218:	0f 90       	pop	r0
 21a:	0f 90       	pop	r0
 21c:	0f 90       	pop	r0
 21e:	df 91       	pop	r29
 220:	cf 91       	pop	r28
 222:	1f 91       	pop	r17
 224:	0f 91       	pop	r16
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 226:	0c 94 5f 00 	jmp	0xbe	; 0xbe <lcd_send_cmd>

0000022a <lcd_send_string>:
}

void lcd_send_string(const char* str){
 22a:	cf 93       	push	r28
 22c:	df 93       	push	r29
 22e:	ec 01       	movw	r28, r24
  while(*str){
 230:	89 91       	ld	r24, Y+
 232:	81 11       	cpse	r24, r1
 234:	03 c0       	rjmp	.+6      	; 0x23c <lcd_send_string+0x12>
    lcd_send_data(*str++);
  }
}
 236:	df 91       	pop	r29
 238:	cf 91       	pop	r28
 23a:	08 95       	ret
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
 23c:	0e 94 7d 00 	call	0xfa	; 0xfa <lcd_send_data>
 240:	f7 cf       	rjmp	.-18     	; 0x230 <lcd_send_string+0x6>

00000242 <lcd_send_string_animated>:
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
 242:	ef 92       	push	r14
 244:	ff 92       	push	r15
 246:	0f 93       	push	r16
 248:	1f 93       	push	r17
 24a:	cf 93       	push	r28
 24c:	df 93       	push	r29
 24e:	8b 01       	movw	r16, r22
 250:	ec 01       	movw	r28, r24
 252:	80 ea       	ldi	r24, 0xA0	; 160
 254:	e8 2e       	mov	r14, r24
 256:	8f e0       	ldi	r24, 0x0F	; 15
 258:	f8 2e       	mov	r15, r24
  while (*str) {
 25a:	89 91       	ld	r24, Y+
 25c:	81 11       	cpse	r24, r1
 25e:	07 c0       	rjmp	.+14     	; 0x26e <lcd_send_string_animated+0x2c>
    lcd_send_data(*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
      _delay_ms(1);
    }
  }
}
 260:	df 91       	pop	r29
 262:	cf 91       	pop	r28
 264:	1f 91       	pop	r17
 266:	0f 91       	pop	r16
 268:	ff 90       	pop	r15
 26a:	ef 90       	pop	r14
 26c:	08 95       	ret
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data(*str++);
 26e:	0e 94 7d 00 	call	0xfa	; 0xfa <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
 272:	90 e0       	ldi	r25, 0x00	; 0
 274:	80 e0       	ldi	r24, 0x00	; 0
 276:	80 17       	cp	r24, r16
 278:	91 07       	cpc	r25, r17
 27a:	79 f3       	breq	.-34     	; 0x25a <lcd_send_string_animated+0x18>
 27c:	f7 01       	movw	r30, r14
 27e:	31 97       	sbiw	r30, 0x01	; 1
 280:	f1 f7       	brne	.-4      	; 0x27e <lcd_send_string_animated+0x3c>
 282:	01 96       	adiw	r24, 0x01	; 1
 284:	f8 cf       	rjmp	.-16     	; 0x276 <lcd_send_string_animated+0x34>

00000286 <lcd_display>:
 286:	8c e0       	ldi	r24, 0x0C	; 12
 288:	0c 94 5f 00 	jmp	0xbe	; 0xbe <lcd_send_cmd>

0000028c <main>:
    LED_7CONTROL = 0;
    LED_7DATA = 0;
}

int main(void) {
    cli();
 28c:	f8 94       	cli
    MCUCR |= (1 << SRE);
 28e:	85 b7       	in	r24, 0x35	; 53
 290:	80 68       	ori	r24, 0x80	; 128
 292:	85 bf       	out	0x35, r24	; 53
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

static void blank_digits(void) {
    LED_7CONTROL = 0;
 294:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <_end+0xf67>
    LED_7DATA = 0;
 298:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <_end+0xf68>

int main(void) {
    cli();
    MCUCR |= (1 << SRE);
    blank_digits();
    lcd_init();
 29c:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_init>
    lcd_set_cursor(0, 0);
 2a0:	60 e0       	ldi	r22, 0x00	; 0
 2a2:	80 e0       	ldi	r24, 0x00	; 0
 2a4:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
    lcd_send_string("7SEG STATIC TEST");
 2a8:	84 e0       	ldi	r24, 0x04	; 4
 2aa:	91 e0       	ldi	r25, 0x01	; 1
 2ac:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_send_string("  PATTERN: 8");
            lcd_set_cursor(2, 0);
            lcd_send_string("Q0=LEFT ... Q5=RIGHT");
            lcd_set_cursor(3, 0);
            lcd_send_string("DATA=7F  DP OFF     ");
            LED_7DATA = 0x7F;
 2b0:	8f e7       	ldi	r24, 0x7F	; 127
 2b2:	b8 2e       	mov	r11, r24
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
 2b4:	05 e3       	ldi	r16, 0x35	; 53
            _delay_us(10);
            LED_7CONTROL = (1 << digit);
 2b6:	ee 24       	eor	r14, r14
 2b8:	e3 94       	inc	r14
 2ba:	f1 2c       	mov	r15, r1
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 2bc:	20 e9       	ldi	r18, 0x90	; 144
 2be:	c2 2e       	mov	r12, r18
 2c0:	dd 24       	eor	r13, r13
 2c2:	d3 94       	inc	r13
static void blank_digits(void) {
    LED_7CONTROL = 0;
    LED_7DATA = 0;
}

int main(void) {
 2c4:	d0 e0       	ldi	r29, 0x00	; 0
 2c6:	c0 e0       	ldi	r28, 0x00	; 0
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

static void blank_digits(void) {
    LED_7CONTROL = 0;
 2c8:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <_end+0xf67>
    LED_7DATA = 0;
 2cc:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <_end+0xf68>
    lcd_send_string("7SEG STATIC TEST");
    while (1) {
        // One digit at a time: a..g ON, decimal point OFF.
        for (uint8_t digit = 0; digit < 6; digit++) {
            blank_digits();
            lcd_set_cursor(1, 0);
 2d0:	60 e0       	ldi	r22, 0x00	; 0
 2d2:	81 e0       	ldi	r24, 0x01	; 1
 2d4:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("DIGIT: ");
 2d8:	85 e1       	ldi	r24, 0x15	; 21
 2da:	91 e0       	ldi	r25, 0x01	; 1
 2dc:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_send_data('1' + digit);
 2e0:	8c 2f       	mov	r24, r28
 2e2:	8f 5c       	subi	r24, 0xCF	; 207
 2e4:	0e 94 7d 00 	call	0xfa	; 0xfa <lcd_send_data>
            lcd_send_string("  PATTERN: 8");
 2e8:	8d e1       	ldi	r24, 0x1D	; 29
 2ea:	91 e0       	ldi	r25, 0x01	; 1
 2ec:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_set_cursor(2, 0);
 2f0:	60 e0       	ldi	r22, 0x00	; 0
 2f2:	82 e0       	ldi	r24, 0x02	; 2
 2f4:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("Q0=LEFT ... Q5=RIGHT");
 2f8:	8a e2       	ldi	r24, 0x2A	; 42
 2fa:	91 e0       	ldi	r25, 0x01	; 1
 2fc:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_set_cursor(3, 0);
 300:	60 e0       	ldi	r22, 0x00	; 0
 302:	83 e0       	ldi	r24, 0x03	; 3
 304:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("DATA=7F  DP OFF     ");
 308:	8f e3       	ldi	r24, 0x3F	; 63
 30a:	91 e0       	ldi	r25, 0x01	; 1
 30c:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            LED_7DATA = 0x7F;
 310:	b0 92 04 11 	sts	0x1104, r11	; 0x801104 <_end+0xf68>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
 314:	80 2f       	mov	r24, r16
 316:	8a 95       	dec	r24
 318:	f1 f7       	brne	.-4      	; 0x316 <main+0x8a>
            _delay_us(10);
            LED_7CONTROL = (1 << digit);
 31a:	c7 01       	movw	r24, r14
 31c:	0c 2e       	mov	r0, r28
 31e:	01 c0       	rjmp	.+2      	; 0x322 <main+0x96>
 320:	88 0f       	add	r24, r24
 322:	0a 94       	dec	r0
 324:	ea f7       	brpl	.-6      	; 0x320 <main+0x94>
 326:	80 93 03 11 	sts	0x1103, r24	; 0x801103 <_end+0xf67>
 32a:	80 e2       	ldi	r24, 0x20	; 32
 32c:	9e e4       	ldi	r25, 0x4E	; 78
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 32e:	f6 01       	movw	r30, r12
 330:	31 97       	sbiw	r30, 0x01	; 1
 332:	f1 f7       	brne	.-4      	; 0x330 <main+0xa4>
 334:	01 97       	sbiw	r24, 0x01	; 1
 336:	d9 f7       	brne	.-10     	; 0x32e <main+0xa2>
 338:	21 96       	adiw	r28, 0x01	; 1
    lcd_init();
    lcd_set_cursor(0, 0);
    lcd_send_string("7SEG STATIC TEST");
    while (1) {
        // One digit at a time: a..g ON, decimal point OFF.
        for (uint8_t digit = 0; digit < 6; digit++) {
 33a:	c6 30       	cpi	r28, 0x06	; 6
 33c:	d1 05       	cpc	r29, r1
 33e:	09 f0       	breq	.+2      	; 0x342 <main+0xb6>
 340:	c3 cf       	rjmp	.-122    	; 0x2c8 <main+0x3c>
 342:	10 e3       	ldi	r17, 0x30	; 48
 344:	d0 e0       	ldi	r29, 0x00	; 0
 346:	c0 e0       	ldi	r28, 0x00	; 0
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

static void blank_digits(void) {
    LED_7CONTROL = 0;
 348:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <_end+0xf67>
    LED_7DATA = 0;
 34c:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <_end+0xf68>
            _delay_ms(2000);
        }
        // Walking bit on Q0's digit: identify physical segment bit mapping.
        for (uint8_t bit = 0; bit < 8; bit++) {
            blank_digits();
            lcd_set_cursor(1, 0);
 350:	60 e0       	ldi	r22, 0x00	; 0
 352:	81 e0       	ldi	r24, 0x01	; 1
 354:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("Q0 DIGIT, BIT: ");
 358:	84 e5       	ldi	r24, 0x54	; 84
 35a:	91 e0       	ldi	r25, 0x01	; 1
 35c:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_send_data('0' + bit);
 360:	81 2f       	mov	r24, r17
 362:	0e 94 7d 00 	call	0xfa	; 0xfa <lcd_send_data>
            lcd_send_string("    ");
 366:	84 e7       	ldi	r24, 0x74	; 116
 368:	91 e0       	ldi	r25, 0x01	; 1
 36a:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            lcd_set_cursor(2, 0);
 36e:	60 e0       	ldi	r22, 0x00	; 0
 370:	82 e0       	ldi	r24, 0x02	; 2
 372:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("EXPECT: ");
 376:	84 e6       	ldi	r24, 0x64	; 100
 378:	91 e0       	ldi	r25, 0x01	; 1
 37a:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            if (bit < 7) {
 37e:	c7 30       	cpi	r28, 0x07	; 7
 380:	61 f1       	breq	.+88     	; 0x3da <main+0x14e>
                lcd_send_data('a' + bit);
 382:	81 e3       	ldi	r24, 0x31	; 49
 384:	81 0f       	add	r24, r17
 386:	0e 94 7d 00 	call	0xfa	; 0xfa <lcd_send_data>
                lcd_send_string("           ");
 38a:	8d e6       	ldi	r24, 0x6D	; 109
 38c:	91 e0       	ldi	r25, 0x01	; 1
            } else {
                lcd_send_string("dp          ");
 38e:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            }
            lcd_set_cursor(3, 0);
 392:	60 e0       	ldi	r22, 0x00	; 0
 394:	83 e0       	ldi	r24, 0x03	; 3
 396:	0e 94 ee 00 	call	0x1dc	; 0x1dc <lcd_set_cursor>
            lcd_send_string("ONE SEGMENT ONLY    ");
 39a:	86 e8       	ldi	r24, 0x86	; 134
 39c:	91 e0       	ldi	r25, 0x01	; 1
 39e:	0e 94 15 01 	call	0x22a	; 0x22a <lcd_send_string>
            LED_7DATA = (1 << bit);
 3a2:	c7 01       	movw	r24, r14
 3a4:	0c 2e       	mov	r0, r28
 3a6:	01 c0       	rjmp	.+2      	; 0x3aa <main+0x11e>
 3a8:	88 0f       	add	r24, r24
 3aa:	0a 94       	dec	r0
 3ac:	ea f7       	brpl	.-6      	; 0x3a8 <main+0x11c>
 3ae:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <_end+0xf68>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
 3b2:	80 2f       	mov	r24, r16
 3b4:	8a 95       	dec	r24
 3b6:	f1 f7       	brne	.-4      	; 0x3b4 <main+0x128>
            _delay_us(10);
            LED_7CONTROL = 0x01;
 3b8:	81 e0       	ldi	r24, 0x01	; 1
 3ba:	80 93 03 11 	sts	0x1103, r24	; 0x801103 <_end+0xf67>
 3be:	80 e2       	ldi	r24, 0x20	; 32
 3c0:	9e e4       	ldi	r25, 0x4E	; 78
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 3c2:	f6 01       	movw	r30, r12
 3c4:	31 97       	sbiw	r30, 0x01	; 1
 3c6:	f1 f7       	brne	.-4      	; 0x3c4 <main+0x138>
 3c8:	01 97       	sbiw	r24, 0x01	; 1
 3ca:	d9 f7       	brne	.-10     	; 0x3c2 <main+0x136>
 3cc:	21 96       	adiw	r28, 0x01	; 1
 3ce:	1f 5f       	subi	r17, 0xFF	; 255
            _delay_us(10);
            LED_7CONTROL = (1 << digit);
            _delay_ms(2000);
        }
        // Walking bit on Q0's digit: identify physical segment bit mapping.
        for (uint8_t bit = 0; bit < 8; bit++) {
 3d0:	c8 30       	cpi	r28, 0x08	; 8
 3d2:	d1 05       	cpc	r29, r1
 3d4:	09 f0       	breq	.+2      	; 0x3d8 <main+0x14c>
 3d6:	b8 cf       	rjmp	.-144    	; 0x348 <main+0xbc>
 3d8:	75 cf       	rjmp	.-278    	; 0x2c4 <main+0x38>
            lcd_send_string("EXPECT: ");
            if (bit < 7) {
                lcd_send_data('a' + bit);
                lcd_send_string("           ");
            } else {
                lcd_send_string("dp          ");
 3da:	89 e7       	ldi	r24, 0x79	; 121
 3dc:	91 e0       	ldi	r25, 0x01	; 1
 3de:	d7 cf       	rjmp	.-82     	; 0x38e <main+0x102>

000003e0 <_exit>:
 3e0:	f8 94       	cli

000003e2 <__stop_program>:
 3e2:	ff cf       	rjmp	.-2      	; 0x3e2 <__stop_program>
