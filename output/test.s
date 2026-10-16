
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
      3c:	0c 94 b5 01 	jmp	0x36a	; 0x36a <__vector_15>
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
      9e:	e6 e4       	ldi	r30, 0x46	; 70
      a0:	f2 e1       	ldi	r31, 0x12	; 18
      a2:	00 e0       	ldi	r16, 0x00	; 0
      a4:	0b bf       	out	0x3b, r16	; 59
      a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
      a8:	07 90       	elpm	r0, Z+
      aa:	0d 92       	st	X+, r0
      ac:	a0 3b       	cpi	r26, 0xB0	; 176
      ae:	b1 07       	cpc	r27, r17
      b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
      b2:	25 e0       	ldi	r18, 0x05	; 5
      b4:	a0 eb       	ldi	r26, 0xB0	; 176
      b6:	b5 e0       	ldi	r27, 0x05	; 5
      b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
      ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
      bc:	a3 3d       	cpi	r26, 0xD3	; 211
      be:	b2 07       	cpc	r27, r18
      c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
      c2:	0e 94 bd 08 	call	0x117a	; 0x117a <main>
      c6:	0c 94 21 09 	jmp	0x1242	; 0x1242 <_exit>

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
      d2:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xb2f>
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
     102:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xb2e>
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
     1de:	00 91 df 02 	lds	r16, 0x02DF	; 0x8002df <MainMenu+0x18>
     1e2:	10 91 e0 02 	lds	r17, 0x02E0	; 0x8002e0 <MainMenu+0x19>
     1e6:	20 91 e1 02 	lds	r18, 0x02E1	; 0x8002e1 <MainMenu+0x1a>
     1ea:	30 91 e2 02 	lds	r19, 0x02E2	; 0x8002e2 <MainMenu+0x1b>
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

static uint16_t timer0_tick_count = 0;

void seg7_init(void) {
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
     27e:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xb30>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
     282:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xb31>

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
        clock_tick_1s();
    }
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
     2e2:	0e 94 eb 08 	call	0x11d6	; 0x11d6 <__udivmodsi4>
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

00000302 <seg7_set_dp_mask>:

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
     302:	80 93 b2 05 	sts	0x05B2, r24	; 0x8005b2 <dp_mask>
}
     306:	08 95       	ret

00000308 <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL3) to prevent ghosting
    LED_7CONTROL = 0x00;
     308:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xb30>

    // 2. Load the segment pattern for the active digit (via CSEL4)
    uint8_t val = display_buffer[current_digit];
     30c:	30 91 b3 05 	lds	r19, 0x05B3	; 0x8005b3 <current_digit>
     310:	e3 2f       	mov	r30, r19
     312:	f0 e0       	ldi	r31, 0x00	; 0
     314:	e0 50       	subi	r30, 0x00	; 0
     316:	ff 4f       	sbci	r31, 0xFF	; 255
     318:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEG_TABLE[val] : SEG_BLANK;
     31a:	20 e0       	ldi	r18, 0x00	; 0
     31c:	e0 31       	cpi	r30, 0x10	; 16
     31e:	20 f4       	brcc	.+8      	; 0x328 <seg7_update+0x20>
     320:	f0 e0       	ldi	r31, 0x00	; 0
     322:	ed 51       	subi	r30, 0x1D	; 29
     324:	fd 4f       	sbci	r31, 0xFD	; 253
     326:	20 81       	ld	r18, Z

    // 2b. Turn on Decimal Point if enabled for this digit
    if (dp_mask & (1 << current_digit)) {
     328:	80 91 b2 05 	lds	r24, 0x05B2	; 0x8005b2 <dp_mask>
     32c:	90 e0       	ldi	r25, 0x00	; 0
     32e:	02 c0       	rjmp	.+4      	; 0x334 <seg7_update+0x2c>
     330:	95 95       	asr	r25
     332:	87 95       	ror	r24
     334:	3a 95       	dec	r19
     336:	e2 f7       	brpl	.-8      	; 0x330 <seg7_update+0x28>
     338:	80 fd       	sbrc	r24, 0
        seg_pattern |= 0x80; // Bit 7 is DP (driven through R81 / Q7)
     33a:	20 68       	ori	r18, 0x80	; 128
    }

    LED_7DATA = seg_pattern;
     33c:	20 93 04 11 	sts	0x1104, r18	; 0x801104 <__bss_end+0xb31>
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);
     340:	20 91 b3 05 	lds	r18, 0x05B3	; 0x8005b3 <current_digit>
     344:	81 e0       	ldi	r24, 0x01	; 1
     346:	90 e0       	ldi	r25, 0x00	; 0
     348:	01 c0       	rjmp	.+2      	; 0x34c <seg7_update+0x44>
     34a:	88 0f       	add	r24, r24
     34c:	2a 95       	dec	r18
     34e:	ea f7       	brpl	.-6      	; 0x34a <seg7_update+0x42>
     350:	80 93 03 11 	sts	0x1103, r24	; 0x801103 <__bss_end+0xb30>

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
     354:	80 91 b3 05 	lds	r24, 0x05B3	; 0x8005b3 <current_digit>
     358:	90 e0       	ldi	r25, 0x00	; 0
     35a:	01 96       	adiw	r24, 0x01	; 1
     35c:	66 e0       	ldi	r22, 0x06	; 6
     35e:	70 e0       	ldi	r23, 0x00	; 0
     360:	0e 94 d7 08 	call	0x11ae	; 0x11ae <__divmodhi4>
     364:	80 93 b3 05 	sts	0x05B3, r24	; 0x8005b3 <current_digit>
}
     368:	08 95       	ret

0000036a <__vector_15>:
    OCR0  = 124;
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
     36a:	1f 92       	push	r1
     36c:	0f 92       	push	r0
     36e:	0f b6       	in	r0, 0x3f	; 63
     370:	0f 92       	push	r0
     372:	11 24       	eor	r1, r1
     374:	0b b6       	in	r0, 0x3b	; 59
     376:	0f 92       	push	r0
     378:	2f 93       	push	r18
     37a:	3f 93       	push	r19
     37c:	4f 93       	push	r20
     37e:	5f 93       	push	r21
     380:	6f 93       	push	r22
     382:	7f 93       	push	r23
     384:	8f 93       	push	r24
     386:	9f 93       	push	r25
     388:	af 93       	push	r26
     38a:	bf 93       	push	r27
     38c:	ef 93       	push	r30
     38e:	ff 93       	push	r31
    seg7_update();
     390:	0e 94 84 01 	call	0x308	; 0x308 <seg7_update>

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     394:	80 91 b0 05 	lds	r24, 0x05B0	; 0x8005b0 <__data_end>
     398:	90 91 b1 05 	lds	r25, 0x05B1	; 0x8005b1 <__data_end+0x1>
     39c:	01 96       	adiw	r24, 0x01	; 1
    if (timer0_tick_count >= 500) {
     39e:	84 3f       	cpi	r24, 0xF4	; 244
     3a0:	21 e0       	ldi	r18, 0x01	; 1
     3a2:	92 07       	cpc	r25, r18
     3a4:	b8 f4       	brcc	.+46     	; 0x3d4 <__vector_15+0x6a>

ISR(TIMER0_COMP_vect) {
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     3a6:	90 93 b1 05 	sts	0x05B1, r25	; 0x8005b1 <__data_end+0x1>
     3aa:	80 93 b0 05 	sts	0x05B0, r24	; 0x8005b0 <__data_end>
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
}
     3ae:	ff 91       	pop	r31
     3b0:	ef 91       	pop	r30
     3b2:	bf 91       	pop	r27
     3b4:	af 91       	pop	r26
     3b6:	9f 91       	pop	r25
     3b8:	8f 91       	pop	r24
     3ba:	7f 91       	pop	r23
     3bc:	6f 91       	pop	r22
     3be:	5f 91       	pop	r21
     3c0:	4f 91       	pop	r20
     3c2:	3f 91       	pop	r19
     3c4:	2f 91       	pop	r18
     3c6:	0f 90       	pop	r0
     3c8:	0b be       	out	0x3b, r0	; 59
     3ca:	0f 90       	pop	r0
     3cc:	0f be       	out	0x3f, r0	; 63
     3ce:	0f 90       	pop	r0
     3d0:	1f 90       	pop	r1
     3d2:	18 95       	reti
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
     3d4:	10 92 b1 05 	sts	0x05B1, r1	; 0x8005b1 <__data_end+0x1>
     3d8:	10 92 b0 05 	sts	0x05B0, r1	; 0x8005b0 <__data_end>
        clock_tick_1s();
     3dc:	0e 94 4d 02 	call	0x49a	; 0x49a <clock_tick_1s>
    }
}
     3e0:	e6 cf       	rjmp	.-52     	; 0x3ae <__vector_15+0x44>

000003e2 <button_update>:
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
  READ_BUTTONS;
     3e2:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xb2d>
     3e6:	20 93 d2 05 	sts	0x05D2, r18	; 0x8005d2 <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
     3ea:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <last_raw>
     3ee:	80 95       	com	r24
     3f0:	82 23       	and	r24, r18
     3f2:	80 93 bd 05 	sts	0x05BD, r24	; 0x8005bd <press_event>
     3f6:	e4 eb       	ldi	r30, 0xB4	; 180
     3f8:	f5 e0       	ldi	r31, 0x05	; 5
  held_event  = 0x00;
     3fa:	50 e0       	ldi	r21, 0x00	; 0
     3fc:	40 e0       	ldi	r20, 0x00	; 0
     3fe:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     400:	a1 e0       	ldi	r26, 0x01	; 1
     402:	b0 e0       	ldi	r27, 0x00	; 0
     404:	bd 01       	movw	r22, r26
     406:	04 2e       	mov	r0, r20
     408:	01 c0       	rjmp	.+2      	; 0x40c <__LOCK_REGION_LENGTH__+0xc>
     40a:	66 0f       	add	r22, r22
     40c:	0a 94       	dec	r0
     40e:	ea f7       	brpl	.-6      	; 0x40a <__LOCK_REGION_LENGTH__+0xa>
    if (raw & bit) {
     410:	82 2f       	mov	r24, r18
     412:	86 23       	and	r24, r22
     414:	d1 f0       	breq	.+52     	; 0x44a <__LOCK_REGION_LENGTH__+0x4a>
      if (hold_cnt[i] < 255) hold_cnt[i]++;
     416:	80 81       	ld	r24, Z
     418:	8f 3f       	cpi	r24, 0xFF	; 255
     41a:	11 f0       	breq	.+4      	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
     41c:	8f 5f       	subi	r24, 0xFF	; 255
     41e:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
     420:	80 81       	ld	r24, Z
     422:	83 32       	cpi	r24, 0x23	; 35
     424:	38 f0       	brcs	.+14     	; 0x434 <__LOCK_REGION_LENGTH__+0x34>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
     426:	83 52       	subi	r24, 0x23	; 35
     428:	99 0b       	sbc	r25, r25
     42a:	87 70       	andi	r24, 0x07	; 7
     42c:	99 27       	eor	r25, r25
     42e:	89 2b       	or	r24, r25
     430:	09 f4       	brne	.+2      	; 0x434 <__LOCK_REGION_LENGTH__+0x34>
          held_event |= bit;
     432:	36 2b       	or	r19, r22
     434:	4f 5f       	subi	r20, 0xFF	; 255
     436:	5f 4f       	sbci	r21, 0xFF	; 255
     438:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
     43a:	48 30       	cpi	r20, 0x08	; 8
     43c:	51 05       	cpc	r21, r1
     43e:	11 f7       	brne	.-60     	; 0x404 <__LOCK_REGION_LENGTH__+0x4>
     440:	30 93 bc 05 	sts	0x05BC, r19	; 0x8005bc <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
     444:	20 93 be 05 	sts	0x05BE, r18	; 0x8005be <last_raw>
}
     448:	08 95       	ret
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
        }
      }
    } else {
      hold_cnt[i] = 0;
     44a:	10 82       	st	Z, r1
     44c:	f3 cf       	rjmp	.-26     	; 0x434 <__LOCK_REGION_LENGTH__+0x34>

0000044e <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
     44e:	80 91 bd 05 	lds	r24, 0x05BD	; 0x8005bd <press_event>
     452:	08 95       	ret

00000454 <button_held>:
uint8_t button_held(void)      { return held_event;  }
     454:	80 91 bc 05 	lds	r24, 0x05BC	; 0x8005bc <held_event>
     458:	08 95       	ret

0000045a <button_state>:
uint8_t button_state(void)     { return last_raw;    }
     45a:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <last_raw>
     45e:	08 95       	ret

00000460 <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
     460:	90 91 bd 05 	lds	r25, 0x05BD	; 0x8005bd <press_event>
     464:	80 91 bc 05 	lds	r24, 0x05BC	; 0x8005bc <held_event>
     468:	89 2b       	or	r24, r25
     46a:	08 95       	ret

0000046c <clock_start>:
    is_running = 1;
    clock_update_display();
}

void clock_start(void) {
    is_running = 1;
     46c:	81 e0       	ldi	r24, 0x01	; 1
     46e:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
}
     472:	08 95       	ret

00000474 <clock_pause>:

void clock_pause(void) {
    is_running = 0;
     474:	10 92 06 01 	sts	0x0106, r1	; 0x800106 <is_running>
}
     478:	08 95       	ret

0000047a <clock_is_running>:

uint8_t clock_is_running(void) {
    return is_running;
}
     47a:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
     47e:	08 95       	ret

00000480 <clock_get_time>:
    sys_time.seconds = (s < 60) ? s : 0;
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
    if (t) {
     480:	00 97       	sbiw	r24, 0x00	; 0
     482:	51 f0       	breq	.+20     	; 0x498 <clock_get_time+0x18>
        *t = sys_time;
     484:	20 91 07 01 	lds	r18, 0x0107	; 0x800107 <sys_time>
     488:	30 91 08 01 	lds	r19, 0x0108	; 0x800108 <sys_time+0x1>
     48c:	40 91 09 01 	lds	r20, 0x0109	; 0x800109 <sys_time+0x2>
     490:	fc 01       	movw	r30, r24
     492:	20 83       	st	Z, r18
     494:	31 83       	std	Z+1, r19	; 0x01
     496:	42 83       	std	Z+2, r20	; 0x02
    }
}
     498:	08 95       	ret

0000049a <clock_tick_1s>:

