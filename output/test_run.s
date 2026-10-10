
build//test_run.elf:     file format elf32-avr


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
  9e:	e0 ef       	ldi	r30, 0xF0	; 240
  a0:	f1 e0       	ldi	r31, 0x01	; 1
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	a2 31       	cpi	r26, 0x12	; 18
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>
  b2:	0e 94 e8 00 	call	0x1d0	; 0x1d0 <main>
  b6:	0c 94 f6 00 	jmp	0x1ec	; 0x1ec <_exit>

000000ba <__bad_interrupt>:
  ba:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000be <lcd_send_cmd>:
#define PORTG_REG (*(volatile uint8_t *)0x65)
#define DDRG_REG (*(volatile uint8_t *)0x64)
#define PG3 3 

void lcd_send_cmd(uint8_t cmd) {
  LCD_CMD_REG = cmd;
  be:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <_end+0xff0>
  PORTG_REG |= (1 << PG3);
  c2:	e5 e6       	ldi	r30, 0x65	; 101
  c4:	f0 e0       	ldi	r31, 0x00	; 0
  c6:	80 81       	ld	r24, Z
  c8:	88 60       	ori	r24, 0x08	; 8
  ca:	80 83       	st	Z, r24
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
  cc:	85 e0       	ldi	r24, 0x05	; 5
  ce:	8a 95       	dec	r24
  d0:	f1 f7       	brne	.-4      	; 0xce <lcd_send_cmd+0x10>
  _delay_us(1);
  PORTG_REG &= ~(1 << PG3);
  d2:	80 81       	ld	r24, Z
  d4:	87 7f       	andi	r24, 0xF7	; 247
  d6:	80 83       	st	Z, r24
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
  d8:	80 e4       	ldi	r24, 0x40	; 64
  da:	9f e1       	ldi	r25, 0x1F	; 31
  dc:	01 97       	sbiw	r24, 0x01	; 1
  de:	f1 f7       	brne	.-4      	; 0xdc <lcd_send_cmd+0x1e>
  _delay_ms(2);
}
  e0:	08 95       	ret

000000e2 <lcd_send_data>:

void lcd_send_data(uint8_t data) {
  LCD_DATA_REG = data;
  e2:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <_end+0xfef>
  PORTG_REG |= (1 << PG3);
  e6:	e5 e6       	ldi	r30, 0x65	; 101
  e8:	f0 e0       	ldi	r31, 0x00	; 0
  ea:	80 81       	ld	r24, Z
  ec:	88 60       	ori	r24, 0x08	; 8
  ee:	80 83       	st	Z, r24
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
  f0:	85 e0       	ldi	r24, 0x05	; 5
  f2:	8a 95       	dec	r24
  f4:	f1 f7       	brne	.-4      	; 0xf2 <lcd_send_data+0x10>
  _delay_us(1);
  PORTG_REG &= ~(1 << PG3);
  f6:	80 81       	ld	r24, Z
  f8:	87 7f       	andi	r24, 0xF7	; 247
  fa:	80 83       	st	Z, r24
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
  fc:	88 ec       	ldi	r24, 0xC8	; 200
  fe:	90 e0       	ldi	r25, 0x00	; 0
 100:	01 97       	sbiw	r24, 0x01	; 1
 102:	f1 f7       	brne	.-4      	; 0x100 <lcd_send_data+0x1e>
  _delay_us(50);
}
 104:	08 95       	ret

00000106 <lcd_clear>:
  lcd_send_cmd(0x06);
  lcd_clear();
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
 106:	81 e0       	ldi	r24, 0x01	; 1
 108:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 10c:	80 e4       	ldi	r24, 0x40	; 64
 10e:	9f e1       	ldi	r25, 0x1F	; 31
 110:	01 97       	sbiw	r24, 0x01	; 1
 112:	f1 f7       	brne	.-4      	; 0x110 <lcd_clear+0xa>
  _delay_ms(2);
}
 114:	08 95       	ret

00000116 <lcd_init>:
  PORTG_REG &= ~(1 << PG3);
  _delay_us(50);
}

