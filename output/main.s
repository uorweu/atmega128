
build/main/main.elf:     file format elf32-avr


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
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  3c:	0c 94 9e 02 	jmp	0x53c	; 0x53c <__vector_15>
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
  98:	13 e0       	ldi	r17, 0x03	; 3
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	e4 e1       	ldi	r30, 0x14	; 20
  a0:	fd e0       	ldi	r31, 0x0D	; 13
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	aa 34       	cpi	r26, 0x4A	; 74
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	23 e0       	ldi	r18, 0x03	; 3
  b4:	aa e4       	ldi	r26, 0x4A	; 74
  b6:	b3 e0       	ldi	r27, 0x03	; 3
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	ac 39       	cpi	r26, 0x9C	; 156
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 f3 05 	call	0xbe6	; 0xbe6 <main>
  c6:	0c 94 88 06 	jmp	0xd10	; 0xd10 <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <lcd_write>:

/* Main-context API: ISRs may use the shared bus, but must not call the LCD.
 * Keep RS, the data latch, and E atomic; leave execution waits interruptible.
 */
static void lcd_write(uint8_t value, uint8_t is_data) {
  uint8_t sreg = SREG;
  ce:	2f b7       	in	r18, 0x3f	; 63
  cli();
  d0:	f8 94       	cli
  if (is_data) {
    PORTG |= LCD_RS_MASK;
  d2:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 * Keep RS, the data latch, and E atomic; leave execution waits interruptible.
 */
static void lcd_write(uint8_t value, uint8_t is_data) {
  uint8_t sreg = SREG;
  cli();
  if (is_data) {
  d6:	66 23       	and	r22, r22
  d8:	d1 f0       	breq	.+52     	; 0x10e <lcd_write+0x40>
    PORTG |= LCD_RS_MASK;
  da:	90 61       	ori	r25, 0x10	; 16
  dc:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
  e0:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xd65>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
  e4:	85 e0       	ldi	r24, 0x05	; 5
  e6:	98 2f       	mov	r25, r24
  e8:	9a 95       	dec	r25
  ea:	f1 f7       	brne	.-4      	; 0xe8 <lcd_write+0x1a>
  } else {
    PORTG &= ~LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL2, value);
  }
  _delay_us(1);
  PORTG |= LCD_E_MASK;
  ec:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  f0:	98 60       	ori	r25, 0x08	; 8
  f2:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  f6:	9a e0       	ldi	r25, 0x0A	; 10
  f8:	9a 95       	dec	r25
  fa:	f1 f7       	brne	.-4      	; 0xf8 <lcd_write+0x2a>
  _delay_us(2);
  PORTG &= ~LCD_E_MASK;
  fc:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 100:	97 7f       	andi	r25, 0xF7	; 247
 102:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 106:	8a 95       	dec	r24
 108:	f1 f7       	brne	.-4      	; 0x106 <lcd_write+0x38>
  _delay_us(1);
  SREG = sreg;
 10a:	2f bf       	out	0x3f, r18	; 63
}
 10c:	08 95       	ret
  cli();
  if (is_data) {
    PORTG |= LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL1, value);
  } else {
    PORTG &= ~LCD_RS_MASK;
 10e:	9f 7e       	andi	r25, 0xEF	; 239
 110:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 114:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xd66>
 118:	e5 cf       	rjmp	.-54     	; 0xe4 <lcd_write+0x16>

0000011a <lcd_send_cmd>:
  PORTG &= ~LCD_E_MASK;
  _delay_us(1);
  SREG = sreg;
}

void lcd_send_cmd(uint8_t cmd) {
 11a:	cf 93       	push	r28
 11c:	c8 2f       	mov	r28, r24
  lcd_write(cmd, 0);
 11e:	60 e0       	ldi	r22, 0x00	; 0
 120:	0e 94 67 00 	call	0xce	; 0xce <lcd_write>
  /* Clear and both return-home encodings need a long wait. R/W is grounded.
   * HD44780U: 1.52 ms / 37 us at 270 kHz; allow for a 190 kHz oscillator.
   */
  if (cmd == 0x01 || (cmd & 0xFE) == 0x02) {
 124:	c1 30       	cpi	r28, 0x01	; 1
 126:	29 f0       	breq	.+10     	; 0x132 <lcd_send_cmd+0x18>
 128:	ce 7f       	andi	r28, 0xFE	; 254
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 12a:	80 ef       	ldi	r24, 0xF0	; 240
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	c2 30       	cpi	r28, 0x02	; 2
 130:	11 f4       	brne	.+4      	; 0x136 <lcd_send_cmd+0x1c>
 132:	80 ee       	ldi	r24, 0xE0	; 224
 134:	9e e2       	ldi	r25, 0x2E	; 46
 136:	01 97       	sbiw	r24, 0x01	; 1
 138:	f1 f7       	brne	.-4      	; 0x136 <lcd_send_cmd+0x1c>
    _delay_ms(3);
  } else {
    _delay_us(60);
  }
}
 13a:	cf 91       	pop	r28
 13c:	08 95       	ret

0000013e <lcd_send_data>:

void lcd_send_data(uint8_t data) {
  lcd_write(data, 1);
 13e:	61 e0       	ldi	r22, 0x01	; 1
 140:	0e 94 67 00 	call	0xce	; 0xce <lcd_write>
 144:	80 ef       	ldi	r24, 0xF0	; 240
 146:	90 e0       	ldi	r25, 0x00	; 0
 148:	01 97       	sbiw	r24, 0x01	; 1
 14a:	f1 f7       	brne	.-4      	; 0x148 <lcd_send_data+0xa>
  /* Includes oscillator margin and the address-counter update time. */
  _delay_us(60);
}
 14c:	08 95       	ret

0000014e <lcd_clear>:
  lcd_send_cmd(0x06); // Increment cursor, no display shift
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
 14e:	81 e0       	ldi	r24, 0x01	; 1
 150:	0c 94 8d 00 	jmp	0x11a	; 0x11a <lcd_send_cmd>

00000154 <lcd_set_cursor>:
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
 154:	84 30       	cpi	r24, 0x04	; 4
 156:	08 f0       	brcs	.+2      	; 0x15a <lcd_set_cursor+0x6>
 158:	83 e0       	ldi	r24, 0x03	; 3
  if (row > 3) row = 3;
  /* 20x4 DDRAM row bases: 0x00, 0x40, 0x14, 0x54.
   * Compute them without an SRAM table or stack copy.
   */
  uint8_t offset = ((row & 1) ? 0x40 : 0) + ((row & 2) ? 0x14 : 0);
 15a:	90 e4       	ldi	r25, 0x40	; 64
 15c:	89 9f       	mul	r24, r25
 15e:	90 01       	movw	r18, r0
 160:	11 24       	eor	r1, r1
 162:	20 74       	andi	r18, 0x40	; 64
 164:	90 e0       	ldi	r25, 0x00	; 0
 166:	81 fd       	sbrc	r24, 1
 168:	94 e1       	ldi	r25, 0x14	; 20
  lcd_send_cmd(0x80 | (col + offset));
 16a:	82 2f       	mov	r24, r18
 16c:	86 0f       	add	r24, r22
 16e:	89 0f       	add	r24, r25
 170:	80 68       	ori	r24, 0x80	; 128
 172:	0c 94 8d 00 	jmp	0x11a	; 0x11a <lcd_send_cmd>

00000176 <lcd_send_string>:
}

void lcd_send_string(const char *str) {
 176:	cf 93       	push	r28
 178:	df 93       	push	r29
 17a:	ec 01       	movw	r28, r24
  while (*str) lcd_send_data((uint8_t)*str++);
 17c:	89 91       	ld	r24, Y+
 17e:	81 11       	cpse	r24, r1
 180:	03 c0       	rjmp	.+6      	; 0x188 <lcd_send_string+0x12>
}
 182:	df 91       	pop	r29
 184:	cf 91       	pop	r28
 186:	08 95       	ret
  uint8_t offset = ((row & 1) ? 0x40 : 0) + ((row & 2) ? 0x14 : 0);
  lcd_send_cmd(0x80 | (col + offset));
}

void lcd_send_string(const char *str) {
  while (*str) lcd_send_data((uint8_t)*str++);
 188:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
 18c:	f7 cf       	rjmp	.-18     	; 0x17c <lcd_send_string+0x6>

0000018e <lcd_send_string_animated>:
}

void lcd_send_string_animated(const char *str, uint16_t delay_ms_per_char) {
 18e:	ef 92       	push	r14
 190:	ff 92       	push	r15
 192:	0f 93       	push	r16
 194:	1f 93       	push	r17
 196:	cf 93       	push	r28
 198:	df 93       	push	r29
 19a:	8b 01       	movw	r16, r22
 19c:	ec 01       	movw	r28, r24
 19e:	80 ea       	ldi	r24, 0xA0	; 160
 1a0:	e8 2e       	mov	r14, r24
 1a2:	8f e0       	ldi	r24, 0x0F	; 15
 1a4:	f8 2e       	mov	r15, r24
  while (*str) {
 1a6:	89 91       	ld	r24, Y+
 1a8:	81 11       	cpse	r24, r1
 1aa:	07 c0       	rjmp	.+14     	; 0x1ba <lcd_send_string_animated+0x2c>
    lcd_send_data((uint8_t)*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) _delay_ms(1);
  }
}
 1ac:	df 91       	pop	r29
 1ae:	cf 91       	pop	r28
 1b0:	1f 91       	pop	r17
 1b2:	0f 91       	pop	r16
 1b4:	ff 90       	pop	r15
 1b6:	ef 90       	pop	r14
 1b8:	08 95       	ret
  while (*str) lcd_send_data((uint8_t)*str++);
}

void lcd_send_string_animated(const char *str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data((uint8_t)*str++);
 1ba:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) _delay_ms(1);
 1be:	90 e0       	ldi	r25, 0x00	; 0
 1c0:	80 e0       	ldi	r24, 0x00	; 0
 1c2:	80 17       	cp	r24, r16
 1c4:	91 07       	cpc	r25, r17
 1c6:	79 f3       	breq	.-34     	; 0x1a6 <lcd_send_string_animated+0x18>
 1c8:	f7 01       	movw	r30, r14
 1ca:	31 97       	sbiw	r30, 0x01	; 1
 1cc:	f1 f7       	brne	.-4      	; 0x1ca <lcd_send_string_animated+0x3c>
 1ce:	01 96       	adiw	r24, 0x01	; 1
 1d0:	f8 cf       	rjmp	.-16     	; 0x1c2 <lcd_send_string_animated+0x34>

000001d2 <lcd_display>:
  }
}

void lcd_display(void) {
  lcd_send_cmd(0x0C);
 1d2:	8c e0       	ldi	r24, 0x0C	; 12
 1d4:	0c 94 8d 00 	jmp	0x11a	; 0x11a <lcd_send_cmd>

000001d8 <lcd_init>:
  lcd_write(data, 1);
  /* Includes oscillator margin and the address-counter update time. */
  _delay_us(60);
}

