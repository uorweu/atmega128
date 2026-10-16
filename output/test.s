
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
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  3c:	0c 94 a7 01 	jmp	0x34e	; 0x34e <__vector_15>
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
  98:	14 e0       	ldi	r17, 0x04	; 4
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	ec ee       	ldi	r30, 0xEC	; 236
  a0:	fc e0       	ldi	r31, 0x0C	; 12
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	a6 3a       	cpi	r26, 0xA6	; 166
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	24 e0       	ldi	r18, 0x04	; 4
  b4:	a6 ea       	ldi	r26, 0xA6	; 166
  b6:	b4 e0       	ldi	r27, 0x04	; 4
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	a2 3c       	cpi	r26, 0xC2	; 194
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 1c 06 	call	0xc38	; 0xc38 <main>
  c6:	0c 94 74 06 	jmp	0xce8	; 0xce8 <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <lcd_send_cmd>:
#define PG3 3 

#include <avr/interrupt.h>

void lcd_send_cmd(uint8_t cmd) {
  uint8_t sreg = SREG;
  ce:	9f b7       	in	r25, 0x3f	; 63
  cli();                      // Disable interrupts: protect A0 (RS) and external bus
  d0:	f8 94       	cli
  LCD_CMD_REG = cmd;          // Address 0x1102 (A0=0 -> RS=0, CSEL2 active)
  d2:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xc40>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
  d6:	85 e0       	ldi	r24, 0x05	; 5
  d8:	8a 95       	dec	r24
  da:	f1 f7       	brne	.-4      	; 0xd8 <lcd_send_cmd+0xa>
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
  dc:	e5 e6       	ldi	r30, 0x65	; 101
  de:	f0 e0       	ldi	r31, 0x00	; 0
  e0:	80 81       	ld	r24, Z
  e2:	88 60       	ori	r24, 0x08	; 8
  e4:	80 83       	st	Z, r24
  e6:	8a e0       	ldi	r24, 0x0A	; 10
  e8:	8a 95       	dec	r24
  ea:	f1 f7       	brne	.-4      	; 0xe8 <lcd_send_cmd+0x1a>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches command)
  ec:	80 81       	ld	r24, Z
  ee:	87 7f       	andi	r24, 0xF7	; 247
  f0:	80 83       	st	Z, r24
  SREG = sreg;                // Restore interrupts
  f2:	9f bf       	out	0x3f, r25	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
  f4:	80 e9       	ldi	r24, 0x90	; 144
  f6:	91 e0       	ldi	r25, 0x01	; 1
  f8:	01 97       	sbiw	r24, 0x01	; 1
  fa:	f1 f7       	brne	.-4      	; 0xf8 <lcd_send_cmd+0x2a>
  _delay_us(100);             // Standard command execution time (> 37 us)
}
  fc:	08 95       	ret

000000fe <lcd_send_data>:

void lcd_send_data(uint8_t data) {
  uint8_t sreg = SREG;
  fe:	9f b7       	in	r25, 0x3f	; 63
  cli();                      // Disable interrupts: protect A0 (RS) and external bus
 100:	f8 94       	cli
  LCD_DATA_REG = data;        // Address 0x1101 (A0=1 -> RS=1, CSEL1 active)
 102:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xc3f>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
 106:	85 e0       	ldi	r24, 0x05	; 5
 108:	8a 95       	dec	r24
 10a:	f1 f7       	brne	.-4      	; 0x108 <lcd_send_data+0xa>
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
 10c:	e5 e6       	ldi	r30, 0x65	; 101
 10e:	f0 e0       	ldi	r31, 0x00	; 0
 110:	80 81       	ld	r24, Z
 112:	88 60       	ori	r24, 0x08	; 8
 114:	80 83       	st	Z, r24
 116:	8a e0       	ldi	r24, 0x0A	; 10
 118:	8a 95       	dec	r24
 11a:	f1 f7       	brne	.-4      	; 0x118 <lcd_send_data+0x1a>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
 11c:	80 81       	ld	r24, Z
 11e:	87 7f       	andi	r24, 0xF7	; 247
 120:	80 83       	st	Z, r24
  SREG = sreg;                // Restore interrupts
 122:	9f bf       	out	0x3f, r25	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
 124:	88 ec       	ldi	r24, 0xC8	; 200
 126:	90 e0       	ldi	r25, 0x00	; 0
 128:	01 97       	sbiw	r24, 0x01	; 1
 12a:	f1 f7       	brne	.-4      	; 0x128 <lcd_send_data+0x2a>
  _delay_us(50);              // Standard data execution time (> 43 us)
}
 12c:	08 95       	ret

0000012e <lcd_clear>:
  lcd_send_cmd(0x06);
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
 12e:	81 e0       	ldi	r24, 0x01	; 1
 130:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 134:	80 e4       	ldi	r24, 0x40	; 64
 136:	9c e9       	ldi	r25, 0x9C	; 156
 138:	01 97       	sbiw	r24, 0x01	; 1
 13a:	f1 f7       	brne	.-4      	; 0x138 <lcd_clear+0xa>
  _delay_ms(10);
}
 13c:	08 95       	ret

0000013e <lcd_init>:
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
  SREG = sreg;                // Restore interrupts
  _delay_us(50);              // Standard data execution time (> 43 us)
}

void lcd_init(void){
 13e:	0f 93       	push	r16
 140:	1f 93       	push	r17
 142:	cf 93       	push	r28
 144:	df 93       	push	r29
  // Set PG3 as output and ensure it starts LOW
  DDRG_REG |= (1 << PG3);
 146:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 14a:	88 60       	ori	r24, 0x08	; 8
 14c:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
  PORTG_REG &= ~(1 << PG3);
 150:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 154:	87 7f       	andi	r24, 0xF7	; 247
 156:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 15a:	88 ee       	ldi	r24, 0xE8	; 232
 15c:	93 e0       	ldi	r25, 0x03	; 3
 15e:	20 e9       	ldi	r18, 0x90	; 144
 160:	31 e0       	ldi	r19, 0x01	; 1
 162:	f9 01       	movw	r30, r18
 164:	31 97       	sbiw	r30, 0x01	; 1
 166:	f1 f7       	brne	.-4      	; 0x164 <lcd_init+0x26>
 168:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
 16a:	d9 f7       	brne	.-10     	; 0x162 <lcd_init+0x24>

  // Power-on delay for HD44780
  _delay_ms(100);

  // Standard HD44780 8-bit initialization sequence
  lcd_send_cmd(0x38);
 16c:	88 e3       	ldi	r24, 0x38	; 56
 16e:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 172:	00 e4       	ldi	r16, 0x40	; 64
 174:	1c e9       	ldi	r17, 0x9C	; 156
 176:	c8 01       	movw	r24, r16
 178:	01 97       	sbiw	r24, 0x01	; 1
 17a:	f1 f7       	brne	.-4      	; 0x178 <lcd_init+0x3a>
  _delay_ms(10);
  lcd_send_cmd(0x38);
 17c:	88 e3       	ldi	r24, 0x38	; 56
 17e:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 182:	c0 e2       	ldi	r28, 0x20	; 32
 184:	de e4       	ldi	r29, 0x4E	; 78
 186:	ce 01       	movw	r24, r28
 188:	01 97       	sbiw	r24, 0x01	; 1
 18a:	f1 f7       	brne	.-4      	; 0x188 <lcd_init+0x4a>
  _delay_ms(5);
  lcd_send_cmd(0x38);
 18c:	88 e3       	ldi	r24, 0x38	; 56
 18e:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 192:	ce 01       	movw	r24, r28
 194:	01 97       	sbiw	r24, 0x01	; 1
 196:	f1 f7       	brne	.-4      	; 0x194 <lcd_init+0x56>
  _delay_ms(5);

  // Function set: 8-bit, 2 lines, 5x8 font
  lcd_send_cmd(0x38);
 198:	88 e3       	ldi	r24, 0x38	; 56
 19a:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 19e:	ce 01       	movw	r24, r28
 1a0:	01 97       	sbiw	r24, 0x01	; 1
 1a2:	f1 f7       	brne	.-4      	; 0x1a0 <lcd_init+0x62>
  _delay_ms(5);

  // Display ON, Cursor OFF, Blink OFF (0x0C) for clean look
  lcd_send_cmd(0x0C);
 1a4:	8c e0       	ldi	r24, 0x0C	; 12
 1a6:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 1aa:	ce 01       	movw	r24, r28
 1ac:	01 97       	sbiw	r24, 0x01	; 1
 1ae:	f1 f7       	brne	.-4      	; 0x1ac <lcd_init+0x6e>
  _delay_ms(5);

  // Clear display (clears the 2 solid black rows)
  lcd_clear();
 1b0:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
 1b4:	c8 01       	movw	r24, r16
 1b6:	01 97       	sbiw	r24, 0x01	; 1
 1b8:	f1 f7       	brne	.-4      	; 0x1b6 <lcd_init+0x78>
  _delay_ms(10);

  // Entry mode set: increment cursor, no display shift
  lcd_send_cmd(0x06);
 1ba:	86 e0       	ldi	r24, 0x06	; 6
 1bc:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
 1c0:	21 97       	sbiw	r28, 0x01	; 1
 1c2:	f1 f7       	brne	.-4      	; 0x1c0 <lcd_init+0x82>
  _delay_ms(5);
}
 1c4:	df 91       	pop	r29
 1c6:	cf 91       	pop	r28
 1c8:	1f 91       	pop	r17
 1ca:	0f 91       	pop	r16
 1cc:	08 95       	ret

000001ce <lcd_set_cursor>:
void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(10);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
 1ce:	0f 93       	push	r16
 1d0:	1f 93       	push	r17
 1d2:	cf 93       	push	r28
 1d4:	df 93       	push	r29
 1d6:	00 d0       	rcall	.+0      	; 0x1d8 <lcd_set_cursor+0xa>
 1d8:	00 d0       	rcall	.+0      	; 0x1da <lcd_set_cursor+0xc>
 1da:	cd b7       	in	r28, 0x3d	; 61
 1dc:	de b7       	in	r29, 0x3e	; 62
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
 1de:	00 91 a0 02 	lds	r16, 0x02A0	; 0x8002a0 <MainMenu+0x18>
 1e2:	10 91 a1 02 	lds	r17, 0x02A1	; 0x8002a1 <MainMenu+0x19>
 1e6:	20 91 a2 02 	lds	r18, 0x02A2	; 0x8002a2 <MainMenu+0x1a>
 1ea:	30 91 a3 02 	lds	r19, 0x02A3	; 0x8002a3 <MainMenu+0x1b>
 1ee:	09 83       	std	Y+1, r16	; 0x01
 1f0:	1a 83       	std	Y+2, r17	; 0x02
 1f2:	2b 83       	std	Y+3, r18	; 0x03
 1f4:	3c 83       	std	Y+4, r19	; 0x04
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 1f6:	84 30       	cpi	r24, 0x04	; 4
 1f8:	08 f0       	brcs	.+2      	; 0x1fc <lcd_set_cursor+0x2e>
 1fa:	83 e0       	ldi	r24, 0x03	; 3
 1fc:	fe 01       	movw	r30, r28
 1fe:	e8 0f       	add	r30, r24
 200:	f1 1d       	adc	r31, r1
 202:	81 81       	ldd	r24, Z+1	; 0x01
 204:	86 0f       	add	r24, r22
 206:	80 68       	ori	r24, 0x80	; 128
}
 208:	0f 90       	pop	r0
 20a:	0f 90       	pop	r0
 20c:	0f 90       	pop	r0
 20e:	0f 90       	pop	r0
 210:	df 91       	pop	r29
 212:	cf 91       	pop	r28
 214:	1f 91       	pop	r17
 216:	0f 91       	pop	r16
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 218:	0c 94 67 00 	jmp	0xce	; 0xce <lcd_send_cmd>