void clock_tick_1s(void) {
    if (!is_running) return;
     49a:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
     49e:	88 23       	and	r24, r24
     4a0:	f1 f0       	breq	.+60     	; 0x4de <clock_tick_1s+0x44>

    sys_time.seconds++;
     4a2:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time+0x2>
     4a6:	8f 5f       	subi	r24, 0xFF	; 255
    if (sys_time.seconds >= 60) {
     4a8:	8c 33       	cpi	r24, 0x3C	; 60
     4aa:	18 f4       	brcc	.+6      	; 0x4b2 <clock_tick_1s+0x18>
}

void clock_tick_1s(void) {
    if (!is_running) return;

    sys_time.seconds++;
     4ac:	80 93 09 01 	sts	0x0109, r24	; 0x800109 <sys_time+0x2>
     4b0:	08 95       	ret
    if (sys_time.seconds >= 60) {
        sys_time.seconds = 0;
     4b2:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <sys_time+0x2>
        sys_time.minutes++;
     4b6:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sys_time+0x1>
     4ba:	8f 5f       	subi	r24, 0xFF	; 255
        if (sys_time.minutes >= 60) {
     4bc:	8c 33       	cpi	r24, 0x3C	; 60
     4be:	18 f4       	brcc	.+6      	; 0x4c6 <clock_tick_1s+0x2c>
    if (!is_running) return;

    sys_time.seconds++;
    if (sys_time.seconds >= 60) {
        sys_time.seconds = 0;
        sys_time.minutes++;
     4c0:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <sys_time+0x1>
     4c4:	08 95       	ret
        if (sys_time.minutes >= 60) {
            sys_time.minutes = 0;
     4c6:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <sys_time+0x1>
            sys_time.hours++;
     4ca:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <sys_time>
     4ce:	8f 5f       	subi	r24, 0xFF	; 255
            if (sys_time.hours >= 24) {
     4d0:	88 31       	cpi	r24, 0x18	; 24
     4d2:	18 f4       	brcc	.+6      	; 0x4da <clock_tick_1s+0x40>
    if (sys_time.seconds >= 60) {
        sys_time.seconds = 0;
        sys_time.minutes++;
        if (sys_time.minutes >= 60) {
            sys_time.minutes = 0;
            sys_time.hours++;
     4d4:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
     4d8:	08 95       	ret
            if (sys_time.hours >= 24) {
                sys_time.hours = 0;
     4da:	10 92 07 01 	sts	0x0107, r1	; 0x800107 <sys_time>
            }
        }
    }
}
     4de:	08 95       	ret

000004e0 <clock_update_display>:

void clock_update_display(void) {
     4e0:	0f 93       	push	r16
     4e2:	1f 93       	push	r17
     4e4:	cf 93       	push	r28
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     4e6:	8a e0       	ldi	r24, 0x0A	; 10
     4e8:	0e 94 81 01 	call	0x302	; 0x302 <seg7_set_dp_mask>

    seg7_set_digit(0, sys_time.hours / 10);
     4ec:	07 e0       	ldi	r16, 0x07	; 7
     4ee:	11 e0       	ldi	r17, 0x01	; 1
     4f0:	f8 01       	movw	r30, r16
     4f2:	80 81       	ld	r24, Z
     4f4:	ca e0       	ldi	r28, 0x0A	; 10
     4f6:	6c 2f       	mov	r22, r28
     4f8:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     4fc:	68 2f       	mov	r22, r24
     4fe:	80 e0       	ldi	r24, 0x00	; 0
     500:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>
    seg7_set_digit(1, sys_time.hours % 10);
     504:	f8 01       	movw	r30, r16
     506:	80 81       	ld	r24, Z
     508:	6c 2f       	mov	r22, r28
     50a:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     50e:	69 2f       	mov	r22, r25
     510:	81 e0       	ldi	r24, 0x01	; 1
     512:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>
    seg7_set_digit(2, sys_time.minutes / 10);
     516:	f8 01       	movw	r30, r16
     518:	81 81       	ldd	r24, Z+1	; 0x01
     51a:	6c 2f       	mov	r22, r28
     51c:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     520:	68 2f       	mov	r22, r24
     522:	82 e0       	ldi	r24, 0x02	; 2
     524:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>
    seg7_set_digit(3, sys_time.minutes % 10);
     528:	f8 01       	movw	r30, r16
     52a:	81 81       	ldd	r24, Z+1	; 0x01
     52c:	6c 2f       	mov	r22, r28
     52e:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     532:	69 2f       	mov	r22, r25
     534:	83 e0       	ldi	r24, 0x03	; 3
     536:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>
    seg7_set_digit(4, sys_time.seconds / 10);
     53a:	f8 01       	movw	r30, r16
     53c:	82 81       	ldd	r24, Z+2	; 0x02
     53e:	6c 2f       	mov	r22, r28
     540:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     544:	68 2f       	mov	r22, r24
     546:	84 e0       	ldi	r24, 0x04	; 4
     548:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>
    seg7_set_digit(5, sys_time.seconds % 10);
     54c:	f8 01       	movw	r30, r16
     54e:	82 81       	ldd	r24, Z+2	; 0x02
     550:	6c 2f       	mov	r22, r28
     552:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     556:	69 2f       	mov	r22, r25
     558:	85 e0       	ldi	r24, 0x05	; 5
}
     55a:	cf 91       	pop	r28
     55c:	1f 91       	pop	r17
     55e:	0f 91       	pop	r16
    seg7_set_digit(0, sys_time.hours / 10);
    seg7_set_digit(1, sys_time.hours % 10);
    seg7_set_digit(2, sys_time.minutes / 10);
    seg7_set_digit(3, sys_time.minutes % 10);
    seg7_set_digit(4, sys_time.seconds / 10);
    seg7_set_digit(5, sys_time.seconds % 10);
     560:	0c 94 4d 01 	jmp	0x29a	; 0x29a <seg7_set_digit>

00000564 <clock_init>:

static ClockTime_t sys_time = {12, 0, 0}; // Default start at 12:00:00
static uint8_t is_running = 1;

void clock_init(void) {
    sys_time.hours = 12;
     564:	e7 e0       	ldi	r30, 0x07	; 7
     566:	f1 e0       	ldi	r31, 0x01	; 1
     568:	8c e0       	ldi	r24, 0x0C	; 12
     56a:	80 83       	st	Z, r24
    sys_time.minutes = 0;
     56c:	11 82       	std	Z+1, r1	; 0x01
    sys_time.seconds = 0;
     56e:	12 82       	std	Z+2, r1	; 0x02
    is_running = 1;
     570:	81 e0       	ldi	r24, 0x01	; 1
     572:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
    clock_update_display();
     576:	0c 94 70 02 	jmp	0x4e0	; 0x4e0 <clock_update_display>

0000057a <clock_set_time>:
uint8_t clock_is_running(void) {
    return is_running;
}

void clock_set_time(uint8_t h, uint8_t m, uint8_t s) {
    sys_time.hours = (h < 24) ? h : 0;
     57a:	88 31       	cpi	r24, 0x18	; 24
     57c:	08 f0       	brcs	.+2      	; 0x580 <clock_set_time+0x6>
     57e:	80 e0       	ldi	r24, 0x00	; 0
     580:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
    sys_time.minutes = (m < 60) ? m : 0;
     584:	6c 33       	cpi	r22, 0x3C	; 60
     586:	08 f0       	brcs	.+2      	; 0x58a <clock_set_time+0x10>
     588:	60 e0       	ldi	r22, 0x00	; 0
     58a:	60 93 08 01 	sts	0x0108, r22	; 0x800108 <sys_time+0x1>
    sys_time.seconds = (s < 60) ? s : 0;
     58e:	4c 33       	cpi	r20, 0x3C	; 60
     590:	08 f0       	brcs	.+2      	; 0x594 <clock_set_time+0x1a>
     592:	40 e0       	ldi	r20, 0x00	; 0
     594:	40 93 09 01 	sts	0x0109, r20	; 0x800109 <sys_time+0x2>
    clock_update_display();
     598:	0c 94 70 02 	jmp	0x4e0	; 0x4e0 <clock_update_display>

0000059c <action_7seg_time>:
// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================

// --- Mode 1: Display Current Running Real-Time Clock ---
static void action_7seg_time(void) {
     59c:	cf 93       	push	r28
     59e:	df 93       	push	r29
     5a0:	cd b7       	in	r28, 0x3d	; 61
     5a2:	de b7       	in	r29, 0x3e	; 62
     5a4:	68 97       	sbiw	r28, 0x18	; 24
     5a6:	0f b6       	in	r0, 0x3f	; 63
     5a8:	f8 94       	cli
     5aa:	de bf       	out	0x3e, r29	; 62
     5ac:	0f be       	out	0x3f, r0	; 63
     5ae:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t ct;
    clock_get_time(&ct);
     5b0:	ce 01       	movw	r24, r28
     5b2:	46 96       	adiw	r24, 0x16	; 22
     5b4:	0e 94 40 02 	call	0x480	; 0x480 <clock_get_time>
    clock_update_display(); // Updates 7-segment display with HH.MM.SS (DPs enabled!)
     5b8:	0e 94 70 02 	call	0x4e0	; 0x4e0 <clock_update_display>

    lcd_set_cursor(0, 0);
     5bc:	60 e0       	ldi	r22, 0x00	; 0
     5be:	80 e0       	ldi	r24, 0x00	; 0
     5c0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== CURRENT TIME ===");
     5c4:	85 e0       	ldi	r24, 0x05	; 5
     5c6:	93 e0       	ldi	r25, 0x03	; 3
     5c8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>

    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     5cc:	20 e2       	ldi	r18, 0x20	; 32
     5ce:	29 83       	std	Y+1, r18	; 0x01
     5d0:	84 e5       	ldi	r24, 0x54	; 84
     5d2:	8a 83       	std	Y+2, r24	; 0x02
     5d4:	89 e4       	ldi	r24, 0x49	; 73
     5d6:	8b 83       	std	Y+3, r24	; 0x03
     5d8:	8d e4       	ldi	r24, 0x4D	; 77
     5da:	8c 83       	std	Y+4, r24	; 0x04
     5dc:	85 e4       	ldi	r24, 0x45	; 69
     5de:	8d 83       	std	Y+5, r24	; 0x05
     5e0:	4a e3       	ldi	r20, 0x3A	; 58
     5e2:	4e 83       	std	Y+6, r20	; 0x06
    row1[6] = ' '; row1[7] = ' ';
     5e4:	2f 83       	std	Y+7, r18	; 0x07
     5e6:	28 87       	std	Y+8, r18	; 0x08
    row1[8] = '0' + (ct.hours / 10);
     5e8:	8e 89       	ldd	r24, Y+22	; 0x16
     5ea:	3a e0       	ldi	r19, 0x0A	; 10
     5ec:	63 2f       	mov	r22, r19
     5ee:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     5f2:	80 5d       	subi	r24, 0xD0	; 208
     5f4:	89 87       	std	Y+9, r24	; 0x09
    row1[9] = '0' + (ct.hours % 10);
     5f6:	90 5d       	subi	r25, 0xD0	; 208
     5f8:	9a 87       	std	Y+10, r25	; 0x0a
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     5fa:	2b 87       	std	Y+11, r18	; 0x0b
     5fc:	4c 87       	std	Y+12, r20	; 0x0c
     5fe:	2d 87       	std	Y+13, r18	; 0x0d
    row1[13] = '0' + (ct.minutes / 10);
     600:	8f 89       	ldd	r24, Y+23	; 0x17
     602:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     606:	80 5d       	subi	r24, 0xD0	; 208
     608:	8e 87       	std	Y+14, r24	; 0x0e
    row1[14] = '0' + (ct.minutes % 10);
     60a:	90 5d       	subi	r25, 0xD0	; 208
     60c:	9f 87       	std	Y+15, r25	; 0x0f
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     60e:	28 8b       	std	Y+16, r18	; 0x10
     610:	49 8b       	std	Y+17, r20	; 0x11
     612:	2a 8b       	std	Y+18, r18	; 0x12
    row1[18] = '0' + (ct.seconds / 10);
     614:	88 8d       	ldd	r24, Y+24	; 0x18
     616:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     61a:	80 5d       	subi	r24, 0xD0	; 208
     61c:	8b 8b       	std	Y+19, r24	; 0x13
    row1[19] = '0' + (ct.seconds % 10);
     61e:	90 5d       	subi	r25, 0xD0	; 208
     620:	9c 8b       	std	Y+20, r25	; 0x14
    row1[20] = '\0';
     622:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(1, 0);
     624:	60 e0       	ldi	r22, 0x00	; 0
     626:	81 e0       	ldi	r24, 0x01	; 1
     628:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string(row1);
     62c:	ce 01       	movw	r24, r28
     62e:	01 96       	adiw	r24, 0x01	; 1
     630:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>

    lcd_set_cursor(2, 0);
     634:	60 e0       	ldi	r22, 0x00	; 0
     636:	82 e0       	ldi	r24, 0x02	; 2
     638:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("REAL-TIME CLOCK RUN ");
     63c:	8a e1       	ldi	r24, 0x1A	; 26
     63e:	93 e0       	ldi	r25, 0x03	; 3
     640:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     644:	60 e0       	ldi	r22, 0x00	; 0
     646:	83 e0       	ldi	r24, 0x03	; 3
     648:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     64c:	8f e2       	ldi	r24, 0x2F	; 47
     64e:	93 e0       	ldi	r25, 0x03	; 3
     650:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
}
     654:	68 96       	adiw	r28, 0x18	; 24
     656:	0f b6       	in	r0, 0x3f	; 63
     658:	f8 94       	cli
     65a:	de bf       	out	0x3e, r29	; 62
     65c:	0f be       	out	0x3f, r0	; 63
     65e:	cd bf       	out	0x3d, r28	; 61
     660:	df 91       	pop	r29
     662:	cf 91       	pop	r28
     664:	08 95       	ret

00000666 <adjust_draw_lcd>:
    lcd_clear();
    adjust_draw_lcd();
    adjust_update_7seg();
}

static void adjust_draw_lcd(void) {
     666:	cf 93       	push	r28
     668:	df 93       	push	r29
     66a:	cd b7       	in	r28, 0x3d	; 61
     66c:	de b7       	in	r29, 0x3e	; 62
     66e:	aa 97       	sbiw	r28, 0x2a	; 42
     670:	0f b6       	in	r0, 0x3f	; 63
     672:	f8 94       	cli
     674:	de bf       	out	0x3e, r29	; 62
     676:	0f be       	out	0x3f, r0	; 63
     678:	cd bf       	out	0x3d, r28	; 61
    lcd_set_cursor(0, 0);
     67a:	60 e0       	ldi	r22, 0x00	; 0
     67c:	80 e0       	ldi	r24, 0x00	; 0
     67e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ADJUST CLOCK ===");
     682:	84 e4       	ldi	r24, 0x44	; 68
     684:	93 e0       	ldi	r25, 0x03	; 3
     686:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>

    // Row 1: " TIME:  HH : MM : SS"
    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     68a:	80 e2       	ldi	r24, 0x20	; 32
     68c:	8e 8b       	std	Y+22, r24	; 0x16
     68e:	94 e5       	ldi	r25, 0x54	; 84
     690:	9f 8b       	std	Y+23, r25	; 0x17
     692:	99 e4       	ldi	r25, 0x49	; 73
     694:	98 8f       	std	Y+24, r25	; 0x18
     696:	9d e4       	ldi	r25, 0x4D	; 77
     698:	99 8f       	std	Y+25, r25	; 0x19
     69a:	95 e4       	ldi	r25, 0x45	; 69
     69c:	9a 8f       	std	Y+26, r25	; 0x1a
     69e:	9a e3       	ldi	r25, 0x3A	; 58
     6a0:	9b 8f       	std	Y+27, r25	; 0x1b
    row1[6] = ' '; row1[7] = ' ';
     6a2:	8c 8f       	std	Y+28, r24	; 0x1c
     6a4:	8d 8f       	std	Y+29, r24	; 0x1d
    row1[8] = '0' + adjust_digits[0];
     6a6:	eb e0       	ldi	r30, 0x0B	; 11
     6a8:	f1 e0       	ldi	r31, 0x01	; 1
     6aa:	20 81       	ld	r18, Z
     6ac:	20 5d       	subi	r18, 0xD0	; 208
     6ae:	2e 8f       	std	Y+30, r18	; 0x1e
    row1[9] = '0' + adjust_digits[1];
     6b0:	21 81       	ldd	r18, Z+1	; 0x01
     6b2:	20 5d       	subi	r18, 0xD0	; 208
     6b4:	2f 8f       	std	Y+31, r18	; 0x1f
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     6b6:	88 a3       	std	Y+32, r24	; 0x20
     6b8:	99 a3       	std	Y+33, r25	; 0x21
     6ba:	8a a3       	std	Y+34, r24	; 0x22
    row1[13] = '0' + adjust_digits[2];
     6bc:	22 81       	ldd	r18, Z+2	; 0x02
     6be:	20 5d       	subi	r18, 0xD0	; 208
     6c0:	2b a3       	std	Y+35, r18	; 0x23
    row1[14] = '0' + adjust_digits[3];
     6c2:	23 81       	ldd	r18, Z+3	; 0x03
     6c4:	20 5d       	subi	r18, 0xD0	; 208
     6c6:	2c a3       	std	Y+36, r18	; 0x24
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     6c8:	8d a3       	std	Y+37, r24	; 0x25
     6ca:	9e a3       	std	Y+38, r25	; 0x26
     6cc:	8f a3       	std	Y+39, r24	; 0x27
    row1[18] = '0' + adjust_digits[4];
     6ce:	84 81       	ldd	r24, Z+4	; 0x04
     6d0:	80 5d       	subi	r24, 0xD0	; 208
     6d2:	88 a7       	std	Y+40, r24	; 0x28
    row1[19] = '0' + adjust_digits[5];
     6d4:	85 81       	ldd	r24, Z+5	; 0x05
     6d6:	80 5d       	subi	r24, 0xD0	; 208
     6d8:	89 a7       	std	Y+41, r24	; 0x29
    row1[20] = '\0';
     6da:	1a a6       	std	Y+42, r1	; 0x2a
    lcd_set_cursor(1, 0);
     6dc:	60 e0       	ldi	r22, 0x00	; 0
     6de:	81 e0       	ldi	r24, 0x01	; 1
     6e0:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string(row1);
     6e4:	ce 01       	movw	r24, r28
     6e6:	46 96       	adiw	r24, 0x16	; 22
     6e8:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>

    // Row 2: " CURSOR:        ^   " (Arrow directly beneath the selected digit)
    char row2[21] = " CURSOR:            ";
     6ec:	85 e1       	ldi	r24, 0x15	; 21
     6ee:	ee e6       	ldi	r30, 0x6E	; 110
     6f0:	f3 e0       	ldi	r31, 0x03	; 3
     6f2:	de 01       	movw	r26, r28
     6f4:	11 96       	adiw	r26, 0x01	; 1
     6f6:	01 90       	ld	r0, Z+
     6f8:	0d 92       	st	X+, r0
     6fa:	8a 95       	dec	r24
     6fc:	e1 f7       	brne	.-8      	; 0x6f6 <adjust_draw_lcd+0x90>
    static const uint8_t arrow_cols[6] = {8, 9, 13, 14, 18, 19};
    row2[arrow_cols[adjust_pos]] = '^';
     6fe:	e0 91 c0 05 	lds	r30, 0x05C0	; 0x8005c0 <adjust_pos>
     702:	f0 e0       	ldi	r31, 0x00	; 0
     704:	ed 50       	subi	r30, 0x0D	; 13
     706:	fd 4f       	sbci	r31, 0xFD	; 253
     708:	e0 81       	ld	r30, Z
     70a:	81 e0       	ldi	r24, 0x01	; 1
     70c:	90 e0       	ldi	r25, 0x00	; 0
     70e:	8c 0f       	add	r24, r28
     710:	9d 1f       	adc	r25, r29
     712:	8e 0f       	add	r24, r30
     714:	91 1d       	adc	r25, r1
     716:	fc 01       	movw	r30, r24
     718:	8e e5       	ldi	r24, 0x5E	; 94
     71a:	80 83       	st	Z, r24
    row2[20] = '\0';
     71c:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(2, 0);
     71e:	60 e0       	ldi	r22, 0x00	; 0
     720:	82 e0       	ldi	r24, 0x02	; 2
     722:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string(row2);
     726:	ce 01       	movw	r24, r28
     728:	01 96       	adiw	r24, 0x01	; 1
     72a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>

    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
     72e:	60 e0       	ldi	r22, 0x00	; 0
     730:	83 e0       	ldi	r24, 0x03	; 3
     732:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("GO:Save       1:Exit");
     736:	89 e5       	ldi	r24, 0x59	; 89
     738:	93 e0       	ldi	r25, 0x03	; 3
     73a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
}
     73e:	aa 96       	adiw	r28, 0x2a	; 42
     740:	0f b6       	in	r0, 0x3f	; 63
     742:	f8 94       	cli
     744:	de bf       	out	0x3e, r29	; 62
     746:	0f be       	out	0x3f, r0	; 63
     748:	cd bf       	out	0x3d, r28	; 61
     74a:	df 91       	pop	r29
     74c:	cf 91       	pop	r28
     74e:	08 95       	ret

00000750 <action_version>:
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- System Info Actions ---
static void action_version(void) {
    lcd_set_cursor(0, 0);
     750:	60 e0       	ldi	r22, 0x00	; 0
     752:	80 e0       	ldi	r24, 0x00	; 0
     754:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== SYSTEM INFO ====");
     758:	83 e8       	ldi	r24, 0x83	; 131
     75a:	93 e0       	ldi	r25, 0x03	; 3
     75c:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     760:	60 e0       	ldi	r22, 0x00	; 0
     762:	81 e0       	ldi	r24, 0x01	; 1
     764:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("FIRMWARE: V2.0 FINAL");
     768:	88 e9       	ldi	r24, 0x98	; 152
     76a:	93 e0       	ldi	r25, 0x03	; 3
     76c:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     770:	60 e0       	ldi	r22, 0x00	; 0
     772:	82 e0       	ldi	r24, 0x02	; 2
     774:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("BUILD DATE: OCT 2026");
     778:	8d ea       	ldi	r24, 0xAD	; 173
     77a:	93 e0       	ldi	r25, 0x03	; 3
     77c:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     780:	60 e0       	ldi	r22, 0x00	; 0
     782:	83 e0       	ldi	r24, 0x03	; 3
     784:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     788:	8f e2       	ldi	r24, 0x2F	; 47
     78a:	93 e0       	ldi	r25, 0x03	; 3
     78c:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

00000790 <action_about>:
}

static void action_about(void) {
    lcd_set_cursor(0, 0);
     790:	60 e0       	ldi	r22, 0x00	; 0
     792:	80 e0       	ldi	r24, 0x00	; 0
     794:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ATMEGA128A =====");
     798:	82 ec       	ldi	r24, 0xC2	; 194
     79a:	93 e0       	ldi	r25, 0x03	; 3
     79c:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     7a0:	60 e0       	ldi	r22, 0x00	; 0
     7a2:	81 e0       	ldi	r24, 0x01	; 1
     7a4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("16MHZ EXT MEM BUS   ");
     7a8:	87 ed       	ldi	r24, 0xD7	; 215
     7aa:	93 e0       	ldi	r25, 0x03	; 3
     7ac:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     7b0:	60 e0       	ldi	r22, 0x00	; 0
     7b2:	82 e0       	ldi	r24, 0x02	; 2
     7b4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("SCHMITT TRIGGER IN  ");
     7b8:	8c ee       	ldi	r24, 0xEC	; 236
     7ba:	93 e0       	ldi	r25, 0x03	; 3
     7bc:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     7c0:	60 e0       	ldi	r22, 0x00	; 0
     7c2:	83 e0       	ldi	r24, 0x03	; 3
     7c4:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     7c8:	8f e2       	ldi	r24, 0x2F	; 47
     7ca:	93 e0       	ldi	r25, 0x03	; 3
     7cc:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000007d0 <adjust_update_7seg>:
    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
    lcd_send_string("GO:Save       1:Exit");
}

static void adjust_update_7seg(void) {
     7d0:	0f 93       	push	r16
     7d2:	1f 93       	push	r17
     7d4:	cf 93       	push	r28
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     7d6:	8a e0       	ldi	r24, 0x0A	; 10
     7d8:	0e 94 81 01 	call	0x302	; 0x302 <seg7_set_dp_mask>
     7dc:	0b e0       	ldi	r16, 0x0B	; 11
     7de:	11 e0       	ldi	r17, 0x01	; 1

    for (uint8_t i = 0; i < 6; i++) {
     7e0:	c0 e0       	ldi	r28, 0x00	; 0
        if (i == adjust_pos && !adjust_blink_phase) {
     7e2:	80 91 c0 05 	lds	r24, 0x05C0	; 0x8005c0 <adjust_pos>
     7e6:	8c 13       	cpse	r24, r28
     7e8:	05 c0       	rjmp	.+10     	; 0x7f4 <adjust_update_7seg+0x24>
     7ea:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <adjust_blink_phase>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
     7ee:	6f ef       	ldi	r22, 0xFF	; 255
static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
        if (i == adjust_pos && !adjust_blink_phase) {
     7f0:	88 23       	and	r24, r24
     7f2:	11 f0       	breq	.+4      	; 0x7f8 <adjust_update_7seg+0x28>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
     7f4:	f8 01       	movw	r30, r16
     7f6:	60 81       	ld	r22, Z
     7f8:	8c 2f       	mov	r24, r28
     7fa:	0e 94 4d 01 	call	0x29a	; 0x29a <seg7_set_digit>

static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
     7fe:	cf 5f       	subi	r28, 0xFF	; 255
     800:	0f 5f       	subi	r16, 0xFF	; 255
     802:	1f 4f       	sbci	r17, 0xFF	; 255
     804:	c6 30       	cpi	r28, 0x06	; 6
     806:	69 f7       	brne	.-38     	; 0x7e2 <adjust_update_7seg+0x12>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
        }
    }
}
     808:	cf 91       	pop	r28
     80a:	1f 91       	pop	r17
     80c:	0f 91       	pop	r16
     80e:	08 95       	ret

00000810 <action_7seg_adjust>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- Mode 2: Adjust Clock Function ---
static void action_7seg_adjust(void) {
     810:	cf 93       	push	r28
     812:	df 93       	push	r29
     814:	00 d0       	rcall	.+0      	; 0x816 <action_7seg_adjust+0x6>
     816:	1f 92       	push	r1
     818:	cd b7       	in	r28, 0x3d	; 61
     81a:	de b7       	in	r29, 0x3e	; 62
    current_state = STATE_ADJUST_CLOCK;
     81c:	83 e0       	ldi	r24, 0x03	; 3
     81e:	90 e0       	ldi	r25, 0x00	; 0
     820:	90 93 d0 05 	sts	0x05D0, r25	; 0x8005d0 <current_state+0x1>
     824:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_state>
    clock_pause(); // Pause clock ticks during manual editing
     828:	0e 94 3a 02 	call	0x474	; 0x474 <clock_pause>

    ClockTime_t ct;
    clock_get_time(&ct);
     82c:	ce 01       	movw	r24, r28
     82e:	01 96       	adiw	r24, 0x01	; 1
     830:	0e 94 40 02 	call	0x480	; 0x480 <clock_get_time>
    adjust_digits[0] = ct.hours / 10;
     834:	89 81       	ldd	r24, Y+1	; 0x01
     836:	eb e0       	ldi	r30, 0x0B	; 11
     838:	f1 e0       	ldi	r31, 0x01	; 1
     83a:	2a e0       	ldi	r18, 0x0A	; 10
     83c:	62 2f       	mov	r22, r18
     83e:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     842:	80 83       	st	Z, r24
    adjust_digits[1] = ct.hours % 10;
     844:	91 83       	std	Z+1, r25	; 0x01
    adjust_digits[2] = ct.minutes / 10;
     846:	8a 81       	ldd	r24, Y+2	; 0x02
     848:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     84c:	82 83       	std	Z+2, r24	; 0x02
    adjust_digits[3] = ct.minutes % 10;
     84e:	93 83       	std	Z+3, r25	; 0x03
    adjust_digits[4] = ct.seconds / 10;
     850:	8b 81       	ldd	r24, Y+3	; 0x03
     852:	0e 94 cb 08 	call	0x1196	; 0x1196 <__udivmodqi4>
     856:	84 83       	std	Z+4, r24	; 0x04
    adjust_digits[5] = ct.seconds % 10;
     858:	95 83       	std	Z+5, r25	; 0x05

    adjust_pos = 0; // Start at Digit 0 (Hours tens)
     85a:	10 92 c0 05 	sts	0x05C0, r1	; 0x8005c0 <adjust_pos>
    adjust_blink_phase = 1;
     85e:	81 e0       	ldi	r24, 0x01	; 1
     860:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
    adjust_blink_timer = 0;
     864:	10 92 bf 05 	sts	0x05BF, r1	; 0x8005bf <adjust_blink_timer>

    lcd_clear();
     868:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
    adjust_draw_lcd();
     86c:	0e 94 33 03 	call	0x666	; 0x666 <adjust_draw_lcd>
    adjust_update_7seg();
     870:	0e 94 e8 03 	call	0x7d0	; 0x7d0 <adjust_update_7seg>
}
     874:	0f 90       	pop	r0
     876:	0f 90       	pop	r0
     878:	0f 90       	pop	r0
     87a:	df 91       	pop	r29
     87c:	cf 91       	pop	r28
     87e:	08 95       	ret

00000880 <action_7seg_countup>:
    }
}

// --- Mode 3: Count Up ---
static void action_7seg_countup(void) {
    count_val++;
     880:	80 91 c1 05 	lds	r24, 0x05C1	; 0x8005c1 <count_val>
     884:	90 91 c2 05 	lds	r25, 0x05C2	; 0x8005c2 <count_val+0x1>
     888:	01 96       	adiw	r24, 0x01	; 1
     88a:	90 93 c2 05 	sts	0x05C2, r25	; 0x8005c2 <count_val+0x1>
     88e:	80 93 c1 05 	sts	0x05C1, r24	; 0x8005c1 <count_val>
    seg7_set_dp_mask(0x00); // No decimal points in count up
     892:	80 e0       	ldi	r24, 0x00	; 0
     894:	0e 94 81 01 	call	0x302	; 0x302 <seg7_set_dp_mask>
    seg7_set_number(count_val);
     898:	60 91 c1 05 	lds	r22, 0x05C1	; 0x8005c1 <count_val>
     89c:	70 91 c2 05 	lds	r23, 0x05C2	; 0x8005c2 <count_val+0x1>
     8a0:	90 e0       	ldi	r25, 0x00	; 0
     8a2:	80 e0       	ldi	r24, 0x00	; 0
     8a4:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
     8a8:	60 e0       	ldi	r22, 0x00	; 0
     8aa:	80 e0       	ldi	r24, 0x00	; 0
     8ac:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== COUNT UP MODE ==");
     8b0:	81 e0       	ldi	r24, 0x01	; 1
     8b2:	94 e0       	ldi	r25, 0x04	; 4
     8b4:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     8b8:	60 e0       	ldi	r22, 0x00	; 0
     8ba:	81 e0       	ldi	r24, 0x01	; 1
     8bc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
     8c0:	86 e1       	ldi	r24, 0x16	; 22
     8c2:	94 e0       	ldi	r25, 0x04	; 4
     8c4:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     8c8:	60 e0       	ldi	r22, 0x00	; 0
     8ca:	82 e0       	ldi	r24, 0x02	; 2
     8cc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("COUNTER INCREASING  ");
     8d0:	8b e2       	ldi	r24, 0x2B	; 43
     8d2:	94 e0       	ldi	r25, 0x04	; 4
     8d4:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     8d8:	60 e0       	ldi	r22, 0x00	; 0
     8da:	83 e0       	ldi	r24, 0x03	; 3
     8dc:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     8e0:	8f e2       	ldi	r24, 0x2F	; 47
     8e2:	93 e0       	ldi	r25, 0x03	; 3
     8e4:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000008e8 <action_7seg_mode4>:
}

// --- Mode 4: Test All 8s ---
static void action_7seg_mode4(void) {
    seg7_set_dp_mask(0x0A); // DPs on for test
     8e8:	8a e0       	ldi	r24, 0x0A	; 10
     8ea:	0e 94 81 01 	call	0x302	; 0x302 <seg7_set_dp_mask>
    seg7_set_number(888888);
     8ee:	68 e3       	ldi	r22, 0x38	; 56
     8f0:	70 e9       	ldi	r23, 0x90	; 144
     8f2:	8d e0       	ldi	r24, 0x0D	; 13
     8f4:	90 e0       	ldi	r25, 0x00	; 0
     8f6:	0e 94 62 01 	call	0x2c4	; 0x2c4 <seg7_set_number>

    lcd_set_cursor(0, 0);
     8fa:	60 e0       	ldi	r22, 0x00	; 0
     8fc:	80 e0       	ldi	r24, 0x00	; 0
     8fe:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== 7-SEG MODE 4 ===");
     902:	80 e4       	ldi	r24, 0x40	; 64
     904:	94 e0       	ldi	r25, 0x04	; 4
     906:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     90a:	60 e0       	ldi	r22, 0x00	; 0
     90c:	81 e0       	ldi	r24, 0x01	; 1
     90e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("ALL DIGITS SET TO 8 ");
     912:	85 e5       	ldi	r24, 0x55	; 85
     914:	94 e0       	ldi	r25, 0x04	; 4
     916:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     91a:	60 e0       	ldi	r22, 0x00	; 0
     91c:	82 e0       	ldi	r24, 0x02	; 2
     91e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("TESTING SEGMENTS    ");
     922:	8a e6       	ldi	r24, 0x6A	; 106
     924:	94 e0       	ldi	r25, 0x04	; 4
     926:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     92a:	60 e0       	ldi	r22, 0x00	; 0
     92c:	83 e0       	ldi	r24, 0x03	; 3
     92e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     932:	8f e2       	ldi	r24, 0x2F	; 47
     934:	93 e0       	ldi	r25, 0x03	; 3
     936:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

0000093a <action_relay_0_2>:
}

// --- Relay Actions ---
static void action_relay_0_2(void) {
    relay_mode_0_2();
     93a:	0e 94 a4 08 	call	0x1148	; 0x1148 <relay_mode_0_2>

    lcd_set_cursor(0, 0);
     93e:	60 e0       	ldi	r22, 0x00	; 0
     940:	80 e0       	ldi	r24, 0x00	; 0
     942:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAYS 0 & 2 ===");
     946:	8f e7       	ldi	r24, 0x7F	; 127
     948:	94 e0       	ldi	r25, 0x04	; 4
     94a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     94e:	60 e0       	ldi	r22, 0x00	; 0
     950:	81 e0       	ldi	r24, 0x01	; 1
     952:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL0: [ ON ] RL1:[OFF]");
     956:	84 e9       	ldi	r24, 0x94	; 148
     958:	94 e0       	ldi	r25, 0x04	; 4
     95a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     95e:	60 e0       	ldi	r22, 0x00	; 0
     960:	82 e0       	ldi	r24, 0x02	; 2
     962:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL2: [ ON ] RL3:[OFF]");
     966:	8a ea       	ldi	r24, 0xAA	; 170
     968:	94 e0       	ldi	r25, 0x04	; 4
     96a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     96e:	60 e0       	ldi	r22, 0x00	; 0
     970:	83 e0       	ldi	r24, 0x03	; 3
     972:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     976:	8f e2       	ldi	r24, 0x2F	; 47
     978:	93 e0       	ldi	r25, 0x03	; 3
     97a:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

0000097e <action_relay_1_3>:
}

static void action_relay_1_3(void) {
    relay_mode_1_3();
     97e:	0e 94 aa 08 	call	0x1154	; 0x1154 <relay_mode_1_3>

    lcd_set_cursor(0, 0);
     982:	60 e0       	ldi	r22, 0x00	; 0
     984:	80 e0       	ldi	r24, 0x00	; 0
     986:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== RELAYS 1 & 3 ===");
     98a:	80 ec       	ldi	r24, 0xC0	; 192
     98c:	94 e0       	ldi	r25, 0x04	; 4
     98e:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     992:	60 e0       	ldi	r22, 0x00	; 0
     994:	81 e0       	ldi	r24, 0x01	; 1
     996:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL0:[OFF]   RL1:[ ON]");
     99a:	85 ed       	ldi	r24, 0xD5	; 213
     99c:	94 e0       	ldi	r25, 0x04	; 4
     99e:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     9a2:	60 e0       	ldi	r22, 0x00	; 0
     9a4:	82 e0       	ldi	r24, 0x02	; 2
     9a6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL2:[OFF]   RL3:[ ON]");
     9aa:	8b ee       	ldi	r24, 0xEB	; 235
     9ac:	94 e0       	ldi	r25, 0x04	; 4
     9ae:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     9b2:	60 e0       	ldi	r22, 0x00	; 0
     9b4:	83 e0       	ldi	r24, 0x03	; 3
     9b6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     9ba:	8f e2       	ldi	r24, 0x2F	; 47
     9bc:	93 e0       	ldi	r25, 0x03	; 3
     9be:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

000009c2 <action_relay_all_on>:
}

static void action_relay_all_on(void) {
    relay_all_on();
     9c2:	0e 94 b0 08 	call	0x1160	; 0x1160 <relay_all_on>

    lcd_set_cursor(0, 0);
     9c6:	60 e0       	ldi	r22, 0x00	; 0
     9c8:	80 e0       	ldi	r24, 0x00	; 0
     9ca:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS ON ==");
     9ce:	81 e0       	ldi	r24, 0x01	; 1
     9d0:	95 e0       	ldi	r25, 0x05	; 5
     9d2:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     9d6:	60 e0       	ldi	r22, 0x00	; 0
     9d8:	81 e0       	ldi	r24, 0x01	; 1
     9da:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL0: [ ON ] RL1:[ ON]");
     9de:	86 e1       	ldi	r24, 0x16	; 22
     9e0:	95 e0       	ldi	r25, 0x05	; 5
     9e2:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     9e6:	60 e0       	ldi	r22, 0x00	; 0
     9e8:	82 e0       	ldi	r24, 0x02	; 2
     9ea:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL2: [ ON ] RL3:[ ON]");
     9ee:	8c e2       	ldi	r24, 0x2C	; 44
     9f0:	95 e0       	ldi	r25, 0x05	; 5
     9f2:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     9f6:	60 e0       	ldi	r22, 0x00	; 0
     9f8:	83 e0       	ldi	r24, 0x03	; 3
     9fa:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     9fe:	8f e2       	ldi	r24, 0x2F	; 47
     a00:	93 e0       	ldi	r25, 0x03	; 3
     a02:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

00000a06 <action_relay_all_off>:
}

static void action_relay_all_off(void) {
    relay_all_off();
     a06:	0e 94 b6 08 	call	0x116c	; 0x116c <relay_all_off>

    lcd_set_cursor(0, 0);
     a0a:	60 e0       	ldi	r22, 0x00	; 0
     a0c:	80 e0       	ldi	r24, 0x00	; 0
     a0e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS OFF =");
     a12:	82 e4       	ldi	r24, 0x42	; 66
     a14:	95 e0       	ldi	r25, 0x05	; 5
     a16:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(1, 0);
     a1a:	60 e0       	ldi	r22, 0x00	; 0
     a1c:	81 e0       	ldi	r24, 0x01	; 1
     a1e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL0:[OFF]   RL1:[OFF]");
     a22:	87 e5       	ldi	r24, 0x57	; 87
     a24:	95 e0       	ldi	r25, 0x05	; 5
     a26:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(2, 0);
     a2a:	60 e0       	ldi	r22, 0x00	; 0
     a2c:	82 e0       	ldi	r24, 0x02	; 2
     a2e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("RL2:[OFF]   RL3:[OFF]");
     a32:	8d e6       	ldi	r24, 0x6D	; 109
     a34:	95 e0       	ldi	r25, 0x05	; 5
     a36:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    lcd_set_cursor(3, 0);
     a3a:	60 e0       	ldi	r22, 0x00	; 0
     a3c:	83 e0       	ldi	r24, 0x03	; 3
     a3e:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     a42:	8f e2       	ldi	r24, 0x2F	; 47
     a44:	93 e0       	ldi	r25, 0x03	; 3
     a46:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>

00000a4a <menu_init>:
static uint8_t adjust_blink_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
     a4a:	cf 93       	push	r28
     a4c:	df 93       	push	r29
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
     a4e:	e3 e6       	ldi	r30, 0x63	; 99
     a50:	f2 e0       	ldi	r31, 0x02	; 2
     a52:	a7 e4       	ldi	r26, 0x47	; 71
     a54:	b2 e0       	ldi	r27, 0x02	; 2
     a56:	b5 8b       	std	Z+21, r27	; 0x15
     a58:	a4 8b       	std	Z+20, r26	; 0x14
     a5a:	17 8a       	std	Z+23, r1	; 0x17
     a5c:	16 8a       	std	Z+22, r1	; 0x16
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
     a5e:	cb e2       	ldi	r28, 0x2B	; 43
     a60:	d2 e0       	ldi	r29, 0x02	; 2
     a62:	55 96       	adiw	r26, 0x15	; 21
     a64:	dc 93       	st	X, r29
     a66:	ce 93       	st	-X, r28
     a68:	54 97       	sbiw	r26, 0x14	; 20
     a6a:	57 96       	adiw	r26, 0x17	; 23
     a6c:	fc 93       	st	X, r31
     a6e:	ee 93       	st	-X, r30
     a70:	56 97       	sbiw	r26, 0x16	; 22
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
     a72:	1d 8a       	std	Y+21, r1	; 0x15
     a74:	1c 8a       	std	Y+20, r1	; 0x14
     a76:	bf 8b       	std	Y+23, r27	; 0x17
     a78:	ae 8b       	std	Y+22, r26	; 0x16
    MainMenu.first_item = &Main_Item1;
     a7a:	27 ec       	ldi	r18, 0xC7	; 199
     a7c:	32 e0       	ldi	r19, 0x02	; 2
     a7e:	d9 01       	movw	r26, r18
     a80:	55 96       	adiw	r26, 0x15	; 21
     a82:	fc 93       	st	X, r31
     a84:	ee 93       	st	-X, r30
     a86:	54 97       	sbiw	r26, 0x14	; 20

    // Wire up 7-SEG Menu (4 items)
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
     a88:	6f e0       	ldi	r22, 0x0F	; 15
     a8a:	72 e0       	ldi	r23, 0x02	; 2
     a8c:	83 ef       	ldi	r24, 0xF3	; 243
     a8e:	91 e0       	ldi	r25, 0x01	; 1
     a90:	db 01       	movw	r26, r22
     a92:	55 96       	adiw	r26, 0x15	; 21
     a94:	9c 93       	st	X, r25
     a96:	8e 93       	st	-X, r24
     a98:	54 97       	sbiw	r26, 0x14	; 20
     a9a:	57 96       	adiw	r26, 0x17	; 23
     a9c:	1c 92       	st	X, r1
     a9e:	1e 92       	st	-X, r1
     aa0:	56 97       	sbiw	r26, 0x16	; 22
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
     aa2:	c7 ed       	ldi	r28, 0xD7	; 215
     aa4:	d1 e0       	ldi	r29, 0x01	; 1
     aa6:	dc 01       	movw	r26, r24
     aa8:	55 96       	adiw	r26, 0x15	; 21
     aaa:	dc 93       	st	X, r29
     aac:	ce 93       	st	-X, r28
     aae:	54 97       	sbiw	r26, 0x14	; 20
     ab0:	57 96       	adiw	r26, 0x17	; 23
     ab2:	7c 93       	st	X, r23
     ab4:	6e 93       	st	-X, r22
     ab6:	56 97       	sbiw	r26, 0x16	; 22
    Seg_Item3.next = &Seg_Item4; Seg_Item3.prev = &Seg_Item2;
     ab8:	4b eb       	ldi	r20, 0xBB	; 187
     aba:	51 e0       	ldi	r21, 0x01	; 1
     abc:	5d 8b       	std	Y+21, r21	; 0x15
     abe:	4c 8b       	std	Y+20, r20	; 0x14
     ac0:	9f 8b       	std	Y+23, r25	; 0x17
     ac2:	8e 8b       	std	Y+22, r24	; 0x16
    Seg_Item4.next = NULL;       Seg_Item4.prev = &Seg_Item3;
     ac4:	da 01       	movw	r26, r20
     ac6:	55 96       	adiw	r26, 0x15	; 21
     ac8:	1c 92       	st	X, r1
     aca:	1e 92       	st	-X, r1
     acc:	54 97       	sbiw	r26, 0x14	; 20
     ace:	57 96       	adiw	r26, 0x17	; 23
     ad0:	dc 93       	st	X, r29
     ad2:	ce 93       	st	-X, r28
     ad4:	56 97       	sbiw	r26, 0x16	; 22
    SegMenu.first_item = &Seg_Item1;
     ad6:	70 93 c4 02 	sts	0x02C4, r23	; 0x8002c4 <SegMenu+0x15>
     ada:	60 93 c3 02 	sts	0x02C3, r22	; 0x8002c3 <SegMenu+0x14>

    // Wire up Relay Menu (4 items)
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
     ade:	6f e9       	ldi	r22, 0x9F	; 159
     ae0:	71 e0       	ldi	r23, 0x01	; 1
     ae2:	83 e8       	ldi	r24, 0x83	; 131
     ae4:	91 e0       	ldi	r25, 0x01	; 1
     ae6:	db 01       	movw	r26, r22
     ae8:	55 96       	adiw	r26, 0x15	; 21
     aea:	9c 93       	st	X, r25
     aec:	8e 93       	st	-X, r24
     aee:	54 97       	sbiw	r26, 0x14	; 20
     af0:	57 96       	adiw	r26, 0x17	; 23
     af2:	1c 92       	st	X, r1
     af4:	1e 92       	st	-X, r1
     af6:	56 97       	sbiw	r26, 0x16	; 22
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
     af8:	c7 e6       	ldi	r28, 0x67	; 103
     afa:	d1 e0       	ldi	r29, 0x01	; 1
     afc:	dc 01       	movw	r26, r24
     afe:	55 96       	adiw	r26, 0x15	; 21
     b00:	dc 93       	st	X, r29
     b02:	ce 93       	st	-X, r28
     b04:	54 97       	sbiw	r26, 0x14	; 20
     b06:	57 96       	adiw	r26, 0x17	; 23
     b08:	7c 93       	st	X, r23
     b0a:	6e 93       	st	-X, r22
     b0c:	56 97       	sbiw	r26, 0x16	; 22
    Relay_Item3.next = &Relay_Item4; Relay_Item3.prev = &Relay_Item2;
     b0e:	4b e4       	ldi	r20, 0x4B	; 75
     b10:	51 e0       	ldi	r21, 0x01	; 1
     b12:	5d 8b       	std	Y+21, r21	; 0x15
     b14:	4c 8b       	std	Y+20, r20	; 0x14
     b16:	9f 8b       	std	Y+23, r25	; 0x17
     b18:	8e 8b       	std	Y+22, r24	; 0x16
    Relay_Item4.next = NULL;         Relay_Item4.prev = &Relay_Item3;
     b1a:	da 01       	movw	r26, r20
     b1c:	55 96       	adiw	r26, 0x15	; 21
     b1e:	1c 92       	st	X, r1
     b20:	1e 92       	st	-X, r1
     b22:	54 97       	sbiw	r26, 0x14	; 20
     b24:	57 96       	adiw	r26, 0x17	; 23
     b26:	dc 93       	st	X, r29
     b28:	ce 93       	st	-X, r28
     b2a:	56 97       	sbiw	r26, 0x16	; 22
    RelayMenu.first_item = &Relay_Item1;
     b2c:	70 93 ac 02 	sts	0x02AC, r23	; 0x8002ac <RelayMenu+0x15>
     b30:	60 93 ab 02 	sts	0x02AB, r22	; 0x8002ab <RelayMenu+0x14>

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
     b34:	af e2       	ldi	r26, 0x2F	; 47
     b36:	b1 e0       	ldi	r27, 0x01	; 1
     b38:	c3 e1       	ldi	r28, 0x13	; 19
     b3a:	d1 e0       	ldi	r29, 0x01	; 1
     b3c:	55 96       	adiw	r26, 0x15	; 21
     b3e:	dc 93       	st	X, r29
     b40:	ce 93       	st	-X, r28
     b42:	54 97       	sbiw	r26, 0x14	; 20
     b44:	57 96       	adiw	r26, 0x17	; 23
     b46:	1c 92       	st	X, r1
     b48:	1e 92       	st	-X, r1
     b4a:	56 97       	sbiw	r26, 0x16	; 22
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
     b4c:	1d 8a       	std	Y+21, r1	; 0x15
     b4e:	1c 8a       	std	Y+20, r1	; 0x14
     b50:	bf 8b       	std	Y+23, r27	; 0x17
     b52:	ae 8b       	std	Y+22, r26	; 0x16
    SystemMenu.first_item = &Sys_Item1;
     b54:	b0 93 94 02 	sts	0x0294, r27	; 0x800294 <SystemMenu+0x15>
     b58:	a0 93 93 02 	sts	0x0293, r26	; 0x800293 <SystemMenu+0x14>

    // Set initial engine pointers
    current_menu = &MainMenu;
     b5c:	30 93 ce 05 	sts	0x05CE, r19	; 0x8005ce <current_menu+0x1>
     b60:	20 93 cd 05 	sts	0x05CD, r18	; 0x8005cd <current_menu>
    current_item = current_menu->first_item;
     b64:	f0 93 cc 05 	sts	0x05CC, r31	; 0x8005cc <current_item+0x1>
     b68:	e0 93 cb 05 	sts	0x05CB, r30	; 0x8005cb <current_item>
    top_display_item = current_menu->first_item;
     b6c:	f0 93 ca 05 	sts	0x05CA, r31	; 0x8005ca <top_display_item+0x1>
     b70:	e0 93 c9 05 	sts	0x05C9, r30	; 0x8005c9 <top_display_item>
    cursor_row = 1;
     b74:	81 e0       	ldi	r24, 0x01	; 1
     b76:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
    current_state = STATE_WELCOME;
     b7a:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state+0x1>
     b7e:	10 92 cf 05 	sts	0x05CF, r1	; 0x8005cf <current_state>
    active_action_func = NULL;
     b82:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func+0x1>
     b86:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <active_action_func>
    welcome_char_idx = 0;
     b8a:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_char_idx>
    welcome_timer = 0;
     b8e:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <welcome_timer>

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
}
     b92:	df 91       	pop	r29
     b94:	cf 91       	pop	r28
    active_action_func = NULL;
    welcome_char_idx = 0;
    welcome_timer = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
     b96:	0c 94 97 00 	jmp	0x12e	; 0x12e <lcd_clear>

00000b9a <menu_draw>:
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
     b9a:	ef 92       	push	r14
     b9c:	ff 92       	push	r15
     b9e:	0f 93       	push	r16
     ba0:	1f 93       	push	r17
     ba2:	cf 93       	push	r28
     ba4:	df 93       	push	r29
     ba6:	cd b7       	in	r28, 0x3d	; 61
     ba8:	de b7       	in	r29, 0x3e	; 62
     baa:	65 97       	sbiw	r28, 0x15	; 21
     bac:	0f b6       	in	r0, 0x3f	; 63
     bae:	f8 94       	cli
     bb0:	de bf       	out	0x3e, r29	; 62
     bb2:	0f be       	out	0x3f, r0	; 63
     bb4:	cd bf       	out	0x3d, r28	; 61
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
     bb6:	60 e0       	ldi	r22, 0x00	; 0
     bb8:	80 e0       	ldi	r24, 0x00	; 0
     bba:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
    if (current_menu == &MainMenu && !blink_on) {
     bbe:	e0 91 cd 05 	lds	r30, 0x05CD	; 0x8005cd <current_menu>
     bc2:	f0 91 ce 05 	lds	r31, 0x05CE	; 0x8005ce <current_menu+0x1>
     bc6:	82 e0       	ldi	r24, 0x02	; 2
     bc8:	e7 3c       	cpi	r30, 0xC7	; 199
     bca:	f8 07       	cpc	r31, r24
     bcc:	69 f5       	brne	.+90     	; 0xc28 <menu_draw+0x8e>
     bce:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
     bd2:	81 11       	cpse	r24, r1
     bd4:	29 c0       	rjmp	.+82     	; 0xc28 <menu_draw+0x8e>
        lcd_send_string("                    ");
     bd6:	83 e8       	ldi	r24, 0x83	; 131
     bd8:	95 e0       	ldi	r25, 0x05	; 5
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
     bda:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
     bde:	e0 90 c9 05 	lds	r14, 0x05C9	; 0x8005c9 <top_display_item>
     be2:	f0 90 ca 05 	lds	r15, 0x05CA	; 0x8005ca <top_display_item+0x1>
    for (uint8_t r = 1; r <= 3; r++) {
     be6:	11 e0       	ldi	r17, 0x01	; 1
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
     be8:	00 e2       	ldi	r16, 0x20	; 32
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
     bea:	60 e0       	ldi	r22, 0x00	; 0
     bec:	81 2f       	mov	r24, r17
     bee:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
        if (temp != NULL) {
     bf2:	e1 14       	cp	r14, r1
     bf4:	f1 04       	cpc	r15, r1
     bf6:	09 f4       	brne	.+2      	; 0xbfa <menu_draw+0x60>
     bf8:	4e c0       	rjmp	.+156    	; 0xc96 <menu_draw+0xfc>
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     bfa:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     bfe:	81 17       	cp	r24, r17
     c00:	59 f1       	breq	.+86     	; 0xc58 <menu_draw+0xbe>
     c02:	80 e2       	ldi	r24, 0x20	; 32
     c04:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
     c08:	d7 01       	movw	r26, r14
     c0a:	fe 01       	movw	r30, r28
     c0c:	31 96       	adiw	r30, 0x01	; 1
            char buf[20];
            uint8_t len = 0;
     c0e:	90 e0       	ldi	r25, 0x00	; 0
     c10:	9f 01       	movw	r18, r30
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     c12:	8d 91       	ld	r24, X+
     c14:	81 11       	cpse	r24, r1
     c16:	25 c0       	rjmp	.+74     	; 0xc62 <menu_draw+0xc8>
     c18:	f9 01       	movw	r30, r18
     c1a:	e9 0f       	add	r30, r25
     c1c:	f1 1d       	adc	r31, r1
            while (len < 19) buf[len++] = ' ';
     c1e:	93 31       	cpi	r25, 0x13	; 19
     c20:	11 f1       	breq	.+68     	; 0xc66 <menu_draw+0xcc>
     c22:	9f 5f       	subi	r25, 0xFF	; 255
     c24:	01 93       	st	Z+, r16
     c26:	fb cf       	rjmp	.-10     	; 0xc1e <menu_draw+0x84>
     c28:	de 01       	movw	r26, r28
     c2a:	11 96       	adiw	r26, 0x01	; 1
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
     c2c:	90 e0       	ldi	r25, 0x00	; 0
     c2e:	9d 01       	movw	r18, r26
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     c30:	81 91       	ld	r24, Z+
     c32:	81 11       	cpse	r24, r1
     c34:	0c c0       	rjmp	.+24     	; 0xc4e <menu_draw+0xb4>
     c36:	f9 01       	movw	r30, r18
     c38:	e9 0f       	add	r30, r25
     c3a:	f1 1d       	adc	r31, r1
        while (len < 20) buf[len++] = ' ';
     c3c:	80 e2       	ldi	r24, 0x20	; 32
     c3e:	94 31       	cpi	r25, 0x14	; 20
     c40:	41 f0       	breq	.+16     	; 0xc52 <menu_draw+0xb8>
     c42:	9f 5f       	subi	r25, 0xFF	; 255
     c44:	81 93       	st	Z+, r24
     c46:	fb cf       	rjmp	.-10     	; 0xc3e <menu_draw+0xa4>
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     c48:	9f 5f       	subi	r25, 0xFF	; 255
     c4a:	8d 93       	st	X+, r24
     c4c:	f1 cf       	rjmp	.-30     	; 0xc30 <menu_draw+0x96>
     c4e:	94 31       	cpi	r25, 0x14	; 20
     c50:	d9 f7       	brne	.-10     	; 0xc48 <menu_draw+0xae>
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
     c52:	1d 8a       	std	Y+21, r1	; 0x15
        lcd_send_string(buf);
     c54:	c9 01       	movw	r24, r18
     c56:	c1 cf       	rjmp	.-126    	; 0xbda <menu_draw+0x40>
    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     c58:	8e e3       	ldi	r24, 0x3E	; 62
     c5a:	d4 cf       	rjmp	.-88     	; 0xc04 <menu_draw+0x6a>
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     c5c:	9f 5f       	subi	r25, 0xFF	; 255
     c5e:	81 93       	st	Z+, r24
     c60:	d8 cf       	rjmp	.-80     	; 0xc12 <menu_draw+0x78>
     c62:	93 31       	cpi	r25, 0x13	; 19
     c64:	d9 f7       	brne	.-10     	; 0xc5c <menu_draw+0xc2>
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
     c66:	1c 8a       	std	Y+20, r1	; 0x14
            lcd_send_string(buf);
     c68:	c9 01       	movw	r24, r18
     c6a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
            temp = temp->next;
     c6e:	f7 01       	movw	r30, r14
     c70:	e4 88       	ldd	r14, Z+20	; 0x14
     c72:	f5 88       	ldd	r15, Z+21	; 0x15
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
     c74:	1f 5f       	subi	r17, 0xFF	; 255
     c76:	14 30       	cpi	r17, 0x04	; 4
     c78:	09 f0       	breq	.+2      	; 0xc7c <menu_draw+0xe2>
     c7a:	b7 cf       	rjmp	.-146    	; 0xbea <menu_draw+0x50>
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}
     c7c:	65 96       	adiw	r28, 0x15	; 21
     c7e:	0f b6       	in	r0, 0x3f	; 63
     c80:	f8 94       	cli
     c82:	de bf       	out	0x3e, r29	; 62
     c84:	0f be       	out	0x3f, r0	; 63
     c86:	cd bf       	out	0x3d, r28	; 61
     c88:	df 91       	pop	r29
     c8a:	cf 91       	pop	r28
     c8c:	1f 91       	pop	r17
     c8e:	0f 91       	pop	r16
     c90:	ff 90       	pop	r15
     c92:	ef 90       	pop	r14
     c94:	08 95       	ret
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
     c96:	83 e8       	ldi	r24, 0x83	; 131
     c98:	95 e0       	ldi	r25, 0x05	; 5
     c9a:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
     c9e:	ea cf       	rjmp	.-44     	; 0xc74 <menu_draw+0xda>

00000ca0 <menu_down>:

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
     ca0:	e0 91 cb 05 	lds	r30, 0x05CB	; 0x8005cb <current_item>
     ca4:	f0 91 cc 05 	lds	r31, 0x05CC	; 0x8005cc <current_item+0x1>
     ca8:	30 97       	sbiw	r30, 0x00	; 0
     caa:	e1 f0       	breq	.+56     	; 0xce4 <menu_down+0x44>
     cac:	84 89       	ldd	r24, Z+20	; 0x14
     cae:	95 89       	ldd	r25, Z+21	; 0x15
     cb0:	00 97       	sbiw	r24, 0x00	; 0
     cb2:	c1 f0       	breq	.+48     	; 0xce4 <menu_down+0x44>
        current_item = current_item->next;
     cb4:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     cb8:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
        if (cursor_row < 3) {
     cbc:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     cc0:	83 30       	cpi	r24, 0x03	; 3
     cc2:	28 f4       	brcc	.+10     	; 0xcce <menu_down+0x2e>
            cursor_row++;
     cc4:	8f 5f       	subi	r24, 0xFF	; 255
     cc6:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
     cca:	0c 94 cd 05 	jmp	0xb9a	; 0xb9a <menu_draw>
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
     cce:	e0 91 c9 05 	lds	r30, 0x05C9	; 0x8005c9 <top_display_item>
     cd2:	f0 91 ca 05 	lds	r31, 0x05CA	; 0x8005ca <top_display_item+0x1>
     cd6:	84 89       	ldd	r24, Z+20	; 0x14
     cd8:	95 89       	ldd	r25, Z+21	; 0x15
     cda:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     cde:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
     ce2:	f3 cf       	rjmp	.-26     	; 0xcca <menu_down+0x2a>
        }
        menu_draw();
    }
}
     ce4:	08 95       	ret

00000ce6 <menu_up>:

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
     ce6:	e0 91 cb 05 	lds	r30, 0x05CB	; 0x8005cb <current_item>
     cea:	f0 91 cc 05 	lds	r31, 0x05CC	; 0x8005cc <current_item+0x1>
     cee:	30 97       	sbiw	r30, 0x00	; 0
     cf0:	e1 f0       	breq	.+56     	; 0xd2a <menu_up+0x44>
     cf2:	86 89       	ldd	r24, Z+22	; 0x16
     cf4:	97 89       	ldd	r25, Z+23	; 0x17
     cf6:	00 97       	sbiw	r24, 0x00	; 0
     cf8:	c1 f0       	breq	.+48     	; 0xd2a <menu_up+0x44>
        current_item = current_item->prev;
     cfa:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     cfe:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
        if (cursor_row > 1) {
     d02:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     d06:	82 30       	cpi	r24, 0x02	; 2
     d08:	28 f0       	brcs	.+10     	; 0xd14 <menu_up+0x2e>
            cursor_row--;
     d0a:	81 50       	subi	r24, 0x01	; 1
     d0c:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
     d10:	0c 94 cd 05 	jmp	0xb9a	; 0xb9a <menu_draw>
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
     d14:	e0 91 c9 05 	lds	r30, 0x05C9	; 0x8005c9 <top_display_item>
     d18:	f0 91 ca 05 	lds	r31, 0x05CA	; 0x8005ca <top_display_item+0x1>
     d1c:	86 89       	ldd	r24, Z+22	; 0x16
     d1e:	97 89       	ldd	r25, Z+23	; 0x17
     d20:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     d24:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
     d28:	f3 cf       	rjmp	.-26     	; 0xd10 <menu_up+0x2a>
        }
        menu_draw();
    }
}
     d2a:	08 95       	ret

00000d2c <menu_enter>:

void menu_enter(void) {
    if (current_item == NULL) return;
     d2c:	e0 91 cb 05 	lds	r30, 0x05CB	; 0x8005cb <current_item>
     d30:	f0 91 cc 05 	lds	r31, 0x05CC	; 0x8005cc <current_item+0x1>
     d34:	30 97       	sbiw	r30, 0x00	; 0
     d36:	89 f1       	breq	.+98     	; 0xd9a <menu_enter+0x6e>
    if (current_item->child_menu != NULL) {
     d38:	a0 8d       	ldd	r26, Z+24	; 0x18
     d3a:	b1 8d       	ldd	r27, Z+25	; 0x19
     d3c:	10 97       	sbiw	r26, 0x00	; 0
     d3e:	b1 f0       	breq	.+44     	; 0xd6c <menu_enter+0x40>
        current_menu = current_item->child_menu;
     d40:	b0 93 ce 05 	sts	0x05CE, r27	; 0x8005ce <current_menu+0x1>
     d44:	a0 93 cd 05 	sts	0x05CD, r26	; 0x8005cd <current_menu>
        current_item = current_menu->first_item;
     d48:	54 96       	adiw	r26, 0x14	; 20
     d4a:	8d 91       	ld	r24, X+
     d4c:	9c 91       	ld	r25, X
     d4e:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     d52:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
        top_display_item = current_menu->first_item;
     d56:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     d5a:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
        cursor_row = 1;
     d5e:	81 e0       	ldi	r24, 0x01	; 1
     d60:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     d64:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
     d68:	0c 94 cd 05 	jmp	0xb9a	; 0xb9a <menu_draw>
    } else if (current_item->action != NULL) {
     d6c:	82 8d       	ldd	r24, Z+26	; 0x1a
     d6e:	93 8d       	ldd	r25, Z+27	; 0x1b
     d70:	00 97       	sbiw	r24, 0x00	; 0
     d72:	99 f0       	breq	.+38     	; 0xd9a <menu_enter+0x6e>
        current_state = STATE_RUNNING;
     d74:	22 e0       	ldi	r18, 0x02	; 2
     d76:	30 e0       	ldi	r19, 0x00	; 0
     d78:	30 93 d0 05 	sts	0x05D0, r19	; 0x8005d0 <current_state+0x1>
     d7c:	20 93 cf 05 	sts	0x05CF, r18	; 0x8005cf <current_state>
        active_action_func = current_item->action;
     d80:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <active_action_func+0x1>
     d84:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <active_action_func>
        action_tick = 0;
     d88:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <action_tick>
        lcd_clear();
     d8c:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        active_action_func(); // render initial action view
     d90:	e0 91 c7 05 	lds	r30, 0x05C7	; 0x8005c7 <active_action_func>
     d94:	f0 91 c8 05 	lds	r31, 0x05C8	; 0x8005c8 <active_action_func+0x1>
     d98:	09 94       	ijmp
    }
}
     d9a:	08 95       	ret

00000d9c <menu_back>:

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
     d9c:	e0 91 cd 05 	lds	r30, 0x05CD	; 0x8005cd <current_menu>
     da0:	f0 91 ce 05 	lds	r31, 0x05CE	; 0x8005ce <current_menu+0x1>
     da4:	06 88       	ldd	r0, Z+22	; 0x16
     da6:	f7 89       	ldd	r31, Z+23	; 0x17
     da8:	e0 2d       	mov	r30, r0
     daa:	30 97       	sbiw	r30, 0x00	; 0
     dac:	a9 f0       	breq	.+42     	; 0xdd8 <menu_back+0x3c>
        // Return to parent menu
        current_menu = current_menu->parent_menu;
     dae:	f0 93 ce 05 	sts	0x05CE, r31	; 0x8005ce <current_menu+0x1>
     db2:	e0 93 cd 05 	sts	0x05CD, r30	; 0x8005cd <current_menu>
        current_item = current_menu->first_item;
     db6:	84 89       	ldd	r24, Z+20	; 0x14
     db8:	95 89       	ldd	r25, Z+21	; 0x15
     dba:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     dbe:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
        top_display_item = current_menu->first_item;
     dc2:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     dc6:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
        cursor_row = 1;
     dca:	81 e0       	ldi	r24, 0x01	; 1
     dcc:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     dd0:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
        menu_draw();
     dd4:	0c 94 cd 05 	jmp	0xb9a	; 0xb9a <menu_draw>
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
     dd8:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state+0x1>
     ddc:	10 92 cf 05 	sts	0x05CF, r1	; 0x8005cf <current_state>
        welcome_char_idx = 0;
     de0:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_char_idx>
        welcome_timer = 0;
     de4:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <welcome_timer>
        lcd_clear();
     de8:	0c 94 97 00 	jmp	0x12e	; 0x12e <lcd_clear>

00000dec <menu_update>:
}

// ==========================================
// 7. PERIODIC ENGINE TICK
// ==========================================
void menu_update(void) {
     dec:	cf 93       	push	r28
    uint8_t btns = button_triggered();
     dee:	0e 94 30 02 	call	0x460	; 0x460 <button_triggered>
     df2:	20 91 cf 05 	lds	r18, 0x05CF	; 0x8005cf <current_state>
     df6:	30 91 d0 05 	lds	r19, 0x05D0	; 0x8005d0 <current_state+0x1>

    // 1. GLOBAL SHORTCUT: BTN1 is the EXIT button -> Returns to Welcome Screen from ANYWHERE
    if (btns & BTN_BIT_1) {
     dfa:	85 ff       	sbrs	r24, 5
     dfc:	29 c0       	rjmp	.+82     	; 0xe50 <menu_update+0x64>
        if (current_state == STATE_ADJUST_CLOCK) {
     dfe:	23 30       	cpi	r18, 0x03	; 3
     e00:	31 05       	cpc	r19, r1
     e02:	11 f4       	brne	.+4      	; 0xe08 <menu_update+0x1c>
            clock_start(); // ensure clock keeps ticking if canceled
     e04:	0e 94 36 02 	call	0x46c	; 0x46c <clock_start>
        }
        current_state = STATE_WELCOME;
     e08:	10 92 d0 05 	sts	0x05D0, r1	; 0x8005d0 <current_state+0x1>
     e0c:	10 92 cf 05 	sts	0x05CF, r1	; 0x8005cf <current_state>
        active_action_func = NULL;
     e10:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func+0x1>
     e14:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <active_action_func>
        current_menu = &MainMenu;
     e18:	87 ec       	ldi	r24, 0xC7	; 199
     e1a:	92 e0       	ldi	r25, 0x02	; 2
     e1c:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_menu+0x1>
     e20:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_menu>
        current_item = current_menu->first_item;
     e24:	80 91 db 02 	lds	r24, 0x02DB	; 0x8002db <MainMenu+0x14>
     e28:	90 91 dc 02 	lds	r25, 0x02DC	; 0x8002dc <MainMenu+0x15>
     e2c:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     e30:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
        top_display_item = current_menu->first_item;
     e34:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     e38:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
        cursor_row = 1;
     e3c:	81 e0       	ldi	r24, 0x01	; 1
     e3e:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        welcome_char_idx = 0;
     e42:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <welcome_char_idx>
        welcome_timer = 0;
     e46:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <welcome_timer>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     e4a:	cf 91       	pop	r28
        current_item = current_menu->first_item;
        top_display_item = current_menu->first_item;
        cursor_row = 1;
        welcome_char_idx = 0;
        welcome_timer = 0;
        lcd_clear();
     e4c:	0c 94 97 00 	jmp	0x12e	; 0x12e <lcd_clear>
        return;
    }

    // 2. STATE_WELCOME: Non-blocking typewriter animation + instant button wake-up
    if (current_state == STATE_WELCOME) {
     e50:	21 15       	cp	r18, r1
     e52:	31 05       	cpc	r19, r1
     e54:	09 f0       	breq	.+2      	; 0xe58 <menu_update+0x6c>
     e56:	54 c0       	rjmp	.+168    	; 0xf00 <menu_update+0x114>
        if (btns != 0) {
     e58:	88 23       	and	r24, r24
     e5a:	21 f1       	breq	.+72     	; 0xea4 <menu_update+0xb8>
            current_state = STATE_MENU;
     e5c:	81 e0       	ldi	r24, 0x01	; 1
     e5e:	90 e0       	ldi	r25, 0x00	; 0
     e60:	90 93 d0 05 	sts	0x05D0, r25	; 0x8005d0 <current_state+0x1>
     e64:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_state>
            current_menu = &MainMenu;
     e68:	87 ec       	ldi	r24, 0xC7	; 199
     e6a:	92 e0       	ldi	r25, 0x02	; 2
     e6c:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_menu+0x1>
     e70:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_menu>
            current_item = current_menu->first_item;
     e74:	80 91 db 02 	lds	r24, 0x02DB	; 0x8002db <MainMenu+0x14>
     e78:	90 91 dc 02 	lds	r25, 0x02DC	; 0x8002dc <MainMenu+0x15>
     e7c:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_item+0x1>
     e80:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_item>
            top_display_item = current_menu->first_item;
     e84:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <top_display_item+0x1>
     e88:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <top_display_item>
            cursor_row = 1;
     e8c:	81 e0       	ldi	r24, 0x01	; 1
     e8e:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
            blink_counter = 0;
     e92:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <blink_counter>
            blink_on = 1;
     e96:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
            if (s > 59) s = 59;
            clock_set_time(h, m, s);
            clock_start();

            current_state = STATE_MENU;
            lcd_clear();
     e9a:	0e 94 97 00 	call	0x12e	; 0x12e <lcd_clear>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     e9e:	cf 91       	pop	r28
            clock_set_time(h, m, s);
            clock_start();

            current_state = STATE_MENU;
            lcd_clear();
            menu_draw();
     ea0:	0c 94 cd 05 	jmp	0xb9a	; 0xb9a <menu_draw>
        }

        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
     ea4:	80 91 c3 05 	lds	r24, 0x05C3	; 0x8005c3 <welcome_timer>
     ea8:	8f 5f       	subi	r24, 0xFF	; 255
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
     eaa:	83 30       	cpi	r24, 0x03	; 3
     eac:	20 f4       	brcc	.+8      	; 0xeb6 <menu_update+0xca>
        }

        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
     eae:	80 93 c3 05 	sts	0x05C3, r24	; 0x8005c3 <welcome_timer>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     eb2:	cf 91       	pop	r28
     eb4:	08 95       	ret
        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
            welcome_timer = 0;
     eb6:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <welcome_timer>

            if (welcome_char_idx < 6) {
     eba:	60 91 c4 05 	lds	r22, 0x05C4	; 0x8005c4 <welcome_char_idx>
     ebe:	66 30       	cpi	r22, 0x06	; 6
     ec0:	90 f4       	brcc	.+36     	; 0xee6 <menu_update+0xfa>
                lcd_set_cursor(0, 5 + welcome_char_idx);
     ec2:	6b 5f       	subi	r22, 0xFB	; 251
     ec4:	80 e0       	ldi	r24, 0x00	; 0
     ec6:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
                lcd_send_data(welcome_l1[welcome_char_idx]);
     eca:	e0 91 c4 05 	lds	r30, 0x05C4	; 0x8005c4 <welcome_char_idx>
     ece:	f0 e0       	ldi	r31, 0x00	; 0
     ed0:	e8 56       	subi	r30, 0x68	; 104
     ed2:	fa 4f       	sbci	r31, 0xFA	; 250
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
                uint8_t l2_idx = welcome_char_idx - 6;
                lcd_set_cursor(1, l2_idx);
                lcd_send_data(welcome_l2[l2_idx]);
     ed4:	80 81       	ld	r24, Z
     ed6:	0e 94 7f 00 	call	0xfe	; 0xfe <lcd_send_data>
                welcome_char_idx++;
     eda:	80 91 c4 05 	lds	r24, 0x05C4	; 0x8005c4 <welcome_char_idx>
     ede:	8f 5f       	subi	r24, 0xFF	; 255
     ee0:	80 93 c4 05 	sts	0x05C4, r24	; 0x8005c4 <welcome_char_idx>
     ee4:	e6 cf       	rjmp	.-52     	; 0xeb2 <menu_update+0xc6>

            if (welcome_char_idx < 6) {
                lcd_set_cursor(0, 5 + welcome_char_idx);
                lcd_send_data(welcome_l1[welcome_char_idx]);
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
     ee6:	66 31       	cpi	r22, 0x16	; 22
     ee8:	20 f7       	brcc	.-56     	; 0xeb2 <menu_update+0xc6>
                uint8_t l2_idx = welcome_char_idx - 6;
     eea:	ca ef       	ldi	r28, 0xFA	; 250
     eec:	c6 0f       	add	r28, r22
                lcd_set_cursor(1, l2_idx);
     eee:	6c 2f       	mov	r22, r28
     ef0:	81 e0       	ldi	r24, 0x01	; 1
     ef2:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
                lcd_send_data(welcome_l2[l2_idx]);
     ef6:	ec 2f       	mov	r30, r28
     ef8:	f0 e0       	ldi	r31, 0x00	; 0
     efa:	e1 56       	subi	r30, 0x61	; 97
     efc:	fa 4f       	sbci	r31, 0xFA	; 250
     efe:	ea cf       	rjmp	.-44     	; 0xed4 <menu_update+0xe8>
        }
        return;
    }

    // 3. STATE_ADJUST_CLOCK: Dedicated Clock Adjust Mode
    if (current_state == STATE_ADJUST_CLOCK) {
     f00:	23 30       	cpi	r18, 0x03	; 3
     f02:	31 05       	cpc	r19, r1
     f04:	09 f0       	breq	.+2      	; 0xf08 <menu_update+0x11c>
     f06:	7d c0       	rjmp	.+250    	; 0x1002 <__DATA_REGION_LENGTH__+0x2>
        // --- Navigation: LEFT / RIGHT selects digit 0 to 5 ---
        if (btns & BTN_BIT_LEFT) {
     f08:	80 ff       	sbrs	r24, 0
     f0a:	1b c0       	rjmp	.+54     	; 0xf42 <menu_update+0x156>
            adjust_pos = (adjust_pos == 0) ? 5 : adjust_pos - 1;
     f0c:	80 91 c0 05 	lds	r24, 0x05C0	; 0x8005c0 <adjust_pos>
     f10:	88 23       	and	r24, r24
     f12:	a9 f0       	breq	.+42     	; 0xf3e <menu_update+0x152>
     f14:	81 50       	subi	r24, 0x01	; 1
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_RIGHT) {
            adjust_pos = (adjust_pos == 5) ? 0 : adjust_pos + 1;
     f16:	80 93 c0 05 	sts	0x05C0, r24	; 0x8005c0 <adjust_pos>
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
            adjust_blink_phase = 1;
     f1a:	81 e0       	ldi	r24, 0x01	; 1
     f1c:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
            adjust_blink_timer = 0;
     f20:	10 92 bf 05 	sts	0x05BF, r1	; 0x8005bf <adjust_blink_timer>
            adjust_draw_lcd();
     f24:	0e 94 33 03 	call	0x666	; 0x666 <adjust_draw_lcd>
            adjust_update_7seg();
     f28:	0e 94 e8 03 	call	0x7d0	; 0x7d0 <adjust_update_7seg>
            menu_draw();
            return;
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
     f2c:	80 91 bf 05 	lds	r24, 0x05BF	; 0x8005bf <adjust_blink_timer>
     f30:	8f 5f       	subi	r24, 0xFF	; 255
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
     f32:	84 31       	cpi	r24, 0x14	; 20
     f34:	08 f0       	brcs	.+2      	; 0xf38 <menu_update+0x14c>
     f36:	59 c0       	rjmp	.+178    	; 0xfea <menu_update+0x1fe>
            menu_draw();
            return;
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
     f38:	80 93 bf 05 	sts	0x05BF, r24	; 0x8005bf <adjust_blink_timer>
     f3c:	ba cf       	rjmp	.-140    	; 0xeb2 <menu_update+0xc6>

    // 3. STATE_ADJUST_CLOCK: Dedicated Clock Adjust Mode
    if (current_state == STATE_ADJUST_CLOCK) {
        // --- Navigation: LEFT / RIGHT selects digit 0 to 5 ---
        if (btns & BTN_BIT_LEFT) {
            adjust_pos = (adjust_pos == 0) ? 5 : adjust_pos - 1;
     f3e:	85 e0       	ldi	r24, 0x05	; 5
     f40:	ea cf       	rjmp	.-44     	; 0xf16 <menu_update+0x12a>
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_RIGHT) {
     f42:	81 ff       	sbrs	r24, 1
     f44:	08 c0       	rjmp	.+16     	; 0xf56 <menu_update+0x16a>
            adjust_pos = (adjust_pos == 5) ? 0 : adjust_pos + 1;
     f46:	80 91 c0 05 	lds	r24, 0x05C0	; 0x8005c0 <adjust_pos>
     f4a:	85 30       	cpi	r24, 0x05	; 5
     f4c:	11 f0       	breq	.+4      	; 0xf52 <menu_update+0x166>
     f4e:	8f 5f       	subi	r24, 0xFF	; 255
     f50:	e2 cf       	rjmp	.-60     	; 0xf16 <menu_update+0x12a>
     f52:	80 e0       	ldi	r24, 0x00	; 0
     f54:	e0 cf       	rjmp	.-64     	; 0xf16 <menu_update+0x12a>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Adjust Value: UP / DOWN changes number 0 to 9 ---
        else if (btns & BTN_BIT_UP) {
     f56:	82 ff       	sbrs	r24, 2
     f58:	0e c0       	rjmp	.+28     	; 0xf76 <menu_update+0x18a>
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] + 1) % 10;
     f5a:	e0 91 c0 05 	lds	r30, 0x05C0	; 0x8005c0 <adjust_pos>
     f5e:	f0 e0       	ldi	r31, 0x00	; 0
     f60:	e5 5f       	subi	r30, 0xF5	; 245
     f62:	fe 4f       	sbci	r31, 0xFE	; 254
     f64:	80 81       	ld	r24, Z
     f66:	90 e0       	ldi	r25, 0x00	; 0
     f68:	01 96       	adiw	r24, 0x01	; 1
     f6a:	6a e0       	ldi	r22, 0x0A	; 10
     f6c:	70 e0       	ldi	r23, 0x00	; 0
     f6e:	0e 94 d7 08 	call	0x11ae	; 0x11ae <__divmodhi4>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
     f72:	80 83       	st	Z, r24
     f74:	d2 cf       	rjmp	.-92     	; 0xf1a <menu_update+0x12e>
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
     f76:	83 ff       	sbrs	r24, 3
     f78:	0c c0       	rjmp	.+24     	; 0xf92 <menu_update+0x1a6>
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
     f7a:	e0 91 c0 05 	lds	r30, 0x05C0	; 0x8005c0 <adjust_pos>
     f7e:	f0 e0       	ldi	r31, 0x00	; 0
     f80:	e5 5f       	subi	r30, 0xF5	; 245
     f82:	fe 4f       	sbci	r31, 0xFE	; 254
     f84:	80 81       	ld	r24, Z
     f86:	88 23       	and	r24, r24
     f88:	11 f0       	breq	.+4      	; 0xf8e <menu_update+0x1a2>
     f8a:	81 50       	subi	r24, 0x01	; 1
     f8c:	f2 cf       	rjmp	.-28     	; 0xf72 <menu_update+0x186>
     f8e:	89 e0       	ldi	r24, 0x09	; 9
     f90:	f0 cf       	rjmp	.-32     	; 0xf72 <menu_update+0x186>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Confirm: GO saves time and returns to menu ---
        else if (btns & BTN_BIT_GO) {
     f92:	84 ff       	sbrs	r24, 4
     f94:	cb cf       	rjmp	.-106    	; 0xf2c <menu_update+0x140>
            uint8_t h = adjust_digits[0] * 10 + adjust_digits[1];
     f96:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <adjust_digits>
     f9a:	9a e0       	ldi	r25, 0x0A	; 10
     f9c:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <adjust_digits+0x1>
     fa0:	29 9f       	mul	r18, r25
     fa2:	80 0d       	add	r24, r0
     fa4:	11 24       	eor	r1, r1
            uint8_t m = adjust_digits[2] * 10 + adjust_digits[3];
     fa6:	20 91 0d 01 	lds	r18, 0x010D	; 0x80010d <adjust_digits+0x2>
     faa:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <adjust_digits+0x3>
     fae:	29 9f       	mul	r18, r25
     fb0:	60 0d       	add	r22, r0
     fb2:	11 24       	eor	r1, r1
            uint8_t s = adjust_digits[4] * 10 + adjust_digits[5];
     fb4:	20 91 0f 01 	lds	r18, 0x010F	; 0x80010f <adjust_digits+0x4>
     fb8:	40 91 10 01 	lds	r20, 0x0110	; 0x800110 <adjust_digits+0x5>
     fbc:	29 9f       	mul	r18, r25
     fbe:	40 0d       	add	r20, r0
     fc0:	11 24       	eor	r1, r1
            if (h > 23) h = 23;
            if (m > 59) m = 59;
            if (s > 59) s = 59;
            clock_set_time(h, m, s);
     fc2:	4c 33       	cpi	r20, 0x3C	; 60
     fc4:	08 f0       	brcs	.+2      	; 0xfc8 <menu_update+0x1dc>
     fc6:	4b e3       	ldi	r20, 0x3B	; 59
     fc8:	6c 33       	cpi	r22, 0x3C	; 60
     fca:	08 f0       	brcs	.+2      	; 0xfce <menu_update+0x1e2>
     fcc:	6b e3       	ldi	r22, 0x3B	; 59
     fce:	88 31       	cpi	r24, 0x18	; 24
     fd0:	08 f0       	brcs	.+2      	; 0xfd4 <menu_update+0x1e8>
     fd2:	87 e1       	ldi	r24, 0x17	; 23
     fd4:	0e 94 bd 02 	call	0x57a	; 0x57a <clock_set_time>
            clock_start();
     fd8:	0e 94 36 02 	call	0x46c	; 0x46c <clock_start>

            current_state = STATE_MENU;
     fdc:	81 e0       	ldi	r24, 0x01	; 1
     fde:	90 e0       	ldi	r25, 0x00	; 0
     fe0:	90 93 d0 05 	sts	0x05D0, r25	; 0x8005d0 <current_state+0x1>
     fe4:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_state>
     fe8:	58 cf       	rjmp	.-336    	; 0xe9a <menu_update+0xae>
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
            adjust_blink_timer = 0;
     fea:	10 92 bf 05 	sts	0x05BF, r1	; 0x8005bf <adjust_blink_timer>
            adjust_blink_phase = !adjust_blink_phase;
     fee:	81 e0       	ldi	r24, 0x01	; 1
     ff0:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <adjust_blink_phase>
     ff4:	91 11       	cpse	r25, r1
     ff6:	80 e0       	ldi	r24, 0x00	; 0
     ff8:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     ffc:	cf 91       	pop	r28
        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
            adjust_blink_timer = 0;
            adjust_blink_phase = !adjust_blink_phase;
            adjust_update_7seg();
     ffe:	0c 94 e8 03 	jmp	0x7d0	; 0x7d0 <adjust_update_7seg>
        }
        return;
    }

    // 4. STATE_RUNNING: Inside an active action
    if (current_state == STATE_RUNNING) {
    1002:	22 30       	cpi	r18, 0x02	; 2
    1004:	31 05       	cpc	r19, r1
    1006:	01 f5       	brne	.+64     	; 0x1048 <__DATA_REGION_LENGTH__+0x48>
        if (btns & BTN_BIT_LEFT) {
    1008:	80 ff       	sbrs	r24, 0
    100a:	0b c0       	rjmp	.+22     	; 0x1022 <__DATA_REGION_LENGTH__+0x22>
            // LEFT exits the action and returns to the menu!
            current_state = STATE_MENU;
    100c:	81 e0       	ldi	r24, 0x01	; 1
    100e:	90 e0       	ldi	r25, 0x00	; 0
    1010:	90 93 d0 05 	sts	0x05D0, r25	; 0x8005d0 <current_state+0x1>
    1014:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_state>
            active_action_func = NULL;
    1018:	10 92 c8 05 	sts	0x05C8, r1	; 0x8005c8 <active_action_func+0x1>
    101c:	10 92 c7 05 	sts	0x05C7, r1	; 0x8005c7 <active_action_func>
    1020:	3c cf       	rjmp	.-392    	; 0xe9a <menu_update+0xae>
            menu_draw();
            return;
        }

        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
    1022:	e0 91 c7 05 	lds	r30, 0x05C7	; 0x8005c7 <active_action_func>
    1026:	f0 91 c8 05 	lds	r31, 0x05C8	; 0x8005c8 <active_action_func+0x1>
    102a:	30 97       	sbiw	r30, 0x00	; 0
    102c:	09 f4       	brne	.+2      	; 0x1030 <__DATA_REGION_LENGTH__+0x30>
    102e:	41 cf       	rjmp	.-382    	; 0xeb2 <menu_update+0xc6>
            action_tick++;
    1030:	80 91 c5 05 	lds	r24, 0x05C5	; 0x8005c5 <action_tick>
    1034:	8f 5f       	subi	r24, 0xFF	; 255
            if (action_tick >= 10) {
    1036:	8a 30       	cpi	r24, 0x0A	; 10
    1038:	18 f4       	brcc	.+6      	; 0x1040 <__DATA_REGION_LENGTH__+0x40>
            return;
        }

        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
            action_tick++;
    103a:	80 93 c5 05 	sts	0x05C5, r24	; 0x8005c5 <action_tick>
    103e:	39 cf       	rjmp	.-398    	; 0xeb2 <menu_update+0xc6>
            if (action_tick >= 10) {
                action_tick = 0;
    1040:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <action_tick>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
    1044:	cf 91       	pop	r28
        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
            action_tick++;
            if (action_tick >= 10) {
                action_tick = 0;
                active_action_func();
    1046:	09 94       	ijmp
        }
        return;
    }

    // 5. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
    1048:	21 30       	cpi	r18, 0x01	; 1
    104a:	31 05       	cpc	r19, r1
    104c:	09 f0       	breq	.+2      	; 0x1050 <__DATA_REGION_LENGTH__+0x50>
    104e:	31 cf       	rjmp	.-414    	; 0xeb2 <menu_update+0xc6>
        if (btns & BTN_BIT_DOWN) {
    1050:	83 ff       	sbrs	r24, 3
    1052:	12 c0       	rjmp	.+36     	; 0x1078 <__DATA_REGION_LENGTH__+0x78>
            menu_down();
    1054:	0e 94 50 06 	call	0xca0	; 0xca0 <menu_down>
        else if (btns & BTN_BIT_LEFT) {
            menu_back();
        }

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
    1058:	80 91 cd 05 	lds	r24, 0x05CD	; 0x8005cd <current_menu>
    105c:	90 91 ce 05 	lds	r25, 0x05CE	; 0x8005ce <current_menu+0x1>
    1060:	87 5c       	subi	r24, 0xC7	; 199
    1062:	92 40       	sbci	r25, 0x02	; 2
    1064:	09 f0       	breq	.+2      	; 0x1068 <__DATA_REGION_LENGTH__+0x68>
    1066:	25 cf       	rjmp	.-438    	; 0xeb2 <menu_update+0xc6>
            blink_counter++;
    1068:	80 91 c6 05 	lds	r24, 0x05C6	; 0x8005c6 <blink_counter>
    106c:	8f 5f       	subi	r24, 0xFF	; 255
            if (blink_counter >= 30) { // 30 * 10ms = 300ms
    106e:	8e 31       	cpi	r24, 0x1E	; 30
    1070:	98 f4       	brcc	.+38     	; 0x1098 <__DATA_REGION_LENGTH__+0x98>
            menu_back();
        }

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
            blink_counter++;
    1072:	80 93 c6 05 	sts	0x05C6, r24	; 0x8005c6 <blink_counter>
    1076:	1d cf       	rjmp	.-454    	; 0xeb2 <menu_update+0xc6>
    // 5. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
        if (btns & BTN_BIT_DOWN) {
            menu_down();
        }
        else if (btns & BTN_BIT_UP) {
    1078:	82 ff       	sbrs	r24, 2
    107a:	03 c0       	rjmp	.+6      	; 0x1082 <__DATA_REGION_LENGTH__+0x82>
            menu_up();
    107c:	0e 94 73 06 	call	0xce6	; 0xce6 <menu_up>
    1080:	eb cf       	rjmp	.-42     	; 0x1058 <__DATA_REGION_LENGTH__+0x58>
        }
        else if ((btns & BTN_BIT_GO) || (btns & BTN_BIT_RIGHT)) {
    1082:	98 2f       	mov	r25, r24
    1084:	92 71       	andi	r25, 0x12	; 18
    1086:	19 f0       	breq	.+6      	; 0x108e <__DATA_REGION_LENGTH__+0x8e>
            menu_enter();
    1088:	0e 94 96 06 	call	0xd2c	; 0xd2c <menu_enter>
    108c:	e5 cf       	rjmp	.-54     	; 0x1058 <__DATA_REGION_LENGTH__+0x58>
        }
        else if (btns & BTN_BIT_LEFT) {
    108e:	80 ff       	sbrs	r24, 0
    1090:	e3 cf       	rjmp	.-58     	; 0x1058 <__DATA_REGION_LENGTH__+0x58>
            menu_back();
    1092:	0e 94 ce 06 	call	0xd9c	; 0xd9c <menu_back>
    1096:	e0 cf       	rjmp	.-64     	; 0x1058 <__DATA_REGION_LENGTH__+0x58>

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
            blink_counter++;
            if (blink_counter >= 30) { // 30 * 10ms = 300ms
                blink_counter = 0;
    1098:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <blink_counter>
                blink_on = !blink_on;
    109c:	81 e0       	ldi	r24, 0x01	; 1
    109e:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <blink_on>
    10a2:	91 11       	cpse	r25, r1
    10a4:	80 e0       	ldi	r24, 0x00	; 0
    10a6:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
                lcd_set_cursor(0, 0);
    10aa:	60 e0       	ldi	r22, 0x00	; 0
    10ac:	80 e0       	ldi	r24, 0x00	; 0
    10ae:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
                if (!blink_on) {
    10b2:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
    10b6:	81 11       	cpse	r24, r1
    10b8:	05 c0       	rjmp	.+10     	; 0x10c4 <__DATA_REGION_LENGTH__+0xc4>
                    lcd_send_string("                    ");
    10ba:	83 e8       	ldi	r24, 0x83	; 131
    10bc:	95 e0       	ldi	r25, 0x05	; 5
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
    10be:	cf 91       	pop	r28
                blink_on = !blink_on;
                lcd_set_cursor(0, 0);
                if (!blink_on) {
                    lcd_send_string("                    ");
                } else {
                    lcd_send_string(current_menu->title);
    10c0:	0c 94 0e 01 	jmp	0x21c	; 0x21c <lcd_send_string>
    10c4:	80 91 cd 05 	lds	r24, 0x05CD	; 0x8005cd <current_menu>
    10c8:	90 91 ce 05 	lds	r25, 0x05CE	; 0x8005ce <current_menu+0x1>
    10cc:	f8 cf       	rjmp	.-16     	; 0x10be <__DATA_REGION_LENGTH__+0xbe>

000010ce <relay_set_raw>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    10ce:	8f 70       	andi	r24, 0x0F	; 15
    10d0:	80 93 d1 05 	sts	0x05D1, r24	; 0x8005d1 <current_relay_state>
    RELAYS = current_relay_state;
    10d4:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb32>
}
    10d8:	08 95       	ret

000010da <relay_get_state>:

uint8_t relay_get_state(void) {
    return current_relay_state;
}
    10da:	80 91 d1 05 	lds	r24, 0x05D1	; 0x8005d1 <current_relay_state>
    10de:	08 95       	ret

000010e0 <relay_on>:

void relay_on(uint8_t relay_num) {
    if (relay_num < 4) {
    10e0:	84 30       	cpi	r24, 0x04	; 4
    10e2:	70 f4       	brcc	.+28     	; 0x1100 <__stack+0x1>
        relay_set_raw(current_relay_state | (1 << relay_num));
    10e4:	21 e0       	ldi	r18, 0x01	; 1
    10e6:	30 e0       	ldi	r19, 0x00	; 0
    10e8:	a9 01       	movw	r20, r18
    10ea:	02 c0       	rjmp	.+4      	; 0x10f0 <relay_on+0x10>
    10ec:	44 0f       	add	r20, r20
    10ee:	55 1f       	adc	r21, r21
    10f0:	8a 95       	dec	r24
    10f2:	e2 f7       	brpl	.-8      	; 0x10ec <relay_on+0xc>
    10f4:	ca 01       	movw	r24, r20
    10f6:	90 91 d1 05 	lds	r25, 0x05D1	; 0x8005d1 <current_relay_state>
    10fa:	89 2b       	or	r24, r25
    10fc:	0c 94 67 08 	jmp	0x10ce	; 0x10ce <relay_set_raw>
    }
}
    1100:	08 95       	ret

00001102 <relay_off>:

void relay_off(uint8_t relay_num) {
    if (relay_num < 4) {
    1102:	84 30       	cpi	r24, 0x04	; 4
    1104:	78 f4       	brcc	.+30     	; 0x1124 <relay_off+0x22>
        relay_set_raw(current_relay_state & ~(1 << relay_num));
    1106:	21 e0       	ldi	r18, 0x01	; 1
    1108:	30 e0       	ldi	r19, 0x00	; 0
    110a:	a9 01       	movw	r20, r18
    110c:	02 c0       	rjmp	.+4      	; 0x1112 <relay_off+0x10>
    110e:	44 0f       	add	r20, r20
    1110:	55 1f       	adc	r21, r21
    1112:	8a 95       	dec	r24
    1114:	e2 f7       	brpl	.-8      	; 0x110e <relay_off+0xc>
    1116:	ca 01       	movw	r24, r20
    1118:	80 95       	com	r24
    111a:	90 91 d1 05 	lds	r25, 0x05D1	; 0x8005d1 <current_relay_state>
    111e:	89 23       	and	r24, r25
    1120:	0c 94 67 08 	jmp	0x10ce	; 0x10ce <relay_set_raw>
    }
}
    1124:	08 95       	ret

00001126 <relay_toggle>:

void relay_toggle(uint8_t relay_num) {
    if (relay_num < 4) {
    1126:	84 30       	cpi	r24, 0x04	; 4
    1128:	70 f4       	brcc	.+28     	; 0x1146 <relay_toggle+0x20>
        relay_set_raw(current_relay_state ^ (1 << relay_num));
    112a:	21 e0       	ldi	r18, 0x01	; 1
    112c:	30 e0       	ldi	r19, 0x00	; 0
    112e:	a9 01       	movw	r20, r18
    1130:	02 c0       	rjmp	.+4      	; 0x1136 <relay_toggle+0x10>
    1132:	44 0f       	add	r20, r20
    1134:	55 1f       	adc	r21, r21
    1136:	8a 95       	dec	r24
    1138:	e2 f7       	brpl	.-8      	; 0x1132 <relay_toggle+0xc>
    113a:	ca 01       	movw	r24, r20
    113c:	90 91 d1 05 	lds	r25, 0x05D1	; 0x8005d1 <current_relay_state>
    1140:	89 27       	eor	r24, r25
    1142:	0c 94 67 08 	jmp	0x10ce	; 0x10ce <relay_set_raw>
    }
}
    1146:	08 95       	ret

00001148 <relay_mode_0_2>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    1148:	85 e0       	ldi	r24, 0x05	; 5
    114a:	80 93 d1 05 	sts	0x05D1, r24	; 0x8005d1 <current_relay_state>
    RELAYS = current_relay_state;
    114e:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb32>
}

void relay_mode_0_2(void) {
    // Turn ON Relay 0 & Relay 2, Turn OFF Relay 1 & Relay 3
    relay_set_raw(RELAY_0_BIT | RELAY_2_BIT);
}
    1152:	08 95       	ret

00001154 <relay_mode_1_3>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    1154:	8a e0       	ldi	r24, 0x0A	; 10
    1156:	80 93 d1 05 	sts	0x05D1, r24	; 0x8005d1 <current_relay_state>
    RELAYS = current_relay_state;
    115a:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb32>
}

void relay_mode_1_3(void) {
    // Turn ON Relay 1 & Relay 3, Turn OFF Relay 0 & Relay 2
    relay_set_raw(RELAY_1_BIT | RELAY_3_BIT);
}
    115e:	08 95       	ret

00001160 <relay_all_on>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    1160:	8f e0       	ldi	r24, 0x0F	; 15
    1162:	80 93 d1 05 	sts	0x05D1, r24	; 0x8005d1 <current_relay_state>
    RELAYS = current_relay_state;
    1166:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb32>
    relay_set_raw(RELAY_1_BIT | RELAY_3_BIT);
}

void relay_all_on(void) {
    relay_set_raw(0x0F);
}
    116a:	08 95       	ret

0000116c <relay_all_off>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    116c:	10 92 d1 05 	sts	0x05D1, r1	; 0x8005d1 <current_relay_state>
    RELAYS = current_relay_state;
    1170:	10 92 05 11 	sts	0x1105, r1	; 0x801105 <__bss_end+0xb32>
    relay_set_raw(0x0F);
}

void relay_all_off(void) {
    relay_set_raw(0x00);
}
    1174:	08 95       	ret

00001176 <relay_init>:
    1176:	0c 94 b6 08 	jmp	0x116c	; 0x116c <relay_all_off>

0000117a <main>:
#include "lcd.h"
#include <avr/io.h> 
#include <util/delay.h>

void main(void) {
  MCUCR |= (1 << SRE);
    117a:	85 b7       	in	r24, 0x35	; 53
    117c:	80 68       	ori	r24, 0x80	; 128
    117e:	85 bf       	out	0x35, r24	; 53

  lcd_init();
    1180:	0e 94 9f 00 	call	0x13e	; 0x13e <lcd_init>
  lcd_set_cursor(0, 0);
    1184:	60 e0       	ldi	r22, 0x00	; 0
    1186:	80 e0       	ldi	r24, 0x00	; 0
    1188:	0e 94 e7 00 	call	0x1ce	; 0x1ce <lcd_set_cursor>
  lcd_send_string("hello world");
    118c:	89 ef       	ldi	r24, 0xF9	; 249
    118e:	92 e0       	ldi	r25, 0x02	; 2
    1190:	0e 94 0e 01 	call	0x21c	; 0x21c <lcd_send_string>
    1194:	ff cf       	rjmp	.-2      	; 0x1194 <main+0x1a>

00001196 <__udivmodqi4>:
    1196:	99 1b       	sub	r25, r25
    1198:	79 e0       	ldi	r23, 0x09	; 9
    119a:	04 c0       	rjmp	.+8      	; 0x11a4 <__udivmodqi4_ep>

0000119c <__udivmodqi4_loop>:
    119c:	99 1f       	adc	r25, r25
    119e:	96 17       	cp	r25, r22
    11a0:	08 f0       	brcs	.+2      	; 0x11a4 <__udivmodqi4_ep>
    11a2:	96 1b       	sub	r25, r22

000011a4 <__udivmodqi4_ep>:
    11a4:	88 1f       	adc	r24, r24
    11a6:	7a 95       	dec	r23
    11a8:	c9 f7       	brne	.-14     	; 0x119c <__udivmodqi4_loop>
    11aa:	80 95       	com	r24
    11ac:	08 95       	ret

000011ae <__divmodhi4>:
    11ae:	97 fb       	bst	r25, 7
    11b0:	07 2e       	mov	r0, r23
    11b2:	16 f4       	brtc	.+4      	; 0x11b8 <__divmodhi4+0xa>
    11b4:	00 94       	com	r0
    11b6:	07 d0       	rcall	.+14     	; 0x11c6 <__divmodhi4_neg1>
    11b8:	77 fd       	sbrc	r23, 7
    11ba:	09 d0       	rcall	.+18     	; 0x11ce <__divmodhi4_neg2>
    11bc:	0e 94 0d 09 	call	0x121a	; 0x121a <__udivmodhi4>
    11c0:	07 fc       	sbrc	r0, 7
    11c2:	05 d0       	rcall	.+10     	; 0x11ce <__divmodhi4_neg2>
    11c4:	3e f4       	brtc	.+14     	; 0x11d4 <__divmodhi4_exit>

000011c6 <__divmodhi4_neg1>:
    11c6:	90 95       	com	r25
    11c8:	81 95       	neg	r24
    11ca:	9f 4f       	sbci	r25, 0xFF	; 255
    11cc:	08 95       	ret

000011ce <__divmodhi4_neg2>:
    11ce:	70 95       	com	r23
    11d0:	61 95       	neg	r22
    11d2:	7f 4f       	sbci	r23, 0xFF	; 255

000011d4 <__divmodhi4_exit>:
    11d4:	08 95       	ret

000011d6 <__udivmodsi4>:
    11d6:	a1 e2       	ldi	r26, 0x21	; 33
    11d8:	1a 2e       	mov	r1, r26
    11da:	aa 1b       	sub	r26, r26
    11dc:	bb 1b       	sub	r27, r27
    11de:	fd 01       	movw	r30, r26
    11e0:	0d c0       	rjmp	.+26     	; 0x11fc <__udivmodsi4_ep>

000011e2 <__udivmodsi4_loop>:
    11e2:	aa 1f       	adc	r26, r26
    11e4:	bb 1f       	adc	r27, r27
    11e6:	ee 1f       	adc	r30, r30
    11e8:	ff 1f       	adc	r31, r31
    11ea:	a2 17       	cp	r26, r18
    11ec:	b3 07       	cpc	r27, r19
    11ee:	e4 07       	cpc	r30, r20
    11f0:	f5 07       	cpc	r31, r21
    11f2:	20 f0       	brcs	.+8      	; 0x11fc <__udivmodsi4_ep>
    11f4:	a2 1b       	sub	r26, r18
    11f6:	b3 0b       	sbc	r27, r19
    11f8:	e4 0b       	sbc	r30, r20
    11fa:	f5 0b       	sbc	r31, r21

000011fc <__udivmodsi4_ep>:
    11fc:	66 1f       	adc	r22, r22
    11fe:	77 1f       	adc	r23, r23
    1200:	88 1f       	adc	r24, r24
    1202:	99 1f       	adc	r25, r25
    1204:	1a 94       	dec	r1
    1206:	69 f7       	brne	.-38     	; 0x11e2 <__udivmodsi4_loop>
    1208:	60 95       	com	r22
    120a:	70 95       	com	r23
    120c:	80 95       	com	r24
    120e:	90 95       	com	r25
    1210:	9b 01       	movw	r18, r22
    1212:	ac 01       	movw	r20, r24
    1214:	bd 01       	movw	r22, r26
    1216:	cf 01       	movw	r24, r30
    1218:	08 95       	ret

0000121a <__udivmodhi4>:
    121a:	aa 1b       	sub	r26, r26
    121c:	bb 1b       	sub	r27, r27
    121e:	51 e1       	ldi	r21, 0x11	; 17
    1220:	07 c0       	rjmp	.+14     	; 0x1230 <__udivmodhi4_ep>

00001222 <__udivmodhi4_loop>:
    1222:	aa 1f       	adc	r26, r26
    1224:	bb 1f       	adc	r27, r27
    1226:	a6 17       	cp	r26, r22
    1228:	b7 07       	cpc	r27, r23
    122a:	10 f0       	brcs	.+4      	; 0x1230 <__udivmodhi4_ep>
    122c:	a6 1b       	sub	r26, r22
    122e:	b7 0b       	sbc	r27, r23

00001230 <__udivmodhi4_ep>:
    1230:	88 1f       	adc	r24, r24
    1232:	99 1f       	adc	r25, r25
    1234:	5a 95       	dec	r21
    1236:	a9 f7       	brne	.-22     	; 0x1222 <__udivmodhi4_loop>
    1238:	80 95       	com	r24
    123a:	90 95       	com	r25
    123c:	bc 01       	movw	r22, r24
    123e:	cd 01       	movw	r24, r26
    1240:	08 95       	ret

00001242 <_exit>:
    1242:	f8 94       	cli

00001244 <__stop_program>:
    1244:	ff cf       	rjmp	.-2      	; 0x1244 <__stop_program>