void lcd_init(void) {
 1d8:	0f 93       	push	r16
 1da:	1f 93       	push	r17
 1dc:	cf 93       	push	r28
 1de:	df 93       	push	r29
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
 1e0:	80 b7       	in	r24, 0x30	; 48
 1e2:	87 7f       	andi	r24, 0xF7	; 247
 1e4:	80 bf       	out	0x30, r24	; 48
  PORTG &= ~(LCD_E_MASK | LCD_RS_MASK);
 1e6:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 1ea:	87 7e       	andi	r24, 0xE7	; 231
 1ec:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  DDRG |= LCD_E_MASK | LCD_RS_MASK;
 1f0:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 1f4:	88 61       	ori	r24, 0x18	; 24
 1f6:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 1fa:	88 ee       	ldi	r24, 0xE8	; 232
 1fc:	93 e0       	ldi	r25, 0x03	; 3
 1fe:	20 e9       	ldi	r18, 0x90	; 144
 200:	31 e0       	ldi	r19, 0x01	; 1
 202:	f9 01       	movw	r30, r18
 204:	31 97       	sbiw	r30, 0x01	; 1
 206:	f1 f7       	brne	.-4      	; 0x204 <lcd_init+0x2c>
 208:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
 20a:	d9 f7       	brne	.-10     	; 0x202 <lcd_init+0x2a>

  // Retain the board's conservative startup/recovery sequence.
  _delay_ms(100);
  lcd_send_cmd(0x38);
 20c:	88 e3       	ldi	r24, 0x38	; 56
 20e:	0e 94 8d 00 	call	0x11a	; 0x11a <lcd_send_cmd>
 212:	00 e4       	ldi	r16, 0x40	; 64
 214:	1c e9       	ldi	r17, 0x9C	; 156
 216:	c8 01       	movw	r24, r16
 218:	01 97       	sbiw	r24, 0x01	; 1
 21a:	f1 f7       	brne	.-4      	; 0x218 <lcd_init+0x40>
  _delay_ms(10);
  lcd_send_cmd(0x38);
 21c:	88 e3       	ldi	r24, 0x38	; 56
 21e:	0e 94 8d 00 	call	0x11a	; 0x11a <lcd_send_cmd>
 222:	c0 e2       	ldi	r28, 0x20	; 32
 224:	de e4       	ldi	r29, 0x4E	; 78
 226:	ce 01       	movw	r24, r28
 228:	01 97       	sbiw	r24, 0x01	; 1
 22a:	f1 f7       	brne	.-4      	; 0x228 <lcd_init+0x50>
  _delay_ms(5);
  lcd_send_cmd(0x38);
 22c:	88 e3       	ldi	r24, 0x38	; 56
 22e:	0e 94 8d 00 	call	0x11a	; 0x11a <lcd_send_cmd>
 232:	ce 01       	movw	r24, r28
 234:	01 97       	sbiw	r24, 0x01	; 1
 236:	f1 f7       	brne	.-4      	; 0x234 <lcd_init+0x5c>
  _delay_ms(5);
  lcd_send_cmd(0x38); // 8-bit, 2 controller lines, 5x8 font
 238:	88 e3       	ldi	r24, 0x38	; 56
 23a:	0e 94 8d 00 	call	0x11a	; 0x11a <lcd_send_cmd>
 23e:	ce 01       	movw	r24, r28
 240:	01 97       	sbiw	r24, 0x01	; 1
 242:	f1 f7       	brne	.-4      	; 0x240 <lcd_init+0x68>
  _delay_ms(5);
  lcd_display();
 244:	0e 94 e9 00 	call	0x1d2	; 0x1d2 <lcd_display>
 248:	ce 01       	movw	r24, r28
 24a:	01 97       	sbiw	r24, 0x01	; 1
 24c:	f1 f7       	brne	.-4      	; 0x24a <lcd_init+0x72>
  _delay_ms(5);
  lcd_clear();
 24e:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
 252:	c8 01       	movw	r24, r16
 254:	01 97       	sbiw	r24, 0x01	; 1
 256:	f1 f7       	brne	.-4      	; 0x254 <lcd_init+0x7c>
  _delay_ms(10);
  lcd_send_cmd(0x06); // Increment cursor, no display shift
 258:	86 e0       	ldi	r24, 0x06	; 6
 25a:	0e 94 8d 00 	call	0x11a	; 0x11a <lcd_send_cmd>
 25e:	21 97       	sbiw	r28, 0x01	; 1
 260:	f1 f7       	brne	.-4      	; 0x25e <lcd_init+0x86>
  _delay_ms(5);
}
 262:	df 91       	pop	r29
 264:	cf 91       	pop	r28
 266:	1f 91       	pop	r17
 268:	0f 91       	pop	r16
 26a:	08 95       	ret

0000026c <lcd_write_line>:
  lcd_send_cmd(0x0C);
}


void lcd_write_line(uint8_t row, const char *text)
{
 26c:	0f 93       	push	r16
 26e:	1f 93       	push	r17
 270:	cf 93       	push	r28
 272:	8b 01       	movw	r16, r22
    if (row >= LCD_ROWS) return;
 274:	84 30       	cpi	r24, 0x04	; 4
 276:	70 f4       	brcc	.+28     	; 0x294 <lcd_write_line+0x28>
    lcd_set_cursor(row, 0);
 278:	60 e0       	ldi	r22, 0x00	; 0
 27a:	0e 94 aa 00 	call	0x154	; 0x154 <lcd_set_cursor>
 27e:	c4 e1       	ldi	r28, 0x14	; 20
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
 280:	f8 01       	movw	r30, r16
 282:	80 81       	ld	r24, Z
 284:	88 23       	and	r24, r24
 286:	51 f0       	breq	.+20     	; 0x29c <lcd_write_line+0x30>
 288:	0f 5f       	subi	r16, 0xFF	; 255
 28a:	1f 4f       	sbci	r17, 0xFF	; 255
        else lcd_send_data(' ');
 28c:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
 290:	c1 50       	subi	r28, 0x01	; 1

void lcd_write_line(uint8_t row, const char *text)
{
    if (row >= LCD_ROWS) return;
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
 292:	b1 f7       	brne	.-20     	; 0x280 <lcd_write_line+0x14>
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
    }
}
 294:	cf 91       	pop	r28
 296:	1f 91       	pop	r17
 298:	0f 91       	pop	r16
 29a:	08 95       	ret
{
    if (row >= LCD_ROWS) return;
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
 29c:	80 e2       	ldi	r24, 0x20	; 32
 29e:	f6 cf       	rjmp	.-20     	; 0x28c <lcd_write_line+0x20>

000002a0 <seg7_init>:
static uint16_t timer0_tick_count = 0;
#endif

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
 2a0:	80 b7       	in	r24, 0x30	; 48
 2a2:	87 7f       	andi	r24, 0xF7	; 247
 2a4:	80 bf       	out	0x30, r24	; 48
    current_digit = 0;
 2a6:	10 92 4f 03 	sts	0x034F, r1	; 0x80034f <current_digit>
#ifdef SEG7_ENABLE_CLOCK
    timer0_tick_count = 0;
#endif
    dp_mask = 0;
 2aa:	10 92 4e 03 	sts	0x034E, r1	; 0x80034e <dp_mask>
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
 2ae:	e0 e0       	ldi	r30, 0x00	; 0
 2b0:	f1 e0       	ldi	r31, 0x01	; 1
 2b2:	8f ef       	ldi	r24, 0xFF	; 255
 2b4:	80 83       	st	Z, r24
 2b6:	81 83       	std	Z+1, r24	; 0x01
 2b8:	82 83       	std	Z+2, r24	; 0x02
 2ba:	83 83       	std	Z+3, r24	; 0x03
 2bc:	84 83       	std	Z+4, r24	; 0x04
 2be:	85 83       	std	Z+5, r24	; 0x05
 2c0:	86 83       	std	Z+6, r24	; 0x06
 2c2:	87 83       	std	Z+7, r24	; 0x07
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
 2c4:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xd68>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
 2c8:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xd67>

    // Timer0 /64, 250 counts at 16 MHz: 1 ms slots, 125 Hz per digit.
    TCCR0 = (1 << WGM01) | (1 << CS02);
 2cc:	8c e0       	ldi	r24, 0x0C	; 12
 2ce:	83 bf       	out	0x33, r24	; 51
    TCNT0 = 0;
 2d0:	12 be       	out	0x32, r1	; 50
    OCR0 = (F_CPU / 64UL / 1000UL) - 1;
 2d2:	89 ef       	ldi	r24, 0xF9	; 249
 2d4:	81 bf       	out	0x31, r24	; 49
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
 2d6:	82 e0       	ldi	r24, 0x02	; 2
 2d8:	86 bf       	out	0x36, r24	; 54
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
 2da:	87 b7       	in	r24, 0x37	; 55
 2dc:	82 60       	ori	r24, 0x02	; 2
 2de:	87 bf       	out	0x37, r24	; 55
    sei();                      // Enable global interrupts
 2e0:	78 94       	sei
}
 2e2:	08 95       	ret

000002e4 <seg7_set_digit>:
    }
#endif
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
 2e4:	88 30       	cpi	r24, 0x08	; 8
 2e6:	28 f4       	brcc	.+10     	; 0x2f2 <seg7_set_digit+0xe>
        display_buffer[pos] = value;
 2e8:	e8 2f       	mov	r30, r24
 2ea:	f0 e0       	ldi	r31, 0x00	; 0
 2ec:	e0 50       	subi	r30, 0x00	; 0
 2ee:	ff 4f       	sbci	r31, 0xFF	; 255
 2f0:	60 83       	st	Z, r22
    }
}
 2f2:	08 95       	ret

000002f4 <seg7_set_array>:

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
 2f4:	2f b7       	in	r18, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
 2f6:	f8 94       	cli
 2f8:	fc 01       	movw	r30, r24
 2fa:	90 e0       	ldi	r25, 0x00	; 0
 2fc:	80 e0       	ldi	r24, 0x00	; 0
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
            display_buffer[i] = digits[i];
 2fe:	31 91       	ld	r19, Z+
 300:	dc 01       	movw	r26, r24
 302:	a0 50       	subi	r26, 0x00	; 0
 304:	bf 4f       	sbci	r27, 0xFF	; 255
 306:	3c 93       	st	X, r19
 308:	01 96       	adiw	r24, 0x01	; 1
    }
}

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
 30a:	88 30       	cpi	r24, 0x08	; 8
 30c:	91 05       	cpc	r25, r1
 30e:	b9 f7       	brne	.-18     	; 0x2fe <seg7_set_array+0xa>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
 310:	2f bf       	out	0x3f, r18	; 63
            display_buffer[i] = digits[i];
        }
    }
}
 312:	08 95       	ret

00000314 <seg7_set_decimal.part.1>:

    // Advance across all eight logical positions.
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}

void seg7_set_decimal(uint32_t num, uint8_t width)
 314:	8f 92       	push	r8
 316:	9f 92       	push	r9
 318:	af 92       	push	r10
 31a:	bf 92       	push	r11
 31c:	ef 92       	push	r14
 31e:	ff 92       	push	r15
 320:	0f 93       	push	r16
 322:	1f 93       	push	r17
 324:	cf 93       	push	r28
 326:	df 93       	push	r29
 328:	cd b7       	in	r28, 0x3d	; 61
 32a:	de b7       	in	r29, 0x3e	; 62
 32c:	28 97       	sbiw	r28, 0x08	; 8
 32e:	0f b6       	in	r0, 0x3f	; 63
 330:	f8 94       	cli
 332:	de bf       	out	0x3e, r29	; 62
 334:	0f be       	out	0x3f, r0	; 63
 336:	cd bf       	out	0x3d, r28	; 61
 338:	e4 2e       	mov	r14, r20
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
 33a:	ef ef       	ldi	r30, 0xFF	; 255
 33c:	e9 83       	std	Y+1, r30	; 0x01
 33e:	ea 83       	std	Y+2, r30	; 0x02
 340:	eb 83       	std	Y+3, r30	; 0x03
 342:	ec 83       	std	Y+4, r30	; 0x04
 344:	ed 83       	std	Y+5, r30	; 0x05
 346:	ee 83       	std	Y+6, r30	; 0x06
 348:	ef 83       	std	Y+7, r30	; 0x07
 34a:	e8 87       	std	Y+8, r30	; 0x08
 34c:	8e 01       	movw	r16, r28
 34e:	07 5f       	subi	r16, 0xF7	; 247
 350:	1f 4f       	sbci	r17, 0xFF	; 255
    for (uint8_t i = 0; i < width; i++) {
 352:	f1 2c       	mov	r15, r1
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
 354:	2a e0       	ldi	r18, 0x0A	; 10
 356:	82 2e       	mov	r8, r18
 358:	91 2c       	mov	r9, r1
 35a:	a1 2c       	mov	r10, r1
 35c:	b1 2c       	mov	r11, r1
void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
 35e:	fe 10       	cpse	r15, r14
 360:	15 c0       	rjmp	.+42     	; 0x38c <seg7_set_decimal.part.1+0x78>
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
 362:	ce 01       	movw	r24, r28
 364:	01 96       	adiw	r24, 0x01	; 1
 366:	0e 94 7a 01 	call	0x2f4	; 0x2f4 <seg7_set_array>
}
 36a:	28 96       	adiw	r28, 0x08	; 8
 36c:	0f b6       	in	r0, 0x3f	; 63
 36e:	f8 94       	cli
 370:	de bf       	out	0x3e, r29	; 62
 372:	0f be       	out	0x3f, r0	; 63
 374:	cd bf       	out	0x3d, r28	; 61
 376:	df 91       	pop	r29
 378:	cf 91       	pop	r28
 37a:	1f 91       	pop	r17
 37c:	0f 91       	pop	r16
 37e:	ff 90       	pop	r15
 380:	ef 90       	pop	r14
 382:	bf 90       	pop	r11
 384:	af 90       	pop	r10
 386:	9f 90       	pop	r9
 388:	8f 90       	pop	r8
 38a:	08 95       	ret
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
 38c:	a5 01       	movw	r20, r10
 38e:	94 01       	movw	r18, r8
 390:	0e 94 66 06 	call	0xccc	; 0xccc <__udivmodsi4>
 394:	f8 01       	movw	r30, r16
 396:	62 93       	st	-Z, r22
 398:	8f 01       	movw	r16, r30
        num /= 10;
 39a:	b9 01       	movw	r22, r18
 39c:	ca 01       	movw	r24, r20
void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
 39e:	f3 94       	inc	r15
 3a0:	de cf       	rjmp	.-68     	; 0x35e <seg7_set_decimal.part.1+0x4a>

000003a2 <action_seg_draw_value>:
#include "buttons.h"
static uint16_t action_value;
static int8_t action_direction;