0000021c <lcd_send_string>:
}

void lcd_send_string(const char* str){
 21c:	cf 93       	push	r28
 21e:	df 93       	push	r29
 220:	ec 01       	movw	r28, r24
  while(*str){
 222:	89 91       	ld	r24, Y+
 224:	81 11       	cpse	r24, r1
 226:	03 c0       	rjmp	.+6      	; 0x22e <lcd_send_string+0x12>
    lcd_send_data(*str++);
  }
}
 228:	df 91       	pop	r29
 22a:	cf 91       	pop	r28
 22c:	08 95       	ret
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
 22e:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
 232:	f7 cf       	rjmp	.-18     	; 0x222 <lcd_send_string+0x6>

00000234 <lcd_send_string_animated>:
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
 234:	ef 92       	push	r14
 236:	ff 92       	push	r15
 238:	0f 93       	push	r16
 23a:	1f 93       	push	r17
 23c:	cf 93       	push	r28
 23e:	df 93       	push	r29
 240:	8b 01       	movw	r16, r22
 242:	ec 01       	movw	r28, r24
 244:	80 ea       	ldi	r24, 0xA0	; 160
 246:	e8 2e       	mov	r14, r24
 248:	8f e0       	ldi	r24, 0x0F	; 15
 24a:	f8 2e       	mov	r15, r24
  while (*str) {
 24c:	89 91       	ld	r24, Y+
 24e:	81 11       	cpse	r24, r1
 250:	07 c0       	rjmp	.+14     	; 0x260 <lcd_send_string_animated+0x2c>
    lcd_send_data(*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
      _delay_ms(1);
    }
  }
}
 252:	df 91       	pop	r29
 254:	cf 91       	pop	r28
 256:	1f 91       	pop	r17
 258:	0f 91       	pop	r16
 25a:	ff 90       	pop	r15
 25c:	ef 90       	pop	r14
 25e:	08 95       	ret
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data(*str++);
 260:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
 264:	90 e0       	ldi	r25, 0x00	; 0
 266:	80 e0       	ldi	r24, 0x00	; 0
 268:	80 17       	cp	r24, r16
 26a:	91 07       	cpc	r25, r17
 26c:	79 f3       	breq	.-34     	; 0x24c <lcd_send_string_animated+0x18>
 26e:	f7 01       	movw	r30, r14
 270:	31 97       	sbiw	r30, 0x01	; 1
 272:	f1 f7       	brne	.-4      	; 0x270 <lcd_send_string_animated+0x3c>
 274:	01 96       	adiw	r24, 0x01	; 1
 276:	f8 cf       	rjmp	.-16     	; 0x268 <lcd_send_string_animated+0x34>

00000278 <lcd_display>:
    }
  }
}

void lcd_display(void){
  lcd_send_cmd(0x0C);
 278:	8c e0       	ldi	r24, 0x0C	; 12
 27a:	0c 94 67 00 	jmp	0xce	; 0xce <lcd_send_cmd>

0000027e <seg7_init>:

#include <avr/interrupt.h>

void seg7_init(void) {
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
 27e:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xc41>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
 282:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xc42>

    // Configure Timer0 for 2.0 ms CTC interrupt (500 Hz):
    // Prescaler 256 (16MHz / 256 = 62.5 kHz) -> 125 counts (OCR0 = 124) = 2.0 ms
    // Refresh rate for 6 digits = 500 Hz / 6 = 83.3 Hz (clean, zero flicker)
    TCCR0 = (1 << WGM01) | (1 << CS02) | (1 << CS01);
 286:	8e e0       	ldi	r24, 0x0E	; 14
 288:	83 bf       	out	0x33, r24	; 51
    TCNT0 = 0;
 28a:	12 be       	out	0x32, r1	; 50
    OCR0  = 124;
 28c:	8c e7       	ldi	r24, 0x7C	; 124
 28e:	81 bf       	out	0x31, r24	; 49
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
 290:	87 b7       	in	r24, 0x37	; 55
 292:	82 60       	ori	r24, 0x02	; 2
 294:	87 bf       	out	0x37, r24	; 55
    sei();                      // Enable global interrupts
 296:	78 94       	sei
}
 298:	08 95       	ret

0000029a <seg7_set_digit>:
ISR(TIMER0_COMP_vect) {
    seg7_update();
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
 29a:	86 30       	cpi	r24, 0x06	; 6
 29c:	28 f4       	brcc	.+10     	; 0x2a8 <seg7_set_digit+0xe>
        display_buffer[pos] = value;
 29e:	e8 2f       	mov	r30, r24
 2a0:	f0 e0       	ldi	r31, 0x00	; 0
 2a2:	e0 50       	subi	r30, 0x00	; 0
 2a4:	ff 4f       	sbci	r31, 0xFF	; 255
 2a6:	60 83       	st	Z, r22
    }
}
 2a8:	08 95       	ret

000002aa <seg7_set_array>:

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
 2aa:	e0 e0       	ldi	r30, 0x00	; 0
 2ac:	f1 e0       	ldi	r31, 0x01	; 1
 2ae:	9c 01       	movw	r18, r24
 2b0:	2a 5f       	subi	r18, 0xFA	; 250
 2b2:	3f 4f       	sbci	r19, 0xFF	; 255
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = digits[i];
 2b4:	dc 01       	movw	r26, r24
 2b6:	4d 91       	ld	r20, X+
 2b8:	cd 01       	movw	r24, r26
 2ba:	41 93       	st	Z+, r20
        display_buffer[pos] = value;
    }
}

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
 2bc:	a2 17       	cp	r26, r18
 2be:	b3 07       	cpc	r27, r19
 2c0:	c9 f7       	brne	.-14     	; 0x2b4 <seg7_set_array+0xa>
        display_buffer[i] = digits[i];
    }
}
 2c2:	08 95       	ret

000002c4 <seg7_set_number>:

void seg7_set_number(uint32_t num) {
 2c4:	cf 92       	push	r12
 2c6:	df 92       	push	r13
 2c8:	ef 92       	push	r14
 2ca:	ff 92       	push	r15
 2cc:	cf 93       	push	r28
 2ce:	df 93       	push	r29
 2d0:	c6 e0       	ldi	r28, 0x06	; 6
 2d2:	d1 e0       	ldi	r29, 0x01	; 1
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        display_buffer[i] = num % 10;
 2d4:	2a e0       	ldi	r18, 0x0A	; 10
 2d6:	c2 2e       	mov	r12, r18
 2d8:	d1 2c       	mov	r13, r1
 2da:	e1 2c       	mov	r14, r1
 2dc:	f1 2c       	mov	r15, r1
 2de:	a7 01       	movw	r20, r14
 2e0:	96 01       	movw	r18, r12
 2e2:	0e 94 3e 06 	call	0xc7c	; 0xc7c <__udivmodsi4>
 2e6:	6a 93       	st	-Y, r22
        num /= 10;
 2e8:	b9 01       	movw	r22, r18
 2ea:	ca 01       	movw	r24, r20
        display_buffer[i] = digits[i];
    }
}

void seg7_set_number(uint32_t num) {
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
 2ec:	21 e0       	ldi	r18, 0x01	; 1
 2ee:	c0 30       	cpi	r28, 0x00	; 0
 2f0:	d2 07       	cpc	r29, r18
 2f2:	a9 f7       	brne	.-22     	; 0x2de <seg7_set_number+0x1a>
        display_buffer[i] = num % 10;
        num /= 10;
    }
}
 2f4:	df 91       	pop	r29
 2f6:	cf 91       	pop	r28
 2f8:	ff 90       	pop	r15
 2fa:	ef 90       	pop	r14
 2fc:	df 90       	pop	r13
 2fe:	cf 90       	pop	r12
 300:	08 95       	ret

00000302 <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL3) to prevent ghosting
    LED_7CONTROL = 0x00;
 302:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xc41>

    // 2. Load the segment pattern for the active digit (via CSEL4)
    uint8_t val = display_buffer[current_digit];
 306:	e0 91 a6 04 	lds	r30, 0x04A6	; 0x8004a6 <__data_end>
 30a:	f0 e0       	ldi	r31, 0x00	; 0
 30c:	e0 50       	subi	r30, 0x00	; 0
 30e:	ff 4f       	sbci	r31, 0xFF	; 255
 310:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEG_TABLE[val] : SEG_BLANK;
 312:	80 e0       	ldi	r24, 0x00	; 0
 314:	e0 31       	cpi	r30, 0x10	; 16
 316:	20 f4       	brcc	.+8      	; 0x320 <seg7_update+0x1e>
 318:	f0 e0       	ldi	r31, 0x00	; 0
 31a:	ec 55       	subi	r30, 0x5C	; 92
 31c:	fd 4f       	sbci	r31, 0xFD	; 253
 31e:	80 81       	ld	r24, Z
    LED_7DATA = seg_pattern;
 320:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xc42>
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);
 324:	20 91 a6 04 	lds	r18, 0x04A6	; 0x8004a6 <__data_end>
 328:	81 e0       	ldi	r24, 0x01	; 1
 32a:	90 e0       	ldi	r25, 0x00	; 0
 32c:	01 c0       	rjmp	.+2      	; 0x330 <seg7_update+0x2e>
 32e:	88 0f       	add	r24, r24
 330:	2a 95       	dec	r18
 332:	ea f7       	brpl	.-6      	; 0x32e <seg7_update+0x2c>
 334:	80 93 03 11 	sts	0x1103, r24	; 0x801103 <__bss_end+0xc41>

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
 338:	80 91 a6 04 	lds	r24, 0x04A6	; 0x8004a6 <__data_end>
 33c:	90 e0       	ldi	r25, 0x00	; 0
 33e:	01 96       	adiw	r24, 0x01	; 1
 340:	66 e0       	ldi	r22, 0x06	; 6
 342:	70 e0       	ldi	r23, 0x00	; 0
 344:	0e 94 2a 06 	call	0xc54	; 0xc54 <__divmodhi4>
 348:	80 93 a6 04 	sts	0x04A6, r24	; 0x8004a6 <__data_end>
}
 34c:	08 95       	ret