void lcd_init(void){
  DDRG_REG |= (1 << PG3);
 116:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 11a:	88 60       	ori	r24, 0x08	; 8
 11c:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
 120:	84 ef       	ldi	r24, 0xF4	; 244
 122:	91 e0       	ldi	r25, 0x01	; 1
 124:	20 e9       	ldi	r18, 0x90	; 144
 126:	31 e0       	ldi	r19, 0x01	; 1
 128:	f9 01       	movw	r30, r18
 12a:	31 97       	sbiw	r30, 0x01	; 1
 12c:	f1 f7       	brne	.-4      	; 0x12a <lcd_init+0x14>
 12e:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
 130:	d9 f7       	brne	.-10     	; 0x128 <lcd_init+0x12>

  _delay_ms(50);
  lcd_send_cmd(0x38);
 132:	88 e3       	ldi	r24, 0x38	; 56
 134:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 138:	80 e2       	ldi	r24, 0x20	; 32
 13a:	9e e4       	ldi	r25, 0x4E	; 78
 13c:	01 97       	sbiw	r24, 0x01	; 1
 13e:	f1 f7       	brne	.-4      	; 0x13c <lcd_init+0x26>
  _delay_ms(5);
  lcd_send_cmd(0x38);
 140:	88 e3       	ldi	r24, 0x38	; 56
 142:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
 146:	88 e5       	ldi	r24, 0x58	; 88
 148:	92 e0       	ldi	r25, 0x02	; 2
 14a:	01 97       	sbiw	r24, 0x01	; 1
 14c:	f1 f7       	brne	.-4      	; 0x14a <lcd_init+0x34>
  _delay_us(150);
  lcd_send_cmd(0x38);
 14e:	88 e3       	ldi	r24, 0x38	; 56
 150:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>

  lcd_send_cmd(0x0C);
 154:	8c e0       	ldi	r24, 0x0C	; 12
 156:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
  lcd_send_cmd(0x06);
 15a:	86 e0       	ldi	r24, 0x06	; 6
 15c:	0e 94 5f 00 	call	0xbe	; 0xbe <lcd_send_cmd>
  lcd_clear();
 160:	0c 94 83 00 	jmp	0x106	; 0x106 <lcd_clear>

00000164 <lcd_set_cursor>:
void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(2);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
 164:	0f 93       	push	r16
 166:	1f 93       	push	r17
 168:	cf 93       	push	r28
 16a:	df 93       	push	r29
 16c:	00 d0       	rcall	.+0      	; 0x16e <lcd_set_cursor+0xa>
 16e:	00 d0       	rcall	.+0      	; 0x170 <lcd_set_cursor+0xc>
 170:	cd b7       	in	r28, 0x3d	; 61
 172:	de b7       	in	r29, 0x3e	; 62
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
 174:	00 91 00 01 	lds	r16, 0x0100	; 0x800100 <__DATA_REGION_ORIGIN__>
 178:	10 91 01 01 	lds	r17, 0x0101	; 0x800101 <__DATA_REGION_ORIGIN__+0x1>
 17c:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__DATA_REGION_ORIGIN__+0x2>
 180:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__DATA_REGION_ORIGIN__+0x3>
 184:	09 83       	std	Y+1, r16	; 0x01
 186:	1a 83       	std	Y+2, r17	; 0x02
 188:	2b 83       	std	Y+3, r18	; 0x03
 18a:	3c 83       	std	Y+4, r19	; 0x04
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 18c:	84 30       	cpi	r24, 0x04	; 4
 18e:	08 f0       	brcs	.+2      	; 0x192 <lcd_set_cursor+0x2e>
 190:	83 e0       	ldi	r24, 0x03	; 3
 192:	fe 01       	movw	r30, r28
 194:	e8 0f       	add	r30, r24
 196:	f1 1d       	adc	r31, r1
 198:	81 81       	ldd	r24, Z+1	; 0x01
 19a:	86 0f       	add	r24, r22
 19c:	80 68       	ori	r24, 0x80	; 128
}
 19e:	0f 90       	pop	r0
 1a0:	0f 90       	pop	r0
 1a2:	0f 90       	pop	r0
 1a4:	0f 90       	pop	r0
 1a6:	df 91       	pop	r29
 1a8:	cf 91       	pop	r28
 1aa:	1f 91       	pop	r17
 1ac:	0f 91       	pop	r16
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
 1ae:	0c 94 5f 00 	jmp	0xbe	; 0xbe <lcd_send_cmd>

000001b2 <lcd_send_string>:
}

void lcd_send_string(const char* str){
 1b2:	cf 93       	push	r28
 1b4:	df 93       	push	r29
 1b6:	ec 01       	movw	r28, r24
  while(*str){
 1b8:	89 91       	ld	r24, Y+
 1ba:	81 11       	cpse	r24, r1
 1bc:	03 c0       	rjmp	.+6      	; 0x1c4 <lcd_send_string+0x12>
    lcd_send_data(*str++);
  }
}
 1be:	df 91       	pop	r29
 1c0:	cf 91       	pop	r28
 1c2:	08 95       	ret
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
 1c4:	0e 94 71 00 	call	0xe2	; 0xe2 <lcd_send_data>
 1c8:	f7 cf       	rjmp	.-18     	; 0x1b8 <lcd_send_string+0x6>

000001ca <lcd_display>:
 1ca:	8c e0       	ldi	r24, 0x0C	; 12
 1cc:	0c 94 5f 00 	jmp	0xbe	; 0xbe <lcd_send_cmd>

000001d0 <main>:
#include "lcd.h"
#include <avr/io.h> 
#include <util/delay.h>

int main(void) {
  MCUCR |= (1 << SRE);
 1d0:	85 b7       	in	r24, 0x35	; 53
 1d2:	80 68       	ori	r24, 0x80	; 128
 1d4:	85 bf       	out	0x35, r24	; 53

  lcd_init();
 1d6:	0e 94 8b 00 	call	0x116	; 0x116 <lcd_init>
  lcd_set_cursor(0, 0); 
 1da:	60 e0       	ldi	r22, 0x00	; 0
 1dc:	80 e0       	ldi	r24, 0x00	; 0
 1de:	0e 94 b2 00 	call	0x164	; 0x164 <lcd_set_cursor>
  lcd_send_string("Hello Norman");
 1e2:	84 e0       	ldi	r24, 0x04	; 4
 1e4:	91 e0       	ldi	r25, 0x01	; 1
 1e6:	0e 94 d9 00 	call	0x1b2	; 0x1b2 <lcd_send_string>
 1ea:	ff cf       	rjmp	.-2      	; 0x1ea <main+0x1a>

000001ec <_exit>:
 1ec:	f8 94       	cli

000001ee <__stop_program>:
 1ee:	ff cf       	rjmp	.-2      	; 0x1ee <__stop_program>