static void action_seg_draw_value(void)
{
 3a2:	ef 92       	push	r14
 3a4:	ff 92       	push	r15
 3a6:	0f 93       	push	r16
 3a8:	1f 93       	push	r17
 3aa:	cf 93       	push	r28
 3ac:	df 93       	push	r29
 3ae:	cd b7       	in	r28, 0x3d	; 61
 3b0:	de b7       	in	r29, 0x3e	; 62
 3b2:	2c 97       	sbiw	r28, 0x0c	; 12
 3b4:	0f b6       	in	r0, 0x3f	; 63
 3b6:	f8 94       	cli
 3b8:	de bf       	out	0x3e, r29	; 62
 3ba:	0f be       	out	0x3f, r0	; 63
 3bc:	cd bf       	out	0x3d, r28	; 61
    uint16_t remaining = action_value;
 3be:	20 91 4c 03 	lds	r18, 0x034C	; 0x80034c <action_value>
 3c2:	30 91 4d 03 	lds	r19, 0x034D	; 0x80034d <action_value+0x1>
    char line[] = "VALUE: 0000";
 3c6:	8c e0       	ldi	r24, 0x0C	; 12
 3c8:	e9 e2       	ldi	r30, 0x29	; 41
 3ca:	f2 e0       	ldi	r31, 0x02	; 2
 3cc:	de 01       	movw	r26, r28
 3ce:	11 96       	adiw	r26, 0x01	; 1
 3d0:	01 90       	ld	r0, Z+
 3d2:	0d 92       	st	X+, r0
 3d4:	8a 95       	dec	r24
 3d6:	e1 f7       	brne	.-8      	; 0x3d0 <action_seg_draw_value+0x2e>
 3d8:	fe 01       	movw	r30, r28
 3da:	31 96       	adiw	r30, 0x01	; 1
 3dc:	8e 01       	movw	r16, r28
 3de:	03 50       	subi	r16, 0x03	; 3
 3e0:	11 09       	sbc	r17, r1
static uint16_t action_value;
static int8_t action_direction;

static void action_seg_draw_value(void)
{
    uint16_t remaining = action_value;
 3e2:	c9 01       	movw	r24, r18
    char line[] = "VALUE: 0000";
    for (uint8_t i = 0; i < 4; i++) {
        line[10 - i] = '0' + remaining % 10;
 3e4:	4a e0       	ldi	r20, 0x0A	; 10
 3e6:	e4 2e       	mov	r14, r20
 3e8:	f1 2c       	mov	r15, r1
 3ea:	b7 01       	movw	r22, r14
 3ec:	0e 94 52 06 	call	0xca4	; 0xca4 <__udivmodhi4>
 3f0:	80 5d       	subi	r24, 0xD0	; 208
 3f2:	82 87       	std	Z+10, r24	; 0x0a
        remaining /= 10;
 3f4:	cb 01       	movw	r24, r22
 3f6:	31 97       	sbiw	r30, 0x01	; 1

static void action_seg_draw_value(void)
{
    uint16_t remaining = action_value;
    char line[] = "VALUE: 0000";
    for (uint8_t i = 0; i < 4; i++) {
 3f8:	e0 17       	cp	r30, r16
 3fa:	f1 07       	cpc	r31, r17
 3fc:	b1 f7       	brne	.-20     	; 0x3ea <action_seg_draw_value+0x48>
        line[10 - i] = '0' + remaining % 10;
        remaining /= 10;
    }
    seg7_set_decimal(action_value, 4);
 3fe:	b9 01       	movw	r22, r18
 400:	90 e0       	ldi	r25, 0x00	; 0
 402:	80 e0       	ldi	r24, 0x00	; 0
 404:	44 e0       	ldi	r20, 0x04	; 4
 406:	0e 94 8a 01 	call	0x314	; 0x314 <seg7_set_decimal.part.1>
    lcd_write_line(1, line);
 40a:	be 01       	movw	r22, r28
 40c:	6f 5f       	subi	r22, 0xFF	; 255
 40e:	7f 4f       	sbci	r23, 0xFF	; 255
 410:	81 e0       	ldi	r24, 0x01	; 1
 412:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
}
 416:	2c 96       	adiw	r28, 0x0c	; 12
 418:	0f b6       	in	r0, 0x3f	; 63
 41a:	f8 94       	cli
 41c:	de bf       	out	0x3e, r29	; 62
 41e:	0f be       	out	0x3f, r0	; 63
 420:	cd bf       	out	0x3d, r28	; 61
 422:	df 91       	pop	r29
 424:	cf 91       	pop	r28
 426:	1f 91       	pop	r17
 428:	0f 91       	pop	r16
 42a:	ff 90       	pop	r15
 42c:	ef 90       	pop	r14
 42e:	08 95       	ret

00000430 <action_seg_start>:

static void action_seg_start(const char *title, uint16_t value, int8_t direction)
{
 430:	cf 93       	push	r28
 432:	df 93       	push	r29
 434:	ec 01       	movw	r28, r24
    action_value = value;
 436:	70 93 4d 03 	sts	0x034D, r23	; 0x80034d <action_value+0x1>
 43a:	60 93 4c 03 	sts	0x034C, r22	; 0x80034c <action_value>
    action_direction = direction;
 43e:	40 93 4b 03 	sts	0x034B, r20	; 0x80034b <action_direction>
    }
    seg7_set_array(digits);
}

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
 442:	10 92 4e 03 	sts	0x034E, r1	; 0x80034e <dp_mask>
static void action_seg_start(const char *title, uint16_t value, int8_t direction)
{
    action_value = value;
    action_direction = direction;
    seg7_set_dp_mask(0);
    lcd_clear();
 446:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
    lcd_write_line(0, title);
 44a:	be 01       	movw	r22, r28
 44c:	80 e0       	ldi	r24, 0x00	; 0
 44e:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
    action_seg_draw_value();
}
 452:	df 91       	pop	r29
 454:	cf 91       	pop	r28
    action_value = value;
    action_direction = direction;
    seg7_set_dp_mask(0);
    lcd_clear();
    lcd_write_line(0, title);
    action_seg_draw_value();
 456:	0c 94 d1 01 	jmp	0x3a2	; 0x3a2 <action_seg_draw_value>

0000045a <seg7_set_number>:
            display_buffer[i] = digits[i];
        }
    }
}

void seg7_set_number(uint32_t num) {
 45a:	8f 92       	push	r8
 45c:	9f 92       	push	r9
 45e:	af 92       	push	r10
 460:	bf 92       	push	r11
 462:	ef 92       	push	r14
 464:	ff 92       	push	r15
 466:	0f 93       	push	r16
 468:	1f 93       	push	r17
 46a:	cf 93       	push	r28
 46c:	df 93       	push	r29
 46e:	cd b7       	in	r28, 0x3d	; 61
 470:	de b7       	in	r29, 0x3e	; 62
 472:	28 97       	sbiw	r28, 0x08	; 8
 474:	0f b6       	in	r0, 0x3f	; 63
 476:	f8 94       	cli
 478:	de bf       	out	0x3e, r29	; 62
 47a:	0f be       	out	0x3f, r0	; 63
 47c:	cd bf       	out	0x3d, r28	; 61
 47e:	8e 01       	movw	r16, r28
 480:	07 5f       	subi	r16, 0xF7	; 247
 482:	1f 4f       	sbci	r17, 0xFF	; 255
 484:	9e 01       	movw	r18, r28
 486:	2f 5f       	subi	r18, 0xFF	; 255
 488:	3f 4f       	sbci	r19, 0xFF	; 255
 48a:	79 01       	movw	r14, r18
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        digits[i] = num % 10;
 48c:	2a e0       	ldi	r18, 0x0A	; 10
 48e:	82 2e       	mov	r8, r18
 490:	91 2c       	mov	r9, r1
 492:	a1 2c       	mov	r10, r1
 494:	b1 2c       	mov	r11, r1
 496:	a5 01       	movw	r20, r10
 498:	94 01       	movw	r18, r8
 49a:	0e 94 66 06 	call	0xccc	; 0xccc <__udivmodsi4>
 49e:	f8 01       	movw	r30, r16
 4a0:	62 93       	st	-Z, r22
 4a2:	8f 01       	movw	r16, r30
        num /= 10;
 4a4:	b9 01       	movw	r22, r18
 4a6:	ca 01       	movw	r24, r20
    }
}

void seg7_set_number(uint32_t num) {
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
 4a8:	ee 15       	cp	r30, r14
 4aa:	ff 05       	cpc	r31, r15
 4ac:	a1 f7       	brne	.-24     	; 0x496 <seg7_set_number+0x3c>
        digits[i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
 4ae:	cf 01       	movw	r24, r30
 4b0:	0e 94 7a 01 	call	0x2f4	; 0x2f4 <seg7_set_array>
}
 4b4:	28 96       	adiw	r28, 0x08	; 8
 4b6:	0f b6       	in	r0, 0x3f	; 63
 4b8:	f8 94       	cli
 4ba:	de bf       	out	0x3e, r29	; 62
 4bc:	0f be       	out	0x3f, r0	; 63
 4be:	cd bf       	out	0x3d, r28	; 61
 4c0:	df 91       	pop	r29
 4c2:	cf 91       	pop	r28
 4c4:	1f 91       	pop	r17
 4c6:	0f 91       	pop	r16
 4c8:	ff 90       	pop	r15
 4ca:	ef 90       	pop	r14
 4cc:	bf 90       	pop	r11
 4ce:	af 90       	pop	r10
 4d0:	9f 90       	pop	r9
 4d2:	8f 90       	pop	r8
 4d4:	08 95       	ret

000004d6 <seg7_set_dp_mask>:

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
 4d6:	80 93 4e 03 	sts	0x034E, r24	; 0x80034e <dp_mask>
}
 4da:	08 95       	ret

000004dc <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL4) to prevent ghosting
    LED_7CONTROL = 0x00;
 4dc:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xd68>

    // 2. Load the segment pattern for the active digit (via CSEL3)
    uint8_t val = display_buffer[current_digit];
 4e0:	30 91 4f 03 	lds	r19, 0x034F	; 0x80034f <current_digit>
 4e4:	e3 2f       	mov	r30, r19
 4e6:	f0 e0       	ldi	r31, 0x00	; 0
 4e8:	e0 50       	subi	r30, 0x00	; 0
 4ea:	ff 4f       	sbci	r31, 0xFF	; 255
 4ec:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEGMENT_MAP[val] : SEG_BLANK;
 4ee:	20 e0       	ldi	r18, 0x00	; 0
 4f0:	e0 31       	cpi	r30, 0x10	; 16
 4f2:	70 f4       	brcc	.+28     	; 0x510 <seg7_update+0x34>
 4f4:	f0 e0       	ldi	r31, 0x00	; 0
 4f6:	e8 50       	subi	r30, 0x08	; 8
 4f8:	fe 4f       	sbci	r31, 0xFE	; 254
 4fa:	20 81       	ld	r18, Z

    // 2b. Turn on Decimal Point if enabled for this digit
    if (val < 16 && (dp_mask & (1 << current_digit))) {
 4fc:	80 91 4e 03 	lds	r24, 0x034E	; 0x80034e <dp_mask>
 500:	90 e0       	ldi	r25, 0x00	; 0
 502:	02 c0       	rjmp	.+4      	; 0x508 <seg7_update+0x2c>
 504:	95 95       	asr	r25
 506:	87 95       	ror	r24
 508:	3a 95       	dec	r19
 50a:	e2 f7       	brpl	.-8      	; 0x504 <seg7_update+0x28>
 50c:	80 fd       	sbrc	r24, 0
        seg_pattern |= SEG7_DP_MASK; // Decimal point is segment-data bit 0.
 50e:	21 60       	ori	r18, 0x01	; 1
    }

    LED_7DATA = seg_pattern;
 510:	20 93 03 11 	sts	0x1103, r18	; 0x801103 <__bss_end+0xd67>

    // Physical order from left to right: Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0.
    LED_7CONTROL = (uint8_t)(0x80u >> current_digit);
 514:	20 91 4f 03 	lds	r18, 0x034F	; 0x80034f <current_digit>
 518:	80 e8       	ldi	r24, 0x80	; 128
 51a:	90 e0       	ldi	r25, 0x00	; 0
 51c:	02 c0       	rjmp	.+4      	; 0x522 <seg7_update+0x46>
 51e:	96 95       	lsr	r25
 520:	87 95       	ror	r24
 522:	2a 95       	dec	r18
 524:	e2 f7       	brpl	.-8      	; 0x51e <seg7_update+0x42>
 526:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xd68>

    // Advance across all eight logical positions.
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
 52a:	80 91 4f 03 	lds	r24, 0x034F	; 0x80034f <current_digit>
 52e:	90 e0       	ldi	r25, 0x00	; 0
 530:	01 96       	adiw	r24, 0x01	; 1
 532:	87 70       	andi	r24, 0x07	; 7
 534:	99 27       	eor	r25, r25
 536:	80 93 4f 03 	sts	0x034F, r24	; 0x80034f <current_digit>
}
 53a:	08 95       	ret