0000034e <__vector_15>:
    OCR0  = 124;
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
 34e:	1f 92       	push	r1
 350:	0f 92       	push	r0
 352:	0f b6       	in	r0, 0x3f	; 63
 354:	0f 92       	push	r0
 356:	11 24       	eor	r1, r1
 358:	0b b6       	in	r0, 0x3b	; 59
 35a:	0f 92       	push	r0
 35c:	2f 93       	push	r18
 35e:	3f 93       	push	r19
 360:	4f 93       	push	r20
 362:	5f 93       	push	r21
 364:	6f 93       	push	r22
 366:	7f 93       	push	r23
 368:	8f 93       	push	r24
 36a:	9f 93       	push	r25
 36c:	af 93       	push	r26
 36e:	bf 93       	push	r27
 370:	ef 93       	push	r30
 372:	ff 93       	push	r31
    seg7_update();
 374:	0e 94 81 01 	call	0x302	; 0x302 <seg7_update>
}
 378:	ff 91       	pop	r31
 37a:	ef 91       	pop	r30
 37c:	bf 91       	pop	r27
 37e:	af 91       	pop	r26
 380:	9f 91       	pop	r25
 382:	8f 91       	pop	r24
 384:	7f 91       	pop	r23
 386:	6f 91       	pop	r22
 388:	5f 91       	pop	r21
 38a:	4f 91       	pop	r20
 38c:	3f 91       	pop	r19
 38e:	2f 91       	pop	r18
 390:	0f 90       	pop	r0
 392:	0b be       	out	0x3b, r0	; 59
 394:	0f 90       	pop	r0
 396:	0f be       	out	0x3f, r0	; 63
 398:	0f 90       	pop	r0
 39a:	1f 90       	pop	r1
 39c:	18 95       	reti

0000039e <button_update>:
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
  READ_BUTTONS;
 39e:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xc3e>
 3a2:	20 93 c1 04 	sts	0x04C1, r18	; 0x8004c1 <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
 3a6:	80 91 b1 04 	lds	r24, 0x04B1	; 0x8004b1 <last_raw>
 3aa:	80 95       	com	r24
 3ac:	82 23       	and	r24, r18
 3ae:	80 93 b0 04 	sts	0x04B0, r24	; 0x8004b0 <press_event>
 3b2:	e7 ea       	ldi	r30, 0xA7	; 167
 3b4:	f4 e0       	ldi	r31, 0x04	; 4
  held_event  = 0x00;
 3b6:	50 e0       	ldi	r21, 0x00	; 0
 3b8:	40 e0       	ldi	r20, 0x00	; 0
 3ba:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
 3bc:	a1 e0       	ldi	r26, 0x01	; 1
 3be:	b0 e0       	ldi	r27, 0x00	; 0
 3c0:	bd 01       	movw	r22, r26
 3c2:	04 2e       	mov	r0, r20
 3c4:	01 c0       	rjmp	.+2      	; 0x3c8 <button_update+0x2a>
 3c6:	66 0f       	add	r22, r22
 3c8:	0a 94       	dec	r0
 3ca:	ea f7       	brpl	.-6      	; 0x3c6 <button_update+0x28>
    if (raw & bit) {
 3cc:	82 2f       	mov	r24, r18
 3ce:	86 23       	and	r24, r22
 3d0:	d1 f0       	breq	.+52     	; 0x406 <__LOCK_REGION_LENGTH__+0x6>
      if (hold_cnt[i] < 255) hold_cnt[i]++;
 3d2:	80 81       	ld	r24, Z
 3d4:	8f 3f       	cpi	r24, 0xFF	; 255
 3d6:	11 f0       	breq	.+4      	; 0x3dc <button_update+0x3e>
 3d8:	8f 5f       	subi	r24, 0xFF	; 255
 3da:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
 3dc:	80 81       	ld	r24, Z
 3de:	83 32       	cpi	r24, 0x23	; 35
 3e0:	38 f0       	brcs	.+14     	; 0x3f0 <button_update+0x52>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
 3e2:	83 52       	subi	r24, 0x23	; 35
 3e4:	99 0b       	sbc	r25, r25
 3e6:	87 70       	andi	r24, 0x07	; 7
 3e8:	99 27       	eor	r25, r25
 3ea:	89 2b       	or	r24, r25
 3ec:	09 f4       	brne	.+2      	; 0x3f0 <button_update+0x52>
          held_event |= bit;
 3ee:	36 2b       	or	r19, r22
 3f0:	4f 5f       	subi	r20, 0xFF	; 255
 3f2:	5f 4f       	sbci	r21, 0xFF	; 255
 3f4:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
 3f6:	48 30       	cpi	r20, 0x08	; 8
 3f8:	51 05       	cpc	r21, r1
 3fa:	11 f7       	brne	.-60     	; 0x3c0 <button_update+0x22>
 3fc:	30 93 af 04 	sts	0x04AF, r19	; 0x8004af <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
 400:	20 93 b1 04 	sts	0x04B1, r18	; 0x8004b1 <last_raw>
}
 404:	08 95       	ret
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
        }
      }
    } else {
      hold_cnt[i] = 0;
 406:	10 82       	st	Z, r1
 408:	f3 cf       	rjmp	.-26     	; 0x3f0 <button_update+0x52>

0000040a <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
 40a:	80 91 b0 04 	lds	r24, 0x04B0	; 0x8004b0 <press_event>
 40e:	08 95       	ret

00000410 <button_held>:
uint8_t button_held(void)      { return held_event;  }
 410:	80 91 af 04 	lds	r24, 0x04AF	; 0x8004af <held_event>
 414:	08 95       	ret

00000416 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
 416:	80 91 b1 04 	lds	r24, 0x04B1	; 0x8004b1 <last_raw>
 41a:	08 95       	ret

0000041c <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
 41c:	90 91 b0 04 	lds	r25, 0x04B0	; 0x8004b0 <press_event>
 420:	80 91 af 04 	lds	r24, 0x04AF	; 0x8004af <held_event>
 424:	89 2b       	or	r24, r25
 426:	08 95       	ret

00000428 <action_7seg_time>:
}

// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================
static void action_7seg_time(void) {
 428:	8f 92       	push	r8
 42a:	9f 92       	push	r9
 42c:	af 92       	push	r10
 42e:	bf 92       	push	r11
 430:	cf 92       	push	r12
 432:	df 92       	push	r13
 434:	ef 92       	push	r14
 436:	ff 92       	push	r15
    sim_clock_time++;
 438:	c0 90 06 01 	lds	r12, 0x0106	; 0x800106 <sim_clock_time>
 43c:	d0 90 07 01 	lds	r13, 0x0107	; 0x800107 <sim_clock_time+0x1>
 440:	e0 90 08 01 	lds	r14, 0x0108	; 0x800108 <sim_clock_time+0x2>
 444:	f0 90 09 01 	lds	r15, 0x0109	; 0x800109 <sim_clock_time+0x3>
 448:	46 01       	movw	r8, r12
 44a:	57 01       	movw	r10, r14
 44c:	8f ef       	ldi	r24, 0xFF	; 255
 44e:	88 1a       	sub	r8, r24
 450:	98 0a       	sbc	r9, r24
 452:	a8 0a       	sbc	r10, r24
 454:	b8 0a       	sbc	r11, r24
    if ((sim_clock_time % 100) >= 60) {
 456:	c5 01       	movw	r24, r10
 458:	b4 01       	movw	r22, r8
 45a:	24 e6       	ldi	r18, 0x64	; 100
 45c:	30 e0       	ldi	r19, 0x00	; 0
 45e:	40 e0       	ldi	r20, 0x00	; 0
 460:	50 e0       	ldi	r21, 0x00	; 0
 462:	0e 94 3e 06 	call	0xc7c	; 0xc7c <__udivmodsi4>
 466:	6c 33       	cpi	r22, 0x3C	; 60
 468:	71 05       	cpc	r23, r1
 46a:	81 05       	cpc	r24, r1
 46c:	91 05       	cpc	r25, r1
 46e:	d0 f5       	brcc	.+116    	; 0x4e4 <action_7seg_time+0xbc>

// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================
static void action_7seg_time(void) {
    sim_clock_time++;
 470:	80 92 06 01 	sts	0x0106, r8	; 0x800106 <sim_clock_time>
 474:	90 92 07 01 	sts	0x0107, r9	; 0x800107 <sim_clock_time+0x1>
 478:	a0 92 08 01 	sts	0x0108, r10	; 0x800108 <sim_clock_time+0x2>
 47c:	b0 92 09 01 	sts	0x0109, r11	; 0x800109 <sim_clock_time+0x3>
    if ((sim_clock_time % 100) >= 60) {
        sim_clock_time += 40;
    }
    seg7_set_number(sim_clock_time);
 480:	60 91 06 01 	lds	r22, 0x0106	; 0x800106 <sim_clock_time>
 484:	70 91 07 01 	lds	r23, 0x0107	; 0x800107 <sim_clock_time+0x1>
 488:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sim_clock_time+0x2>
 48c:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <sim_clock_time+0x3>
 490:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
 494:	60 e0       	ldi	r22, 0x00	; 0
 496:	80 e0       	ldi	r24, 0x00	; 0
 498:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== CURRENT TIME ===");
 49c:	80 ec       	ldi	r24, 0xC0	; 192
 49e:	92 e0       	ldi	r25, 0x02	; 2
 4a0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 4a4:	60 e0       	ldi	r22, 0x00	; 0
 4a6:	81 e0       	ldi	r24, 0x01	; 1
 4a8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
 4ac:	85 ed       	ldi	r24, 0xD5	; 213
 4ae:	92 e0       	ldi	r25, 0x02	; 2
 4b0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 4b4:	60 e0       	ldi	r22, 0x00	; 0
 4b6:	82 e0       	ldi	r24, 0x02	; 2
 4b8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("HH:MM:SS RUNNING... ");
 4bc:	8a ee       	ldi	r24, 0xEA	; 234
 4be:	92 e0       	ldi	r25, 0x02	; 2
 4c0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 4c4:	60 e0       	ldi	r22, 0x00	; 0
 4c6:	83 e0       	ldi	r24, 0x03	; 3
 4c8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 4cc:	8f ef       	ldi	r24, 0xFF	; 255
 4ce:	92 e0       	ldi	r25, 0x02	; 2
}
 4d0:	ff 90       	pop	r15
 4d2:	ef 90       	pop	r14
 4d4:	df 90       	pop	r13
 4d6:	cf 90       	pop	r12
 4d8:	bf 90       	pop	r11
 4da:	af 90       	pop	r10
 4dc:	9f 90       	pop	r9
 4de:	8f 90       	pop	r8
    lcd_set_cursor(1, 0);
    lcd_send_string("DISPLAYING ON 7-SEG ");
    lcd_set_cursor(2, 0);
    lcd_send_string("HH:MM:SS RUNNING... ");
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
 4e0:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
// 8. ACTION IMPLEMENTATIONS
// ==========================================
static void action_7seg_time(void) {
    sim_clock_time++;
    if ((sim_clock_time % 100) >= 60) {
        sim_clock_time += 40;
 4e4:	89 e2       	ldi	r24, 0x29	; 41
 4e6:	c8 0e       	add	r12, r24
 4e8:	d1 1c       	adc	r13, r1
 4ea:	e1 1c       	adc	r14, r1
 4ec:	f1 1c       	adc	r15, r1
 4ee:	c0 92 06 01 	sts	0x0106, r12	; 0x800106 <sim_clock_time>
 4f2:	d0 92 07 01 	sts	0x0107, r13	; 0x800107 <sim_clock_time+0x1>
 4f6:	e0 92 08 01 	sts	0x0108, r14	; 0x800108 <sim_clock_time+0x2>
 4fa:	f0 92 09 01 	sts	0x0109, r15	; 0x800109 <sim_clock_time+0x3>
 4fe:	c0 cf       	rjmp	.-128    	; 0x480 <action_7seg_time+0x58>

00000500 <action_7seg_countup>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_7seg_countup(void) {
    count_val++;
 500:	60 91 b3 04 	lds	r22, 0x04B3	; 0x8004b3 <count_val>
 504:	70 91 b4 04 	lds	r23, 0x04B4	; 0x8004b4 <count_val+0x1>
 508:	6f 5f       	subi	r22, 0xFF	; 255
 50a:	7f 4f       	sbci	r23, 0xFF	; 255
 50c:	70 93 b4 04 	sts	0x04B4, r23	; 0x8004b4 <count_val+0x1>
 510:	60 93 b3 04 	sts	0x04B3, r22	; 0x8004b3 <count_val>
    seg7_set_number(count_val);
 514:	90 e0       	ldi	r25, 0x00	; 0
 516:	80 e0       	ldi	r24, 0x00	; 0
 518:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
 51c:	60 e0       	ldi	r22, 0x00	; 0
 51e:	80 e0       	ldi	r24, 0x00	; 0
 520:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== COUNT UP MODE ==");
 524:	84 e1       	ldi	r24, 0x14	; 20
 526:	93 e0       	ldi	r25, 0x03	; 3
 528:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 52c:	60 e0       	ldi	r22, 0x00	; 0
 52e:	81 e0       	ldi	r24, 0x01	; 1
 530:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
 534:	85 ed       	ldi	r24, 0xD5	; 213
 536:	92 e0       	ldi	r25, 0x02	; 2
 538:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 53c:	60 e0       	ldi	r22, 0x00	; 0
 53e:	82 e0       	ldi	r24, 0x02	; 2
 540:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("COUNTER INCREASING  ");
 544:	89 e2       	ldi	r24, 0x29	; 41
 546:	93 e0       	ldi	r25, 0x03	; 3
 548:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 54c:	60 e0       	ldi	r22, 0x00	; 0
 54e:	83 e0       	ldi	r24, 0x03	; 3
 550:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 554:	8f ef       	ldi	r24, 0xFF	; 255
 556:	92 e0       	ldi	r25, 0x02	; 2
 558:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

0000055c <action_7seg_mode3>:
}

static void action_7seg_mode3(void) {
    seg7_set_number(888888);
 55c:	68 e3       	ldi	r22, 0x38	; 56
 55e:	70 e9       	ldi	r23, 0x90	; 144
 560:	8d e0       	ldi	r24, 0x0D	; 13
 562:	90 e0       	ldi	r25, 0x00	; 0
 564:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
 568:	60 e0       	ldi	r22, 0x00	; 0
 56a:	80 e0       	ldi	r24, 0x00	; 0
 56c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== 7-SEG MODE 3 ===");
 570:	8e e3       	ldi	r24, 0x3E	; 62
 572:	93 e0       	ldi	r25, 0x03	; 3
 574:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 578:	60 e0       	ldi	r22, 0x00	; 0
 57a:	81 e0       	ldi	r24, 0x01	; 1
 57c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("ALL DIGITS SET TO 8 ");
 580:	83 e5       	ldi	r24, 0x53	; 83
 582:	93 e0       	ldi	r25, 0x03	; 3
 584:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 588:	60 e0       	ldi	r22, 0x00	; 0
 58a:	82 e0       	ldi	r24, 0x02	; 2
 58c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("                    ");
 590:	88 e6       	ldi	r24, 0x68	; 104
 592:	93 e0       	ldi	r25, 0x03	; 3
 594:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 598:	60 e0       	ldi	r22, 0x00	; 0
 59a:	83 e0       	ldi	r24, 0x03	; 3
 59c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 5a0:	8f ef       	ldi	r24, 0xFF	; 255
 5a2:	92 e0       	ldi	r25, 0x02	; 2
 5a4:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000005a8 <action_relay1>:
}

static void action_relay1(void) {
    relay_state ^= 0x01;
 5a8:	80 91 b2 04 	lds	r24, 0x04B2	; 0x8004b2 <relay_state>
 5ac:	91 e0       	ldi	r25, 0x01	; 1
 5ae:	89 27       	eor	r24, r25
 5b0:	80 93 b2 04 	sts	0x04B2, r24	; 0x8004b2 <relay_state>
    RELAYS = relay_state;
 5b4:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xc43>

    lcd_set_cursor(0, 0);
 5b8:	60 e0       	ldi	r22, 0x00	; 0
 5ba:	80 e0       	ldi	r24, 0x00	; 0
 5bc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAY 1 TOGGLE =");
 5c0:	8d e7       	ldi	r24, 0x7D	; 125
 5c2:	93 e0       	ldi	r25, 0x03	; 3
 5c4:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 5c8:	60 e0       	ldi	r22, 0x00	; 0
 5ca:	81 e0       	ldi	r24, 0x01	; 1
 5cc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (relay_state & 0x01) {
 5d0:	80 91 b2 04 	lds	r24, 0x04B2	; 0x8004b2 <relay_state>
 5d4:	80 ff       	sbrs	r24, 0
 5d6:	14 c0       	rjmp	.+40     	; 0x600 <action_relay1+0x58>
        lcd_send_string("STATUS: [ ON  ]     ");
 5d8:	82 e9       	ldi	r24, 0x92	; 146
 5da:	93 e0       	ldi	r25, 0x03	; 3
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 5dc:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    }
    lcd_set_cursor(2, 0);
 5e0:	60 e0       	ldi	r22, 0x00	; 0
 5e2:	82 e0       	ldi	r24, 0x02	; 2
 5e4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("                    ");
 5e8:	88 e6       	ldi	r24, 0x68	; 104
 5ea:	93 e0       	ldi	r25, 0x03	; 3
 5ec:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 5f0:	60 e0       	ldi	r22, 0x00	; 0
 5f2:	83 e0       	ldi	r24, 0x03	; 3
 5f4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 5f8:	8f ef       	ldi	r24, 0xFF	; 255
 5fa:	92 e0       	ldi	r25, 0x02	; 2
 5fc:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
    lcd_send_string("=== RELAY 1 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x01) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 600:	87 ea       	ldi	r24, 0xA7	; 167
 602:	93 e0       	ldi	r25, 0x03	; 3
 604:	eb cf       	rjmp	.-42     	; 0x5dc <action_relay1+0x34>

00000606 <action_relay2>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay2(void) {
    relay_state ^= 0x02;
 606:	80 91 b2 04 	lds	r24, 0x04B2	; 0x8004b2 <relay_state>
 60a:	92 e0       	ldi	r25, 0x02	; 2
 60c:	89 27       	eor	r24, r25
 60e:	80 93 b2 04 	sts	0x04B2, r24	; 0x8004b2 <relay_state>
    RELAYS = relay_state;
 612:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xc43>

    lcd_set_cursor(0, 0);
 616:	60 e0       	ldi	r22, 0x00	; 0
 618:	80 e0       	ldi	r24, 0x00	; 0
 61a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAY 2 TOGGLE =");
 61e:	8c eb       	ldi	r24, 0xBC	; 188
 620:	93 e0       	ldi	r25, 0x03	; 3
 622:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 626:	60 e0       	ldi	r22, 0x00	; 0
 628:	81 e0       	ldi	r24, 0x01	; 1
 62a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (relay_state & 0x02) {
 62e:	80 91 b2 04 	lds	r24, 0x04B2	; 0x8004b2 <relay_state>
 632:	81 ff       	sbrs	r24, 1
 634:	14 c0       	rjmp	.+40     	; 0x65e <action_relay2+0x58>
        lcd_send_string("STATUS: [ ON  ]     ");
 636:	82 e9       	ldi	r24, 0x92	; 146
 638:	93 e0       	ldi	r25, 0x03	; 3
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 63a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    }
    lcd_set_cursor(2, 0);
 63e:	60 e0       	ldi	r22, 0x00	; 0
 640:	82 e0       	ldi	r24, 0x02	; 2
 642:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("                    ");
 646:	88 e6       	ldi	r24, 0x68	; 104
 648:	93 e0       	ldi	r25, 0x03	; 3
 64a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 64e:	60 e0       	ldi	r22, 0x00	; 0
 650:	83 e0       	ldi	r24, 0x03	; 3
 652:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 656:	8f ef       	ldi	r24, 0xFF	; 255
 658:	92 e0       	ldi	r25, 0x02	; 2
 65a:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
    lcd_send_string("=== RELAY 2 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x02) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 65e:	87 ea       	ldi	r24, 0xA7	; 167
 660:	93 e0       	ldi	r25, 0x03	; 3
 662:	eb cf       	rjmp	.-42     	; 0x63a <action_relay2+0x34>

00000664 <action_relay_all_off>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_all_off(void) {
    relay_state = 0x00;
 664:	10 92 b2 04 	sts	0x04B2, r1	; 0x8004b2 <relay_state>
    RELAYS = relay_state;
 668:	10 92 05 11 	sts	0x1105, r1	; 0x801105 <__bss_end+0xc43>

    lcd_set_cursor(0, 0);
 66c:	60 e0       	ldi	r22, 0x00	; 0
 66e:	80 e0       	ldi	r24, 0x00	; 0
 670:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS =====");
 674:	81 ed       	ldi	r24, 0xD1	; 209
 676:	93 e0       	ldi	r25, 0x03	; 3
 678:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 67c:	60 e0       	ldi	r22, 0x00	; 0
 67e:	81 e0       	ldi	r24, 0x01	; 1
 680:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("STATUS: ALL TURNED  ");
 684:	86 ee       	ldi	r24, 0xE6	; 230
 686:	93 e0       	ldi	r25, 0x03	; 3
 688:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 68c:	60 e0       	ldi	r22, 0x00	; 0
 68e:	82 e0       	ldi	r24, 0x02	; 2
 690:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("OFF SUCCESSFULLY    ");
 694:	8b ef       	ldi	r24, 0xFB	; 251
 696:	93 e0       	ldi	r25, 0x03	; 3
 698:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 69c:	60 e0       	ldi	r22, 0x00	; 0
 69e:	83 e0       	ldi	r24, 0x03	; 3
 6a0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 6a4:	8f ef       	ldi	r24, 0xFF	; 255
 6a6:	92 e0       	ldi	r25, 0x02	; 2
 6a8:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000006ac <action_version>:
}

static void action_version(void) {
    lcd_set_cursor(0, 0);
 6ac:	60 e0       	ldi	r22, 0x00	; 0
 6ae:	80 e0       	ldi	r24, 0x00	; 0
 6b0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== SYSTEM INFO ====");
 6b4:	80 e1       	ldi	r24, 0x10	; 16
 6b6:	94 e0       	ldi	r25, 0x04	; 4
 6b8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 6bc:	60 e0       	ldi	r22, 0x00	; 0
 6be:	81 e0       	ldi	r24, 0x01	; 1
 6c0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("FIRMWARE: V2.0 FINAL");
 6c4:	85 e2       	ldi	r24, 0x25	; 37
 6c6:	94 e0       	ldi	r25, 0x04	; 4
 6c8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 6cc:	60 e0       	ldi	r22, 0x00	; 0
 6ce:	82 e0       	ldi	r24, 0x02	; 2
 6d0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("BUILD DATE: OCT 2026");
 6d4:	8a e3       	ldi	r24, 0x3A	; 58
 6d6:	94 e0       	ldi	r25, 0x04	; 4
 6d8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 6dc:	60 e0       	ldi	r22, 0x00	; 0
 6de:	83 e0       	ldi	r24, 0x03	; 3
 6e0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 6e4:	8f ef       	ldi	r24, 0xFF	; 255
 6e6:	92 e0       	ldi	r25, 0x02	; 2
 6e8:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000006ec <action_about>:
}

static void action_about(void) {
    lcd_set_cursor(0, 0);
 6ec:	60 e0       	ldi	r22, 0x00	; 0
 6ee:	80 e0       	ldi	r24, 0x00	; 0
 6f0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ATMEGA128A =====");
 6f4:	8f e4       	ldi	r24, 0x4F	; 79
 6f6:	94 e0       	ldi	r25, 0x04	; 4
 6f8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 6fc:	60 e0       	ldi	r22, 0x00	; 0
 6fe:	81 e0       	ldi	r24, 0x01	; 1
 700:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("16MHZ EXT MEM BUS   ");
 704:	84 e6       	ldi	r24, 0x64	; 100
 706:	94 e0       	ldi	r25, 0x04	; 4
 708:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 70c:	60 e0       	ldi	r22, 0x00	; 0
 70e:	82 e0       	ldi	r24, 0x02	; 2
 710:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("SCHMITT TRIGGER IN  ");
 714:	89 e7       	ldi	r24, 0x79	; 121
 716:	94 e0       	ldi	r25, 0x04	; 4
 718:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 71c:	60 e0       	ldi	r22, 0x00	; 0
 71e:	83 e0       	ldi	r24, 0x03	; 3
 720:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 724:	8f ef       	ldi	r24, 0xFF	; 255
 726:	92 e0       	ldi	r25, 0x02	; 2
 728:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

0000072c <menu_init>:
static uint8_t welcome_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
 72c:	cf 93       	push	r28
 72e:	df 93       	push	r29
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
 730:	e4 e2       	ldi	r30, 0x24	; 36
 732:	f2 e0       	ldi	r31, 0x02	; 2
 734:	a8 e0       	ldi	r26, 0x08	; 8
 736:	b2 e0       	ldi	r27, 0x02	; 2
 738:	b5 8b       	std	Z+21, r27	; 0x15
 73a:	a4 8b       	std	Z+20, r26	; 0x14
 73c:	17 8a       	std	Z+23, r1	; 0x17
 73e:	16 8a       	std	Z+22, r1	; 0x16
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
 740:	cc ee       	ldi	r28, 0xEC	; 236
 742:	d1 e0       	ldi	r29, 0x01	; 1
 744:	55 96       	adiw	r26, 0x15	; 21
 746:	dc 93       	st	X, r29
 748:	ce 93       	st	-X, r28
 74a:	54 97       	sbiw	r26, 0x14	; 20
 74c:	57 96       	adiw	r26, 0x17	; 23
 74e:	fc 93       	st	X, r31
 750:	ee 93       	st	-X, r30
 752:	56 97       	sbiw	r26, 0x16	; 22
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
 754:	1d 8a       	std	Y+21, r1	; 0x15
 756:	1c 8a       	std	Y+20, r1	; 0x14
 758:	bf 8b       	std	Y+23, r27	; 0x17
 75a:	ae 8b       	std	Y+22, r26	; 0x16
    MainMenu.first_item = &Main_Item1;
 75c:	28 e8       	ldi	r18, 0x88	; 136
 75e:	32 e0       	ldi	r19, 0x02	; 2
 760:	d9 01       	movw	r26, r18
 762:	55 96       	adiw	r26, 0x15	; 21
 764:	fc 93       	st	X, r31
 766:	ee 93       	st	-X, r30
 768:	54 97       	sbiw	r26, 0x14	; 20

    // Wire up 7-SEG Menu
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
 76a:	40 ed       	ldi	r20, 0xD0	; 208
 76c:	51 e0       	ldi	r21, 0x01	; 1
 76e:	c4 eb       	ldi	r28, 0xB4	; 180
 770:	d1 e0       	ldi	r29, 0x01	; 1
 772:	da 01       	movw	r26, r20
 774:	55 96       	adiw	r26, 0x15	; 21
 776:	dc 93       	st	X, r29
 778:	ce 93       	st	-X, r28
 77a:	54 97       	sbiw	r26, 0x14	; 20
 77c:	57 96       	adiw	r26, 0x17	; 23
 77e:	1c 92       	st	X, r1
 780:	1e 92       	st	-X, r1
 782:	56 97       	sbiw	r26, 0x16	; 22
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
 784:	88 e9       	ldi	r24, 0x98	; 152
 786:	91 e0       	ldi	r25, 0x01	; 1
 788:	9d 8b       	std	Y+21, r25	; 0x15
 78a:	8c 8b       	std	Y+20, r24	; 0x14
 78c:	5f 8b       	std	Y+23, r21	; 0x17
 78e:	4e 8b       	std	Y+22, r20	; 0x16
    Seg_Item3.next = NULL;       Seg_Item3.prev = &Seg_Item2;
 790:	dc 01       	movw	r26, r24
 792:	55 96       	adiw	r26, 0x15	; 21
 794:	1c 92       	st	X, r1
 796:	1e 92       	st	-X, r1
 798:	54 97       	sbiw	r26, 0x14	; 20
 79a:	57 96       	adiw	r26, 0x17	; 23
 79c:	dc 93       	st	X, r29
 79e:	ce 93       	st	-X, r28
 7a0:	56 97       	sbiw	r26, 0x16	; 22
    SegMenu.first_item = &Seg_Item1;
 7a2:	50 93 85 02 	sts	0x0285, r21	; 0x800285 <SegMenu+0x15>
 7a6:	40 93 84 02 	sts	0x0284, r20	; 0x800284 <SegMenu+0x14>

    // Wire up Relay Menu
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
 7aa:	4c e7       	ldi	r20, 0x7C	; 124
 7ac:	51 e0       	ldi	r21, 0x01	; 1
 7ae:	c0 e6       	ldi	r28, 0x60	; 96
 7b0:	d1 e0       	ldi	r29, 0x01	; 1
 7b2:	da 01       	movw	r26, r20
 7b4:	55 96       	adiw	r26, 0x15	; 21
 7b6:	dc 93       	st	X, r29
 7b8:	ce 93       	st	-X, r28
 7ba:	54 97       	sbiw	r26, 0x14	; 20
 7bc:	57 96       	adiw	r26, 0x17	; 23
 7be:	1c 92       	st	X, r1
 7c0:	1e 92       	st	-X, r1
 7c2:	56 97       	sbiw	r26, 0x16	; 22
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
 7c4:	84 e4       	ldi	r24, 0x44	; 68
 7c6:	91 e0       	ldi	r25, 0x01	; 1
 7c8:	9d 8b       	std	Y+21, r25	; 0x15
 7ca:	8c 8b       	std	Y+20, r24	; 0x14
 7cc:	5f 8b       	std	Y+23, r21	; 0x17
 7ce:	4e 8b       	std	Y+22, r20	; 0x16
    Relay_Item3.next = NULL;         Relay_Item3.prev = &Relay_Item2;
 7d0:	dc 01       	movw	r26, r24
 7d2:	55 96       	adiw	r26, 0x15	; 21
 7d4:	1c 92       	st	X, r1
 7d6:	1e 92       	st	-X, r1
 7d8:	54 97       	sbiw	r26, 0x14	; 20
 7da:	57 96       	adiw	r26, 0x17	; 23
 7dc:	dc 93       	st	X, r29
 7de:	ce 93       	st	-X, r28
 7e0:	56 97       	sbiw	r26, 0x16	; 22
    RelayMenu.first_item = &Relay_Item1;
 7e2:	50 93 6d 02 	sts	0x026D, r21	; 0x80026d <RelayMenu+0x15>
 7e6:	40 93 6c 02 	sts	0x026C, r20	; 0x80026c <RelayMenu+0x14>

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
 7ea:	a8 e2       	ldi	r26, 0x28	; 40
 7ec:	b1 e0       	ldi	r27, 0x01	; 1
 7ee:	cc e0       	ldi	r28, 0x0C	; 12
 7f0:	d1 e0       	ldi	r29, 0x01	; 1
 7f2:	55 96       	adiw	r26, 0x15	; 21
 7f4:	dc 93       	st	X, r29
 7f6:	ce 93       	st	-X, r28
 7f8:	54 97       	sbiw	r26, 0x14	; 20
 7fa:	57 96       	adiw	r26, 0x17	; 23
 7fc:	1c 92       	st	X, r1
 7fe:	1e 92       	st	-X, r1
 800:	56 97       	sbiw	r26, 0x16	; 22
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
 802:	1d 8a       	std	Y+21, r1	; 0x15
 804:	1c 8a       	std	Y+20, r1	; 0x14
 806:	bf 8b       	std	Y+23, r27	; 0x17
 808:	ae 8b       	std	Y+22, r26	; 0x16
    SystemMenu.first_item = &Sys_Item1;
 80a:	b0 93 55 02 	sts	0x0255, r27	; 0x800255 <SystemMenu+0x15>
 80e:	a0 93 54 02 	sts	0x0254, r26	; 0x800254 <SystemMenu+0x14>

    // Set initial engine pointers
    current_menu = &MainMenu;
 812:	30 93 be 04 	sts	0x04BE, r19	; 0x8004be <current_menu+0x1>
 816:	20 93 bd 04 	sts	0x04BD, r18	; 0x8004bd <current_menu>
    current_item = current_menu->first_item;
 81a:	f0 93 bc 04 	sts	0x04BC, r31	; 0x8004bc <current_item+0x1>
 81e:	e0 93 bb 04 	sts	0x04BB, r30	; 0x8004bb <current_item>
    top_display_item = current_menu->first_item;
 822:	f0 93 ba 04 	sts	0x04BA, r31	; 0x8004ba <top_display_item+0x1>
 826:	e0 93 b9 04 	sts	0x04B9, r30	; 0x8004b9 <top_display_item>
    cursor_row = 1;
 82a:	81 e0       	ldi	r24, 0x01	; 1
 82c:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
    current_state = STATE_WELCOME;
 830:	10 92 c0 04 	sts	0x04C0, r1	; 0x8004c0 <current_state+0x1>
 834:	10 92 bf 04 	sts	0x04BF, r1	; 0x8004bf <current_state>
    active_action_func = NULL;
 838:	10 92 b8 04 	sts	0x04B8, r1	; 0x8004b8 <active_action_func+0x1>
 83c:	10 92 b7 04 	sts	0x04B7, r1	; 0x8004b7 <active_action_func>
    welcome_char_idx = 0;
    welcome_timer = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
}
 840:	df 91       	pop	r29
 842:	cf 91       	pop	r28
    active_action_func = NULL;
    welcome_char_idx = 0;
    welcome_timer = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
 844:	0c 94 97 00 	jmp	0x12e	; 0x12e <lcd_clear>

00000848 <menu_draw>:
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
 848:	ef 92       	push	r14
 84a:	ff 92       	push	r15
 84c:	0f 93       	push	r16
 84e:	1f 93       	push	r17
 850:	cf 93       	push	r28
 852:	df 93       	push	r29
 854:	cd b7       	in	r28, 0x3d	; 61
 856:	de b7       	in	r29, 0x3e	; 62
 858:	65 97       	sbiw	r28, 0x15	; 21
 85a:	0f b6       	in	r0, 0x3f	; 63
 85c:	f8 94       	cli
 85e:	de bf       	out	0x3e, r29	; 62
 860:	0f be       	out	0x3f, r0	; 63
 862:	cd bf       	out	0x3d, r28	; 61
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
 864:	60 e0       	ldi	r22, 0x00	; 0
 866:	80 e0       	ldi	r24, 0x00	; 0
 868:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (current_menu == &MainMenu && !blink_on) {
 86c:	e0 91 bd 04 	lds	r30, 0x04BD	; 0x8004bd <current_menu>
 870:	f0 91 be 04 	lds	r31, 0x04BE	; 0x8004be <current_menu+0x1>
 874:	82 e0       	ldi	r24, 0x02	; 2
 876:	e8 38       	cpi	r30, 0x88	; 136
 878:	f8 07       	cpc	r31, r24
 87a:	69 f5       	brne	.+90     	; 0x8d6 <menu_draw+0x8e>
 87c:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <blink_on>
 880:	81 11       	cpse	r24, r1
 882:	29 c0       	rjmp	.+82     	; 0x8d6 <menu_draw+0x8e>
        lcd_send_string("                    ");
 884:	88 e6       	ldi	r24, 0x68	; 104
 886:	93 e0       	ldi	r25, 0x03	; 3
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
 888:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
 88c:	e0 90 b9 04 	lds	r14, 0x04B9	; 0x8004b9 <top_display_item>
 890:	f0 90 ba 04 	lds	r15, 0x04BA	; 0x8004ba <top_display_item+0x1>
    for (uint8_t r = 1; r <= 3; r++) {
 894:	11 e0       	ldi	r17, 0x01	; 1
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
 896:	00 e2       	ldi	r16, 0x20	; 32
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
 898:	60 e0       	ldi	r22, 0x00	; 0
 89a:	81 2f       	mov	r24, r17
 89c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        if (temp != NULL) {
 8a0:	e1 14       	cp	r14, r1
 8a2:	f1 04       	cpc	r15, r1
 8a4:	09 f4       	brne	.+2      	; 0x8a8 <menu_draw+0x60>
 8a6:	4e c0       	rjmp	.+156    	; 0x944 <menu_draw+0xfc>
            lcd_send_data((r == cursor_row) ? '>' : ' ');
 8a8:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 8ac:	81 17       	cp	r24, r17
 8ae:	59 f1       	breq	.+86     	; 0x906 <menu_draw+0xbe>
 8b0:	80 e2       	ldi	r24, 0x20	; 32
 8b2:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
 8b6:	d7 01       	movw	r26, r14
 8b8:	fe 01       	movw	r30, r28
 8ba:	31 96       	adiw	r30, 0x01	; 1
            char buf[20];
            uint8_t len = 0;
 8bc:	90 e0       	ldi	r25, 0x00	; 0
 8be:	9f 01       	movw	r18, r30
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
 8c0:	8d 91       	ld	r24, X+
 8c2:	81 11       	cpse	r24, r1
 8c4:	25 c0       	rjmp	.+74     	; 0x910 <menu_draw+0xc8>
 8c6:	f9 01       	movw	r30, r18
 8c8:	e9 0f       	add	r30, r25
 8ca:	f1 1d       	adc	r31, r1
            while (len < 19) buf[len++] = ' ';
 8cc:	93 31       	cpi	r25, 0x13	; 19
 8ce:	11 f1       	breq	.+68     	; 0x914 <menu_draw+0xcc>
 8d0:	9f 5f       	subi	r25, 0xFF	; 255
 8d2:	01 93       	st	Z+, r16
 8d4:	fb cf       	rjmp	.-10     	; 0x8cc <menu_draw+0x84>
 8d6:	de 01       	movw	r26, r28
 8d8:	11 96       	adiw	r26, 0x01	; 1
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
 8da:	90 e0       	ldi	r25, 0x00	; 0
 8dc:	9d 01       	movw	r18, r26
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
 8de:	81 91       	ld	r24, Z+
 8e0:	81 11       	cpse	r24, r1
 8e2:	0c c0       	rjmp	.+24     	; 0x8fc <menu_draw+0xb4>
 8e4:	f9 01       	movw	r30, r18
 8e6:	e9 0f       	add	r30, r25
 8e8:	f1 1d       	adc	r31, r1
        while (len < 20) buf[len++] = ' ';
 8ea:	80 e2       	ldi	r24, 0x20	; 32
 8ec:	94 31       	cpi	r25, 0x14	; 20
 8ee:	41 f0       	breq	.+16     	; 0x900 <menu_draw+0xb8>
 8f0:	9f 5f       	subi	r25, 0xFF	; 255
 8f2:	81 93       	st	Z+, r24
 8f4:	fb cf       	rjmp	.-10     	; 0x8ec <menu_draw+0xa4>
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
 8f6:	9f 5f       	subi	r25, 0xFF	; 255
 8f8:	8d 93       	st	X+, r24
 8fa:	f1 cf       	rjmp	.-30     	; 0x8de <menu_draw+0x96>
 8fc:	94 31       	cpi	r25, 0x14	; 20
 8fe:	d9 f7       	brne	.-10     	; 0x8f6 <menu_draw+0xae>
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
 900:	1d 8a       	std	Y+21, r1	; 0x15
        lcd_send_string(buf);
 902:	c9 01       	movw	r24, r18
 904:	c1 cf       	rjmp	.-126    	; 0x888 <menu_draw+0x40>
    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
 906:	8e e3       	ldi	r24, 0x3E	; 62
 908:	d4 cf       	rjmp	.-88     	; 0x8b2 <menu_draw+0x6a>
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
 90a:	9f 5f       	subi	r25, 0xFF	; 255
 90c:	81 93       	st	Z+, r24
 90e:	d8 cf       	rjmp	.-80     	; 0x8c0 <menu_draw+0x78>
 910:	93 31       	cpi	r25, 0x13	; 19
 912:	d9 f7       	brne	.-10     	; 0x90a <menu_draw+0xc2>
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
 914:	1c 8a       	std	Y+20, r1	; 0x14
            lcd_send_string(buf);
 916:	c9 01       	movw	r24, r18
 918:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
            temp = temp->next;
 91c:	f7 01       	movw	r30, r14
 91e:	e4 88       	ldd	r14, Z+20	; 0x14
 920:	f5 88       	ldd	r15, Z+21	; 0x15
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
 922:	1f 5f       	subi	r17, 0xFF	; 255
 924:	14 30       	cpi	r17, 0x04	; 4
 926:	09 f0       	breq	.+2      	; 0x92a <menu_draw+0xe2>
 928:	b7 cf       	rjmp	.-146    	; 0x898 <menu_draw+0x50>
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}
 92a:	65 96       	adiw	r28, 0x15	; 21
 92c:	0f b6       	in	r0, 0x3f	; 63
 92e:	f8 94       	cli
 930:	de bf       	out	0x3e, r29	; 62
 932:	0f be       	out	0x3f, r0	; 63
 934:	cd bf       	out	0x3d, r28	; 61
 936:	df 91       	pop	r29
 938:	cf 91       	pop	r28
 93a:	1f 91       	pop	r17
 93c:	0f 91       	pop	r16
 93e:	ff 90       	pop	r15
 940:	ef 90       	pop	r14
 942:	08 95       	ret
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
 944:	88 e6       	ldi	r24, 0x68	; 104
 946:	93 e0       	ldi	r25, 0x03	; 3
 948:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
 94c:	ea cf       	rjmp	.-44     	; 0x922 <menu_draw+0xda>

0000094e <menu_down>:

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
 94e:	e0 91 bb 04 	lds	r30, 0x04BB	; 0x8004bb <current_item>
 952:	f0 91 bc 04 	lds	r31, 0x04BC	; 0x8004bc <current_item+0x1>
 956:	30 97       	sbiw	r30, 0x00	; 0
 958:	e1 f0       	breq	.+56     	; 0x992 <menu_down+0x44>
 95a:	84 89       	ldd	r24, Z+20	; 0x14
 95c:	95 89       	ldd	r25, Z+21	; 0x15
 95e:	00 97       	sbiw	r24, 0x00	; 0
 960:	c1 f0       	breq	.+48     	; 0x992 <menu_down+0x44>
        current_item = current_item->next;
 962:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 966:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
        if (cursor_row < 3) {
 96a:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 96e:	83 30       	cpi	r24, 0x03	; 3
 970:	28 f4       	brcc	.+10     	; 0x97c <menu_down+0x2e>
            cursor_row++;
 972:	8f 5f       	subi	r24, 0xFF	; 255
 974:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
 978:	0c 94 24 04 	jmp	0x848	; 0x848 <menu_draw>
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
 97c:	e0 91 b9 04 	lds	r30, 0x04B9	; 0x8004b9 <top_display_item>
 980:	f0 91 ba 04 	lds	r31, 0x04BA	; 0x8004ba <top_display_item+0x1>
 984:	84 89       	ldd	r24, Z+20	; 0x14
 986:	95 89       	ldd	r25, Z+21	; 0x15
 988:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 98c:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
 990:	f3 cf       	rjmp	.-26     	; 0x978 <menu_down+0x2a>
        }
        menu_draw();
    }
}
 992:	08 95       	ret

00000994 <menu_up>:

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
 994:	e0 91 bb 04 	lds	r30, 0x04BB	; 0x8004bb <current_item>
 998:	f0 91 bc 04 	lds	r31, 0x04BC	; 0x8004bc <current_item+0x1>
 99c:	30 97       	sbiw	r30, 0x00	; 0
 99e:	e1 f0       	breq	.+56     	; 0x9d8 <menu_up+0x44>
 9a0:	86 89       	ldd	r24, Z+22	; 0x16
 9a2:	97 89       	ldd	r25, Z+23	; 0x17
 9a4:	00 97       	sbiw	r24, 0x00	; 0
 9a6:	c1 f0       	breq	.+48     	; 0x9d8 <menu_up+0x44>
        current_item = current_item->prev;
 9a8:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 9ac:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
        if (cursor_row > 1) {
 9b0:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 9b4:	82 30       	cpi	r24, 0x02	; 2
 9b6:	28 f0       	brcs	.+10     	; 0x9c2 <menu_up+0x2e>
            cursor_row--;
 9b8:	81 50       	subi	r24, 0x01	; 1
 9ba:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
 9be:	0c 94 24 04 	jmp	0x848	; 0x848 <menu_draw>
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
 9c2:	e0 91 b9 04 	lds	r30, 0x04B9	; 0x8004b9 <top_display_item>
 9c6:	f0 91 ba 04 	lds	r31, 0x04BA	; 0x8004ba <top_display_item+0x1>
 9ca:	86 89       	ldd	r24, Z+22	; 0x16
 9cc:	97 89       	ldd	r25, Z+23	; 0x17
 9ce:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 9d2:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
 9d6:	f3 cf       	rjmp	.-26     	; 0x9be <menu_up+0x2a>
        }
        menu_draw();
    }
}
 9d8:	08 95       	ret

000009da <menu_enter>:

void menu_enter(void) {
    if (current_item == NULL) return;
 9da:	e0 91 bb 04 	lds	r30, 0x04BB	; 0x8004bb <current_item>
 9de:	f0 91 bc 04 	lds	r31, 0x04BC	; 0x8004bc <current_item+0x1>
 9e2:	30 97       	sbiw	r30, 0x00	; 0
 9e4:	89 f1       	breq	.+98     	; 0xa48 <menu_enter+0x6e>
    if (current_item->child_menu != NULL) {
 9e6:	a0 8d       	ldd	r26, Z+24	; 0x18
 9e8:	b1 8d       	ldd	r27, Z+25	; 0x19
 9ea:	10 97       	sbiw	r26, 0x00	; 0
 9ec:	b1 f0       	breq	.+44     	; 0xa1a <menu_enter+0x40>
        current_menu = current_item->child_menu;
 9ee:	b0 93 be 04 	sts	0x04BE, r27	; 0x8004be <current_menu+0x1>
 9f2:	a0 93 bd 04 	sts	0x04BD, r26	; 0x8004bd <current_menu>
        current_item = current_menu->first_item;
 9f6:	54 96       	adiw	r26, 0x14	; 20
 9f8:	8d 91       	ld	r24, X+
 9fa:	9c 91       	ld	r25, X
 9fc:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 a00:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
        top_display_item = current_menu->first_item;
 a04:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 a08:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
        cursor_row = 1;
 a0c:	81 e0       	ldi	r24, 0x01	; 1
 a0e:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        lcd_clear();
 a12:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
 a16:	0c 94 24 04 	jmp	0x848	; 0x848 <menu_draw>
    } else if (current_item->action != NULL) {
 a1a:	82 8d       	ldd	r24, Z+26	; 0x1a
 a1c:	93 8d       	ldd	r25, Z+27	; 0x1b
 a1e:	00 97       	sbiw	r24, 0x00	; 0
 a20:	99 f0       	breq	.+38     	; 0xa48 <menu_enter+0x6e>
        current_state = STATE_RUNNING;
 a22:	22 e0       	ldi	r18, 0x02	; 2
 a24:	30 e0       	ldi	r19, 0x00	; 0
 a26:	30 93 c0 04 	sts	0x04C0, r19	; 0x8004c0 <current_state+0x1>
 a2a:	20 93 bf 04 	sts	0x04BF, r18	; 0x8004bf <current_state>
        active_action_func = current_item->action;
 a2e:	90 93 b8 04 	sts	0x04B8, r25	; 0x8004b8 <active_action_func+0x1>
 a32:	80 93 b7 04 	sts	0x04B7, r24	; 0x8004b7 <active_action_func>
        action_tick = 0;
 a36:	10 92 b5 04 	sts	0x04B5, r1	; 0x8004b5 <action_tick>
        lcd_clear();
 a3a:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        active_action_func(); // render initial action view
 a3e:	e0 91 b7 04 	lds	r30, 0x04B7	; 0x8004b7 <active_action_func>
 a42:	f0 91 b8 04 	lds	r31, 0x04B8	; 0x8004b8 <active_action_func+0x1>
 a46:	09 94       	ijmp
    }
}
 a48:	08 95       	ret

00000a4a <menu_back>:

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
 a4a:	e0 91 bd 04 	lds	r30, 0x04BD	; 0x8004bd <current_menu>
 a4e:	f0 91 be 04 	lds	r31, 0x04BE	; 0x8004be <current_menu+0x1>
 a52:	06 88       	ldd	r0, Z+22	; 0x16
 a54:	f7 89       	ldd	r31, Z+23	; 0x17
 a56:	e0 2d       	mov	r30, r0
 a58:	30 97       	sbiw	r30, 0x00	; 0
 a5a:	a9 f0       	breq	.+42     	; 0xa86 <menu_back+0x3c>
        // Return to parent menu
        current_menu = current_menu->parent_menu;
 a5c:	f0 93 be 04 	sts	0x04BE, r31	; 0x8004be <current_menu+0x1>
 a60:	e0 93 bd 04 	sts	0x04BD, r30	; 0x8004bd <current_menu>
        current_item = current_menu->first_item;
 a64:	84 89       	ldd	r24, Z+20	; 0x14
 a66:	95 89       	ldd	r25, Z+21	; 0x15
 a68:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 a6c:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
        top_display_item = current_menu->first_item;
 a70:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 a74:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
        cursor_row = 1;
 a78:	81 e0       	ldi	r24, 0x01	; 1
 a7a:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        lcd_clear();
 a7e:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
 a82:	0c 94 24 04 	jmp	0x848	; 0x848 <menu_draw>
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
 a86:	10 92 c0 04 	sts	0x04C0, r1	; 0x8004c0 <current_state+0x1>
 a8a:	10 92 bf 04 	sts	0x04BF, r1	; 0x8004bf <current_state>
        lcd_clear();
 a8e:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        lcd_set_cursor(0, 5);
 a92:	65 e0       	ldi	r22, 0x05	; 5
 a94:	80 e0       	ldi	r24, 0x00	; 0
 a96:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        lcd_send_string("HI YOU");
 a9a:	8e e8       	ldi	r24, 0x8E	; 142
 a9c:	94 e0       	ldi	r25, 0x04	; 4
 a9e:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
        lcd_set_cursor(1, 0);
 aa2:	60 e0       	ldi	r22, 0x00	; 0
 aa4:	81 e0       	ldi	r24, 0x01	; 1
 aa6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        lcd_send_string("Press any button");
 aaa:	85 e9       	ldi	r24, 0x95	; 149
 aac:	94 e0       	ldi	r25, 0x04	; 4
 aae:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

00000ab2 <menu_update>:
 ab2:	0e 94 0e 02 	call	0x41c	; 0x41c <button_triggered>
 ab6:	85 ff       	sbrs	r24, 5
 ab8:	2f c0       	rjmp	.+94     	; 0xb18 <menu_update+0x66>
 aba:	10 92 c0 04 	sts	0x04C0, r1	; 0x8004c0 <current_state+0x1>
 abe:	10 92 bf 04 	sts	0x04BF, r1	; 0x8004bf <current_state>
 ac2:	10 92 b8 04 	sts	0x04B8, r1	; 0x8004b8 <active_action_func+0x1>
 ac6:	10 92 b7 04 	sts	0x04B7, r1	; 0x8004b7 <active_action_func>
 aca:	88 e8       	ldi	r24, 0x88	; 136
 acc:	92 e0       	ldi	r25, 0x02	; 2
 ace:	90 93 be 04 	sts	0x04BE, r25	; 0x8004be <current_menu+0x1>
 ad2:	80 93 bd 04 	sts	0x04BD, r24	; 0x8004bd <current_menu>
 ad6:	80 91 9c 02 	lds	r24, 0x029C	; 0x80029c <MainMenu+0x14>
 ada:	90 91 9d 02 	lds	r25, 0x029D	; 0x80029d <MainMenu+0x15>
 ade:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 ae2:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
 ae6:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 aea:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
 aee:	81 e0       	ldi	r24, 0x01	; 1
 af0:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
 af4:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
 af8:	65 e0       	ldi	r22, 0x05	; 5
 afa:	80 e0       	ldi	r24, 0x00	; 0
 afc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 b00:	8e e8       	ldi	r24, 0x8E	; 142
 b02:	94 e0       	ldi	r25, 0x04	; 4
 b04:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
 b08:	60 e0       	ldi	r22, 0x00	; 0
 b0a:	81 e0       	ldi	r24, 0x01	; 1
 b0c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 b10:	85 e9       	ldi	r24, 0x95	; 149
 b12:	94 e0       	ldi	r25, 0x04	; 4
 b14:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
 b18:	20 91 bf 04 	lds	r18, 0x04BF	; 0x8004bf <current_state>
 b1c:	30 91 c0 04 	lds	r19, 0x04C0	; 0x8004c0 <current_state+0x1>
 b20:	21 15       	cp	r18, r1
 b22:	31 05       	cpc	r19, r1
 b24:	31 f5       	brne	.+76     	; 0xb72 <menu_update+0xc0>
 b26:	88 23       	and	r24, r24
 b28:	09 f4       	brne	.+2      	; 0xb2c <menu_update+0x7a>
 b2a:	85 c0       	rjmp	.+266    	; 0xc36 <menu_update+0x184>
 b2c:	81 e0       	ldi	r24, 0x01	; 1
 b2e:	90 e0       	ldi	r25, 0x00	; 0
 b30:	90 93 c0 04 	sts	0x04C0, r25	; 0x8004c0 <current_state+0x1>
 b34:	80 93 bf 04 	sts	0x04BF, r24	; 0x8004bf <current_state>
 b38:	88 e8       	ldi	r24, 0x88	; 136
 b3a:	92 e0       	ldi	r25, 0x02	; 2
 b3c:	90 93 be 04 	sts	0x04BE, r25	; 0x8004be <current_menu+0x1>
 b40:	80 93 bd 04 	sts	0x04BD, r24	; 0x8004bd <current_menu>
 b44:	80 91 9c 02 	lds	r24, 0x029C	; 0x80029c <MainMenu+0x14>
 b48:	90 91 9d 02 	lds	r25, 0x029D	; 0x80029d <MainMenu+0x15>
 b4c:	90 93 bc 04 	sts	0x04BC, r25	; 0x8004bc <current_item+0x1>
 b50:	80 93 bb 04 	sts	0x04BB, r24	; 0x8004bb <current_item>
 b54:	90 93 ba 04 	sts	0x04BA, r25	; 0x8004ba <top_display_item+0x1>
 b58:	80 93 b9 04 	sts	0x04B9, r24	; 0x8004b9 <top_display_item>
 b5c:	81 e0       	ldi	r24, 0x01	; 1
 b5e:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
 b62:	10 92 b6 04 	sts	0x04B6, r1	; 0x8004b6 <blink_counter>
 b66:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <blink_on>
 b6a:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
 b6e:	0c 94 24 04 	jmp	0x848	; 0x848 <menu_draw>
 b72:	22 30       	cpi	r18, 0x02	; 2
 b74:	31 05       	cpc	r19, r1
 b76:	f9 f4       	brne	.+62     	; 0xbb6 <menu_update+0x104>
 b78:	80 ff       	sbrs	r24, 0
 b7a:	0b c0       	rjmp	.+22     	; 0xb92 <menu_update+0xe0>
 b7c:	81 e0       	ldi	r24, 0x01	; 1
 b7e:	90 e0       	ldi	r25, 0x00	; 0
 b80:	90 93 c0 04 	sts	0x04C0, r25	; 0x8004c0 <current_state+0x1>
 b84:	80 93 bf 04 	sts	0x04BF, r24	; 0x8004bf <current_state>
 b88:	10 92 b8 04 	sts	0x04B8, r1	; 0x8004b8 <active_action_func+0x1>
 b8c:	10 92 b7 04 	sts	0x04B7, r1	; 0x8004b7 <active_action_func>
 b90:	ec cf       	rjmp	.-40     	; 0xb6a <menu_update+0xb8>
 b92:	e0 91 b7 04 	lds	r30, 0x04B7	; 0x8004b7 <active_action_func>
 b96:	f0 91 b8 04 	lds	r31, 0x04B8	; 0x8004b8 <active_action_func+0x1>
 b9a:	30 97       	sbiw	r30, 0x00	; 0
 b9c:	09 f4       	brne	.+2      	; 0xba0 <menu_update+0xee>
 b9e:	4b c0       	rjmp	.+150    	; 0xc36 <menu_update+0x184>
 ba0:	80 91 b5 04 	lds	r24, 0x04B5	; 0x8004b5 <action_tick>
 ba4:	8f 5f       	subi	r24, 0xFF	; 255
 ba6:	8a 30       	cpi	r24, 0x0A	; 10
 ba8:	18 f4       	brcc	.+6      	; 0xbb0 <menu_update+0xfe>
 baa:	80 93 b5 04 	sts	0x04B5, r24	; 0x8004b5 <action_tick>
 bae:	08 95       	ret
 bb0:	10 92 b5 04 	sts	0x04B5, r1	; 0x8004b5 <action_tick>
 bb4:	09 94       	ijmp
 bb6:	21 30       	cpi	r18, 0x01	; 1
 bb8:	31 05       	cpc	r19, r1
 bba:	09 f0       	breq	.+2      	; 0xbbe <menu_update+0x10c>
 bbc:	3c c0       	rjmp	.+120    	; 0xc36 <menu_update+0x184>
 bbe:	83 ff       	sbrs	r24, 3
 bc0:	11 c0       	rjmp	.+34     	; 0xbe4 <menu_update+0x132>
 bc2:	0e 94 a7 04 	call	0x94e	; 0x94e <menu_down>
 bc6:	80 91 bd 04 	lds	r24, 0x04BD	; 0x8004bd <current_menu>
 bca:	90 91 be 04 	lds	r25, 0x04BE	; 0x8004be <current_menu+0x1>
 bce:	88 58       	subi	r24, 0x88	; 136
 bd0:	92 40       	sbci	r25, 0x02	; 2
 bd2:	89 f5       	brne	.+98     	; 0xc36 <menu_update+0x184>
 bd4:	80 91 b6 04 	lds	r24, 0x04B6	; 0x8004b6 <blink_counter>
 bd8:	8f 5f       	subi	r24, 0xFF	; 255
 bda:	8e 31       	cpi	r24, 0x1E	; 30
 bdc:	98 f4       	brcc	.+38     	; 0xc04 <menu_update+0x152>
 bde:	80 93 b6 04 	sts	0x04B6, r24	; 0x8004b6 <blink_counter>
 be2:	08 95       	ret
 be4:	82 ff       	sbrs	r24, 2
 be6:	03 c0       	rjmp	.+6      	; 0xbee <menu_update+0x13c>
 be8:	0e 94 ca 04 	call	0x994	; 0x994 <menu_up>
 bec:	ec cf       	rjmp	.-40     	; 0xbc6 <menu_update+0x114>
 bee:	98 2f       	mov	r25, r24
 bf0:	92 71       	andi	r25, 0x12	; 18
 bf2:	19 f0       	breq	.+6      	; 0xbfa <menu_update+0x148>
 bf4:	0e 94 ed 04 	call	0x9da	; 0x9da <menu_enter>
 bf8:	e6 cf       	rjmp	.-52     	; 0xbc6 <menu_update+0x114>
 bfa:	80 ff       	sbrs	r24, 0
 bfc:	e4 cf       	rjmp	.-56     	; 0xbc6 <menu_update+0x114>
 bfe:	0e 94 25 05 	call	0xa4a	; 0xa4a <menu_back>
 c02:	e1 cf       	rjmp	.-62     	; 0xbc6 <menu_update+0x114>
 c04:	10 92 b6 04 	sts	0x04B6, r1	; 0x8004b6 <blink_counter>
 c08:	81 e0       	ldi	r24, 0x01	; 1
 c0a:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <blink_on>
 c0e:	91 11       	cpse	r25, r1
 c10:	80 e0       	ldi	r24, 0x00	; 0
 c12:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <blink_on>
 c16:	60 e0       	ldi	r22, 0x00	; 0
 c18:	80 e0       	ldi	r24, 0x00	; 0
 c1a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 c1e:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <blink_on>
 c22:	81 11       	cpse	r24, r1
 c24:	03 c0       	rjmp	.+6      	; 0xc2c <menu_update+0x17a>
 c26:	88 e6       	ldi	r24, 0x68	; 104
 c28:	93 e0       	ldi	r25, 0x03	; 3
 c2a:	74 cf       	rjmp	.-280    	; 0xb14 <menu_update+0x62>
 c2c:	80 91 bd 04 	lds	r24, 0x04BD	; 0x8004bd <current_menu>
 c30:	90 91 be 04 	lds	r25, 0x04BE	; 0x8004be <current_menu+0x1>
 c34:	6f cf       	rjmp	.-290    	; 0xb14 <menu_update+0x62>
 c36:	08 95       	ret

00000c38 <main>:
#include "lcd.h"
#include <avr/io.h> 
#include <util/delay.h>

void main(void) {
  MCUCR |= (1 << SRE);
 c38:	85 b7       	in	r24, 0x35	; 53
 c3a:	80 68       	ori	r24, 0x80	; 128
 c3c:	85 bf       	out	0x35, r24	; 53

  lcd_init();
 c3e:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_init>
  lcd_set_cursor(0, 0);
 c42:	60 e0       	ldi	r22, 0x00	; 0
 c44:	80 e0       	ldi	r24, 0x00	; 0
 c46:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
  lcd_send_string("hello world");
 c4a:	84 eb       	ldi	r24, 0xB4	; 180
 c4c:	92 e0       	ldi	r25, 0x02	; 2
 c4e:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
 c52:	ff cf       	rjmp	.-2      	; 0xc52 <main+0x1a>

00000c54 <__divmodhi4>:
 c54:	97 fb       	bst	r25, 7
 c56:	07 2e       	mov	r0, r23
 c58:	16 f4       	brtc	.+4      	; 0xc5e <__divmodhi4+0xa>
 c5a:	00 94       	com	r0
 c5c:	07 d0       	rcall	.+14     	; 0xc6c <__divmodhi4_neg1>
 c5e:	77 fd       	sbrc	r23, 7
 c60:	09 d0       	rcall	.+18     	; 0xc74 <__divmodhi4_neg2>
 c62:	0e 94 60 06 	call	0xcc0	; 0xcc0 <__udivmodhi4>
 c66:	07 fc       	sbrc	r0, 7
 c68:	05 d0       	rcall	.+10     	; 0xc74 <__divmodhi4_neg2>
 c6a:	3e f4       	brtc	.+14     	; 0xc7a <__divmodhi4_exit>

00000c6c <__divmodhi4_neg1>:
 c6c:	90 95       	com	r25
 c6e:	81 95       	neg	r24
 c70:	9f 4f       	sbci	r25, 0xFF	; 255
 c72:	08 95       	ret

00000c74 <__divmodhi4_neg2>:
 c74:	70 95       	com	r23
 c76:	61 95       	neg	r22
 c78:	7f 4f       	sbci	r23, 0xFF	; 255

00000c7a <__divmodhi4_exit>:
 c7a:	08 95       	ret

00000c7c <__udivmodsi4>:
 c7c:	a1 e2       	ldi	r26, 0x21	; 33
 c7e:	1a 2e       	mov	r1, r26
 c80:	aa 1b       	sub	r26, r26
 c82:	bb 1b       	sub	r27, r27
 c84:	fd 01       	movw	r30, r26
 c86:	0d c0       	rjmp	.+26     	; 0xca2 <__udivmodsi4_ep>

00000c88 <__udivmodsi4_loop>:
 c88:	aa 1f       	adc	r26, r26
 c8a:	bb 1f       	adc	r27, r27
 c8c:	ee 1f       	adc	r30, r30
 c8e:	ff 1f       	adc	r31, r31
 c90:	a2 17       	cp	r26, r18
 c92:	b3 07       	cpc	r27, r19
 c94:	e4 07       	cpc	r30, r20
 c96:	f5 07       	cpc	r31, r21
 c98:	20 f0       	brcs	.+8      	; 0xca2 <__udivmodsi4_ep>
 c9a:	a2 1b       	sub	r26, r18
 c9c:	b3 0b       	sbc	r27, r19
 c9e:	e4 0b       	sbc	r30, r20
 ca0:	f5 0b       	sbc	r31, r21

00000ca2 <__udivmodsi4_ep>:
 ca2:	66 1f       	adc	r22, r22
 ca4:	77 1f       	adc	r23, r23
 ca6:	88 1f       	adc	r24, r24
 ca8:	99 1f       	adc	r25, r25
 caa:	1a 94       	dec	r1
 cac:	69 f7       	brne	.-38     	; 0xc88 <__udivmodsi4_loop>
 cae:	60 95       	com	r22
 cb0:	70 95       	com	r23
 cb2:	80 95       	com	r24
 cb4:	90 95       	com	r25
 cb6:	9b 01       	movw	r18, r22
 cb8:	ac 01       	movw	r20, r24
 cba:	bd 01       	movw	r22, r26
 cbc:	cf 01       	movw	r24, r30
 cbe:	08 95       	ret

00000cc0 <__udivmodhi4>:
 cc0:	aa 1b       	sub	r26, r26
 cc2:	bb 1b       	sub	r27, r27
 cc4:	51 e1       	ldi	r21, 0x11	; 17
 cc6:	07 c0       	rjmp	.+14     	; 0xcd6 <__udivmodhi4_ep>

00000cc8 <__udivmodhi4_loop>:
 cc8:	aa 1f       	adc	r26, r26
 cca:	bb 1f       	adc	r27, r27
 ccc:	a6 17       	cp	r26, r22
 cce:	b7 07       	cpc	r27, r23
 cd0:	10 f0       	brcs	.+4      	; 0xcd6 <__udivmodhi4_ep>
 cd2:	a6 1b       	sub	r26, r22
 cd4:	b7 0b       	sbc	r27, r23

00000cd6 <__udivmodhi4_ep>:
 cd6:	88 1f       	adc	r24, r24
 cd8:	99 1f       	adc	r25, r25
 cda:	5a 95       	dec	r21
 cdc:	a9 f7       	brne	.-22     	; 0xcc8 <__udivmodhi4_loop>
 cde:	80 95       	com	r24
 ce0:	90 95       	com	r25
 ce2:	bc 01       	movw	r22, r24
 ce4:	cd 01       	movw	r24, r26
 ce6:	08 95       	ret

00000ce8 <_exit>:
 ce8:	f8 94       	cli

00000cea <__stop_program>:
 cea:	ff cf       	rjmp	.-2      	; 0xcea <__stop_program>
