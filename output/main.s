
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
  9e:	ec e4       	ldi	r30, 0x4C	; 76
  a0:	fd e0       	ldi	r31, 0x0D	; 13
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	aa 39       	cpi	r26, 0x9A	; 154
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	24 e0       	ldi	r18, 0x04	; 4
  b4:	aa e9       	ldi	r26, 0x9A	; 154
  b6:	b4 e0       	ldi	r27, 0x04	; 4
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	a6 3b       	cpi	r26, 0xB6	; 182
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 44 06 	call	0xc88	; 0xc88 <main>
  c6:	0c 94 a4 06 	jmp	0xd48	; 0xd48 <_exit>

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
  d2:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xc4c>
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
 102:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xc4b>
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
 27e:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xc4d>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
 282:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xc4e>

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
 2e2:	0e 94 6e 06 	call	0xcdc	; 0xcdc <__udivmodsi4>
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
 302:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xc4d>

    // 2. Load the segment pattern for the active digit (via CSEL4)
    uint8_t val = display_buffer[current_digit];
 306:	e0 91 9a 04 	lds	r30, 0x049A	; 0x80049a <__data_end>
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
 320:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xc4e>
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);
 324:	20 91 9a 04 	lds	r18, 0x049A	; 0x80049a <__data_end>
 328:	81 e0       	ldi	r24, 0x01	; 1
 32a:	90 e0       	ldi	r25, 0x00	; 0
 32c:	01 c0       	rjmp	.+2      	; 0x330 <seg7_update+0x2e>
 32e:	88 0f       	add	r24, r24
 330:	2a 95       	dec	r18
 332:	ea f7       	brpl	.-6      	; 0x32e <seg7_update+0x2c>
 334:	80 93 03 11 	sts	0x1103, r24	; 0x801103 <__bss_end+0xc4d>

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
 338:	80 91 9a 04 	lds	r24, 0x049A	; 0x80049a <__data_end>
 33c:	90 e0       	ldi	r25, 0x00	; 0
 33e:	01 96       	adiw	r24, 0x01	; 1
 340:	66 e0       	ldi	r22, 0x06	; 6
 342:	70 e0       	ldi	r23, 0x00	; 0
 344:	0e 94 5a 06 	call	0xcb4	; 0xcb4 <__divmodhi4>
 348:	80 93 9a 04 	sts	0x049A, r24	; 0x80049a <__data_end>
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
 39e:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xc4a>
 3a2:	20 93 b5 04 	sts	0x04B5, r18	; 0x8004b5 <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
 3a6:	80 91 a5 04 	lds	r24, 0x04A5	; 0x8004a5 <last_raw>
 3aa:	80 95       	com	r24
 3ac:	82 23       	and	r24, r18
 3ae:	80 93 a4 04 	sts	0x04A4, r24	; 0x8004a4 <press_event>
 3b2:	eb e9       	ldi	r30, 0x9B	; 155
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
 3fc:	30 93 a3 04 	sts	0x04A3, r19	; 0x8004a3 <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
 400:	20 93 a5 04 	sts	0x04A5, r18	; 0x8004a5 <last_raw>
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
 40a:	80 91 a4 04 	lds	r24, 0x04A4	; 0x8004a4 <press_event>
 40e:	08 95       	ret

00000410 <button_held>:
uint8_t button_held(void)      { return held_event;  }
 410:	80 91 a3 04 	lds	r24, 0x04A3	; 0x8004a3 <held_event>
 414:	08 95       	ret

00000416 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
 416:	80 91 a5 04 	lds	r24, 0x04A5	; 0x8004a5 <last_raw>
 41a:	08 95       	ret

0000041c <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
 41c:	90 91 a4 04 	lds	r25, 0x04A4	; 0x8004a4 <press_event>
 420:	80 91 a3 04 	lds	r24, 0x04A3	; 0x8004a3 <held_event>
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
 462:	0e 94 6e 06 	call	0xcdc	; 0xcdc <__udivmodsi4>
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
 49c:	84 eb       	ldi	r24, 0xB4	; 180
 49e:	92 e0       	ldi	r25, 0x02	; 2
 4a0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 4a4:	60 e0       	ldi	r22, 0x00	; 0
 4a6:	81 e0       	ldi	r24, 0x01	; 1
 4a8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
 4ac:	89 ec       	ldi	r24, 0xC9	; 201
 4ae:	92 e0       	ldi	r25, 0x02	; 2
 4b0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 4b4:	60 e0       	ldi	r22, 0x00	; 0
 4b6:	82 e0       	ldi	r24, 0x02	; 2
 4b8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("HH:MM:SS RUNNING... ");
 4bc:	8e ed       	ldi	r24, 0xDE	; 222
 4be:	92 e0       	ldi	r25, 0x02	; 2
 4c0:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 4c4:	60 e0       	ldi	r22, 0x00	; 0
 4c6:	83 e0       	ldi	r24, 0x03	; 3
 4c8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 4cc:	83 ef       	ldi	r24, 0xF3	; 243
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
 500:	60 91 a7 04 	lds	r22, 0x04A7	; 0x8004a7 <count_val>
 504:	70 91 a8 04 	lds	r23, 0x04A8	; 0x8004a8 <count_val+0x1>
 508:	6f 5f       	subi	r22, 0xFF	; 255
 50a:	7f 4f       	sbci	r23, 0xFF	; 255
 50c:	70 93 a8 04 	sts	0x04A8, r23	; 0x8004a8 <count_val+0x1>
 510:	60 93 a7 04 	sts	0x04A7, r22	; 0x8004a7 <count_val>
    seg7_set_number(count_val);
 514:	90 e0       	ldi	r25, 0x00	; 0
 516:	80 e0       	ldi	r24, 0x00	; 0
 518:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
 51c:	60 e0       	ldi	r22, 0x00	; 0
 51e:	80 e0       	ldi	r24, 0x00	; 0
 520:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== COUNT UP MODE ==");
 524:	88 e0       	ldi	r24, 0x08	; 8
 526:	93 e0       	ldi	r25, 0x03	; 3
 528:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 52c:	60 e0       	ldi	r22, 0x00	; 0
 52e:	81 e0       	ldi	r24, 0x01	; 1
 530:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
 534:	89 ec       	ldi	r24, 0xC9	; 201
 536:	92 e0       	ldi	r25, 0x02	; 2
 538:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 53c:	60 e0       	ldi	r22, 0x00	; 0
 53e:	82 e0       	ldi	r24, 0x02	; 2
 540:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("COUNTER INCREASING  ");
 544:	8d e1       	ldi	r24, 0x1D	; 29
 546:	93 e0       	ldi	r25, 0x03	; 3
 548:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 54c:	60 e0       	ldi	r22, 0x00	; 0
 54e:	83 e0       	ldi	r24, 0x03	; 3
 550:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 554:	83 ef       	ldi	r24, 0xF3	; 243
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
 570:	82 e3       	ldi	r24, 0x32	; 50
 572:	93 e0       	ldi	r25, 0x03	; 3
 574:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 578:	60 e0       	ldi	r22, 0x00	; 0
 57a:	81 e0       	ldi	r24, 0x01	; 1
 57c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("ALL DIGITS SET TO 8 ");
 580:	87 e4       	ldi	r24, 0x47	; 71
 582:	93 e0       	ldi	r25, 0x03	; 3
 584:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 588:	60 e0       	ldi	r22, 0x00	; 0
 58a:	82 e0       	ldi	r24, 0x02	; 2
 58c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("                    ");
 590:	8c e5       	ldi	r24, 0x5C	; 92
 592:	93 e0       	ldi	r25, 0x03	; 3
 594:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 598:	60 e0       	ldi	r22, 0x00	; 0
 59a:	83 e0       	ldi	r24, 0x03	; 3
 59c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 5a0:	83 ef       	ldi	r24, 0xF3	; 243
 5a2:	92 e0       	ldi	r25, 0x02	; 2
 5a4:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000005a8 <action_relay1>:
}