0000053c <__vector_15>:
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
 53c:	1f 92       	push	r1
 53e:	0f 92       	push	r0
 540:	0f b6       	in	r0, 0x3f	; 63
 542:	0f 92       	push	r0
 544:	11 24       	eor	r1, r1
 546:	0b b6       	in	r0, 0x3b	; 59
 548:	0f 92       	push	r0
 54a:	2f 93       	push	r18
 54c:	3f 93       	push	r19
 54e:	4f 93       	push	r20
 550:	5f 93       	push	r21
 552:	6f 93       	push	r22
 554:	7f 93       	push	r23
 556:	8f 93       	push	r24
 558:	9f 93       	push	r25
 55a:	af 93       	push	r26
 55c:	bf 93       	push	r27
 55e:	ef 93       	push	r30
 560:	ff 93       	push	r31
    seg7_update();
 562:	0e 94 6e 02 	call	0x4dc	; 0x4dc <seg7_update>
    if (timer0_tick_count >= 1000) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
#endif
}
 566:	ff 91       	pop	r31
 568:	ef 91       	pop	r30
 56a:	bf 91       	pop	r27
 56c:	af 91       	pop	r26
 56e:	9f 91       	pop	r25
 570:	8f 91       	pop	r24
 572:	7f 91       	pop	r23
 574:	6f 91       	pop	r22
 576:	5f 91       	pop	r21
 578:	4f 91       	pop	r20
 57a:	3f 91       	pop	r19
 57c:	2f 91       	pop	r18
 57e:	0f 90       	pop	r0
 580:	0b be       	out	0x3b, r0	; 59
 582:	0f 90       	pop	r0
 584:	0f be       	out	0x3f, r0	; 63
 586:	0f 90       	pop	r0
 588:	1f 90       	pop	r1
 58a:	18 95       	reti

0000058c <seg7_set_decimal>:
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}

void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
 58c:	2f ef       	ldi	r18, 0xFF	; 255
 58e:	24 0f       	add	r18, r20
 590:	28 30       	cpi	r18, 0x08	; 8
 592:	10 f4       	brcc	.+4      	; 0x598 <seg7_set_decimal+0xc>
 594:	0c 94 8a 01 	jmp	0x314	; 0x314 <seg7_set_decimal.part.1>
    for (uint8_t i = 0; i < width; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
}
 598:	08 95       	ret

0000059a <action_seg_clear>:
    lcd_clear();
    lcd_write_line(0, title);
    action_seg_draw_value();
}

void action_seg_clear(void) { action_seg_start("1. DISPLAY 0000", 0, 0); }
 59a:	40 e0       	ldi	r20, 0x00	; 0
 59c:	70 e0       	ldi	r23, 0x00	; 0
 59e:	60 e0       	ldi	r22, 0x00	; 0
 5a0:	85 e3       	ldi	r24, 0x35	; 53
 5a2:	92 e0       	ldi	r25, 0x02	; 2
 5a4:	0c 94 18 02 	jmp	0x430	; 0x430 <action_seg_start>

000005a8 <action_seg_set>:
void action_seg_set(void) { action_seg_start("2. DISPLAY 9999", 9999, 0); }
 5a8:	40 e0       	ldi	r20, 0x00	; 0
 5aa:	6f e0       	ldi	r22, 0x0F	; 15
 5ac:	77 e2       	ldi	r23, 0x27	; 39
 5ae:	85 e4       	ldi	r24, 0x45	; 69
 5b0:	92 e0       	ldi	r25, 0x02	; 2
 5b2:	0c 94 18 02 	jmp	0x430	; 0x430 <action_seg_start>

000005b6 <action_seg_increase>:
void action_seg_increase(void) { action_seg_start("3. INCREASE", 0, 1); }
 5b6:	41 e0       	ldi	r20, 0x01	; 1
 5b8:	70 e0       	ldi	r23, 0x00	; 0
 5ba:	60 e0       	ldi	r22, 0x00	; 0
 5bc:	85 e5       	ldi	r24, 0x55	; 85
 5be:	92 e0       	ldi	r25, 0x02	; 2
 5c0:	0c 94 18 02 	jmp	0x430	; 0x430 <action_seg_start>

000005c4 <action_seg_decrease>:
void action_seg_decrease(void) { action_seg_start("4. DECREASE", 9999, -1); }
 5c4:	4f ef       	ldi	r20, 0xFF	; 255
 5c6:	6f e0       	ldi	r22, 0x0F	; 15
 5c8:	77 e2       	ldi	r23, 0x27	; 39
 5ca:	81 e6       	ldi	r24, 0x61	; 97
 5cc:	92 e0       	ldi	r25, 0x02	; 2
 5ce:	0c 94 18 02 	jmp	0x430	; 0x430 <action_seg_start>

000005d2 <action_seg_input>:

void action_seg_input(uint8_t pressed)
{
    if (action_direction > 0 && (pressed & BTN_BIT_UP) && action_value < 9999)
 5d2:	90 91 4b 03 	lds	r25, 0x034B	; 0x80034b <action_direction>
 5d6:	19 16       	cp	r1, r25
 5d8:	8c f4       	brge	.+34     	; 0x5fc <action_seg_input+0x2a>
 5da:	82 ff       	sbrs	r24, 2
 5dc:	1b c0       	rjmp	.+54     	; 0x614 <action_seg_input+0x42>
 5de:	80 91 4c 03 	lds	r24, 0x034C	; 0x80034c <action_value>
 5e2:	90 91 4d 03 	lds	r25, 0x034D	; 0x80034d <action_value+0x1>
 5e6:	8f 30       	cpi	r24, 0x0F	; 15
 5e8:	27 e2       	ldi	r18, 0x27	; 39
 5ea:	92 07       	cpc	r25, r18
 5ec:	98 f4       	brcc	.+38     	; 0x614 <action_seg_input+0x42>
        action_value++;
 5ee:	01 96       	adiw	r24, 0x01	; 1
    else if (action_direction < 0 && (pressed & BTN_BIT_DOWN) && action_value > 0)
        action_value--;
 5f0:	90 93 4d 03 	sts	0x034D, r25	; 0x80034d <action_value+0x1>
 5f4:	80 93 4c 03 	sts	0x034C, r24	; 0x80034c <action_value>
    else return;
    action_seg_draw_value();
 5f8:	0c 94 d1 01 	jmp	0x3a2	; 0x3a2 <action_seg_draw_value>

void action_seg_input(uint8_t pressed)
{
    if (action_direction > 0 && (pressed & BTN_BIT_UP) && action_value < 9999)
        action_value++;
    else if (action_direction < 0 && (pressed & BTN_BIT_DOWN) && action_value > 0)
 5fc:	99 23       	and	r25, r25
 5fe:	51 f0       	breq	.+20     	; 0x614 <action_seg_input+0x42>
 600:	83 ff       	sbrs	r24, 3
 602:	08 c0       	rjmp	.+16     	; 0x614 <action_seg_input+0x42>
 604:	80 91 4c 03 	lds	r24, 0x034C	; 0x80034c <action_value>
 608:	90 91 4d 03 	lds	r25, 0x034D	; 0x80034d <action_value+0x1>
 60c:	00 97       	sbiw	r24, 0x00	; 0
 60e:	11 f0       	breq	.+4      	; 0x614 <action_seg_input+0x42>
        action_value--;
 610:	01 97       	sbiw	r24, 0x01	; 1
 612:	ee cf       	rjmp	.-36     	; 0x5f0 <action_seg_input+0x1e>
    else return;
    action_seg_draw_value();
}
 614:	08 95       	ret

00000616 <button_update>:
static uint8_t last_raw    = 0x00;
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
 616:	cf 93       	push	r28
}
static inline uint8_t io_bus_read(uint16_t address) {
    return *(volatile uint8_t *)(uintptr_t)address;
 618:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xd64>
  READ_BUTTONS;
 61c:	20 93 9b 03 	sts	0x039B, r18	; 0x80039b <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
 620:	80 91 5a 03 	lds	r24, 0x035A	; 0x80035a <last_raw>
 624:	80 95       	com	r24
 626:	82 23       	and	r24, r18
 628:	80 93 59 03 	sts	0x0359, r24	; 0x800359 <press_event>
 62c:	e0 e5       	ldi	r30, 0x50	; 80
 62e:	f3 e0       	ldi	r31, 0x03	; 3
  held_event  = 0x00;
 630:	50 e0       	ldi	r21, 0x00	; 0
 632:	40 e0       	ldi	r20, 0x00	; 0
 634:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
 636:	a1 e0       	ldi	r26, 0x01	; 1
 638:	b0 e0       	ldi	r27, 0x00	; 0
      hold_cnt[i]++;
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
 63a:	cb e1       	ldi	r28, 0x1B	; 27
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
 63c:	bd 01       	movw	r22, r26
 63e:	04 2e       	mov	r0, r20
 640:	01 c0       	rjmp	.+2      	; 0x644 <button_update+0x2e>
 642:	66 0f       	add	r22, r22
 644:	0a 94       	dec	r0
 646:	ea f7       	brpl	.-6      	; 0x642 <button_update+0x2c>
    if (raw & bit) {
 648:	82 2f       	mov	r24, r18
 64a:	86 23       	and	r24, r22
 64c:	c9 f0       	breq	.+50     	; 0x680 <button_update+0x6a>
      hold_cnt[i]++;
 64e:	80 81       	ld	r24, Z
 650:	8f 5f       	subi	r24, 0xFF	; 255
 652:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
 654:	83 32       	cpi	r24, 0x23	; 35
 656:	40 f0       	brcs	.+16     	; 0x668 <button_update+0x52>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
 658:	83 52       	subi	r24, 0x23	; 35
 65a:	99 0b       	sbc	r25, r25
 65c:	87 70       	andi	r24, 0x07	; 7
 65e:	99 27       	eor	r25, r25
 660:	89 2b       	or	r24, r25
 662:	11 f4       	brne	.+4      	; 0x668 <button_update+0x52>
          held_event |= bit;
 664:	36 2b       	or	r19, r22
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
 666:	c0 83       	st	Z, r28
 668:	4f 5f       	subi	r20, 0xFF	; 255
 66a:	5f 4f       	sbci	r21, 0xFF	; 255
 66c:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
 66e:	48 30       	cpi	r20, 0x08	; 8
 670:	51 05       	cpc	r21, r1
 672:	21 f7       	brne	.-56     	; 0x63c <button_update+0x26>
 674:	30 93 58 03 	sts	0x0358, r19	; 0x800358 <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
 678:	20 93 5a 03 	sts	0x035A, r18	; 0x80035a <last_raw>
}
 67c:	cf 91       	pop	r28
 67e:	08 95       	ret
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
        }
      }
    } else {
      hold_cnt[i] = 0;
 680:	10 82       	st	Z, r1
 682:	f2 cf       	rjmp	.-28     	; 0x668 <button_update+0x52>

00000684 <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
 684:	80 91 59 03 	lds	r24, 0x0359	; 0x800359 <press_event>
 688:	08 95       	ret

0000068a <button_held>:
uint8_t button_held(void)      { return held_event;  }
 68a:	80 91 58 03 	lds	r24, 0x0358	; 0x800358 <held_event>
 68e:	08 95       	ret

00000690 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
 690:	80 91 5a 03 	lds	r24, 0x035A	; 0x80035a <last_raw>
 694:	08 95       	ret

00000696 <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
 696:	90 91 59 03 	lds	r25, 0x0359	; 0x800359 <press_event>
 69a:	80 91 58 03 	lds	r24, 0x0358	; 0x800358 <held_event>
 69e:	89 2b       	or	r24, r25
 6a0:	08 95       	ret

000006a2 <link_menu>:
static MenuItem *active_action;

// Static storage, no heap allocation. This only wires next/prev/parent links.
static void link_menu(Menu *menu, const char *title, Menu *parent,
                      MenuItem *items, uint8_t count)
{
 6a2:	0f 93       	push	r16
 6a4:	fc 01       	movw	r30, r24
    menu->title = title;
 6a6:	71 83       	std	Z+1, r23	; 0x01
 6a8:	60 83       	st	Z, r22
    menu->first_item = items;
 6aa:	22 83       	std	Z+2, r18	; 0x02
 6ac:	33 83       	std	Z+3, r19	; 0x03
    menu->parent_menu = parent;
 6ae:	55 83       	std	Z+5, r21	; 0x05
 6b0:	44 83       	std	Z+4, r20	; 0x04
    menu->selected = items;
 6b2:	26 83       	std	Z+6, r18	; 0x06
 6b4:	37 83       	std	Z+7, r19	; 0x07
 6b6:	f9 01       	movw	r30, r18
 6b8:	81 e0       	ldi	r24, 0x01	; 1
 6ba:	90 e0       	ldi	r25, 0x00	; 0
    for (uint8_t i = 0; i < count; i++) {
        items[i].prev = i ? &items[i - 1] : NULL;
 6bc:	30 e0       	ldi	r19, 0x00	; 0
 6be:	20 e0       	ldi	r18, 0x00	; 0
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
 6c0:	40 2f       	mov	r20, r16
 6c2:	50 e0       	ldi	r21, 0x00	; 0
 6c4:	bf 01       	movw	r22, r30
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
        items[i].prev = i ? &items[i - 1] : NULL;
 6c6:	34 83       	std	Z+4, r19	; 0x04
 6c8:	25 83       	std	Z+5, r18	; 0x05
 6ca:	9f 01       	movw	r18, r30
 6cc:	24 5f       	subi	r18, 0xF4	; 244
 6ce:	3f 4f       	sbci	r19, 0xFF	; 255
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
 6d0:	84 17       	cp	r24, r20
 6d2:	95 07       	cpc	r25, r21
 6d4:	14 f0       	brlt	.+4      	; 0x6da <link_menu+0x38>
 6d6:	30 e0       	ldi	r19, 0x00	; 0
 6d8:	20 e0       	ldi	r18, 0x00	; 0
 6da:	33 83       	std	Z+3, r19	; 0x03
 6dc:	22 83       	std	Z+2, r18	; 0x02
{
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
 6de:	80 17       	cp	r24, r16
 6e0:	10 f0       	brcs	.+4      	; 0x6e6 <link_menu+0x44>
        items[i].prev = i ? &items[i - 1] : NULL;
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
    }
}
 6e2:	0f 91       	pop	r16
 6e4:	08 95       	ret
 6e6:	01 96       	adiw	r24, 0x01	; 1
 6e8:	3c 96       	adiw	r30, 0x0c	; 12
{
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
 6ea:	36 2f       	mov	r19, r22
 6ec:	27 2f       	mov	r18, r23
 6ee:	ea cf       	rjmp	.-44     	; 0x6c4 <link_menu+0x22>

000006f0 <menu_init>:
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
    }
}

void menu_init(void)
{
 6f0:	0f 93       	push	r16
    link_menu(&device_menu, "DEVICES", NULL, device_items, 2);
 6f2:	02 e0       	ldi	r16, 0x02	; 2
 6f4:	20 ee       	ldi	r18, 0xE0	; 224
 6f6:	31 e0       	ldi	r19, 0x01	; 1
 6f8:	50 e0       	ldi	r21, 0x00	; 0
 6fa:	40 e0       	ldi	r20, 0x00	; 0
 6fc:	6d e6       	ldi	r22, 0x6D	; 109
 6fe:	72 e0       	ldi	r23, 0x02	; 2
 700:	8f e8       	ldi	r24, 0x8F	; 143
 702:	93 e0       	ldi	r25, 0x03	; 3
 704:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&led_menu, "LED:", &device_menu, led_items, 4);
 708:	04 e0       	ldi	r16, 0x04	; 4
 70a:	20 eb       	ldi	r18, 0xB0	; 176
 70c:	31 e0       	ldi	r19, 0x01	; 1
 70e:	4f e8       	ldi	r20, 0x8F	; 143
 710:	53 e0       	ldi	r21, 0x03	; 3
 712:	65 e7       	ldi	r22, 0x75	; 117
 714:	72 e0       	ldi	r23, 0x02	; 2
 716:	87 e8       	ldi	r24, 0x87	; 135
 718:	93 e0       	ldi	r25, 0x03	; 3
 71a:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&relay_menu, "RELAYS:", &device_menu, relay_items, 6);
 71e:	06 e0       	ldi	r16, 0x06	; 6
 720:	28 e6       	ldi	r18, 0x68	; 104
 722:	31 e0       	ldi	r19, 0x01	; 1
 724:	4f e8       	ldi	r20, 0x8F	; 143
 726:	53 e0       	ldi	r21, 0x03	; 3
 728:	6a e7       	ldi	r22, 0x7A	; 122
 72a:	72 e0       	ldi	r23, 0x02	; 2
 72c:	8f e7       	ldi	r24, 0x7F	; 127
 72e:	93 e0       	ldi	r25, 0x03	; 3
 730:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&relay_actions[0], "RELAY 1:", &relay_menu, relay_1_items, 2);
 734:	02 e0       	ldi	r16, 0x02	; 2
 736:	20 e5       	ldi	r18, 0x50	; 80
 738:	31 e0       	ldi	r19, 0x01	; 1
 73a:	4f e7       	ldi	r20, 0x7F	; 127
 73c:	53 e0       	ldi	r21, 0x03	; 3
 73e:	62 e8       	ldi	r22, 0x82	; 130
 740:	72 e0       	ldi	r23, 0x02	; 2
 742:	8f e5       	ldi	r24, 0x5F	; 95
 744:	93 e0       	ldi	r25, 0x03	; 3
 746:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&relay_actions[1], "RELAY 2:", &relay_menu, relay_2_items, 2);
 74a:	28 e3       	ldi	r18, 0x38	; 56
 74c:	31 e0       	ldi	r19, 0x01	; 1
 74e:	4f e7       	ldi	r20, 0x7F	; 127
 750:	53 e0       	ldi	r21, 0x03	; 3
 752:	6b e8       	ldi	r22, 0x8B	; 139
 754:	72 e0       	ldi	r23, 0x02	; 2
 756:	87 e6       	ldi	r24, 0x67	; 103
 758:	93 e0       	ldi	r25, 0x03	; 3
 75a:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&relay_actions[2], "RELAY 3:", &relay_menu, relay_3_items, 2);
 75e:	20 e2       	ldi	r18, 0x20	; 32
 760:	31 e0       	ldi	r19, 0x01	; 1
 762:	4f e7       	ldi	r20, 0x7F	; 127
 764:	53 e0       	ldi	r21, 0x03	; 3
 766:	64 e9       	ldi	r22, 0x94	; 148
 768:	72 e0       	ldi	r23, 0x02	; 2
 76a:	8f e6       	ldi	r24, 0x6F	; 111
 76c:	93 e0       	ldi	r25, 0x03	; 3
 76e:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    link_menu(&relay_actions[3], "RELAY 4:", &relay_menu, relay_4_items, 2);
 772:	28 e0       	ldi	r18, 0x08	; 8
 774:	31 e0       	ldi	r19, 0x01	; 1
 776:	4f e7       	ldi	r20, 0x7F	; 127
 778:	53 e0       	ldi	r21, 0x03	; 3
 77a:	6d e9       	ldi	r22, 0x9D	; 157
 77c:	72 e0       	ldi	r23, 0x02	; 2
 77e:	87 e7       	ldi	r24, 0x77	; 119
 780:	93 e0       	ldi	r25, 0x03	; 3
 782:	0e 94 51 03 	call	0x6a2	; 0x6a2 <link_menu>
    current_menu = &device_menu;
 786:	8f e8       	ldi	r24, 0x8F	; 143
 788:	93 e0       	ldi	r25, 0x03	; 3
 78a:	90 93 5e 03 	sts	0x035E, r25	; 0x80035e <current_menu+0x1>
 78e:	80 93 5d 03 	sts	0x035D, r24	; 0x80035d <current_menu>
    active_action = NULL;
 792:	10 92 5c 03 	sts	0x035C, r1	; 0x80035c <active_action+0x1>
 796:	10 92 5b 03 	sts	0x035B, r1	; 0x80035b <active_action>
}
 79a:	0f 91       	pop	r16
 79c:	08 95       	ret

0000079e <menu_draw>:

void menu_draw(void)
{
 79e:	ef 92       	push	r14
 7a0:	ff 92       	push	r15
 7a2:	0f 93       	push	r16
 7a4:	1f 93       	push	r17
 7a6:	cf 93       	push	r28
 7a8:	df 93       	push	r29
    if (!current_menu || active_action) return;
 7aa:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 7ae:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 7b2:	30 97       	sbiw	r30, 0x00	; 0
 7b4:	09 f4       	brne	.+2      	; 0x7b8 <menu_draw+0x1a>
 7b6:	57 c0       	rjmp	.+174    	; 0x866 <menu_draw+0xc8>
 7b8:	80 91 5b 03 	lds	r24, 0x035B	; 0x80035b <active_action>
 7bc:	90 91 5c 03 	lds	r25, 0x035C	; 0x80035c <active_action+0x1>
 7c0:	89 2b       	or	r24, r25
 7c2:	09 f0       	breq	.+2      	; 0x7c6 <menu_draw+0x28>
 7c4:	50 c0       	rjmp	.+160    	; 0x866 <menu_draw+0xc8>
    lcd_write_line(0, current_menu->title);
 7c6:	60 81       	ld	r22, Z
 7c8:	71 81       	ldd	r23, Z+1	; 0x01
 7ca:	80 e0       	ldi	r24, 0x00	; 0
 7cc:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
 7d0:	a0 91 5d 03 	lds	r26, 0x035D	; 0x80035d <current_menu>
 7d4:	b0 91 5e 03 	lds	r27, 0x035E	; 0x80035e <current_menu+0x1>
 7d8:	12 96       	adiw	r26, 0x02	; 2
 7da:	cd 91       	ld	r28, X+
 7dc:	dc 91       	ld	r29, X
 7de:	13 97       	sbiw	r26, 0x03	; 3
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
 7e0:	fe 01       	movw	r30, r28
{
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
 7e2:	80 e0       	ldi	r24, 0x00	; 0
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
 7e4:	30 97       	sbiw	r30, 0x00	; 0
 7e6:	41 f0       	breq	.+16     	; 0x7f8 <menu_draw+0x5a>
 7e8:	16 96       	adiw	r26, 0x06	; 6
 7ea:	2d 91       	ld	r18, X+
 7ec:	3c 91       	ld	r19, X
 7ee:	17 97       	sbiw	r26, 0x07	; 7
 7f0:	2e 17       	cp	r18, r30
 7f2:	3f 07       	cpc	r19, r31
 7f4:	09 f0       	breq	.+2      	; 0x7f8 <menu_draw+0x5a>
 7f6:	3e c0       	rjmp	.+124    	; 0x874 <menu_draw+0xd6>
        index++;
    while (index > 2 && first) {
 7f8:	83 30       	cpi	r24, 0x03	; 3
 7fa:	18 f0       	brcs	.+6      	; 0x802 <menu_draw+0x64>
 7fc:	20 97       	sbiw	r28, 0x00	; 0
 7fe:	09 f0       	breq	.+2      	; 0x802 <menu_draw+0x64>
 800:	3e c0       	rjmp	.+124    	; 0x87e <menu_draw+0xe0>
{
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
 802:	11 e0       	ldi	r17, 0x01	; 1
    while (index > 2 && first) {
        first = first->next;
        index--;
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
 804:	60 e0       	ldi	r22, 0x00	; 0
 806:	81 2f       	mov	r24, r17
 808:	0e 94 aa 00 	call	0x154	; 0x154 <lcd_set_cursor>
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
 80c:	20 97       	sbiw	r28, 0x00	; 0
 80e:	49 f0       	breq	.+18     	; 0x822 <menu_draw+0x84>
 810:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 814:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 818:	86 81       	ldd	r24, Z+6	; 0x06
 81a:	97 81       	ldd	r25, Z+7	; 0x07
 81c:	8c 17       	cp	r24, r28
 81e:	9d 07       	cpc	r25, r29
 820:	99 f1       	breq	.+102    	; 0x888 <menu_draw+0xea>
 822:	80 e2       	ldi	r24, 0x20	; 32
 824:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
        lcd_send_data(' ');
 828:	80 e2       	ldi	r24, 0x20	; 32
 82a:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
        const char *text = first ? first->text : "";
 82e:	84 e3       	ldi	r24, 0x34	; 52
 830:	e8 2e       	mov	r14, r24
 832:	82 e0       	ldi	r24, 0x02	; 2
 834:	f8 2e       	mov	r15, r24
 836:	20 97       	sbiw	r28, 0x00	; 0
 838:	11 f0       	breq	.+4      	; 0x83e <menu_draw+0xa0>
 83a:	e8 80       	ld	r14, Y
 83c:	f9 80       	ldd	r15, Y+1	; 0x01
 83e:	02 e1       	ldi	r16, 0x12	; 18
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
 840:	f7 01       	movw	r30, r14
 842:	80 81       	ld	r24, Z
 844:	88 23       	and	r24, r24
 846:	11 f1       	breq	.+68     	; 0x88c <menu_draw+0xee>
 848:	ff ef       	ldi	r31, 0xFF	; 255
 84a:	ef 1a       	sub	r14, r31
 84c:	ff 0a       	sbc	r15, r31
 84e:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
 852:	01 50       	subi	r16, 0x01	; 1
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
        lcd_send_data(' ');
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
 854:	a9 f7       	brne	.-22     	; 0x840 <menu_draw+0xa2>
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
        if (first) first = first->next;
 856:	20 97       	sbiw	r28, 0x00	; 0
 858:	19 f0       	breq	.+6      	; 0x860 <menu_draw+0xc2>
 85a:	0a 80       	ldd	r0, Y+2	; 0x02
 85c:	db 81       	ldd	r29, Y+3	; 0x03
 85e:	c0 2d       	mov	r28, r0
        index++;
    while (index > 2 && first) {
        first = first->next;
        index--;
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
 860:	1f 5f       	subi	r17, 0xFF	; 255
 862:	14 30       	cpi	r17, 0x04	; 4
 864:	79 f6       	brne	.-98     	; 0x804 <menu_draw+0x66>
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
        if (first) first = first->next;
    }
}
 866:	df 91       	pop	r29
 868:	cf 91       	pop	r28
 86a:	1f 91       	pop	r17
 86c:	0f 91       	pop	r16
 86e:	ff 90       	pop	r15
 870:	ef 90       	pop	r14
 872:	08 95       	ret
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
        index++;
 874:	8f 5f       	subi	r24, 0xFF	; 255
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
 876:	02 80       	ldd	r0, Z+2	; 0x02
 878:	f3 81       	ldd	r31, Z+3	; 0x03
 87a:	e0 2d       	mov	r30, r0
 87c:	b3 cf       	rjmp	.-154    	; 0x7e4 <menu_draw+0x46>
        index++;
    while (index > 2 && first) {
        first = first->next;
 87e:	0a 80       	ldd	r0, Y+2	; 0x02
 880:	db 81       	ldd	r29, Y+3	; 0x03
 882:	c0 2d       	mov	r28, r0
        index--;
 884:	81 50       	subi	r24, 0x01	; 1
 886:	b8 cf       	rjmp	.-144    	; 0x7f8 <menu_draw+0x5a>
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
 888:	8e e3       	ldi	r24, 0x3E	; 62
 88a:	cc cf       	rjmp	.-104    	; 0x824 <menu_draw+0x86>
        lcd_send_data(' ');
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
 88c:	80 e2       	ldi	r24, 0x20	; 32
 88e:	df cf       	rjmp	.-66     	; 0x84e <menu_draw+0xb0>

00000890 <menu_up>:
    }
}

void menu_up(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
 890:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 894:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 898:	30 97       	sbiw	r30, 0x00	; 0
 89a:	99 f0       	breq	.+38     	; 0x8c2 <menu_up+0x32>
 89c:	80 91 5b 03 	lds	r24, 0x035B	; 0x80035b <active_action>
 8a0:	90 91 5c 03 	lds	r25, 0x035C	; 0x80035c <active_action+0x1>
 8a4:	89 2b       	or	r24, r25
 8a6:	69 f4       	brne	.+26     	; 0x8c2 <menu_up+0x32>
 8a8:	a6 81       	ldd	r26, Z+6	; 0x06
 8aa:	b7 81       	ldd	r27, Z+7	; 0x07
 8ac:	10 97       	sbiw	r26, 0x00	; 0
 8ae:	49 f0       	breq	.+18     	; 0x8c2 <menu_up+0x32>
    if (current_menu->selected->prev) {
 8b0:	14 96       	adiw	r26, 0x04	; 4
 8b2:	8d 91       	ld	r24, X+
 8b4:	9c 91       	ld	r25, X
 8b6:	00 97       	sbiw	r24, 0x00	; 0
 8b8:	21 f0       	breq	.+8      	; 0x8c2 <menu_up+0x32>
        current_menu->selected = current_menu->selected->prev;
 8ba:	97 83       	std	Z+7, r25	; 0x07
 8bc:	86 83       	std	Z+6, r24	; 0x06
        menu_draw();
 8be:	0c 94 cf 03 	jmp	0x79e	; 0x79e <menu_draw>
    }
}
 8c2:	08 95       	ret

000008c4 <menu_down>:

void menu_down(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
 8c4:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 8c8:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 8cc:	30 97       	sbiw	r30, 0x00	; 0
 8ce:	99 f0       	breq	.+38     	; 0x8f6 <menu_down+0x32>
 8d0:	80 91 5b 03 	lds	r24, 0x035B	; 0x80035b <active_action>
 8d4:	90 91 5c 03 	lds	r25, 0x035C	; 0x80035c <active_action+0x1>
 8d8:	89 2b       	or	r24, r25
 8da:	69 f4       	brne	.+26     	; 0x8f6 <menu_down+0x32>
 8dc:	a6 81       	ldd	r26, Z+6	; 0x06
 8de:	b7 81       	ldd	r27, Z+7	; 0x07
 8e0:	10 97       	sbiw	r26, 0x00	; 0
 8e2:	49 f0       	breq	.+18     	; 0x8f6 <menu_down+0x32>
    if (current_menu->selected->next) {
 8e4:	12 96       	adiw	r26, 0x02	; 2
 8e6:	8d 91       	ld	r24, X+
 8e8:	9c 91       	ld	r25, X
 8ea:	00 97       	sbiw	r24, 0x00	; 0
 8ec:	21 f0       	breq	.+8      	; 0x8f6 <menu_down+0x32>
        current_menu->selected = current_menu->selected->next;
 8ee:	97 83       	std	Z+7, r25	; 0x07
 8f0:	86 83       	std	Z+6, r24	; 0x06
        menu_draw();
 8f2:	0c 94 cf 03 	jmp	0x79e	; 0x79e <menu_draw>
    }
}
 8f6:	08 95       	ret

000008f8 <menu_enter>:

void menu_enter(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
 8f8:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 8fc:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 900:	30 97       	sbiw	r30, 0x00	; 0
 902:	61 f1       	breq	.+88     	; 0x95c <menu_enter+0x64>
 904:	80 91 5b 03 	lds	r24, 0x035B	; 0x80035b <active_action>
 908:	90 91 5c 03 	lds	r25, 0x035C	; 0x80035c <active_action+0x1>
 90c:	89 2b       	or	r24, r25
 90e:	31 f5       	brne	.+76     	; 0x95c <menu_enter+0x64>
 910:	a6 81       	ldd	r26, Z+6	; 0x06
 912:	b7 81       	ldd	r27, Z+7	; 0x07
 914:	10 97       	sbiw	r26, 0x00	; 0
 916:	11 f1       	breq	.+68     	; 0x95c <menu_enter+0x64>
    MenuItem *item = current_menu->selected;
    if (item->child_menu) {
 918:	16 96       	adiw	r26, 0x06	; 6
 91a:	ed 91       	ld	r30, X+
 91c:	fc 91       	ld	r31, X
 91e:	17 97       	sbiw	r26, 0x07	; 7
 920:	30 97       	sbiw	r30, 0x00	; 0
 922:	89 f0       	breq	.+34     	; 0x946 <menu_enter+0x4e>
        current_menu = item->child_menu;
 924:	f0 93 5e 03 	sts	0x035E, r31	; 0x80035e <current_menu+0x1>
 928:	e0 93 5d 03 	sts	0x035D, r30	; 0x80035d <current_menu>
        // Opening a relay channel starts at ON, matching the current interface.
        // Other menus retain their selection when revisited.
        if (current_menu->parent_menu == &relay_menu)
 92c:	84 81       	ldd	r24, Z+4	; 0x04
 92e:	95 81       	ldd	r25, Z+5	; 0x05
 930:	8f 57       	subi	r24, 0x7F	; 127
 932:	93 40       	sbci	r25, 0x03	; 3
 934:	21 f4       	brne	.+8      	; 0x93e <menu_enter+0x46>
            current_menu->selected = current_menu->first_item;
 936:	82 81       	ldd	r24, Z+2	; 0x02
 938:	93 81       	ldd	r25, Z+3	; 0x03
 93a:	97 83       	std	Z+7, r25	; 0x07
 93c:	86 83       	std	Z+6, r24	; 0x06
        lcd_clear();
 93e:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
        menu_draw();
 942:	0c 94 cf 03 	jmp	0x79e	; 0x79e <menu_draw>
    } else if (item->action) {
 946:	18 96       	adiw	r26, 0x08	; 8
 948:	ed 91       	ld	r30, X+
 94a:	fc 91       	ld	r31, X
 94c:	19 97       	sbiw	r26, 0x09	; 9
 94e:	30 97       	sbiw	r30, 0x00	; 0
 950:	29 f0       	breq	.+10     	; 0x95c <menu_enter+0x64>
        active_action = item;
 952:	b0 93 5c 03 	sts	0x035C, r27	; 0x80035c <active_action+0x1>
 956:	a0 93 5b 03 	sts	0x035B, r26	; 0x80035b <active_action>
        item->action();
 95a:	09 94       	ijmp
    }
}
 95c:	08 95       	ret

0000095e <menu_back>:

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
 95e:	e0 91 5d 03 	lds	r30, 0x035D	; 0x80035d <current_menu>
 962:	f0 91 5e 03 	lds	r31, 0x035E	; 0x80035e <current_menu+0x1>
 966:	30 97       	sbiw	r30, 0x00	; 0
 968:	c9 f0       	breq	.+50     	; 0x99c <menu_back+0x3e>
    if (active_action) active_action = NULL;
 96a:	80 91 5b 03 	lds	r24, 0x035B	; 0x80035b <active_action>
 96e:	90 91 5c 03 	lds	r25, 0x035C	; 0x80035c <active_action+0x1>
 972:	89 2b       	or	r24, r25
 974:	51 f0       	breq	.+20     	; 0x98a <menu_back+0x2c>
 976:	10 92 5c 03 	sts	0x035C, r1	; 0x80035c <active_action+0x1>
 97a:	10 92 5b 03 	sts	0x035B, r1	; 0x80035b <active_action>
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
    else return 0;
    lcd_clear();
 97e:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
    menu_draw();
 982:	0e 94 cf 03 	call	0x79e	; 0x79e <menu_draw>
    return 1;
 986:	81 e0       	ldi	r24, 0x01	; 1
 988:	08 95       	ret

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
    if (active_action) active_action = NULL;
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
 98a:	84 81       	ldd	r24, Z+4	; 0x04
 98c:	95 81       	ldd	r25, Z+5	; 0x05
 98e:	00 97       	sbiw	r24, 0x00	; 0
 990:	29 f0       	breq	.+10     	; 0x99c <menu_back+0x3e>
 992:	90 93 5e 03 	sts	0x035E, r25	; 0x80035e <current_menu+0x1>
 996:	80 93 5d 03 	sts	0x035D, r24	; 0x80035d <current_menu>
 99a:	f1 cf       	rjmp	.-30     	; 0x97e <menu_back+0x20>
    }
}

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
 99c:	80 e0       	ldi	r24, 0x00	; 0
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
    else return 0;
    lcd_clear();
    menu_draw();
    return 1;
}
 99e:	08 95       	ret