static void action_relay1(void) {
    relay_state ^= 0x01;
 5a8:	80 91 a6 04 	lds	r24, 0x04A6	; 0x8004a6 <relay_state>
 5ac:	91 e0       	ldi	r25, 0x01	; 1
 5ae:	89 27       	eor	r24, r25
 5b0:	80 93 a6 04 	sts	0x04A6, r24	; 0x8004a6 <relay_state>
    RELAYS = relay_state;
 5b4:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xc4f>

    lcd_set_cursor(0, 0);
 5b8:	60 e0       	ldi	r22, 0x00	; 0
 5ba:	80 e0       	ldi	r24, 0x00	; 0
 5bc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAY 1 TOGGLE =");
 5c0:	81 e7       	ldi	r24, 0x71	; 113
 5c2:	93 e0       	ldi	r25, 0x03	; 3
 5c4:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 5c8:	60 e0       	ldi	r22, 0x00	; 0
 5ca:	81 e0       	ldi	r24, 0x01	; 1
 5cc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (relay_state & 0x01) {
 5d0:	80 91 a6 04 	lds	r24, 0x04A6	; 0x8004a6 <relay_state>
 5d4:	80 ff       	sbrs	r24, 0
 5d6:	14 c0       	rjmp	.+40     	; 0x600 <action_relay1+0x58>
        lcd_send_string("STATUS: [ ON  ]     ");
 5d8:	86 e8       	ldi	r24, 0x86	; 134
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
 5e8:	8c e5       	ldi	r24, 0x5C	; 92
 5ea:	93 e0       	ldi	r25, 0x03	; 3
 5ec:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 5f0:	60 e0       	ldi	r22, 0x00	; 0
 5f2:	83 e0       	ldi	r24, 0x03	; 3
 5f4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 5f8:	83 ef       	ldi	r24, 0xF3	; 243
 5fa:	92 e0       	ldi	r25, 0x02	; 2
 5fc:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
    lcd_send_string("=== RELAY 1 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x01) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 600:	8b e9       	ldi	r24, 0x9B	; 155
 602:	93 e0       	ldi	r25, 0x03	; 3
 604:	eb cf       	rjmp	.-42     	; 0x5dc <action_relay1+0x34>

00000606 <action_relay2>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay2(void) {
    relay_state ^= 0x02;
 606:	80 91 a6 04 	lds	r24, 0x04A6	; 0x8004a6 <relay_state>
 60a:	92 e0       	ldi	r25, 0x02	; 2
 60c:	89 27       	eor	r24, r25
 60e:	80 93 a6 04 	sts	0x04A6, r24	; 0x8004a6 <relay_state>
    RELAYS = relay_state;
 612:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xc4f>

    lcd_set_cursor(0, 0);
 616:	60 e0       	ldi	r22, 0x00	; 0
 618:	80 e0       	ldi	r24, 0x00	; 0
 61a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAY 2 TOGGLE =");
 61e:	80 eb       	ldi	r24, 0xB0	; 176
 620:	93 e0       	ldi	r25, 0x03	; 3
 622:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 626:	60 e0       	ldi	r22, 0x00	; 0
 628:	81 e0       	ldi	r24, 0x01	; 1
 62a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (relay_state & 0x02) {
 62e:	80 91 a6 04 	lds	r24, 0x04A6	; 0x8004a6 <relay_state>
 632:	81 ff       	sbrs	r24, 1
 634:	14 c0       	rjmp	.+40     	; 0x65e <action_relay2+0x58>
        lcd_send_string("STATUS: [ ON  ]     ");
 636:	86 e8       	ldi	r24, 0x86	; 134
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
 646:	8c e5       	ldi	r24, 0x5C	; 92
 648:	93 e0       	ldi	r25, 0x03	; 3
 64a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 64e:	60 e0       	ldi	r22, 0x00	; 0
 650:	83 e0       	ldi	r24, 0x03	; 3
 652:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 656:	83 ef       	ldi	r24, 0xF3	; 243
 658:	92 e0       	ldi	r25, 0x02	; 2
 65a:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
    lcd_send_string("=== RELAY 2 TOGGLE =");
    lcd_set_cursor(1, 0);
    if (relay_state & 0x02) {
        lcd_send_string("STATUS: [ ON  ]     ");
    } else {
        lcd_send_string("STATUS: [ OFF ]     ");
 65e:	8b e9       	ldi	r24, 0x9B	; 155
 660:	93 e0       	ldi	r25, 0x03	; 3
 662:	eb cf       	rjmp	.-42     	; 0x63a <action_relay2+0x34>

00000664 <action_relay_all_off>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

static void action_relay_all_off(void) {
    relay_state = 0x00;
 664:	10 92 a6 04 	sts	0x04A6, r1	; 0x8004a6 <relay_state>
    RELAYS = relay_state;
 668:	10 92 05 11 	sts	0x1105, r1	; 0x801105 <__bss_end+0xc4f>

    lcd_set_cursor(0, 0);
 66c:	60 e0       	ldi	r22, 0x00	; 0
 66e:	80 e0       	ldi	r24, 0x00	; 0
 670:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS =====");
 674:	85 ec       	ldi	r24, 0xC5	; 197
 676:	93 e0       	ldi	r25, 0x03	; 3
 678:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 67c:	60 e0       	ldi	r22, 0x00	; 0
 67e:	81 e0       	ldi	r24, 0x01	; 1
 680:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("STATUS: ALL TURNED  ");
 684:	8a ed       	ldi	r24, 0xDA	; 218
 686:	93 e0       	ldi	r25, 0x03	; 3
 688:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 68c:	60 e0       	ldi	r22, 0x00	; 0
 68e:	82 e0       	ldi	r24, 0x02	; 2
 690:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("OFF SUCCESSFULLY    ");
 694:	8f ee       	ldi	r24, 0xEF	; 239
 696:	93 e0       	ldi	r25, 0x03	; 3
 698:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 69c:	60 e0       	ldi	r22, 0x00	; 0
 69e:	83 e0       	ldi	r24, 0x03	; 3
 6a0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 6a4:	83 ef       	ldi	r24, 0xF3	; 243
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
 6b4:	84 e0       	ldi	r24, 0x04	; 4
 6b6:	94 e0       	ldi	r25, 0x04	; 4
 6b8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 6bc:	60 e0       	ldi	r22, 0x00	; 0
 6be:	81 e0       	ldi	r24, 0x01	; 1
 6c0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("FIRMWARE: V2.0 FINAL");
 6c4:	89 e1       	ldi	r24, 0x19	; 25
 6c6:	94 e0       	ldi	r25, 0x04	; 4
 6c8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 6cc:	60 e0       	ldi	r22, 0x00	; 0
 6ce:	82 e0       	ldi	r24, 0x02	; 2
 6d0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("BUILD DATE: OCT 2026");
 6d4:	8e e2       	ldi	r24, 0x2E	; 46
 6d6:	94 e0       	ldi	r25, 0x04	; 4
 6d8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 6dc:	60 e0       	ldi	r22, 0x00	; 0
 6de:	83 e0       	ldi	r24, 0x03	; 3
 6e0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 6e4:	83 ef       	ldi	r24, 0xF3	; 243
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
 6f4:	83 e4       	ldi	r24, 0x43	; 67
 6f6:	94 e0       	ldi	r25, 0x04	; 4
 6f8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
 6fc:	60 e0       	ldi	r22, 0x00	; 0
 6fe:	81 e0       	ldi	r24, 0x01	; 1
 700:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("16MHZ EXT MEM BUS   ");
 704:	88 e5       	ldi	r24, 0x58	; 88
 706:	94 e0       	ldi	r25, 0x04	; 4
 708:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
 70c:	60 e0       	ldi	r22, 0x00	; 0
 70e:	82 e0       	ldi	r24, 0x02	; 2
 710:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("SCHMITT TRIGGER IN  ");
 714:	8d e6       	ldi	r24, 0x6D	; 109
 716:	94 e0       	ldi	r25, 0x04	; 4
 718:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
 71c:	60 e0       	ldi	r22, 0x00	; 0
 71e:	83 e0       	ldi	r24, 0x03	; 3
 720:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
 724:	83 ef       	ldi	r24, 0xF3	; 243
 726:	92 e0       	ldi	r25, 0x02	; 2
 728:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

0000072c <menu_init>:
// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
 72c:	84 e2       	ldi	r24, 0x24	; 36
 72e:	92 e0       	ldi	r25, 0x02	; 2
 730:	28 e0       	ldi	r18, 0x08	; 8
 732:	32 e0       	ldi	r19, 0x02	; 2
 734:	30 93 39 02 	sts	0x0239, r19	; 0x800239 <Main_Item1+0x15>
 738:	20 93 38 02 	sts	0x0238, r18	; 0x800238 <Main_Item1+0x14>
 73c:	10 92 3b 02 	sts	0x023B, r1	; 0x80023b <Main_Item1+0x17>
 740:	10 92 3a 02 	sts	0x023A, r1	; 0x80023a <Main_Item1+0x16>
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
 744:	4c ee       	ldi	r20, 0xEC	; 236
 746:	51 e0       	ldi	r21, 0x01	; 1
 748:	50 93 1d 02 	sts	0x021D, r21	; 0x80021d <Main_Item2+0x15>
 74c:	40 93 1c 02 	sts	0x021C, r20	; 0x80021c <Main_Item2+0x14>
 750:	90 93 1f 02 	sts	0x021F, r25	; 0x80021f <Main_Item2+0x17>
 754:	80 93 1e 02 	sts	0x021E, r24	; 0x80021e <Main_Item2+0x16>
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
 758:	10 92 01 02 	sts	0x0201, r1	; 0x800201 <Main_Item3+0x15>
 75c:	10 92 00 02 	sts	0x0200, r1	; 0x800200 <Main_Item3+0x14>
 760:	30 93 03 02 	sts	0x0203, r19	; 0x800203 <Main_Item3+0x17>
 764:	20 93 02 02 	sts	0x0202, r18	; 0x800202 <Main_Item3+0x16>
    MainMenu.first_item = &Main_Item1;
 768:	90 93 9d 02 	sts	0x029D, r25	; 0x80029d <MainMenu+0x15>
 76c:	80 93 9c 02 	sts	0x029C, r24	; 0x80029c <MainMenu+0x14>

    // Wire up 7-SEG Menu
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
 770:	20 ed       	ldi	r18, 0xD0	; 208
 772:	31 e0       	ldi	r19, 0x01	; 1
 774:	44 eb       	ldi	r20, 0xB4	; 180
 776:	51 e0       	ldi	r21, 0x01	; 1
 778:	50 93 e5 01 	sts	0x01E5, r21	; 0x8001e5 <Seg_Item1+0x15>
 77c:	40 93 e4 01 	sts	0x01E4, r20	; 0x8001e4 <Seg_Item1+0x14>
 780:	10 92 e7 01 	sts	0x01E7, r1	; 0x8001e7 <Seg_Item1+0x17>
 784:	10 92 e6 01 	sts	0x01E6, r1	; 0x8001e6 <Seg_Item1+0x16>
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
 788:	68 e9       	ldi	r22, 0x98	; 152
 78a:	71 e0       	ldi	r23, 0x01	; 1
 78c:	70 93 c9 01 	sts	0x01C9, r23	; 0x8001c9 <Seg_Item2+0x15>
 790:	60 93 c8 01 	sts	0x01C8, r22	; 0x8001c8 <Seg_Item2+0x14>
 794:	30 93 cb 01 	sts	0x01CB, r19	; 0x8001cb <Seg_Item2+0x17>
 798:	20 93 ca 01 	sts	0x01CA, r18	; 0x8001ca <Seg_Item2+0x16>
    Seg_Item3.next = NULL;       Seg_Item3.prev = &Seg_Item2;
 79c:	10 92 ad 01 	sts	0x01AD, r1	; 0x8001ad <Seg_Item3+0x15>
 7a0:	10 92 ac 01 	sts	0x01AC, r1	; 0x8001ac <Seg_Item3+0x14>
 7a4:	50 93 af 01 	sts	0x01AF, r21	; 0x8001af <Seg_Item3+0x17>
 7a8:	40 93 ae 01 	sts	0x01AE, r20	; 0x8001ae <Seg_Item3+0x16>
    SegMenu.first_item = &Seg_Item1;
 7ac:	30 93 85 02 	sts	0x0285, r19	; 0x800285 <SegMenu+0x15>
 7b0:	20 93 84 02 	sts	0x0284, r18	; 0x800284 <SegMenu+0x14>

    // Wire up Relay Menu
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
 7b4:	2c e7       	ldi	r18, 0x7C	; 124
 7b6:	31 e0       	ldi	r19, 0x01	; 1
 7b8:	40 e6       	ldi	r20, 0x60	; 96
 7ba:	51 e0       	ldi	r21, 0x01	; 1
 7bc:	50 93 91 01 	sts	0x0191, r21	; 0x800191 <Relay_Item1+0x15>
 7c0:	40 93 90 01 	sts	0x0190, r20	; 0x800190 <Relay_Item1+0x14>
 7c4:	10 92 93 01 	sts	0x0193, r1	; 0x800193 <Relay_Item1+0x17>
 7c8:	10 92 92 01 	sts	0x0192, r1	; 0x800192 <Relay_Item1+0x16>
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
 7cc:	64 e4       	ldi	r22, 0x44	; 68
 7ce:	71 e0       	ldi	r23, 0x01	; 1
 7d0:	70 93 75 01 	sts	0x0175, r23	; 0x800175 <Relay_Item2+0x15>
 7d4:	60 93 74 01 	sts	0x0174, r22	; 0x800174 <Relay_Item2+0x14>
 7d8:	30 93 77 01 	sts	0x0177, r19	; 0x800177 <Relay_Item2+0x17>
 7dc:	20 93 76 01 	sts	0x0176, r18	; 0x800176 <Relay_Item2+0x16>
    Relay_Item3.next = NULL;         Relay_Item3.prev = &Relay_Item2;
 7e0:	10 92 59 01 	sts	0x0159, r1	; 0x800159 <Relay_Item3+0x15>
 7e4:	10 92 58 01 	sts	0x0158, r1	; 0x800158 <Relay_Item3+0x14>
 7e8:	50 93 5b 01 	sts	0x015B, r21	; 0x80015b <Relay_Item3+0x17>
 7ec:	40 93 5a 01 	sts	0x015A, r20	; 0x80015a <Relay_Item3+0x16>
    RelayMenu.first_item = &Relay_Item1;
 7f0:	30 93 6d 02 	sts	0x026D, r19	; 0x80026d <RelayMenu+0x15>
 7f4:	20 93 6c 02 	sts	0x026C, r18	; 0x80026c <RelayMenu+0x14>

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
 7f8:	28 e2       	ldi	r18, 0x28	; 40
 7fa:	31 e0       	ldi	r19, 0x01	; 1
 7fc:	4c e0       	ldi	r20, 0x0C	; 12
 7fe:	51 e0       	ldi	r21, 0x01	; 1
 800:	50 93 3d 01 	sts	0x013D, r21	; 0x80013d <Sys_Item1+0x15>
 804:	40 93 3c 01 	sts	0x013C, r20	; 0x80013c <Sys_Item1+0x14>
 808:	10 92 3f 01 	sts	0x013F, r1	; 0x80013f <Sys_Item1+0x17>
 80c:	10 92 3e 01 	sts	0x013E, r1	; 0x80013e <Sys_Item1+0x16>
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
 810:	10 92 21 01 	sts	0x0121, r1	; 0x800121 <Sys_Item2+0x15>
 814:	10 92 20 01 	sts	0x0120, r1	; 0x800120 <Sys_Item2+0x14>
 818:	30 93 23 01 	sts	0x0123, r19	; 0x800123 <Sys_Item2+0x17>
 81c:	20 93 22 01 	sts	0x0122, r18	; 0x800122 <Sys_Item2+0x16>
    SystemMenu.first_item = &Sys_Item1;
 820:	30 93 55 02 	sts	0x0255, r19	; 0x800255 <SystemMenu+0x15>
 824:	20 93 54 02 	sts	0x0254, r18	; 0x800254 <SystemMenu+0x14>

    // Set initial engine pointers
    current_menu = &MainMenu;
 828:	28 e8       	ldi	r18, 0x88	; 136
 82a:	32 e0       	ldi	r19, 0x02	; 2
 82c:	30 93 b2 04 	sts	0x04B2, r19	; 0x8004b2 <current_menu+0x1>
 830:	20 93 b1 04 	sts	0x04B1, r18	; 0x8004b1 <current_menu>
    current_item = current_menu->first_item;
 834:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 838:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
    top_display_item = current_menu->first_item;
 83c:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 840:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
    cursor_row = 1;
 844:	81 e0       	ldi	r24, 0x01	; 1
 846:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
    current_state = STATE_WELCOME;
 84a:	10 92 b4 04 	sts	0x04B4, r1	; 0x8004b4 <current_state+0x1>
 84e:	10 92 b3 04 	sts	0x04B3, r1	; 0x8004b3 <current_state>
    active_action_func = NULL;
 852:	10 92 ac 04 	sts	0x04AC, r1	; 0x8004ac <active_action_func+0x1>
 856:	10 92 ab 04 	sts	0x04AB, r1	; 0x8004ab <active_action_func>

    // Initial Welcome Screen with Typewriter Animation on power-up
    lcd_clear();
 85a:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
    lcd_set_cursor(0, 5);
 85e:	65 e0       	ldi	r22, 0x05	; 5
 860:	80 e0       	ldi	r24, 0x00	; 0
 862:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string_animated("HI YOU", 50);
 866:	62 e3       	ldi	r22, 0x32	; 50
 868:	70 e0       	ldi	r23, 0x00	; 0
 86a:	82 e8       	ldi	r24, 0x82	; 130
 86c:	94 e0       	ldi	r25, 0x04	; 4
 86e:	0e 94 1a 01 	call	0x234	; 0x234 <lcd_send_string_animated>
 872:	8c ed       	ldi	r24, 0xDC	; 220
 874:	95 e0       	ldi	r25, 0x05	; 5
 876:	20 e9       	ldi	r18, 0x90	; 144
 878:	31 e0       	ldi	r19, 0x01	; 1
 87a:	f9 01       	movw	r30, r18
 87c:	31 97       	sbiw	r30, 0x01	; 1
 87e:	f1 f7       	brne	.-4      	; 0x87c <menu_init+0x150>
 880:	01 97       	sbiw	r24, 0x01	; 1
 882:	d9 f7       	brne	.-10     	; 0x87a <menu_init+0x14e>
    _delay_ms(150);
    lcd_set_cursor(1, 0);
 884:	60 e0       	ldi	r22, 0x00	; 0
 886:	81 e0       	ldi	r24, 0x01	; 1
 888:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string_animated("Press any button", 30);
 88c:	6e e1       	ldi	r22, 0x1E	; 30
 88e:	70 e0       	ldi	r23, 0x00	; 0
 890:	89 e8       	ldi	r24, 0x89	; 137
 892:	94 e0       	ldi	r25, 0x04	; 4
 894:	0c 94 1a 01 	jmp	0x234	; 0x234 <lcd_send_string_animated>

00000898 <menu_draw>:
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
 898:	ef 92       	push	r14
 89a:	ff 92       	push	r15
 89c:	0f 93       	push	r16
 89e:	1f 93       	push	r17
 8a0:	cf 93       	push	r28
 8a2:	df 93       	push	r29
 8a4:	cd b7       	in	r28, 0x3d	; 61
 8a6:	de b7       	in	r29, 0x3e	; 62
 8a8:	65 97       	sbiw	r28, 0x15	; 21
 8aa:	0f b6       	in	r0, 0x3f	; 63
 8ac:	f8 94       	cli
 8ae:	de bf       	out	0x3e, r29	; 62
 8b0:	0f be       	out	0x3f, r0	; 63
 8b2:	cd bf       	out	0x3d, r28	; 61
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
 8b4:	60 e0       	ldi	r22, 0x00	; 0
 8b6:	80 e0       	ldi	r24, 0x00	; 0
 8b8:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (current_menu == &MainMenu && !blink_on) {
 8bc:	e0 91 b1 04 	lds	r30, 0x04B1	; 0x8004b1 <current_menu>
 8c0:	f0 91 b2 04 	lds	r31, 0x04B2	; 0x8004b2 <current_menu+0x1>
 8c4:	82 e0       	ldi	r24, 0x02	; 2
 8c6:	e8 38       	cpi	r30, 0x88	; 136
 8c8:	f8 07       	cpc	r31, r24
 8ca:	69 f5       	brne	.+90     	; 0x926 <menu_draw+0x8e>
 8cc:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <blink_on>
 8d0:	81 11       	cpse	r24, r1
 8d2:	29 c0       	rjmp	.+82     	; 0x926 <menu_draw+0x8e>
        lcd_send_string("                    ");
 8d4:	8c e5       	ldi	r24, 0x5C	; 92
 8d6:	93 e0       	ldi	r25, 0x03	; 3
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
 8d8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
 8dc:	e0 90 ad 04 	lds	r14, 0x04AD	; 0x8004ad <top_display_item>
 8e0:	f0 90 ae 04 	lds	r15, 0x04AE	; 0x8004ae <top_display_item+0x1>
    for (uint8_t r = 1; r <= 3; r++) {
 8e4:	11 e0       	ldi	r17, 0x01	; 1
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
 8e6:	00 e2       	ldi	r16, 0x20	; 32
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
 8e8:	60 e0       	ldi	r22, 0x00	; 0
 8ea:	81 2f       	mov	r24, r17
 8ec:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        if (temp != NULL) {
 8f0:	e1 14       	cp	r14, r1
 8f2:	f1 04       	cpc	r15, r1
 8f4:	09 f4       	brne	.+2      	; 0x8f8 <menu_draw+0x60>
 8f6:	4e c0       	rjmp	.+156    	; 0x994 <menu_draw+0xfc>
            lcd_send_data((r == cursor_row) ? '>' : ' ');
 8f8:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 8fc:	81 17       	cp	r24, r17
 8fe:	59 f1       	breq	.+86     	; 0x956 <menu_draw+0xbe>
 900:	80 e2       	ldi	r24, 0x20	; 32
 902:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
 906:	d7 01       	movw	r26, r14
 908:	fe 01       	movw	r30, r28
 90a:	31 96       	adiw	r30, 0x01	; 1
            char buf[20];
            uint8_t len = 0;
 90c:	90 e0       	ldi	r25, 0x00	; 0
 90e:	9f 01       	movw	r18, r30
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
 910:	8d 91       	ld	r24, X+
 912:	81 11       	cpse	r24, r1
 914:	25 c0       	rjmp	.+74     	; 0x960 <menu_draw+0xc8>
 916:	f9 01       	movw	r30, r18
 918:	e9 0f       	add	r30, r25
 91a:	f1 1d       	adc	r31, r1
            while (len < 19) buf[len++] = ' ';
 91c:	93 31       	cpi	r25, 0x13	; 19
 91e:	11 f1       	breq	.+68     	; 0x964 <menu_draw+0xcc>
 920:	9f 5f       	subi	r25, 0xFF	; 255
 922:	01 93       	st	Z+, r16
 924:	fb cf       	rjmp	.-10     	; 0x91c <menu_draw+0x84>
 926:	de 01       	movw	r26, r28
 928:	11 96       	adiw	r26, 0x01	; 1
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
 92a:	90 e0       	ldi	r25, 0x00	; 0
 92c:	9d 01       	movw	r18, r26
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
 92e:	81 91       	ld	r24, Z+
 930:	81 11       	cpse	r24, r1
 932:	0c c0       	rjmp	.+24     	; 0x94c <menu_draw+0xb4>
 934:	f9 01       	movw	r30, r18
 936:	e9 0f       	add	r30, r25
 938:	f1 1d       	adc	r31, r1
        while (len < 20) buf[len++] = ' ';
 93a:	80 e2       	ldi	r24, 0x20	; 32
 93c:	94 31       	cpi	r25, 0x14	; 20
 93e:	41 f0       	breq	.+16     	; 0x950 <menu_draw+0xb8>
 940:	9f 5f       	subi	r25, 0xFF	; 255
 942:	81 93       	st	Z+, r24
 944:	fb cf       	rjmp	.-10     	; 0x93c <menu_draw+0xa4>
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
 946:	9f 5f       	subi	r25, 0xFF	; 255
 948:	8d 93       	st	X+, r24
 94a:	f1 cf       	rjmp	.-30     	; 0x92e <menu_draw+0x96>
 94c:	94 31       	cpi	r25, 0x14	; 20
 94e:	d9 f7       	brne	.-10     	; 0x946 <menu_draw+0xae>
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
 950:	1d 8a       	std	Y+21, r1	; 0x15
        lcd_send_string(buf);
 952:	c9 01       	movw	r24, r18
 954:	c1 cf       	rjmp	.-126    	; 0x8d8 <menu_draw+0x40>
    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
 956:	8e e3       	ldi	r24, 0x3E	; 62
 958:	d4 cf       	rjmp	.-88     	; 0x902 <menu_draw+0x6a>
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
 95a:	9f 5f       	subi	r25, 0xFF	; 255
 95c:	81 93       	st	Z+, r24
 95e:	d8 cf       	rjmp	.-80     	; 0x910 <menu_draw+0x78>
 960:	93 31       	cpi	r25, 0x13	; 19
 962:	d9 f7       	brne	.-10     	; 0x95a <menu_draw+0xc2>
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
 964:	1c 8a       	std	Y+20, r1	; 0x14
            lcd_send_string(buf);
 966:	c9 01       	movw	r24, r18
 968:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
            temp = temp->next;
 96c:	f7 01       	movw	r30, r14
 96e:	e4 88       	ldd	r14, Z+20	; 0x14
 970:	f5 88       	ldd	r15, Z+21	; 0x15
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
 972:	1f 5f       	subi	r17, 0xFF	; 255
 974:	14 30       	cpi	r17, 0x04	; 4
 976:	09 f0       	breq	.+2      	; 0x97a <menu_draw+0xe2>
 978:	b7 cf       	rjmp	.-146    	; 0x8e8 <menu_draw+0x50>
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}
 97a:	65 96       	adiw	r28, 0x15	; 21
 97c:	0f b6       	in	r0, 0x3f	; 63
 97e:	f8 94       	cli
 980:	de bf       	out	0x3e, r29	; 62
 982:	0f be       	out	0x3f, r0	; 63
 984:	cd bf       	out	0x3d, r28	; 61
 986:	df 91       	pop	r29
 988:	cf 91       	pop	r28
 98a:	1f 91       	pop	r17
 98c:	0f 91       	pop	r16
 98e:	ff 90       	pop	r15
 990:	ef 90       	pop	r14
 992:	08 95       	ret
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
 994:	8c e5       	ldi	r24, 0x5C	; 92
 996:	93 e0       	ldi	r25, 0x03	; 3
 998:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
 99c:	ea cf       	rjmp	.-44     	; 0x972 <menu_draw+0xda>

0000099e <menu_down>:

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
 99e:	e0 91 af 04 	lds	r30, 0x04AF	; 0x8004af <current_item>
 9a2:	f0 91 b0 04 	lds	r31, 0x04B0	; 0x8004b0 <current_item+0x1>
 9a6:	30 97       	sbiw	r30, 0x00	; 0
 9a8:	e1 f0       	breq	.+56     	; 0x9e2 <menu_down+0x44>
 9aa:	84 89       	ldd	r24, Z+20	; 0x14
 9ac:	95 89       	ldd	r25, Z+21	; 0x15
 9ae:	00 97       	sbiw	r24, 0x00	; 0
 9b0:	c1 f0       	breq	.+48     	; 0x9e2 <menu_down+0x44>
        current_item = current_item->next;
 9b2:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 9b6:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
        if (cursor_row < 3) {
 9ba:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 9be:	83 30       	cpi	r24, 0x03	; 3
 9c0:	28 f4       	brcc	.+10     	; 0x9cc <menu_down+0x2e>
            cursor_row++;
 9c2:	8f 5f       	subi	r24, 0xFF	; 255
 9c4:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
 9c8:	0c 94 4c 04 	jmp	0x898	; 0x898 <menu_draw>
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
 9cc:	e0 91 ad 04 	lds	r30, 0x04AD	; 0x8004ad <top_display_item>
 9d0:	f0 91 ae 04 	lds	r31, 0x04AE	; 0x8004ae <top_display_item+0x1>
 9d4:	84 89       	ldd	r24, Z+20	; 0x14
 9d6:	95 89       	ldd	r25, Z+21	; 0x15
 9d8:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 9dc:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
 9e0:	f3 cf       	rjmp	.-26     	; 0x9c8 <menu_down+0x2a>
        }
        menu_draw();
    }
}
 9e2:	08 95       	ret

000009e4 <menu_up>:

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
 9e4:	e0 91 af 04 	lds	r30, 0x04AF	; 0x8004af <current_item>
 9e8:	f0 91 b0 04 	lds	r31, 0x04B0	; 0x8004b0 <current_item+0x1>
 9ec:	30 97       	sbiw	r30, 0x00	; 0
 9ee:	e1 f0       	breq	.+56     	; 0xa28 <menu_up+0x44>
 9f0:	86 89       	ldd	r24, Z+22	; 0x16
 9f2:	97 89       	ldd	r25, Z+23	; 0x17
 9f4:	00 97       	sbiw	r24, 0x00	; 0
 9f6:	c1 f0       	breq	.+48     	; 0xa28 <menu_up+0x44>
        current_item = current_item->prev;
 9f8:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 9fc:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
        if (cursor_row > 1) {
 a00:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <cursor_row>
 a04:	82 30       	cpi	r24, 0x02	; 2
 a06:	28 f0       	brcs	.+10     	; 0xa12 <menu_up+0x2e>
            cursor_row--;
 a08:	81 50       	subi	r24, 0x01	; 1
 a0a:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
 a0e:	0c 94 4c 04 	jmp	0x898	; 0x898 <menu_draw>
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
 a12:	e0 91 ad 04 	lds	r30, 0x04AD	; 0x8004ad <top_display_item>
 a16:	f0 91 ae 04 	lds	r31, 0x04AE	; 0x8004ae <top_display_item+0x1>
 a1a:	86 89       	ldd	r24, Z+22	; 0x16
 a1c:	97 89       	ldd	r25, Z+23	; 0x17
 a1e:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 a22:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
 a26:	f3 cf       	rjmp	.-26     	; 0xa0e <menu_up+0x2a>
        }
        menu_draw();
    }
}
 a28:	08 95       	ret

00000a2a <menu_enter>:

void menu_enter(void) {
    if (current_item == NULL) return;
 a2a:	e0 91 af 04 	lds	r30, 0x04AF	; 0x8004af <current_item>
 a2e:	f0 91 b0 04 	lds	r31, 0x04B0	; 0x8004b0 <current_item+0x1>
 a32:	30 97       	sbiw	r30, 0x00	; 0
 a34:	89 f1       	breq	.+98     	; 0xa98 <menu_enter+0x6e>
    if (current_item->child_menu != NULL) {
 a36:	a0 8d       	ldd	r26, Z+24	; 0x18
 a38:	b1 8d       	ldd	r27, Z+25	; 0x19
 a3a:	10 97       	sbiw	r26, 0x00	; 0
 a3c:	b1 f0       	breq	.+44     	; 0xa6a <menu_enter+0x40>
        current_menu = current_item->child_menu;
 a3e:	b0 93 b2 04 	sts	0x04B2, r27	; 0x8004b2 <current_menu+0x1>
 a42:	a0 93 b1 04 	sts	0x04B1, r26	; 0x8004b1 <current_menu>
        current_item = current_menu->first_item;
 a46:	54 96       	adiw	r26, 0x14	; 20
 a48:	8d 91       	ld	r24, X+
 a4a:	9c 91       	ld	r25, X
 a4c:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 a50:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
        top_display_item = current_menu->first_item;
 a54:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 a58:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
        cursor_row = 1;
 a5c:	81 e0       	ldi	r24, 0x01	; 1
 a5e:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        lcd_clear();
 a62:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
 a66:	0c 94 4c 04 	jmp	0x898	; 0x898 <menu_draw>
    } else if (current_item->action != NULL) {
 a6a:	82 8d       	ldd	r24, Z+26	; 0x1a
 a6c:	93 8d       	ldd	r25, Z+27	; 0x1b
 a6e:	00 97       	sbiw	r24, 0x00	; 0
 a70:	99 f0       	breq	.+38     	; 0xa98 <menu_enter+0x6e>
        current_state = STATE_RUNNING;
 a72:	22 e0       	ldi	r18, 0x02	; 2
 a74:	30 e0       	ldi	r19, 0x00	; 0
 a76:	30 93 b4 04 	sts	0x04B4, r19	; 0x8004b4 <current_state+0x1>
 a7a:	20 93 b3 04 	sts	0x04B3, r18	; 0x8004b3 <current_state>
        active_action_func = current_item->action;
 a7e:	90 93 ac 04 	sts	0x04AC, r25	; 0x8004ac <active_action_func+0x1>
 a82:	80 93 ab 04 	sts	0x04AB, r24	; 0x8004ab <active_action_func>
        action_tick = 0;
 a86:	10 92 a9 04 	sts	0x04A9, r1	; 0x8004a9 <action_tick>
        lcd_clear();
 a8a:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        active_action_func(); // render initial action view
 a8e:	e0 91 ab 04 	lds	r30, 0x04AB	; 0x8004ab <active_action_func>
 a92:	f0 91 ac 04 	lds	r31, 0x04AC	; 0x8004ac <active_action_func+0x1>
 a96:	09 94       	ijmp
    }
}
 a98:	08 95       	ret

00000a9a <menu_back>:

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
 a9a:	e0 91 b1 04 	lds	r30, 0x04B1	; 0x8004b1 <current_menu>
 a9e:	f0 91 b2 04 	lds	r31, 0x04B2	; 0x8004b2 <current_menu+0x1>
 aa2:	06 88       	ldd	r0, Z+22	; 0x16
 aa4:	f7 89       	ldd	r31, Z+23	; 0x17
 aa6:	e0 2d       	mov	r30, r0
 aa8:	30 97       	sbiw	r30, 0x00	; 0
 aaa:	a9 f0       	breq	.+42     	; 0xad6 <menu_back+0x3c>
        // Return to parent menu
        current_menu = current_menu->parent_menu;
 aac:	f0 93 b2 04 	sts	0x04B2, r31	; 0x8004b2 <current_menu+0x1>
 ab0:	e0 93 b1 04 	sts	0x04B1, r30	; 0x8004b1 <current_menu>
        current_item = current_menu->first_item;
 ab4:	84 89       	ldd	r24, Z+20	; 0x14
 ab6:	95 89       	ldd	r25, Z+21	; 0x15
 ab8:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 abc:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
        top_display_item = current_menu->first_item;
 ac0:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 ac4:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
        cursor_row = 1;
 ac8:	81 e0       	ldi	r24, 0x01	; 1
 aca:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
        lcd_clear();
 ace:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
 ad2:	0c 94 4c 04 	jmp	0x898	; 0x898 <menu_draw>
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
 ad6:	10 92 b4 04 	sts	0x04B4, r1	; 0x8004b4 <current_state+0x1>
 ada:	10 92 b3 04 	sts	0x04B3, r1	; 0x8004b3 <current_state>
        lcd_clear();
 ade:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        lcd_set_cursor(0, 5);
 ae2:	65 e0       	ldi	r22, 0x05	; 5
 ae4:	80 e0       	ldi	r24, 0x00	; 0
 ae6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        lcd_send_string("HI YOU");
 aea:	82 e8       	ldi	r24, 0x82	; 130
 aec:	94 e0       	ldi	r25, 0x04	; 4
 aee:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
        lcd_set_cursor(1, 0);
 af2:	60 e0       	ldi	r22, 0x00	; 0
 af4:	81 e0       	ldi	r24, 0x01	; 1
 af6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        lcd_send_string("Press any button");
 afa:	89 e8       	ldi	r24, 0x89	; 137
 afc:	94 e0       	ldi	r25, 0x04	; 4
 afe:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

00000b02 <menu_update>:
 b02:	0e 94 0e 02 	call	0x41c	; 0x41c <button_triggered>
 b06:	85 ff       	sbrs	r24, 5
 b08:	2f c0       	rjmp	.+94     	; 0xb68 <menu_update+0x66>
 b0a:	10 92 b4 04 	sts	0x04B4, r1	; 0x8004b4 <current_state+0x1>
 b0e:	10 92 b3 04 	sts	0x04B3, r1	; 0x8004b3 <current_state>
 b12:	10 92 ac 04 	sts	0x04AC, r1	; 0x8004ac <active_action_func+0x1>
 b16:	10 92 ab 04 	sts	0x04AB, r1	; 0x8004ab <active_action_func>
 b1a:	88 e8       	ldi	r24, 0x88	; 136
 b1c:	92 e0       	ldi	r25, 0x02	; 2
 b1e:	90 93 b2 04 	sts	0x04B2, r25	; 0x8004b2 <current_menu+0x1>
 b22:	80 93 b1 04 	sts	0x04B1, r24	; 0x8004b1 <current_menu>
 b26:	80 91 9c 02 	lds	r24, 0x029C	; 0x80029c <MainMenu+0x14>
 b2a:	90 91 9d 02 	lds	r25, 0x029D	; 0x80029d <MainMenu+0x15>
 b2e:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 b32:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
 b36:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 b3a:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
 b3e:	81 e0       	ldi	r24, 0x01	; 1
 b40:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
 b44:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
 b48:	65 e0       	ldi	r22, 0x05	; 5
 b4a:	80 e0       	ldi	r24, 0x00	; 0
 b4c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 b50:	82 e8       	ldi	r24, 0x82	; 130
 b52:	94 e0       	ldi	r25, 0x04	; 4
 b54:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
 b58:	60 e0       	ldi	r22, 0x00	; 0
 b5a:	81 e0       	ldi	r24, 0x01	; 1
 b5c:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 b60:	89 e8       	ldi	r24, 0x89	; 137
 b62:	94 e0       	ldi	r25, 0x04	; 4
 b64:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
 b68:	20 91 b3 04 	lds	r18, 0x04B3	; 0x8004b3 <current_state>
 b6c:	30 91 b4 04 	lds	r19, 0x04B4	; 0x8004b4 <current_state+0x1>
 b70:	21 15       	cp	r18, r1
 b72:	31 05       	cpc	r19, r1
 b74:	31 f5       	brne	.+76     	; 0xbc2 <menu_update+0xc0>
 b76:	88 23       	and	r24, r24
 b78:	09 f4       	brne	.+2      	; 0xb7c <menu_update+0x7a>
 b7a:	85 c0       	rjmp	.+266    	; 0xc86 <menu_update+0x184>
 b7c:	81 e0       	ldi	r24, 0x01	; 1
 b7e:	90 e0       	ldi	r25, 0x00	; 0
 b80:	90 93 b4 04 	sts	0x04B4, r25	; 0x8004b4 <current_state+0x1>
 b84:	80 93 b3 04 	sts	0x04B3, r24	; 0x8004b3 <current_state>
 b88:	88 e8       	ldi	r24, 0x88	; 136
 b8a:	92 e0       	ldi	r25, 0x02	; 2
 b8c:	90 93 b2 04 	sts	0x04B2, r25	; 0x8004b2 <current_menu+0x1>
 b90:	80 93 b1 04 	sts	0x04B1, r24	; 0x8004b1 <current_menu>
 b94:	80 91 9c 02 	lds	r24, 0x029C	; 0x80029c <MainMenu+0x14>
 b98:	90 91 9d 02 	lds	r25, 0x029D	; 0x80029d <MainMenu+0x15>
 b9c:	90 93 b0 04 	sts	0x04B0, r25	; 0x8004b0 <current_item+0x1>
 ba0:	80 93 af 04 	sts	0x04AF, r24	; 0x8004af <current_item>
 ba4:	90 93 ae 04 	sts	0x04AE, r25	; 0x8004ae <top_display_item+0x1>
 ba8:	80 93 ad 04 	sts	0x04AD, r24	; 0x8004ad <top_display_item>
 bac:	81 e0       	ldi	r24, 0x01	; 1
 bae:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <cursor_row>
 bb2:	10 92 aa 04 	sts	0x04AA, r1	; 0x8004aa <blink_counter>
 bb6:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <blink_on>
 bba:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
 bbe:	0c 94 4c 04 	jmp	0x898	; 0x898 <menu_draw>
 bc2:	22 30       	cpi	r18, 0x02	; 2
 bc4:	31 05       	cpc	r19, r1
 bc6:	f9 f4       	brne	.+62     	; 0xc06 <menu_update+0x104>
 bc8:	80 ff       	sbrs	r24, 0
 bca:	0b c0       	rjmp	.+22     	; 0xbe2 <menu_update+0xe0>
 bcc:	81 e0       	ldi	r24, 0x01	; 1
 bce:	90 e0       	ldi	r25, 0x00	; 0
 bd0:	90 93 b4 04 	sts	0x04B4, r25	; 0x8004b4 <current_state+0x1>
 bd4:	80 93 b3 04 	sts	0x04B3, r24	; 0x8004b3 <current_state>
 bd8:	10 92 ac 04 	sts	0x04AC, r1	; 0x8004ac <active_action_func+0x1>
 bdc:	10 92 ab 04 	sts	0x04AB, r1	; 0x8004ab <active_action_func>
 be0:	ec cf       	rjmp	.-40     	; 0xbba <menu_update+0xb8>
 be2:	e0 91 ab 04 	lds	r30, 0x04AB	; 0x8004ab <active_action_func>
 be6:	f0 91 ac 04 	lds	r31, 0x04AC	; 0x8004ac <active_action_func+0x1>
 bea:	30 97       	sbiw	r30, 0x00	; 0
 bec:	09 f4       	brne	.+2      	; 0xbf0 <menu_update+0xee>
 bee:	4b c0       	rjmp	.+150    	; 0xc86 <menu_update+0x184>
 bf0:	80 91 a9 04 	lds	r24, 0x04A9	; 0x8004a9 <action_tick>
 bf4:	8f 5f       	subi	r24, 0xFF	; 255
 bf6:	8a 30       	cpi	r24, 0x0A	; 10
 bf8:	18 f4       	brcc	.+6      	; 0xc00 <menu_update+0xfe>
 bfa:	80 93 a9 04 	sts	0x04A9, r24	; 0x8004a9 <action_tick>
 bfe:	08 95       	ret
 c00:	10 92 a9 04 	sts	0x04A9, r1	; 0x8004a9 <action_tick>
 c04:	09 94       	ijmp
 c06:	21 30       	cpi	r18, 0x01	; 1
 c08:	31 05       	cpc	r19, r1
 c0a:	09 f0       	breq	.+2      	; 0xc0e <menu_update+0x10c>
 c0c:	3c c0       	rjmp	.+120    	; 0xc86 <menu_update+0x184>
 c0e:	83 ff       	sbrs	r24, 3
 c10:	11 c0       	rjmp	.+34     	; 0xc34 <menu_update+0x132>
 c12:	0e 94 cf 04 	call	0x99e	; 0x99e <menu_down>
 c16:	80 91 b1 04 	lds	r24, 0x04B1	; 0x8004b1 <current_menu>
 c1a:	90 91 b2 04 	lds	r25, 0x04B2	; 0x8004b2 <current_menu+0x1>
 c1e:	88 58       	subi	r24, 0x88	; 136
 c20:	92 40       	sbci	r25, 0x02	; 2
 c22:	89 f5       	brne	.+98     	; 0xc86 <menu_update+0x184>
 c24:	80 91 aa 04 	lds	r24, 0x04AA	; 0x8004aa <blink_counter>
 c28:	8f 5f       	subi	r24, 0xFF	; 255
 c2a:	8e 31       	cpi	r24, 0x1E	; 30
 c2c:	98 f4       	brcc	.+38     	; 0xc54 <menu_update+0x152>
 c2e:	80 93 aa 04 	sts	0x04AA, r24	; 0x8004aa <blink_counter>
 c32:	08 95       	ret
 c34:	82 ff       	sbrs	r24, 2
 c36:	03 c0       	rjmp	.+6      	; 0xc3e <menu_update+0x13c>
 c38:	0e 94 f2 04 	call	0x9e4	; 0x9e4 <menu_up>
 c3c:	ec cf       	rjmp	.-40     	; 0xc16 <menu_update+0x114>
 c3e:	98 2f       	mov	r25, r24
 c40:	92 71       	andi	r25, 0x12	; 18
 c42:	19 f0       	breq	.+6      	; 0xc4a <menu_update+0x148>
 c44:	0e 94 15 05 	call	0xa2a	; 0xa2a <menu_enter>
 c48:	e6 cf       	rjmp	.-52     	; 0xc16 <menu_update+0x114>
 c4a:	80 ff       	sbrs	r24, 0
 c4c:	e4 cf       	rjmp	.-56     	; 0xc16 <menu_update+0x114>
 c4e:	0e 94 4d 05 	call	0xa9a	; 0xa9a <menu_back>
 c52:	e1 cf       	rjmp	.-62     	; 0xc16 <menu_update+0x114>
 c54:	10 92 aa 04 	sts	0x04AA, r1	; 0x8004aa <blink_counter>
 c58:	81 e0       	ldi	r24, 0x01	; 1
 c5a:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <blink_on>
 c5e:	91 11       	cpse	r25, r1
 c60:	80 e0       	ldi	r24, 0x00	; 0
 c62:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <blink_on>
 c66:	60 e0       	ldi	r22, 0x00	; 0
 c68:	80 e0       	ldi	r24, 0x00	; 0
 c6a:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
 c6e:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <blink_on>
 c72:	81 11       	cpse	r24, r1
 c74:	03 c0       	rjmp	.+6      	; 0xc7c <menu_update+0x17a>
 c76:	8c e5       	ldi	r24, 0x5C	; 92
 c78:	93 e0       	ldi	r25, 0x03	; 3
 c7a:	74 cf       	rjmp	.-280    	; 0xb64 <menu_update+0x62>
 c7c:	80 91 b1 04 	lds	r24, 0x04B1	; 0x8004b1 <current_menu>
 c80:	90 91 b2 04 	lds	r25, 0x04B2	; 0x8004b2 <current_menu+0x1>
 c84:	6f cf       	rjmp	.-290    	; 0xb64 <menu_update+0x62>
 c86:	08 95       	ret

00000c88 <main>:
#include "menu.h"

int main(void) {
    // 1. Enable External Memory Interface with wait states
    //    SRW10 in MCUCR, and SRW01/SRW00/SRW11 in XMCRA give 2 wait states
    MCUCR |= (1 << SRE) | (1 << SRW10);
 c88:	85 b7       	in	r24, 0x35	; 53
 c8a:	80 6c       	ori	r24, 0xC0	; 192
 c8c:	85 bf       	out	0x35, r24	; 53
    XMCRA = (1 << SRW01) | (1 << SRW00) | (1 << SRW11);
 c8e:	8e e0       	ldi	r24, 0x0E	; 14
 c90:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7e006d>

    // 2. Initialize Peripherals
    lcd_init();     // Initialize LCD (HD44780 8-bit mode)
 c94:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_init>
    seg7_init();    // Initialize 7-segment display (turn all digits off)
 c98:	0e 94 3f 01 	call	0x27e	; 0x27e <seg7_init>
    menu_init();    // Build linked-list menu tree & show "HI YOU"
 c9c:	0e 94 96 03 	call	0x72c	; 0x72c <menu_init>
 ca0:	c0 e4       	ldi	r28, 0x40	; 64
 ca2:	dc e9       	ldi	r29, 0x9C	; 156

    // 3. Main Loop
    while (1) {
        // Sample & debounce button states
        button_update();
 ca4:	0e 94 cf 01 	call	0x39e	; 0x39e <button_update>

        // Update menu navigation, blinking header, and LCD display
        menu_update();
 ca8:	0e 94 81 05 	call	0xb02	; 0xb02 <menu_update>
 cac:	ce 01       	movw	r24, r28
 cae:	01 97       	sbiw	r24, 0x01	; 1
 cb0:	f1 f7       	brne	.-4      	; 0xcae <main+0x26>
 cb2:	f8 cf       	rjmp	.-16     	; 0xca4 <main+0x1c>

00000cb4 <__divmodhi4>:
 cb4:	97 fb       	bst	r25, 7
 cb6:	07 2e       	mov	r0, r23
 cb8:	16 f4       	brtc	.+4      	; 0xcbe <__divmodhi4+0xa>
 cba:	00 94       	com	r0
 cbc:	07 d0       	rcall	.+14     	; 0xccc <__divmodhi4_neg1>
 cbe:	77 fd       	sbrc	r23, 7
 cc0:	09 d0       	rcall	.+18     	; 0xcd4 <__divmodhi4_neg2>
 cc2:	0e 94 90 06 	call	0xd20	; 0xd20 <__udivmodhi4>
 cc6:	07 fc       	sbrc	r0, 7
 cc8:	05 d0       	rcall	.+10     	; 0xcd4 <__divmodhi4_neg2>
 cca:	3e f4       	brtc	.+14     	; 0xcda <__divmodhi4_exit>

00000ccc <__divmodhi4_neg1>:
 ccc:	90 95       	com	r25
 cce:	81 95       	neg	r24
 cd0:	9f 4f       	sbci	r25, 0xFF	; 255
 cd2:	08 95       	ret

00000cd4 <__divmodhi4_neg2>:
 cd4:	70 95       	com	r23
 cd6:	61 95       	neg	r22
 cd8:	7f 4f       	sbci	r23, 0xFF	; 255

00000cda <__divmodhi4_exit>:
 cda:	08 95       	ret

00000cdc <__udivmodsi4>:
 cdc:	a1 e2       	ldi	r26, 0x21	; 33
 cde:	1a 2e       	mov	r1, r26
 ce0:	aa 1b       	sub	r26, r26
 ce2:	bb 1b       	sub	r27, r27
 ce4:	fd 01       	movw	r30, r26
 ce6:	0d c0       	rjmp	.+26     	; 0xd02 <__udivmodsi4_ep>

00000ce8 <__udivmodsi4_loop>:
 ce8:	aa 1f       	adc	r26, r26
 cea:	bb 1f       	adc	r27, r27
 cec:	ee 1f       	adc	r30, r30
 cee:	ff 1f       	adc	r31, r31
 cf0:	a2 17       	cp	r26, r18
 cf2:	b3 07       	cpc	r27, r19
 cf4:	e4 07       	cpc	r30, r20
 cf6:	f5 07       	cpc	r31, r21
 cf8:	20 f0       	brcs	.+8      	; 0xd02 <__udivmodsi4_ep>
 cfa:	a2 1b       	sub	r26, r18
 cfc:	b3 0b       	sbc	r27, r19
 cfe:	e4 0b       	sbc	r30, r20
 d00:	f5 0b       	sbc	r31, r21

00000d02 <__udivmodsi4_ep>:
 d02:	66 1f       	adc	r22, r22
 d04:	77 1f       	adc	r23, r23
 d06:	88 1f       	adc	r24, r24
 d08:	99 1f       	adc	r25, r25
 d0a:	1a 94       	dec	r1
 d0c:	69 f7       	brne	.-38     	; 0xce8 <__udivmodsi4_loop>
 d0e:	60 95       	com	r22
 d10:	70 95       	com	r23
 d12:	80 95       	com	r24
 d14:	90 95       	com	r25
 d16:	9b 01       	movw	r18, r22
 d18:	ac 01       	movw	r20, r24
 d1a:	bd 01       	movw	r22, r26
 d1c:	cf 01       	movw	r24, r30
 d1e:	08 95       	ret

00000d20 <__udivmodhi4>:
 d20:	aa 1b       	sub	r26, r26
 d22:	bb 1b       	sub	r27, r27
 d24:	51 e1       	ldi	r21, 0x11	; 17
 d26:	07 c0       	rjmp	.+14     	; 0xd36 <__udivmodhi4_ep>

00000d28 <__udivmodhi4_loop>:
 d28:	aa 1f       	adc	r26, r26
 d2a:	bb 1f       	adc	r27, r27
 d2c:	a6 17       	cp	r26, r22
 d2e:	b7 07       	cpc	r27, r23
 d30:	10 f0       	brcs	.+4      	; 0xd36 <__udivmodhi4_ep>
 d32:	a6 1b       	sub	r26, r22
 d34:	b7 0b       	sbc	r27, r23

00000d36 <__udivmodhi4_ep>:
 d36:	88 1f       	adc	r24, r24
 d38:	99 1f       	adc	r25, r25
 d3a:	5a 95       	dec	r21
 d3c:	a9 f7       	brne	.-22     	; 0xd28 <__udivmodhi4_loop>
 d3e:	80 95       	com	r24
 d40:	90 95       	com	r25
 d42:	bc 01       	movw	r22, r24
 d44:	cd 01       	movw	r24, r26
 d46:	08 95       	ret

00000d48 <_exit>:
 d48:	f8 94       	cli

00000d4a <__stop_program>:
 d4a:	ff cf       	rjmp	.-2      	; 0xd4a <__stop_program>