000009a0 <menu_action_active>:

uint8_t menu_action_active(void)
{
    return active_action != NULL;
 9a0:	81 e0       	ldi	r24, 0x01	; 1
 9a2:	20 91 5b 03 	lds	r18, 0x035B	; 0x80035b <active_action>
 9a6:	30 91 5c 03 	lds	r19, 0x035C	; 0x80035c <active_action+0x1>
 9aa:	23 2b       	or	r18, r19
 9ac:	09 f4       	brne	.+2      	; 0x9b0 <menu_action_active+0x10>
 9ae:	80 e0       	ldi	r24, 0x00	; 0
}
 9b0:	08 95       	ret

000009b2 <menu_action_input>:

void menu_action_input(uint8_t pressed)
{
    if (active_action && active_action->input) active_action->input(pressed);
 9b2:	e0 91 5b 03 	lds	r30, 0x035B	; 0x80035b <active_action>
 9b6:	f0 91 5c 03 	lds	r31, 0x035C	; 0x80035c <active_action+0x1>
 9ba:	30 97       	sbiw	r30, 0x00	; 0
 9bc:	31 f0       	breq	.+12     	; 0x9ca <menu_action_input+0x18>
 9be:	02 84       	ldd	r0, Z+10	; 0x0a
 9c0:	f3 85       	ldd	r31, Z+11	; 0x0b
 9c2:	e0 2d       	mov	r30, r0
 9c4:	30 97       	sbiw	r30, 0x00	; 0
 9c6:	09 f0       	breq	.+2      	; 0x9ca <menu_action_input+0x18>
 9c8:	09 94       	ijmp
}
 9ca:	08 95       	ret

000009cc <relay_init>:
#include "define.h"

// Software mirror of the write-only RELAYS register.
static uint8_t state;

void relay_init(void)      { state = 0x00; RELAYS = state; }
 9cc:	10 92 97 03 	sts	0x0397, r1	; 0x800397 <state>
 9d0:	10 92 05 11 	sts	0x1105, r1	; 0x801105 <__bss_end+0xd69>
 9d4:	08 95       	ret

000009d6 <relay_all_on>:
void relay_all_on(void)    { state |= RELAY_MASK;  RELAYS = state; }
 9d6:	80 91 97 03 	lds	r24, 0x0397	; 0x800397 <state>
 9da:	8f 60       	ori	r24, 0x0F	; 15
 9dc:	80 93 97 03 	sts	0x0397, r24	; 0x800397 <state>
 9e0:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xd69>
 9e4:	08 95       	ret

000009e6 <relay_all_off>:
void relay_all_off(void)   { state &= ~RELAY_MASK; RELAYS = state; }
 9e6:	80 91 97 03 	lds	r24, 0x0397	; 0x800397 <state>
 9ea:	80 7f       	andi	r24, 0xF0	; 240
 9ec:	80 93 97 03 	sts	0x0397, r24	; 0x800397 <state>
 9f0:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xd69>
 9f4:	08 95       	ret

000009f6 <relay_on>:
void relay_on(uint8_t num) { if (num < 4) { state |=  (1u << num); RELAYS = state; } }
 9f6:	84 30       	cpi	r24, 0x04	; 4
 9f8:	68 f4       	brcc	.+26     	; 0xa14 <relay_on+0x1e>
 9fa:	21 e0       	ldi	r18, 0x01	; 1
 9fc:	30 e0       	ldi	r19, 0x00	; 0
 9fe:	01 c0       	rjmp	.+2      	; 0xa02 <relay_on+0xc>
 a00:	22 0f       	add	r18, r18
 a02:	8a 95       	dec	r24
 a04:	ea f7       	brpl	.-6      	; 0xa00 <relay_on+0xa>
 a06:	80 91 97 03 	lds	r24, 0x0397	; 0x800397 <state>
 a0a:	82 2b       	or	r24, r18
 a0c:	80 93 97 03 	sts	0x0397, r24	; 0x800397 <state>
 a10:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xd69>
 a14:	08 95       	ret

00000a16 <relay_off>:
void relay_off(uint8_t num){ if (num < 4) { state &= ~(1u << num); RELAYS = state; } }
 a16:	84 30       	cpi	r24, 0x04	; 4
 a18:	88 f4       	brcc	.+34     	; 0xa3c <relay_off+0x26>
 a1a:	21 e0       	ldi	r18, 0x01	; 1
 a1c:	30 e0       	ldi	r19, 0x00	; 0
 a1e:	a9 01       	movw	r20, r18
 a20:	02 c0       	rjmp	.+4      	; 0xa26 <relay_off+0x10>
 a22:	44 0f       	add	r20, r20
 a24:	55 1f       	adc	r21, r21
 a26:	8a 95       	dec	r24
 a28:	e2 f7       	brpl	.-8      	; 0xa22 <relay_off+0xc>
 a2a:	ca 01       	movw	r24, r20
 a2c:	80 95       	com	r24
 a2e:	90 91 97 03 	lds	r25, 0x0397	; 0x800397 <state>
 a32:	89 23       	and	r24, r25
 a34:	80 93 97 03 	sts	0x0397, r24	; 0x800397 <state>
 a38:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xd69>
 a3c:	08 95       	ret

00000a3e <action_relay>:

// Menu callbacks keep relay behavior and its status screen in this module.
#include "lcd.h"
static void action_relay(uint8_t channel, uint8_t on)
{
 a3e:	1f 93       	push	r17
 a40:	cf 93       	push	r28
 a42:	df 93       	push	r29
 a44:	cd b7       	in	r28, 0x3d	; 61
 a46:	de b7       	in	r29, 0x3e	; 62
 a48:	28 97       	sbiw	r28, 0x08	; 8
 a4a:	0f b6       	in	r0, 0x3f	; 63
 a4c:	f8 94       	cli
 a4e:	de bf       	out	0x3e, r29	; 62
 a50:	0f be       	out	0x3f, r0	; 63
 a52:	cd bf       	out	0x3d, r28	; 61
 a54:	18 2f       	mov	r17, r24
    if (on) relay_on(channel);
 a56:	66 23       	and	r22, r22
 a58:	89 f1       	breq	.+98     	; 0xabc <action_relay+0x7e>
 a5a:	0e 94 fb 04 	call	0x9f6	; 0x9f6 <relay_on>
    else relay_off(channel);
    char title[] = "RELAY 1";
 a5e:	88 e0       	ldi	r24, 0x08	; 8
 a60:	e2 ec       	ldi	r30, 0xC2	; 194
 a62:	f2 e0       	ldi	r31, 0x02	; 2
 a64:	de 01       	movw	r26, r28
 a66:	11 96       	adiw	r26, 0x01	; 1
 a68:	01 90       	ld	r0, Z+
 a6a:	0d 92       	st	X+, r0
 a6c:	8a 95       	dec	r24
 a6e:	e1 f7       	brne	.-8      	; 0xa68 <action_relay+0x2a>
    title[6] = '1' + channel;
 a70:	81 e3       	ldi	r24, 0x31	; 49
 a72:	81 0f       	add	r24, r17
 a74:	8f 83       	std	Y+7, r24	; 0x07
    lcd_clear();
 a76:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
    lcd_write_line(0, title);
 a7a:	be 01       	movw	r22, r28
 a7c:	6f 5f       	subi	r22, 0xFF	; 255
 a7e:	7f 4f       	sbci	r23, 0xFF	; 255
 a80:	80 e0       	ldi	r24, 0x00	; 0
 a82:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
    lcd_write_line(1, (state & (1u << channel)) ? "STATE: ON" : "STATE: OFF");
 a86:	80 91 97 03 	lds	r24, 0x0397	; 0x800397 <state>
 a8a:	90 e0       	ldi	r25, 0x00	; 0
 a8c:	02 c0       	rjmp	.+4      	; 0xa92 <action_relay+0x54>
 a8e:	96 95       	lsr	r25
 a90:	87 95       	ror	r24
 a92:	1a 95       	dec	r17
 a94:	e2 f7       	brpl	.-8      	; 0xa8e <action_relay+0x50>
 a96:	64 e2       	ldi	r22, 0x24	; 36
 a98:	73 e0       	ldi	r23, 0x03	; 3
 a9a:	80 ff       	sbrs	r24, 0
 a9c:	02 c0       	rjmp	.+4      	; 0xaa2 <action_relay+0x64>
 a9e:	6a e1       	ldi	r22, 0x1A	; 26
 aa0:	73 e0       	ldi	r23, 0x03	; 3
 aa2:	81 e0       	ldi	r24, 0x01	; 1
 aa4:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
}
 aa8:	28 96       	adiw	r28, 0x08	; 8
 aaa:	0f b6       	in	r0, 0x3f	; 63
 aac:	f8 94       	cli
 aae:	de bf       	out	0x3e, r29	; 62
 ab0:	0f be       	out	0x3f, r0	; 63
 ab2:	cd bf       	out	0x3d, r28	; 61
 ab4:	df 91       	pop	r29
 ab6:	cf 91       	pop	r28
 ab8:	1f 91       	pop	r17
 aba:	08 95       	ret
// Menu callbacks keep relay behavior and its status screen in this module.
#include "lcd.h"
static void action_relay(uint8_t channel, uint8_t on)
{
    if (on) relay_on(channel);
    else relay_off(channel);
 abc:	0e 94 0b 05 	call	0xa16	; 0xa16 <relay_off>
 ac0:	ce cf       	rjmp	.-100    	; 0xa5e <action_relay+0x20>

00000ac2 <action_relay_1_on>:
    title[6] = '1' + channel;
    lcd_clear();
    lcd_write_line(0, title);
    lcd_write_line(1, (state & (1u << channel)) ? "STATE: ON" : "STATE: OFF");
}
void action_relay_1_on(void)  { action_relay(0, 1); }
 ac2:	61 e0       	ldi	r22, 0x01	; 1
 ac4:	80 e0       	ldi	r24, 0x00	; 0
 ac6:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000aca <action_relay_1_off>:
void action_relay_1_off(void) { action_relay(0, 0); }
 aca:	60 e0       	ldi	r22, 0x00	; 0
 acc:	80 e0       	ldi	r24, 0x00	; 0
 ace:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000ad2 <action_relay_2_on>:
void action_relay_2_on(void)  { action_relay(1, 1); }
 ad2:	61 e0       	ldi	r22, 0x01	; 1
 ad4:	81 e0       	ldi	r24, 0x01	; 1
 ad6:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000ada <action_relay_2_off>:
void action_relay_2_off(void) { action_relay(1, 0); }
 ada:	60 e0       	ldi	r22, 0x00	; 0
 adc:	81 e0       	ldi	r24, 0x01	; 1
 ade:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000ae2 <action_relay_3_on>:
void action_relay_3_on(void)  { action_relay(2, 1); }
 ae2:	61 e0       	ldi	r22, 0x01	; 1
 ae4:	82 e0       	ldi	r24, 0x02	; 2
 ae6:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000aea <action_relay_3_off>:
void action_relay_3_off(void) { action_relay(2, 0); }
 aea:	60 e0       	ldi	r22, 0x00	; 0
 aec:	82 e0       	ldi	r24, 0x02	; 2
 aee:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000af2 <action_relay_4_on>:
void action_relay_4_on(void)  { action_relay(3, 1); }
 af2:	61 e0       	ldi	r22, 0x01	; 1
 af4:	83 e0       	ldi	r24, 0x03	; 3
 af6:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000afa <action_relay_4_off>:
void action_relay_4_off(void) { action_relay(3, 0); }
 afa:	60 e0       	ldi	r22, 0x00	; 0
 afc:	83 e0       	ldi	r24, 0x03	; 3
 afe:	0c 94 1f 05 	jmp	0xa3e	; 0xa3e <action_relay>

00000b02 <action_relay_all_on>:
void action_relay_all_on(void)  { relay_all_on();  lcd_clear(); lcd_write_line(0, "ALL RELAYS"); lcd_write_line(1, "STATE: ON"); }
 b02:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <relay_all_on>
 b06:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
 b0a:	6f e2       	ldi	r22, 0x2F	; 47
 b0c:	73 e0       	ldi	r23, 0x03	; 3
 b0e:	80 e0       	ldi	r24, 0x00	; 0
 b10:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
 b14:	6a e1       	ldi	r22, 0x1A	; 26
 b16:	73 e0       	ldi	r23, 0x03	; 3
 b18:	81 e0       	ldi	r24, 0x01	; 1
 b1a:	0c 94 36 01 	jmp	0x26c	; 0x26c <lcd_write_line>

00000b1e <action_relay_all_off>:
void action_relay_all_off(void) { relay_all_off(); lcd_clear(); lcd_write_line(0, "ALL RELAYS"); lcd_write_line(1, "STATE: OFF"); }
 b1e:	0e 94 f3 04 	call	0x9e6	; 0x9e6 <relay_all_off>
 b22:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
 b26:	6f e2       	ldi	r22, 0x2F	; 47
 b28:	73 e0       	ldi	r23, 0x03	; 3
 b2a:	80 e0       	ldi	r24, 0x00	; 0
 b2c:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
 b30:	64 e2       	ldi	r22, 0x24	; 36
 b32:	73 e0       	ldi	r23, 0x03	; 3
 b34:	81 e0       	ldi	r24, 0x01	; 1
 b36:	0c 94 36 01 	jmp	0x26c	; 0x26c <lcd_write_line>

00000b3a <draw_members>:
static uint8_t scroll_position;
static uint8_t scroll_forward;
static uint8_t scroll_delay;

static void draw_members(void)
{
 b3a:	cf 93       	push	r28
 b3c:	df 93       	push	r29
    lcd_set_cursor(2, 0);
 b3e:	60 e0       	ldi	r22, 0x00	; 0
 b40:	82 e0       	ldi	r24, 0x02	; 2
 b42:	0e 94 aa 00 	call	0x154	; 0x154 <lcd_set_cursor>
 b46:	d0 e0       	ldi	r29, 0x00	; 0
 b48:	c0 e0       	ldi	r28, 0x00	; 0
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
        lcd_send_data((uint8_t)members[scroll_position + column]);
 b4a:	e0 91 9a 03 	lds	r30, 0x039A	; 0x80039a <scroll_position>
 b4e:	ce 01       	movw	r24, r28
 b50:	88 5f       	subi	r24, 0xF8	; 248
 b52:	9d 4f       	sbci	r25, 0xFD	; 253
 b54:	e8 0f       	add	r30, r24
 b56:	f9 2f       	mov	r31, r25
 b58:	f1 1d       	adc	r31, r1
 b5a:	80 81       	ld	r24, Z
 b5c:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_send_data>
 b60:	21 96       	adiw	r28, 0x01	; 1
static uint8_t scroll_delay;

static void draw_members(void)
{
    lcd_set_cursor(2, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
 b62:	c4 31       	cpi	r28, 0x14	; 20
 b64:	d1 05       	cpc	r29, r1
 b66:	89 f7       	brne	.-30     	; 0xb4a <draw_members+0x10>
        lcd_send_data((uint8_t)members[scroll_position + column]);
}
 b68:	df 91       	pop	r29
 b6a:	cf 91       	pop	r28
 b6c:	08 95       	ret

00000b6e <welcome_show>:

void welcome_show(void)
{
    scroll_position = 0;
 b6e:	10 92 9a 03 	sts	0x039A, r1	; 0x80039a <scroll_position>
    scroll_forward = 1;
 b72:	81 e0       	ldi	r24, 0x01	; 1
 b74:	80 93 99 03 	sts	0x0399, r24	; 0x800399 <scroll_forward>
    scroll_delay = SCROLL_END_PAUSE_TICKS;
 b78:	84 e6       	ldi	r24, 0x64	; 100
 b7a:	80 93 98 03 	sts	0x0398, r24	; 0x800398 <scroll_delay>
    lcd_clear();
 b7e:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
    lcd_write_line(1, "     PROJECT 01");
 b82:	6a e3       	ldi	r22, 0x3A	; 58
 b84:	73 e0       	ldi	r23, 0x03	; 3
 b86:	81 e0       	ldi	r24, 0x01	; 1
 b88:	0e 94 36 01 	call	0x26c	; 0x26c <lcd_write_line>
    draw_members();
 b8c:	0c 94 9d 05 	jmp	0xb3a	; 0xb3a <draw_members>

00000b90 <welcome_update>:
 b90:	80 91 98 03 	lds	r24, 0x0398	; 0x800398 <scroll_delay>
 b94:	81 50       	subi	r24, 0x01	; 1
 b96:	80 93 98 03 	sts	0x0398, r24	; 0x800398 <scroll_delay>
 b9a:	81 11       	cpse	r24, r1
 b9c:	18 c0       	rjmp	.+48     	; 0xbce <welcome_update+0x3e>
 b9e:	80 91 9a 03 	lds	r24, 0x039A	; 0x80039a <scroll_position>
 ba2:	90 91 99 03 	lds	r25, 0x0399	; 0x800399 <scroll_forward>
 ba6:	99 23       	and	r25, r25
 ba8:	99 f0       	breq	.+38     	; 0xbd0 <welcome_update+0x40>
 baa:	8f 5f       	subi	r24, 0xFF	; 255
 bac:	80 93 9a 03 	sts	0x039A, r24	; 0x80039a <scroll_position>
 bb0:	8c 30       	cpi	r24, 0x0C	; 12
 bb2:	11 f4       	brne	.+4      	; 0xbb8 <welcome_update+0x28>
 bb4:	10 92 99 03 	sts	0x0399, r1	; 0x800399 <scroll_forward>
 bb8:	0e 94 9d 05 	call	0xb3a	; 0xb3a <draw_members>
 bbc:	80 91 9a 03 	lds	r24, 0x039A	; 0x80039a <scroll_position>
 bc0:	88 23       	and	r24, r24
 bc2:	11 f0       	breq	.+4      	; 0xbc8 <welcome_update+0x38>
 bc4:	8c 30       	cpi	r24, 0x0C	; 12
 bc6:	69 f4       	brne	.+26     	; 0xbe2 <welcome_update+0x52>
 bc8:	84 e6       	ldi	r24, 0x64	; 100
 bca:	80 93 98 03 	sts	0x0398, r24	; 0x800398 <scroll_delay>
 bce:	08 95       	ret
 bd0:	81 50       	subi	r24, 0x01	; 1
 bd2:	80 93 9a 03 	sts	0x039A, r24	; 0x80039a <scroll_position>
 bd6:	81 11       	cpse	r24, r1
 bd8:	ef cf       	rjmp	.-34     	; 0xbb8 <welcome_update+0x28>
 bda:	81 e0       	ldi	r24, 0x01	; 1
 bdc:	80 93 99 03 	sts	0x0399, r24	; 0x800399 <scroll_forward>
 be0:	eb cf       	rjmp	.-42     	; 0xbb8 <welcome_update+0x28>
 be2:	89 e1       	ldi	r24, 0x19	; 25
 be4:	f2 cf       	rjmp	.-28     	; 0xbca <welcome_update+0x3a>

00000be6 <main>:
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) menu_enter();
}

int main(void)
{
    cli();
 be6:	f8 94       	cli

    // Hardware XMEM setup and the existing conservative wait settings.
    XMCRA = (1 << SRW11);
 be8:	82 e0       	ldi	r24, 0x02	; 2
 bea:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7e006d>
    MCUCR |= (1 << SRE) | (1 << SRW10);
 bee:	85 b7       	in	r24, 0x35	; 53
 bf0:	80 6c       	ori	r24, 0xC0	; 192
 bf2:	85 bf       	out	0x35, r24	; 53
    relay_init();
 bf4:	0e 94 e6 04 	call	0x9cc	; 0x9cc <relay_init>
    LED_7CONTROL = 0;
 bf8:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xd68>
    LED_7DATA = 0;
 bfc:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xd67>
    lcd_init();
 c00:	0e 94 ec 00 	call	0x1d8	; 0x1d8 <lcd_init>
    menu_init();
 c04:	0e 94 78 03 	call	0x6f0	; 0x6f0 <menu_init>
    in_menu = 0;
 c08:	10 92 4a 03 	sts	0x034A, r1	; 0x80034a <__data_end>
    welcome_show();
 c0c:	0e 94 b7 05 	call	0xb6e	; 0xb6e <welcome_show>

    // Timer0 refreshes the multiplexed display; no application timer.
    seg7_init();
 c10:	0e 94 50 01 	call	0x2a0	; 0x2a0 <seg7_init>
    sei();
 c14:	78 94       	sei
 c16:	00 e4       	ldi	r16, 0x40	; 64
 c18:	1c e9       	ldi	r17, 0x9C	; 156
static void dispatch_buttons(uint8_t pressed, uint8_t navigation)
{
    if (!in_menu) {
        if (pressed) {
            menu_init();
            in_menu = 1;
 c1a:	ff 24       	eor	r15, r15
 c1c:	f3 94       	inc	r15
 c1e:	c8 01       	movw	r24, r16
 c20:	01 97       	sbiw	r24, 0x01	; 1
 c22:	f1 f7       	brne	.-4      	; 0xc20 <main+0x3a>
    seg7_init();
    sei();

    while (1) {
        _delay_ms(10);
        button_update();
 c24:	0e 94 0b 03 	call	0x616	; 0x616 <button_update>
        dispatch_buttons(button_pressed(), button_triggered());
 c28:	0e 94 4b 03 	call	0x696	; 0x696 <button_triggered>
 c2c:	d8 2f       	mov	r29, r24
 c2e:	0e 94 42 03 	call	0x684	; 0x684 <button_pressed>
 c32:	c8 2f       	mov	r28, r24
static uint8_t in_menu;

// Only button dispatch belongs here; linked-list navigation lives in menu.c.
static void dispatch_buttons(uint8_t pressed, uint8_t navigation)
{
    if (!in_menu) {
 c34:	80 91 4a 03 	lds	r24, 0x034A	; 0x80034a <__data_end>
 c38:	81 11       	cpse	r24, r1
 c3a:	0e c0       	rjmp	.+28     	; 0xc58 <main+0x72>
        if (pressed) {
 c3c:	cc 23       	and	r28, r28
 c3e:	49 f0       	breq	.+18     	; 0xc52 <main+0x6c>
            menu_init();
 c40:	0e 94 78 03 	call	0x6f0	; 0x6f0 <menu_init>
            in_menu = 1;
 c44:	f0 92 4a 03 	sts	0x034A, r15	; 0x80034a <__data_end>
            lcd_clear();
 c48:	0e 94 a7 00 	call	0x14e	; 0x14e <lcd_clear>
            menu_draw();
 c4c:	0e 94 cf 03 	call	0x79e	; 0x79e <menu_draw>
 c50:	e6 cf       	rjmp	.-52     	; 0xc1e <main+0x38>
        } else welcome_update();
 c52:	0e 94 c8 05 	call	0xb90	; 0xb90 <welcome_update>
 c56:	e3 cf       	rjmp	.-58     	; 0xc1e <main+0x38>
        return;
    }
    if (pressed & BTN_BIT_1) {
 c58:	c5 ff       	sbrs	r28, 5
 c5a:	05 c0       	rjmp	.+10     	; 0xc66 <main+0x80>
        in_menu = 0;
 c5c:	10 92 4a 03 	sts	0x034A, r1	; 0x80034a <__data_end>
        welcome_show();
 c60:	0e 94 b7 05 	call	0xb6e	; 0xb6e <welcome_show>
 c64:	dc cf       	rjmp	.-72     	; 0xc1e <main+0x38>
    } else if (pressed & BTN_BIT_LEFT) {
 c66:	c0 ff       	sbrs	r28, 0
 c68:	05 c0       	rjmp	.+10     	; 0xc74 <main+0x8e>
        if (!menu_back()) {
 c6a:	0e 94 af 04 	call	0x95e	; 0x95e <menu_back>
 c6e:	81 11       	cpse	r24, r1
 c70:	d6 cf       	rjmp	.-84     	; 0xc1e <main+0x38>
 c72:	f4 cf       	rjmp	.-24     	; 0xc5c <main+0x76>
            in_menu = 0;
            welcome_show();
        }
    } else if (menu_action_active()) {
 c74:	0e 94 d0 04 	call	0x9a0	; 0x9a0 <menu_action_active>
 c78:	88 23       	and	r24, r24
 c7a:	21 f0       	breq	.+8      	; 0xc84 <main+0x9e>
        menu_action_input(pressed);
 c7c:	8c 2f       	mov	r24, r28
 c7e:	0e 94 d9 04 	call	0x9b2	; 0x9b2 <menu_action_input>
 c82:	cd cf       	rjmp	.-102    	; 0xc1e <main+0x38>
    } else if (navigation & BTN_BIT_DOWN) menu_down();
 c84:	d3 ff       	sbrs	r29, 3
 c86:	03 c0       	rjmp	.+6      	; 0xc8e <main+0xa8>
 c88:	0e 94 62 04 	call	0x8c4	; 0x8c4 <menu_down>
 c8c:	c8 cf       	rjmp	.-112    	; 0xc1e <main+0x38>
    else if (navigation & BTN_BIT_UP) menu_up();
 c8e:	d2 ff       	sbrs	r29, 2
 c90:	03 c0       	rjmp	.+6      	; 0xc98 <main+0xb2>
 c92:	0e 94 48 04 	call	0x890	; 0x890 <menu_up>
 c96:	c3 cf       	rjmp	.-122    	; 0xc1e <main+0x38>
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) menu_enter();
 c98:	c2 71       	andi	r28, 0x12	; 18
 c9a:	09 f4       	brne	.+2      	; 0xc9e <main+0xb8>
 c9c:	c0 cf       	rjmp	.-128    	; 0xc1e <main+0x38>
 c9e:	0e 94 7c 04 	call	0x8f8	; 0x8f8 <menu_enter>
 ca2:	bd cf       	rjmp	.-134    	; 0xc1e <main+0x38>

00000ca4 <__udivmodhi4>:
 ca4:	aa 1b       	sub	r26, r26
 ca6:	bb 1b       	sub	r27, r27
 ca8:	51 e1       	ldi	r21, 0x11	; 17
 caa:	07 c0       	rjmp	.+14     	; 0xcba <__udivmodhi4_ep>

00000cac <__udivmodhi4_loop>:
 cac:	aa 1f       	adc	r26, r26
 cae:	bb 1f       	adc	r27, r27
 cb0:	a6 17       	cp	r26, r22
 cb2:	b7 07       	cpc	r27, r23
 cb4:	10 f0       	brcs	.+4      	; 0xcba <__udivmodhi4_ep>
 cb6:	a6 1b       	sub	r26, r22
 cb8:	b7 0b       	sbc	r27, r23

00000cba <__udivmodhi4_ep>:
 cba:	88 1f       	adc	r24, r24
 cbc:	99 1f       	adc	r25, r25
 cbe:	5a 95       	dec	r21
 cc0:	a9 f7       	brne	.-22     	; 0xcac <__udivmodhi4_loop>
 cc2:	80 95       	com	r24
 cc4:	90 95       	com	r25
 cc6:	bc 01       	movw	r22, r24
 cc8:	cd 01       	movw	r24, r26
 cca:	08 95       	ret

00000ccc <__udivmodsi4>:
 ccc:	a1 e2       	ldi	r26, 0x21	; 33
 cce:	1a 2e       	mov	r1, r26
 cd0:	aa 1b       	sub	r26, r26
 cd2:	bb 1b       	sub	r27, r27
 cd4:	fd 01       	movw	r30, r26
 cd6:	0d c0       	rjmp	.+26     	; 0xcf2 <__udivmodsi4_ep>

00000cd8 <__udivmodsi4_loop>:
 cd8:	aa 1f       	adc	r26, r26
 cda:	bb 1f       	adc	r27, r27
 cdc:	ee 1f       	adc	r30, r30
 cde:	ff 1f       	adc	r31, r31
 ce0:	a2 17       	cp	r26, r18
 ce2:	b3 07       	cpc	r27, r19
 ce4:	e4 07       	cpc	r30, r20
 ce6:	f5 07       	cpc	r31, r21
 ce8:	20 f0       	brcs	.+8      	; 0xcf2 <__udivmodsi4_ep>
 cea:	a2 1b       	sub	r26, r18
 cec:	b3 0b       	sbc	r27, r19
 cee:	e4 0b       	sbc	r30, r20
 cf0:	f5 0b       	sbc	r31, r21

00000cf2 <__udivmodsi4_ep>:
 cf2:	66 1f       	adc	r22, r22
 cf4:	77 1f       	adc	r23, r23
 cf6:	88 1f       	adc	r24, r24
 cf8:	99 1f       	adc	r25, r25
 cfa:	1a 94       	dec	r1
 cfc:	69 f7       	brne	.-38     	; 0xcd8 <__udivmodsi4_loop>
 cfe:	60 95       	com	r22
 d00:	70 95       	com	r23
 d02:	80 95       	com	r24
 d04:	90 95       	com	r25
 d06:	9b 01       	movw	r18, r22
 d08:	ac 01       	movw	r20, r24
 d0a:	bd 01       	movw	r22, r26
 d0c:	cf 01       	movw	r24, r30
 d0e:	08 95       	ret

00000d10 <_exit>:
 d10:	f8 94       	cli

00000d12 <__stop_program>:
 d12:	ff cf       	rjmp	.-2      	; 0xd12 <__stop_program>
