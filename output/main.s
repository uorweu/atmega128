
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
      3c:	0c 94 f9 01 	jmp	0x3f2	; 0x3f2 <__vector_15>
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
      9e:	e0 ef       	ldi	r30, 0xF0	; 240
      a0:	f2 e1       	ldi	r31, 0x12	; 18
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
      bc:	a1 3d       	cpi	r26, 0xD1	; 209
      be:	b2 07       	cpc	r27, r18
      c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
      c2:	0e 94 06 09 	call	0x120c	; 0x120c <main>
      c6:	0c 94 76 09 	jmp	0x12ec	; 0x12ec <_exit>

000000ca <__bad_interrupt>:
      ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <lcd_send_cmd>:
#define PG4 4

#include <avr/interrupt.h>

void lcd_send_cmd(uint8_t cmd) {
  uint8_t sreg = SREG;
      ce:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
      d0:	f8 94       	cli
  PORTG_REG &= ~(1 << PG4);   // Dedicated LCD RS LOW: command
      d2:	e5 e6       	ldi	r30, 0x65	; 101
      d4:	f0 e0       	ldi	r31, 0x00	; 0
      d6:	90 81       	ld	r25, Z
      d8:	9f 7e       	andi	r25, 0xEF	; 239
      da:	90 83       	st	Z, r25
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
      dc:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xb31>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
      e0:	85 e0       	ldi	r24, 0x05	; 5
      e2:	98 2f       	mov	r25, r24
      e4:	9a 95       	dec	r25
      e6:	f1 f7       	brne	.-4      	; 0xe4 <lcd_send_cmd+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL2, cmd);          // CSEL2 loads the LCD data latch
  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
      e8:	90 81       	ld	r25, Z
      ea:	98 60       	ori	r25, 0x08	; 8
      ec:	90 83       	st	Z, r25
      ee:	9a e0       	ldi	r25, 0x0A	; 10
      f0:	9a 95       	dec	r25
      f2:	f1 f7       	brne	.-4      	; 0xf0 <lcd_send_cmd+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches command)
      f4:	90 81       	ld	r25, Z
      f6:	97 7f       	andi	r25, 0xF7	; 247
      f8:	90 83       	st	Z, r25
      fa:	8a 95       	dec	r24
      fc:	f1 f7       	brne	.-4      	; 0xfa <lcd_send_cmd+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
      fe:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
     100:	80 e9       	ldi	r24, 0x90	; 144
     102:	91 e0       	ldi	r25, 0x01	; 1
     104:	01 97       	sbiw	r24, 0x01	; 1
     106:	f1 f7       	brne	.-4      	; 0x104 <lcd_send_cmd+0x36>
  _delay_us(100);             // Standard command execution time (> 37 us)
}
     108:	08 95       	ret

0000010a <lcd_send_data>:


void lcd_send_data(uint8_t data) {
  uint8_t sreg = SREG;
     10a:	2f b7       	in	r18, 0x3f	; 63
  cli();                      // Protect RS, latched data, and the E pulse
     10c:	f8 94       	cli
  PORTG_REG |= (1 << PG4);    // Dedicated LCD RS HIGH: character data
     10e:	e5 e6       	ldi	r30, 0x65	; 101
     110:	f0 e0       	ldi	r31, 0x00	; 0
     112:	90 81       	ld	r25, Z
     114:	90 61       	ori	r25, 0x10	; 16
     116:	90 83       	st	Z, r25
     118:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xb30>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
     11c:	85 e0       	ldi	r24, 0x05	; 5
     11e:	98 2f       	mov	r25, r24
     120:	9a 95       	dec	r25
     122:	f1 f7       	brne	.-4      	; 0x120 <lcd_send_data+0x16>
  io_bus_write(EXTERNAL_MEM + CSEL1, data);        // CSEL1 loads the LCD data latch

  _delay_us(1);
  PORTG_REG |= (1 << PG3);    // LCD_E HIGH
     124:	90 81       	ld	r25, Z
     126:	98 60       	ori	r25, 0x08	; 8
     128:	90 83       	st	Z, r25
     12a:	9a e0       	ldi	r25, 0x0A	; 10
     12c:	9a 95       	dec	r25
     12e:	f1 f7       	brne	.-4      	; 0x12c <lcd_send_data+0x22>
  _delay_us(2);               // HD44780 requires > 450 ns
  PORTG_REG &= ~(1 << PG3);   // LCD_E LOW (falling edge latches data)
     130:	90 81       	ld	r25, Z
     132:	97 7f       	andi	r25, 0xF7	; 247
     134:	90 83       	st	Z, r25
     136:	8a 95       	dec	r24
     138:	f1 f7       	brne	.-4      	; 0x136 <lcd_send_data+0x2c>
  _delay_us(1);               // Hold RS and data after E falls
  SREG = sreg;                // Restore interrupts
     13a:	2f bf       	out	0x3f, r18	; 63
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
     13c:	88 ec       	ldi	r24, 0xC8	; 200
     13e:	90 e0       	ldi	r25, 0x00	; 0
     140:	01 97       	sbiw	r24, 0x01	; 1
     142:	f1 f7       	brne	.-4      	; 0x140 <lcd_send_data+0x36>

  _delay_us(50);              // Standard data execution time (> 43 us)
}
     144:	08 95       	ret

00000146 <lcd_clear>:
  lcd_send_cmd(0x06);
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
     146:	81 e0       	ldi	r24, 0x01	; 1
     148:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     14c:	80 e4       	ldi	r24, 0x40	; 64
     14e:	9c e9       	ldi	r25, 0x9C	; 156
     150:	01 97       	sbiw	r24, 0x01	; 1
     152:	f1 f7       	brne	.-4      	; 0x150 <lcd_clear+0xa>
  _delay_ms(10);
}
     154:	08 95       	ret

00000156 <lcd_init>:
  SREG = sreg;                // Restore interrupts

  _delay_us(50);              // Standard data execution time (> 43 us)
}

void lcd_init(void){
     156:	0f 93       	push	r16
     158:	1f 93       	push	r17
     15a:	cf 93       	push	r28
     15c:	df 93       	push	r29
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
     15e:	80 b7       	in	r24, 0x30	; 48
     160:	87 7f       	andi	r24, 0xF7	; 247
     162:	80 bf       	out	0x30, r24	; 48
  PORTG_REG &= ~((1 << PG3) | (1 << PG4));
     164:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     168:	87 7e       	andi	r24, 0xE7	; 231
     16a:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  DDRG_REG |= (1 << PG3) | (1 << PG4);
     16e:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     172:	88 61       	ori	r24, 0x18	; 24
     174:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     178:	88 ee       	ldi	r24, 0xE8	; 232
     17a:	93 e0       	ldi	r25, 0x03	; 3
     17c:	20 e9       	ldi	r18, 0x90	; 144
     17e:	31 e0       	ldi	r19, 0x01	; 1
     180:	f9 01       	movw	r30, r18
     182:	31 97       	sbiw	r30, 0x01	; 1
     184:	f1 f7       	brne	.-4      	; 0x182 <lcd_init+0x2c>
     186:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
     188:	d9 f7       	brne	.-10     	; 0x180 <lcd_init+0x2a>

  // Power-on delay for HD44780
  _delay_ms(100);

  // Standard HD44780 8-bit initialization sequence
  lcd_send_cmd(0x38);
     18a:	88 e3       	ldi	r24, 0x38	; 56
     18c:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     190:	00 e4       	ldi	r16, 0x40	; 64
     192:	1c e9       	ldi	r17, 0x9C	; 156
     194:	c8 01       	movw	r24, r16
     196:	01 97       	sbiw	r24, 0x01	; 1
     198:	f1 f7       	brne	.-4      	; 0x196 <lcd_init+0x40>
  _delay_ms(10);
  lcd_send_cmd(0x38);
     19a:	88 e3       	ldi	r24, 0x38	; 56
     19c:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     1a0:	c0 e2       	ldi	r28, 0x20	; 32
     1a2:	de e4       	ldi	r29, 0x4E	; 78
     1a4:	ce 01       	movw	r24, r28
     1a6:	01 97       	sbiw	r24, 0x01	; 1
     1a8:	f1 f7       	brne	.-4      	; 0x1a6 <lcd_init+0x50>
  _delay_ms(5);
  lcd_send_cmd(0x38);
     1aa:	88 e3       	ldi	r24, 0x38	; 56
     1ac:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     1b0:	ce 01       	movw	r24, r28
     1b2:	01 97       	sbiw	r24, 0x01	; 1
     1b4:	f1 f7       	brne	.-4      	; 0x1b2 <lcd_init+0x5c>
  _delay_ms(5);

  // Function set: 8-bit, 2 lines, 5x8 font
  lcd_send_cmd(0x38);
     1b6:	88 e3       	ldi	r24, 0x38	; 56
     1b8:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     1bc:	ce 01       	movw	r24, r28
     1be:	01 97       	sbiw	r24, 0x01	; 1
     1c0:	f1 f7       	brne	.-4      	; 0x1be <lcd_init+0x68>
  _delay_ms(5);

  // Display ON, Cursor OFF, Blink OFF (0x0C) for clean look
  lcd_send_cmd(0x0C);
     1c2:	8c e0       	ldi	r24, 0x0C	; 12
     1c4:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     1c8:	ce 01       	movw	r24, r28
     1ca:	01 97       	sbiw	r24, 0x01	; 1
     1cc:	f1 f7       	brne	.-4      	; 0x1ca <lcd_init+0x74>
  _delay_ms(5);

  // Clear display (clears the 2 solid black rows)
  lcd_clear();
     1ce:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
     1d2:	c8 01       	movw	r24, r16
     1d4:	01 97       	sbiw	r24, 0x01	; 1
     1d6:	f1 f7       	brne	.-4      	; 0x1d4 <lcd_init+0x7e>
  _delay_ms(10);

  // Entry mode set: increment cursor, no display shift
  lcd_send_cmd(0x06);
     1d8:	86 e0       	ldi	r24, 0x06	; 6
     1da:	0e 94 67 00 	call	0xce	; 0xce <lcd_send_cmd>
     1de:	21 97       	sbiw	r28, 0x01	; 1
     1e0:	f1 f7       	brne	.-4      	; 0x1de <lcd_init+0x88>
  _delay_ms(5);
}
     1e2:	df 91       	pop	r29
     1e4:	cf 91       	pop	r28
     1e6:	1f 91       	pop	r17
     1e8:	0f 91       	pop	r16
     1ea:	08 95       	ret

000001ec <lcd_set_cursor>:
void lcd_clear(void) {
  lcd_send_cmd(0x01);
  _delay_ms(10);
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
     1ec:	0f 93       	push	r16
     1ee:	1f 93       	push	r17
     1f0:	cf 93       	push	r28
     1f2:	df 93       	push	r29
     1f4:	00 d0       	rcall	.+0      	; 0x1f6 <lcd_set_cursor+0xa>
     1f6:	00 d0       	rcall	.+0      	; 0x1f8 <lcd_set_cursor+0xc>
     1f8:	cd b7       	in	r28, 0x3d	; 61
     1fa:	de b7       	in	r29, 0x3e	; 62
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
     1fc:	00 91 f0 02 	lds	r16, 0x02F0	; 0x8002f0 <MainMenu+0x19>
     200:	10 91 f1 02 	lds	r17, 0x02F1	; 0x8002f1 <MainMenu+0x1a>
     204:	20 91 f2 02 	lds	r18, 0x02F2	; 0x8002f2 <MainMenu+0x1b>
     208:	30 91 f3 02 	lds	r19, 0x02F3	; 0x8002f3 <MainMenu+0x1c>
     20c:	09 83       	std	Y+1, r16	; 0x01
     20e:	1a 83       	std	Y+2, r17	; 0x02
     210:	2b 83       	std	Y+3, r18	; 0x03
     212:	3c 83       	std	Y+4, r19	; 0x04
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
     214:	84 30       	cpi	r24, 0x04	; 4
     216:	08 f0       	brcs	.+2      	; 0x21a <lcd_set_cursor+0x2e>
     218:	83 e0       	ldi	r24, 0x03	; 3
     21a:	fe 01       	movw	r30, r28
     21c:	e8 0f       	add	r30, r24
     21e:	f1 1d       	adc	r31, r1
     220:	81 81       	ldd	r24, Z+1	; 0x01
     222:	86 0f       	add	r24, r22
     224:	80 68       	ori	r24, 0x80	; 128
}
     226:	0f 90       	pop	r0
     228:	0f 90       	pop	r0
     22a:	0f 90       	pop	r0
     22c:	0f 90       	pop	r0
     22e:	df 91       	pop	r29
     230:	cf 91       	pop	r28
     232:	1f 91       	pop	r17
     234:	0f 91       	pop	r16
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  if (row > 3) row = 3;
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
     236:	0c 94 67 00 	jmp	0xce	; 0xce <lcd_send_cmd>

0000023a <lcd_send_string>:
}

void lcd_send_string(const char* str){
     23a:	cf 93       	push	r28
     23c:	df 93       	push	r29
     23e:	ec 01       	movw	r28, r24
  while(*str){
     240:	89 91       	ld	r24, Y+
     242:	81 11       	cpse	r24, r1
     244:	03 c0       	rjmp	.+6      	; 0x24c <lcd_send_string+0x12>
    lcd_send_data(*str++);
  }
}
     246:	df 91       	pop	r29
     248:	cf 91       	pop	r28
     24a:	08 95       	ret
  lcd_send_cmd(0x80 | (col + row_offsets[row]));
}

void lcd_send_string(const char* str){
  while(*str){
    lcd_send_data(*str++);
     24c:	0e 94 85 00 	call	0x10a	; 0x10a <lcd_send_data>
     250:	f7 cf       	rjmp	.-18     	; 0x240 <lcd_send_string+0x6>

00000252 <lcd_send_string_animated>:
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
     252:	ef 92       	push	r14
     254:	ff 92       	push	r15
     256:	0f 93       	push	r16
     258:	1f 93       	push	r17
     25a:	cf 93       	push	r28
     25c:	df 93       	push	r29
     25e:	8b 01       	movw	r16, r22
     260:	ec 01       	movw	r28, r24
     262:	80 ea       	ldi	r24, 0xA0	; 160
     264:	e8 2e       	mov	r14, r24
     266:	8f e0       	ldi	r24, 0x0F	; 15
     268:	f8 2e       	mov	r15, r24
  while (*str) {
     26a:	89 91       	ld	r24, Y+
     26c:	81 11       	cpse	r24, r1
     26e:	07 c0       	rjmp	.+14     	; 0x27e <lcd_send_string_animated+0x2c>
    lcd_send_data(*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
      _delay_ms(1);
    }
  }
}
     270:	df 91       	pop	r29
     272:	cf 91       	pop	r28
     274:	1f 91       	pop	r17
     276:	0f 91       	pop	r16
     278:	ff 90       	pop	r15
     27a:	ef 90       	pop	r14
     27c:	08 95       	ret
  }
}

void lcd_send_string_animated(const char* str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data(*str++);
     27e:	0e 94 85 00 	call	0x10a	; 0x10a <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) {
     282:	90 e0       	ldi	r25, 0x00	; 0
     284:	80 e0       	ldi	r24, 0x00	; 0
     286:	80 17       	cp	r24, r16
     288:	91 07       	cpc	r25, r17
     28a:	79 f3       	breq	.-34     	; 0x26a <lcd_send_string_animated+0x18>
     28c:	f7 01       	movw	r30, r14
     28e:	31 97       	sbiw	r30, 0x01	; 1
     290:	f1 f7       	brne	.-4      	; 0x28e <lcd_send_string_animated+0x3c>
     292:	01 96       	adiw	r24, 0x01	; 1
     294:	f8 cf       	rjmp	.-16     	; 0x286 <lcd_send_string_animated+0x34>

00000296 <lcd_display>:
    }
  }
}

void lcd_display(void){
  lcd_send_cmd(0x0C);
     296:	8c e0       	ldi	r24, 0x0C	; 12
     298:	0c 94 67 00 	jmp	0xce	; 0xce <lcd_send_cmd>

0000029c <seg7_init>:

static uint16_t timer0_tick_count = 0;

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
     29c:	80 b7       	in	r24, 0x30	; 48
     29e:	87 7f       	andi	r24, 0xF7	; 247
     2a0:	80 bf       	out	0x30, r24	; 48
    current_digit = 0;
     2a2:	10 92 b1 05 	sts	0x05B1, r1	; 0x8005b1 <current_digit>
    timer0_tick_count = 0;
     2a6:	10 92 af 05 	sts	0x05AF, r1	; 0x8005af <__data_end+0x1>
     2aa:	10 92 ae 05 	sts	0x05AE, r1	; 0x8005ae <__data_end>
    dp_mask = 0;
     2ae:	10 92 b0 05 	sts	0x05B0, r1	; 0x8005b0 <dp_mask>
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
     2b2:	e0 e0       	ldi	r30, 0x00	; 0
     2b4:	f1 e0       	ldi	r31, 0x01	; 1
     2b6:	8f ef       	ldi	r24, 0xFF	; 255
     2b8:	80 83       	st	Z, r24
     2ba:	81 83       	std	Z+1, r24	; 0x01
     2bc:	82 83       	std	Z+2, r24	; 0x02
     2be:	83 83       	std	Z+3, r24	; 0x03
     2c0:	84 83       	std	Z+4, r24	; 0x04
     2c2:	85 83       	std	Z+5, r24	; 0x05
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
     2c4:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xb33>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
     2c8:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xb32>

    // Configure Timer0 for 2.0 ms CTC interrupt (500 Hz):
    // Prescaler 256 (16MHz / 256 = 62.5 kHz) -> 125 counts (OCR0 = 124) = 2.0 ms
    // Refresh rate for 6 digits = 500 Hz / 6 = 83.3 Hz (clean, zero flicker)
    TCCR0 = (1 << WGM01) | (1 << CS02) | (1 << CS01);
     2cc:	8e e0       	ldi	r24, 0x0E	; 14
     2ce:	83 bf       	out	0x33, r24	; 51
    TCNT0 = 0;
     2d0:	12 be       	out	0x32, r1	; 50
    OCR0  = (F_CPU / 256UL / 500UL) - 1;
     2d2:	8c e7       	ldi	r24, 0x7C	; 124
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
        clock_tick_1s();
    }
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
     2e4:	86 30       	cpi	r24, 0x06	; 6
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
     30a:	86 30       	cpi	r24, 0x06	; 6
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

00000314 <seg7_set_number>:

void seg7_set_number(uint32_t num) {
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
     328:	00 d0       	rcall	.+0      	; 0x32a <seg7_set_number+0x16>
     32a:	00 d0       	rcall	.+0      	; 0x32c <seg7_set_number+0x18>
     32c:	00 d0       	rcall	.+0      	; 0x32e <seg7_set_number+0x1a>
     32e:	cd b7       	in	r28, 0x3d	; 61
     330:	de b7       	in	r29, 0x3e	; 62
     332:	8e 01       	movw	r16, r28
     334:	09 5f       	subi	r16, 0xF9	; 249
     336:	1f 4f       	sbci	r17, 0xFF	; 255
     338:	9e 01       	movw	r18, r28
     33a:	2f 5f       	subi	r18, 0xFF	; 255
     33c:	3f 4f       	sbci	r19, 0xFF	; 255
     33e:	79 01       	movw	r14, r18
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        digits[i] = num % 10;
     340:	2a e0       	ldi	r18, 0x0A	; 10
     342:	82 2e       	mov	r8, r18
     344:	91 2c       	mov	r9, r1
     346:	a1 2c       	mov	r10, r1
     348:	b1 2c       	mov	r11, r1
     34a:	a5 01       	movw	r20, r10
     34c:	94 01       	movw	r18, r8
     34e:	0e 94 40 09 	call	0x1280	; 0x1280 <__udivmodsi4>
     352:	f8 01       	movw	r30, r16
     354:	62 93       	st	-Z, r22
     356:	8f 01       	movw	r16, r30
        num /= 10;
     358:	b9 01       	movw	r22, r18
     35a:	ca 01       	movw	r24, r20
    }
}

void seg7_set_number(uint32_t num) {
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
     35c:	ee 15       	cp	r30, r14
     35e:	ff 05       	cpc	r31, r15
     360:	a1 f7       	brne	.-24     	; 0x34a <seg7_set_number+0x36>
        digits[i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
     362:	cf 01       	movw	r24, r30
     364:	0e 94 7a 01 	call	0x2f4	; 0x2f4 <seg7_set_array>
}
     368:	26 96       	adiw	r28, 0x06	; 6
     36a:	0f b6       	in	r0, 0x3f	; 63
     36c:	f8 94       	cli
     36e:	de bf       	out	0x3e, r29	; 62
     370:	0f be       	out	0x3f, r0	; 63
     372:	cd bf       	out	0x3d, r28	; 61
     374:	df 91       	pop	r29
     376:	cf 91       	pop	r28
     378:	1f 91       	pop	r17
     37a:	0f 91       	pop	r16
     37c:	ff 90       	pop	r15
     37e:	ef 90       	pop	r14
     380:	bf 90       	pop	r11
     382:	af 90       	pop	r10
     384:	9f 90       	pop	r9
     386:	8f 90       	pop	r8
     388:	08 95       	ret

0000038a <seg7_set_dp_mask>:

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
     38a:	80 93 b0 05 	sts	0x05B0, r24	; 0x8005b0 <dp_mask>
}
     38e:	08 95       	ret

00000390 <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL4) to prevent ghosting
    LED_7CONTROL = 0x00;
     390:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xb33>

    // 2. Load the segment pattern for the active digit (via CSEL3)
    uint8_t val = display_buffer[current_digit];
     394:	30 91 b1 05 	lds	r19, 0x05B1	; 0x8005b1 <current_digit>
     398:	e3 2f       	mov	r30, r19
     39a:	f0 e0       	ldi	r31, 0x00	; 0
     39c:	e0 50       	subi	r30, 0x00	; 0
     39e:	ff 4f       	sbci	r31, 0xFF	; 255
     3a0:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEGMENT_MAP[val] : SEG_BLANK;
     3a2:	20 e0       	ldi	r18, 0x00	; 0
     3a4:	e0 31       	cpi	r30, 0x10	; 16
     3a6:	70 f4       	brcc	.+28     	; 0x3c4 <seg7_update+0x34>
     3a8:	f0 e0       	ldi	r31, 0x00	; 0
     3aa:	ec 50       	subi	r30, 0x0C	; 12
     3ac:	fd 4f       	sbci	r31, 0xFD	; 253
     3ae:	20 81       	ld	r18, Z

    // 2b. Turn on Decimal Point if enabled for this digit
    if (val < 16 && (dp_mask & (1 << current_digit))) {
     3b0:	80 91 b0 05 	lds	r24, 0x05B0	; 0x8005b0 <dp_mask>
     3b4:	90 e0       	ldi	r25, 0x00	; 0
     3b6:	02 c0       	rjmp	.+4      	; 0x3bc <seg7_update+0x2c>
     3b8:	95 95       	asr	r25
     3ba:	87 95       	ror	r24
     3bc:	3a 95       	dec	r19
     3be:	e2 f7       	brpl	.-8      	; 0x3b8 <seg7_update+0x28>
     3c0:	80 fd       	sbrc	r24, 0
        seg_pattern |= SEG7_DP_MASK; // Decimal point is segment-data bit 0.
     3c2:	21 60       	ori	r18, 0x01	; 1
    }

    LED_7DATA = seg_pattern;
     3c4:	20 93 03 11 	sts	0x1103, r18	; 0x801103 <__bss_end+0xb32>
    //    current_digit 1 (LED 2)            -> Q1 (pin 18) -> bit 1 (1 << 1) = 0x02
    //    current_digit 2 (LED 3)            -> Q2 (pin 17) -> bit 2 (1 << 2) = 0x04
    //    current_digit 3 (LED 4)            -> Q3 (pin 16) -> bit 3 (1 << 3) = 0x08
    //    current_digit 4 (LED 5)            -> Q4 (pin 15) -> bit 4 (1 << 4) = 0x10
    //    current_digit 5 (LED 6, rightmost) -> Q5 (pin 14) -> bit 5 (1 << 5) = 0x20
    LED_7CONTROL = (1 << current_digit);
     3c8:	20 91 b1 05 	lds	r18, 0x05B1	; 0x8005b1 <current_digit>
     3cc:	81 e0       	ldi	r24, 0x01	; 1
     3ce:	90 e0       	ldi	r25, 0x00	; 0
     3d0:	01 c0       	rjmp	.+2      	; 0x3d4 <seg7_update+0x44>
     3d2:	88 0f       	add	r24, r24
     3d4:	2a 95       	dec	r18
     3d6:	ea f7       	brpl	.-6      	; 0x3d2 <seg7_update+0x42>
     3d8:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xb33>

    // 4. Advance to next digit position (0 to 5)
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
     3dc:	80 91 b1 05 	lds	r24, 0x05B1	; 0x8005b1 <current_digit>
     3e0:	90 e0       	ldi	r25, 0x00	; 0
     3e2:	01 96       	adiw	r24, 0x01	; 1
     3e4:	66 e0       	ldi	r22, 0x06	; 6
     3e6:	70 e0       	ldi	r23, 0x00	; 0
     3e8:	0e 94 2c 09 	call	0x1258	; 0x1258 <__divmodhi4>
     3ec:	80 93 b1 05 	sts	0x05B1, r24	; 0x8005b1 <current_digit>
}
     3f0:	08 95       	ret

000003f2 <__vector_15>:
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
     3f2:	1f 92       	push	r1
     3f4:	0f 92       	push	r0
     3f6:	0f b6       	in	r0, 0x3f	; 63
     3f8:	0f 92       	push	r0
     3fa:	11 24       	eor	r1, r1
     3fc:	0b b6       	in	r0, 0x3b	; 59
     3fe:	0f 92       	push	r0
     400:	2f 93       	push	r18
     402:	3f 93       	push	r19
     404:	4f 93       	push	r20
     406:	5f 93       	push	r21
     408:	6f 93       	push	r22
     40a:	7f 93       	push	r23
     40c:	8f 93       	push	r24
     40e:	9f 93       	push	r25
     410:	af 93       	push	r26
     412:	bf 93       	push	r27
     414:	ef 93       	push	r30
     416:	ff 93       	push	r31
    seg7_update();
     418:	0e 94 c8 01 	call	0x390	; 0x390 <seg7_update>

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     41c:	80 91 ae 05 	lds	r24, 0x05AE	; 0x8005ae <__data_end>
     420:	90 91 af 05 	lds	r25, 0x05AF	; 0x8005af <__data_end+0x1>
     424:	01 96       	adiw	r24, 0x01	; 1
    if (timer0_tick_count >= 500) {
     426:	84 3f       	cpi	r24, 0xF4	; 244
     428:	21 e0       	ldi	r18, 0x01	; 1
     42a:	92 07       	cpc	r25, r18
     42c:	b8 f4       	brcc	.+46     	; 0x45c <__LOCK_REGION_LENGTH__+0x5c>

ISR(TIMER0_COMP_vect) {
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
     42e:	90 93 af 05 	sts	0x05AF, r25	; 0x8005af <__data_end+0x1>
     432:	80 93 ae 05 	sts	0x05AE, r24	; 0x8005ae <__data_end>
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
}
     436:	ff 91       	pop	r31
     438:	ef 91       	pop	r30
     43a:	bf 91       	pop	r27
     43c:	af 91       	pop	r26
     43e:	9f 91       	pop	r25
     440:	8f 91       	pop	r24
     442:	7f 91       	pop	r23
     444:	6f 91       	pop	r22
     446:	5f 91       	pop	r21
     448:	4f 91       	pop	r20
     44a:	3f 91       	pop	r19
     44c:	2f 91       	pop	r18
     44e:	0f 90       	pop	r0
     450:	0b be       	out	0x3b, r0	; 59
     452:	0f 90       	pop	r0
     454:	0f be       	out	0x3f, r0	; 63
     456:	0f 90       	pop	r0
     458:	1f 90       	pop	r1
     45a:	18 95       	reti
    seg7_update();

    // 500 interrupts @ 2.0 ms = 1000 ms (exact 1 second tick for clock)
    timer0_tick_count++;
    if (timer0_tick_count >= 500) {
        timer0_tick_count = 0;
     45c:	10 92 af 05 	sts	0x05AF, r1	; 0x8005af <__data_end+0x1>
     460:	10 92 ae 05 	sts	0x05AE, r1	; 0x8005ae <__data_end>
        clock_tick_1s();
     464:	0e 94 95 02 	call	0x52a	; 0x52a <clock_tick_1s>
    }
}
     468:	e6 cf       	rjmp	.-52     	; 0x436 <__LOCK_REGION_LENGTH__+0x36>

0000046a <button_update>:
static uint8_t last_raw    = 0x00;
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
     46a:	cf 93       	push	r28
}
static inline uint8_t io_bus_read(uint16_t address) {
    return *(volatile uint8_t *)(uintptr_t)address;
     46c:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xb2f>
  READ_BUTTONS;
     470:	20 93 d0 05 	sts	0x05D0, r18	; 0x8005d0 <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
     474:	80 91 bc 05 	lds	r24, 0x05BC	; 0x8005bc <last_raw>
     478:	80 95       	com	r24
     47a:	82 23       	and	r24, r18
     47c:	80 93 bb 05 	sts	0x05BB, r24	; 0x8005bb <press_event>
     480:	e2 eb       	ldi	r30, 0xB2	; 178
     482:	f5 e0       	ldi	r31, 0x05	; 5
  held_event  = 0x00;
     484:	50 e0       	ldi	r21, 0x00	; 0
     486:	40 e0       	ldi	r20, 0x00	; 0
     488:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     48a:	a1 e0       	ldi	r26, 0x01	; 1
     48c:	b0 e0       	ldi	r27, 0x00	; 0
      hold_cnt[i]++;
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     48e:	cb e1       	ldi	r28, 0x1B	; 27
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     490:	bd 01       	movw	r22, r26
     492:	04 2e       	mov	r0, r20
     494:	01 c0       	rjmp	.+2      	; 0x498 <button_update+0x2e>
     496:	66 0f       	add	r22, r22
     498:	0a 94       	dec	r0
     49a:	ea f7       	brpl	.-6      	; 0x496 <button_update+0x2c>
    if (raw & bit) {
     49c:	82 2f       	mov	r24, r18
     49e:	86 23       	and	r24, r22
     4a0:	c9 f0       	breq	.+50     	; 0x4d4 <button_update+0x6a>
      hold_cnt[i]++;
     4a2:	80 81       	ld	r24, Z
     4a4:	8f 5f       	subi	r24, 0xFF	; 255
     4a6:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
     4a8:	83 32       	cpi	r24, 0x23	; 35
     4aa:	40 f0       	brcs	.+16     	; 0x4bc <button_update+0x52>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
     4ac:	83 52       	subi	r24, 0x23	; 35
     4ae:	99 0b       	sbc	r25, r25
     4b0:	87 70       	andi	r24, 0x07	; 7
     4b2:	99 27       	eor	r25, r25
     4b4:	89 2b       	or	r24, r25
     4b6:	11 f4       	brne	.+4      	; 0x4bc <button_update+0x52>
          held_event |= bit;
     4b8:	36 2b       	or	r19, r22
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     4ba:	c0 83       	st	Z, r28
     4bc:	4f 5f       	subi	r20, 0xFF	; 255
     4be:	5f 4f       	sbci	r21, 0xFF	; 255
     4c0:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
     4c2:	48 30       	cpi	r20, 0x08	; 8
     4c4:	51 05       	cpc	r21, r1
     4c6:	21 f7       	brne	.-56     	; 0x490 <button_update+0x26>
     4c8:	30 93 ba 05 	sts	0x05BA, r19	; 0x8005ba <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
     4cc:	20 93 bc 05 	sts	0x05BC, r18	; 0x8005bc <last_raw>
}
     4d0:	cf 91       	pop	r28
     4d2:	08 95       	ret
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
        }
      }
    } else {
      hold_cnt[i] = 0;
     4d4:	10 82       	st	Z, r1
     4d6:	f2 cf       	rjmp	.-28     	; 0x4bc <button_update+0x52>

000004d8 <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
     4d8:	80 91 bb 05 	lds	r24, 0x05BB	; 0x8005bb <press_event>
     4dc:	08 95       	ret

000004de <button_held>:
uint8_t button_held(void)      { return held_event;  }
     4de:	80 91 ba 05 	lds	r24, 0x05BA	; 0x8005ba <held_event>
     4e2:	08 95       	ret

000004e4 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
     4e4:	80 91 bc 05 	lds	r24, 0x05BC	; 0x8005bc <last_raw>
     4e8:	08 95       	ret

000004ea <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
     4ea:	90 91 bb 05 	lds	r25, 0x05BB	; 0x8005bb <press_event>
     4ee:	80 91 ba 05 	lds	r24, 0x05BA	; 0x8005ba <held_event>
     4f2:	89 2b       	or	r24, r25
     4f4:	08 95       	ret

000004f6 <clock_start>:
    clock_set_time(12, 0, 0);
    is_running = 1;
}

void clock_start(void) {
    is_running = 1;
     4f6:	81 e0       	ldi	r24, 0x01	; 1
     4f8:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
}
     4fc:	08 95       	ret

000004fe <clock_pause>:

void clock_pause(void) {
    is_running = 0;
     4fe:	10 92 06 01 	sts	0x0106, r1	; 0x800106 <is_running>
}
     502:	08 95       	ret

00000504 <clock_is_running>:

uint8_t clock_is_running(void) {
    return is_running;
     504:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
}
     508:	08 95       	ret

0000050a <clock_get_time>:
        sys_time.seconds = (s < 60) ? s : 0;
    }
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
     50a:	fc 01       	movw	r30, r24
    if (t) {
     50c:	89 2b       	or	r24, r25
     50e:	61 f0       	breq	.+24     	; 0x528 <clock_get_time+0x1e>
        ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     510:	8f b7       	in	r24, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     512:	f8 94       	cli
            t->hours = sys_time.hours;
     514:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <sys_time>
     518:	90 83       	st	Z, r25
            t->minutes = sys_time.minutes;
     51a:	90 91 08 01 	lds	r25, 0x0108	; 0x800108 <sys_time+0x1>
     51e:	91 83       	std	Z+1, r25	; 0x01
            t->seconds = sys_time.seconds;
     520:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <sys_time+0x2>
     524:	92 83       	std	Z+2, r25	; 0x02
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     526:	8f bf       	out	0x3f, r24	; 63
        }
    }
}
     528:	08 95       	ret

0000052a <clock_tick_1s>:

void clock_tick_1s(void) {
    if (!is_running) return;
     52a:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <is_running>
     52e:	88 23       	and	r24, r24
     530:	09 f1       	breq	.+66     	; 0x574 <clock_tick_1s+0x4a>

    sys_time.seconds++;
     532:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time+0x2>
     536:	8f 5f       	subi	r24, 0xFF	; 255
     538:	80 93 09 01 	sts	0x0109, r24	; 0x800109 <sys_time+0x2>
    if (sys_time.seconds >= 60) {
     53c:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time+0x2>
     540:	8c 33       	cpi	r24, 0x3C	; 60
     542:	c0 f0       	brcs	.+48     	; 0x574 <clock_tick_1s+0x4a>
        sys_time.seconds = 0;
     544:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <sys_time+0x2>
        sys_time.minutes++;
     548:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sys_time+0x1>
     54c:	8f 5f       	subi	r24, 0xFF	; 255
     54e:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <sys_time+0x1>
        if (sys_time.minutes >= 60) {
     552:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <sys_time+0x1>
     556:	8c 33       	cpi	r24, 0x3C	; 60
     558:	68 f0       	brcs	.+26     	; 0x574 <clock_tick_1s+0x4a>
            sys_time.minutes = 0;
     55a:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <sys_time+0x1>
            sys_time.hours++;
     55e:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <sys_time>
     562:	8f 5f       	subi	r24, 0xFF	; 255
     564:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
            if (sys_time.hours >= 24) {
     568:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <sys_time>
     56c:	88 31       	cpi	r24, 0x18	; 24
     56e:	10 f0       	brcs	.+4      	; 0x574 <clock_tick_1s+0x4a>
                sys_time.hours = 0;
     570:	10 92 07 01 	sts	0x0107, r1	; 0x800107 <sys_time>
            }
        }
    }
}
     574:	08 95       	ret

00000576 <clock_update_display>:

void clock_update_display(void) {
     576:	cf 93       	push	r28
     578:	df 93       	push	r29
     57a:	cd b7       	in	r28, 0x3d	; 61
     57c:	de b7       	in	r29, 0x3e	; 62
     57e:	29 97       	sbiw	r28, 0x09	; 9
     580:	0f b6       	in	r0, 0x3f	; 63
     582:	f8 94       	cli
     584:	de bf       	out	0x3e, r29	; 62
     586:	0f be       	out	0x3f, r0	; 63
     588:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t snapshot;
    clock_get_time(&snapshot);
     58a:	ce 01       	movw	r24, r28
     58c:	07 96       	adiw	r24, 0x07	; 7
     58e:	0e 94 85 02 	call	0x50a	; 0x50a <clock_get_time>
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     592:	8a e0       	ldi	r24, 0x0A	; 10
     594:	0e 94 c5 01 	call	0x38a	; 0x38a <seg7_set_dp_mask>

    const uint8_t digits[SEG7_NUM_DIGITS] = {
        snapshot.hours / 10, snapshot.hours % 10,
     598:	8f 81       	ldd	r24, Y+7	; 0x07
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     59a:	2a e0       	ldi	r18, 0x0A	; 10
     59c:	62 2f       	mov	r22, r18
     59e:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     5a2:	89 83       	std	Y+1, r24	; 0x01
     5a4:	9a 83       	std	Y+2, r25	; 0x02
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
     5a6:	88 85       	ldd	r24, Y+8	; 0x08
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     5a8:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     5ac:	8b 83       	std	Y+3, r24	; 0x03
     5ae:	9c 83       	std	Y+4, r25	; 0x04
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
        snapshot.seconds / 10, snapshot.seconds % 10
     5b0:	89 85       	ldd	r24, Y+9	; 0x09
    clock_get_time(&snapshot);
    // Decimal points on Digit 1 (Hours ones) and Digit 3 (Minutes ones):
    // (1 << 1) | (1 << 3) = 0b00001010
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    const uint8_t digits[SEG7_NUM_DIGITS] = {
     5b2:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     5b6:	8d 83       	std	Y+5, r24	; 0x05
     5b8:	9e 83       	std	Y+6, r25	; 0x06
        snapshot.hours / 10, snapshot.hours % 10,
        snapshot.minutes / 10, snapshot.minutes % 10,
        snapshot.seconds / 10, snapshot.seconds % 10
    };
    seg7_set_array(digits);
     5ba:	ce 01       	movw	r24, r28
     5bc:	01 96       	adiw	r24, 0x01	; 1
     5be:	0e 94 7a 01 	call	0x2f4	; 0x2f4 <seg7_set_array>
}
     5c2:	29 96       	adiw	r28, 0x09	; 9
     5c4:	0f b6       	in	r0, 0x3f	; 63
     5c6:	f8 94       	cli
     5c8:	de bf       	out	0x3e, r29	; 62
     5ca:	0f be       	out	0x3f, r0	; 63
     5cc:	cd bf       	out	0x3d, r28	; 61
     5ce:	df 91       	pop	r29
     5d0:	cf 91       	pop	r28
     5d2:	08 95       	ret

000005d4 <clock_set_time>:
uint8_t clock_is_running(void) {
    return is_running;
}

void clock_set_time(uint8_t h, uint8_t m, uint8_t s) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     5d4:	9f b7       	in	r25, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     5d6:	f8 94       	cli
        sys_time.hours = (h < 24) ? h : 0;
     5d8:	88 31       	cpi	r24, 0x18	; 24
     5da:	08 f0       	brcs	.+2      	; 0x5de <clock_set_time+0xa>
     5dc:	80 e0       	ldi	r24, 0x00	; 0
     5de:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <sys_time>
        sys_time.minutes = (m < 60) ? m : 0;
     5e2:	6c 33       	cpi	r22, 0x3C	; 60
     5e4:	08 f0       	brcs	.+2      	; 0x5e8 <clock_set_time+0x14>
     5e6:	60 e0       	ldi	r22, 0x00	; 0
     5e8:	60 93 08 01 	sts	0x0108, r22	; 0x800108 <sys_time+0x1>
        sys_time.seconds = (s < 60) ? s : 0;
     5ec:	4c 33       	cpi	r20, 0x3C	; 60
     5ee:	08 f0       	brcs	.+2      	; 0x5f2 <clock_set_time+0x1e>
     5f0:	40 e0       	ldi	r20, 0x00	; 0
     5f2:	40 93 09 01 	sts	0x0109, r20	; 0x800109 <sys_time+0x2>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     5f6:	9f bf       	out	0x3f, r25	; 63
    }
    clock_update_display();
     5f8:	0c 94 bb 02 	jmp	0x576	; 0x576 <clock_update_display>

000005fc <clock_init>:

static volatile ClockTime_t sys_time = {12, 0, 0};
static volatile uint8_t is_running = 1;

void clock_init(void) {
    clock_set_time(12, 0, 0);
     5fc:	40 e0       	ldi	r20, 0x00	; 0
     5fe:	60 e0       	ldi	r22, 0x00	; 0
     600:	8c e0       	ldi	r24, 0x0C	; 12
     602:	0e 94 ea 02 	call	0x5d4	; 0x5d4 <clock_set_time>
    is_running = 1;
     606:	81 e0       	ldi	r24, 0x01	; 1
     608:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <is_running>
}
     60c:	08 95       	ret

0000060e <action_7seg_time>:
// ==========================================
// 8. ACTION IMPLEMENTATIONS
// ==========================================

// --- Mode 1: Display Current Running Real-Time Clock ---
static void action_7seg_time(void) {
     60e:	cf 93       	push	r28
     610:	df 93       	push	r29
     612:	cd b7       	in	r28, 0x3d	; 61
     614:	de b7       	in	r29, 0x3e	; 62
     616:	68 97       	sbiw	r28, 0x18	; 24
     618:	0f b6       	in	r0, 0x3f	; 63
     61a:	f8 94       	cli
     61c:	de bf       	out	0x3e, r29	; 62
     61e:	0f be       	out	0x3f, r0	; 63
     620:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t ct;
    clock_get_time(&ct);
     622:	ce 01       	movw	r24, r28
     624:	46 96       	adiw	r24, 0x16	; 22
     626:	0e 94 85 02 	call	0x50a	; 0x50a <clock_get_time>
    clock_update_display(); // Updates 7-segment display with HH.MM.SS (DPs enabled!)
     62a:	0e 94 bb 02 	call	0x576	; 0x576 <clock_update_display>

    lcd_set_cursor(0, 0);
     62e:	60 e0       	ldi	r22, 0x00	; 0
     630:	80 e0       	ldi	r24, 0x00	; 0
     632:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== CURRENT TIME ===");
     636:	8a e0       	ldi	r24, 0x0A	; 10
     638:	93 e0       	ldi	r25, 0x03	; 3
     63a:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>

    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     63e:	20 e2       	ldi	r18, 0x20	; 32
     640:	29 83       	std	Y+1, r18	; 0x01
     642:	84 e5       	ldi	r24, 0x54	; 84
     644:	8a 83       	std	Y+2, r24	; 0x02
     646:	89 e4       	ldi	r24, 0x49	; 73
     648:	8b 83       	std	Y+3, r24	; 0x03
     64a:	8d e4       	ldi	r24, 0x4D	; 77
     64c:	8c 83       	std	Y+4, r24	; 0x04
     64e:	85 e4       	ldi	r24, 0x45	; 69
     650:	8d 83       	std	Y+5, r24	; 0x05
     652:	4a e3       	ldi	r20, 0x3A	; 58
     654:	4e 83       	std	Y+6, r20	; 0x06
    row1[6] = ' '; row1[7] = ' ';
     656:	2f 83       	std	Y+7, r18	; 0x07
     658:	28 87       	std	Y+8, r18	; 0x08
    row1[8] = '0' + (ct.hours / 10);
     65a:	8e 89       	ldd	r24, Y+22	; 0x16
     65c:	3a e0       	ldi	r19, 0x0A	; 10
     65e:	63 2f       	mov	r22, r19
     660:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     664:	80 5d       	subi	r24, 0xD0	; 208
     666:	89 87       	std	Y+9, r24	; 0x09
    row1[9] = '0' + (ct.hours % 10);
     668:	90 5d       	subi	r25, 0xD0	; 208
     66a:	9a 87       	std	Y+10, r25	; 0x0a
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     66c:	2b 87       	std	Y+11, r18	; 0x0b
     66e:	4c 87       	std	Y+12, r20	; 0x0c
     670:	2d 87       	std	Y+13, r18	; 0x0d
    row1[13] = '0' + (ct.minutes / 10);
     672:	8f 89       	ldd	r24, Y+23	; 0x17
     674:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     678:	80 5d       	subi	r24, 0xD0	; 208
     67a:	8e 87       	std	Y+14, r24	; 0x0e
    row1[14] = '0' + (ct.minutes % 10);
     67c:	90 5d       	subi	r25, 0xD0	; 208
     67e:	9f 87       	std	Y+15, r25	; 0x0f
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     680:	28 8b       	std	Y+16, r18	; 0x10
     682:	49 8b       	std	Y+17, r20	; 0x11
     684:	2a 8b       	std	Y+18, r18	; 0x12
    row1[18] = '0' + (ct.seconds / 10);
     686:	88 8d       	ldd	r24, Y+24	; 0x18
     688:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     68c:	80 5d       	subi	r24, 0xD0	; 208
     68e:	8b 8b       	std	Y+19, r24	; 0x13
    row1[19] = '0' + (ct.seconds % 10);
     690:	90 5d       	subi	r25, 0xD0	; 208
     692:	9c 8b       	std	Y+20, r25	; 0x14
    row1[20] = '\0';
     694:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(1, 0);
     696:	60 e0       	ldi	r22, 0x00	; 0
     698:	81 e0       	ldi	r24, 0x01	; 1
     69a:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string(row1);
     69e:	ce 01       	movw	r24, r28
     6a0:	01 96       	adiw	r24, 0x01	; 1
     6a2:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>

    lcd_set_cursor(2, 0);
     6a6:	60 e0       	ldi	r22, 0x00	; 0
     6a8:	82 e0       	ldi	r24, 0x02	; 2
     6aa:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("REAL-TIME CLOCK RUN ");
     6ae:	8f e1       	ldi	r24, 0x1F	; 31
     6b0:	93 e0       	ldi	r25, 0x03	; 3
     6b2:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     6b6:	60 e0       	ldi	r22, 0x00	; 0
     6b8:	83 e0       	ldi	r24, 0x03	; 3
     6ba:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     6be:	84 e3       	ldi	r24, 0x34	; 52
     6c0:	93 e0       	ldi	r25, 0x03	; 3
     6c2:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
}
     6c6:	68 96       	adiw	r28, 0x18	; 24
     6c8:	0f b6       	in	r0, 0x3f	; 63
     6ca:	f8 94       	cli
     6cc:	de bf       	out	0x3e, r29	; 62
     6ce:	0f be       	out	0x3f, r0	; 63
     6d0:	cd bf       	out	0x3d, r28	; 61
     6d2:	df 91       	pop	r29
     6d4:	cf 91       	pop	r28
     6d6:	08 95       	ret

000006d8 <adjust_draw_lcd>:
    lcd_clear();
    adjust_draw_lcd();
    adjust_update_7seg();
}

static void adjust_draw_lcd(void) {
     6d8:	cf 93       	push	r28
     6da:	df 93       	push	r29
     6dc:	cd b7       	in	r28, 0x3d	; 61
     6de:	de b7       	in	r29, 0x3e	; 62
     6e0:	aa 97       	sbiw	r28, 0x2a	; 42
     6e2:	0f b6       	in	r0, 0x3f	; 63
     6e4:	f8 94       	cli
     6e6:	de bf       	out	0x3e, r29	; 62
     6e8:	0f be       	out	0x3f, r0	; 63
     6ea:	cd bf       	out	0x3d, r28	; 61
    lcd_set_cursor(0, 0);
     6ec:	60 e0       	ldi	r22, 0x00	; 0
     6ee:	80 e0       	ldi	r24, 0x00	; 0
     6f0:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== ADJUST CLOCK ===");
     6f4:	89 e4       	ldi	r24, 0x49	; 73
     6f6:	93 e0       	ldi	r25, 0x03	; 3
     6f8:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>

    // Row 1: " TIME:  HH : MM : SS"
    char row1[21];
    row1[0] = ' '; row1[1] = 'T'; row1[2] = 'I'; row1[3] = 'M'; row1[4] = 'E'; row1[5] = ':';
     6fc:	80 e2       	ldi	r24, 0x20	; 32
     6fe:	8e 8b       	std	Y+22, r24	; 0x16
     700:	94 e5       	ldi	r25, 0x54	; 84
     702:	9f 8b       	std	Y+23, r25	; 0x17
     704:	99 e4       	ldi	r25, 0x49	; 73
     706:	98 8f       	std	Y+24, r25	; 0x18
     708:	9d e4       	ldi	r25, 0x4D	; 77
     70a:	99 8f       	std	Y+25, r25	; 0x19
     70c:	95 e4       	ldi	r25, 0x45	; 69
     70e:	9a 8f       	std	Y+26, r25	; 0x1a
     710:	9a e3       	ldi	r25, 0x3A	; 58
     712:	9b 8f       	std	Y+27, r25	; 0x1b
    row1[6] = ' '; row1[7] = ' ';
     714:	8c 8f       	std	Y+28, r24	; 0x1c
     716:	8d 8f       	std	Y+29, r24	; 0x1d
    row1[8] = '0' + adjust_digits[0];
     718:	eb e0       	ldi	r30, 0x0B	; 11
     71a:	f1 e0       	ldi	r31, 0x01	; 1
     71c:	20 81       	ld	r18, Z
     71e:	20 5d       	subi	r18, 0xD0	; 208
     720:	2e 8f       	std	Y+30, r18	; 0x1e
    row1[9] = '0' + adjust_digits[1];
     722:	21 81       	ldd	r18, Z+1	; 0x01
     724:	20 5d       	subi	r18, 0xD0	; 208
     726:	2f 8f       	std	Y+31, r18	; 0x1f
    row1[10] = ' '; row1[11] = ':'; row1[12] = ' ';
     728:	88 a3       	std	Y+32, r24	; 0x20
     72a:	99 a3       	std	Y+33, r25	; 0x21
     72c:	8a a3       	std	Y+34, r24	; 0x22
    row1[13] = '0' + adjust_digits[2];
     72e:	22 81       	ldd	r18, Z+2	; 0x02
     730:	20 5d       	subi	r18, 0xD0	; 208
     732:	2b a3       	std	Y+35, r18	; 0x23
    row1[14] = '0' + adjust_digits[3];
     734:	23 81       	ldd	r18, Z+3	; 0x03
     736:	20 5d       	subi	r18, 0xD0	; 208
     738:	2c a3       	std	Y+36, r18	; 0x24
    row1[15] = ' '; row1[16] = ':'; row1[17] = ' ';
     73a:	8d a3       	std	Y+37, r24	; 0x25
     73c:	9e a3       	std	Y+38, r25	; 0x26
     73e:	8f a3       	std	Y+39, r24	; 0x27
    row1[18] = '0' + adjust_digits[4];
     740:	84 81       	ldd	r24, Z+4	; 0x04
     742:	80 5d       	subi	r24, 0xD0	; 208
     744:	88 a7       	std	Y+40, r24	; 0x28
    row1[19] = '0' + adjust_digits[5];
     746:	85 81       	ldd	r24, Z+5	; 0x05
     748:	80 5d       	subi	r24, 0xD0	; 208
     74a:	89 a7       	std	Y+41, r24	; 0x29
    row1[20] = '\0';
     74c:	1a a6       	std	Y+42, r1	; 0x2a
    lcd_set_cursor(1, 0);
     74e:	60 e0       	ldi	r22, 0x00	; 0
     750:	81 e0       	ldi	r24, 0x01	; 1
     752:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string(row1);
     756:	ce 01       	movw	r24, r28
     758:	46 96       	adiw	r24, 0x16	; 22
     75a:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>

    // Row 2: " CURSOR:        ^   " (Arrow directly beneath the selected digit)
    char row2[21] = " CURSOR:            ";
     75e:	85 e1       	ldi	r24, 0x15	; 21
     760:	e3 e7       	ldi	r30, 0x73	; 115
     762:	f3 e0       	ldi	r31, 0x03	; 3
     764:	de 01       	movw	r26, r28
     766:	11 96       	adiw	r26, 0x01	; 1
     768:	01 90       	ld	r0, Z+
     76a:	0d 92       	st	X+, r0
     76c:	8a 95       	dec	r24
     76e:	e1 f7       	brne	.-8      	; 0x768 <adjust_draw_lcd+0x90>
    static const uint8_t arrow_cols[6] = {8, 9, 13, 14, 18, 19};
    row2[arrow_cols[adjust_pos]] = '^';
     770:	e0 91 be 05 	lds	r30, 0x05BE	; 0x8005be <adjust_pos>
     774:	f0 e0       	ldi	r31, 0x00	; 0
     776:	ec 5f       	subi	r30, 0xFC	; 252
     778:	fc 4f       	sbci	r31, 0xFC	; 252
     77a:	e0 81       	ld	r30, Z
     77c:	81 e0       	ldi	r24, 0x01	; 1
     77e:	90 e0       	ldi	r25, 0x00	; 0
     780:	8c 0f       	add	r24, r28
     782:	9d 1f       	adc	r25, r29
     784:	8e 0f       	add	r24, r30
     786:	91 1d       	adc	r25, r1
     788:	fc 01       	movw	r30, r24
     78a:	8e e5       	ldi	r24, 0x5E	; 94
     78c:	80 83       	st	Z, r24
    row2[20] = '\0';
     78e:	1d 8a       	std	Y+21, r1	; 0x15
    lcd_set_cursor(2, 0);
     790:	60 e0       	ldi	r22, 0x00	; 0
     792:	82 e0       	ldi	r24, 0x02	; 2
     794:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string(row2);
     798:	ce 01       	movw	r24, r28
     79a:	01 96       	adiw	r24, 0x01	; 1
     79c:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>

    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
     7a0:	60 e0       	ldi	r22, 0x00	; 0
     7a2:	83 e0       	ldi	r24, 0x03	; 3
     7a4:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("GO:Save       1:Exit");
     7a8:	8e e5       	ldi	r24, 0x5E	; 94
     7aa:	93 e0       	ldi	r25, 0x03	; 3
     7ac:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
}
     7b0:	aa 96       	adiw	r28, 0x2a	; 42
     7b2:	0f b6       	in	r0, 0x3f	; 63
     7b4:	f8 94       	cli
     7b6:	de bf       	out	0x3e, r29	; 62
     7b8:	0f be       	out	0x3f, r0	; 63
     7ba:	cd bf       	out	0x3d, r28	; 61
     7bc:	df 91       	pop	r29
     7be:	cf 91       	pop	r28
     7c0:	08 95       	ret

000007c2 <action_version>:
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- System Info Actions ---
static void action_version(void) {
    lcd_set_cursor(0, 0);
     7c2:	60 e0       	ldi	r22, 0x00	; 0
     7c4:	80 e0       	ldi	r24, 0x00	; 0
     7c6:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== SYSTEM INFO ====");
     7ca:	88 e8       	ldi	r24, 0x88	; 136
     7cc:	93 e0       	ldi	r25, 0x03	; 3
     7ce:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     7d2:	60 e0       	ldi	r22, 0x00	; 0
     7d4:	81 e0       	ldi	r24, 0x01	; 1
     7d6:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("FIRMWARE: V2.0 FINAL");
     7da:	8d e9       	ldi	r24, 0x9D	; 157
     7dc:	93 e0       	ldi	r25, 0x03	; 3
     7de:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     7e2:	60 e0       	ldi	r22, 0x00	; 0
     7e4:	82 e0       	ldi	r24, 0x02	; 2
     7e6:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("BUILD DATE: OCT 2026");
     7ea:	82 eb       	ldi	r24, 0xB2	; 178
     7ec:	93 e0       	ldi	r25, 0x03	; 3
     7ee:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     7f2:	60 e0       	ldi	r22, 0x00	; 0
     7f4:	83 e0       	ldi	r24, 0x03	; 3
     7f6:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     7fa:	84 e3       	ldi	r24, 0x34	; 52
     7fc:	93 e0       	ldi	r25, 0x03	; 3
     7fe:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

00000802 <action_about>:
}

static void action_about(void) {
    lcd_set_cursor(0, 0);
     802:	60 e0       	ldi	r22, 0x00	; 0
     804:	80 e0       	ldi	r24, 0x00	; 0
     806:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== ATMEGA128A =====");
     80a:	87 ec       	ldi	r24, 0xC7	; 199
     80c:	93 e0       	ldi	r25, 0x03	; 3
     80e:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     812:	60 e0       	ldi	r22, 0x00	; 0
     814:	81 e0       	ldi	r24, 0x01	; 1
     816:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("16MHZ EXT MEM BUS   ");
     81a:	8c ed       	ldi	r24, 0xDC	; 220
     81c:	93 e0       	ldi	r25, 0x03	; 3
     81e:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     822:	60 e0       	ldi	r22, 0x00	; 0
     824:	82 e0       	ldi	r24, 0x02	; 2
     826:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("SCHMITT TRIGGER IN  ");
     82a:	81 ef       	ldi	r24, 0xF1	; 241
     82c:	93 e0       	ldi	r25, 0x03	; 3
     82e:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     832:	60 e0       	ldi	r22, 0x00	; 0
     834:	83 e0       	ldi	r24, 0x03	; 3
     836:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     83a:	84 e3       	ldi	r24, 0x34	; 52
     83c:	93 e0       	ldi	r25, 0x03	; 3
     83e:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

00000842 <adjust_update_7seg>:
    // Row 3: Navigation helpers
    lcd_set_cursor(3, 0);
    lcd_send_string("GO:Save       1:Exit");
}

static void adjust_update_7seg(void) {
     842:	0f 93       	push	r16
     844:	1f 93       	push	r17
     846:	cf 93       	push	r28
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));
     848:	8a e0       	ldi	r24, 0x0A	; 10
     84a:	0e 94 c5 01 	call	0x38a	; 0x38a <seg7_set_dp_mask>
     84e:	0b e0       	ldi	r16, 0x0B	; 11
     850:	11 e0       	ldi	r17, 0x01	; 1

    for (uint8_t i = 0; i < 6; i++) {
     852:	c0 e0       	ldi	r28, 0x00	; 0
        if (i == adjust_pos && !adjust_blink_phase) {
     854:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <adjust_pos>
     858:	8c 13       	cpse	r24, r28
     85a:	05 c0       	rjmp	.+10     	; 0x866 <adjust_update_7seg+0x24>
     85c:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <adjust_blink_phase>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
     860:	6f ef       	ldi	r22, 0xFF	; 255
static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
        if (i == adjust_pos && !adjust_blink_phase) {
     862:	88 23       	and	r24, r24
     864:	11 f0       	breq	.+4      	; 0x86a <adjust_update_7seg+0x28>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
     866:	f8 01       	movw	r30, r16
     868:	60 81       	ld	r22, Z
     86a:	8c 2f       	mov	r24, r28
     86c:	0e 94 72 01 	call	0x2e4	; 0x2e4 <seg7_set_digit>

static void adjust_update_7seg(void) {
    // Decimal points enabled on Digit 1 and Digit 3 to separate HH.MM.SS
    seg7_set_dp_mask((1 << 1) | (1 << 3));

    for (uint8_t i = 0; i < 6; i++) {
     870:	cf 5f       	subi	r28, 0xFF	; 255
     872:	0f 5f       	subi	r16, 0xFF	; 255
     874:	1f 4f       	sbci	r17, 0xFF	; 255
     876:	c6 30       	cpi	r28, 0x06	; 6
     878:	69 f7       	brne	.-38     	; 0x854 <adjust_update_7seg+0x12>
            seg7_set_digit(i, SEG7_BLANK); // Blink off
        } else {
            seg7_set_digit(i, adjust_digits[i]);
        }
    }
}
     87a:	cf 91       	pop	r28
     87c:	1f 91       	pop	r17
     87e:	0f 91       	pop	r16
     880:	08 95       	ret

00000882 <action_7seg_adjust>:
    lcd_set_cursor(3, 0);
    lcd_send_string("LEFT:Back     1:Exit");
}

// --- Mode 2: Adjust Clock Function ---
static void action_7seg_adjust(void) {
     882:	cf 93       	push	r28
     884:	df 93       	push	r29
     886:	00 d0       	rcall	.+0      	; 0x888 <action_7seg_adjust+0x6>
     888:	1f 92       	push	r1
     88a:	cd b7       	in	r28, 0x3d	; 61
     88c:	de b7       	in	r29, 0x3e	; 62
    current_state = STATE_ADJUST_CLOCK;
     88e:	83 e0       	ldi	r24, 0x03	; 3
     890:	90 e0       	ldi	r25, 0x00	; 0
     892:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_state+0x1>
     896:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_state>
    clock_pause(); // Pause clock ticks during manual editing
     89a:	0e 94 7f 02 	call	0x4fe	; 0x4fe <clock_pause>

    ClockTime_t ct;
    clock_get_time(&ct);
     89e:	ce 01       	movw	r24, r28
     8a0:	01 96       	adiw	r24, 0x01	; 1
     8a2:	0e 94 85 02 	call	0x50a	; 0x50a <clock_get_time>
    adjust_digits[0] = ct.hours / 10;
     8a6:	89 81       	ldd	r24, Y+1	; 0x01
     8a8:	eb e0       	ldi	r30, 0x0B	; 11
     8aa:	f1 e0       	ldi	r31, 0x01	; 1
     8ac:	2a e0       	ldi	r18, 0x0A	; 10
     8ae:	62 2f       	mov	r22, r18
     8b0:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     8b4:	80 83       	st	Z, r24
    adjust_digits[1] = ct.hours % 10;
     8b6:	91 83       	std	Z+1, r25	; 0x01
    adjust_digits[2] = ct.minutes / 10;
     8b8:	8a 81       	ldd	r24, Y+2	; 0x02
     8ba:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     8be:	82 83       	std	Z+2, r24	; 0x02
    adjust_digits[3] = ct.minutes % 10;
     8c0:	93 83       	std	Z+3, r25	; 0x03
    adjust_digits[4] = ct.seconds / 10;
     8c2:	8b 81       	ldd	r24, Y+3	; 0x03
     8c4:	0e 94 20 09 	call	0x1240	; 0x1240 <__udivmodqi4>
     8c8:	84 83       	std	Z+4, r24	; 0x04
    adjust_digits[5] = ct.seconds % 10;
     8ca:	95 83       	std	Z+5, r25	; 0x05

    adjust_pos = 0; // Start at Digit 0 (Hours tens)
     8cc:	10 92 be 05 	sts	0x05BE, r1	; 0x8005be <adjust_pos>
    adjust_blink_phase = 1;
     8d0:	81 e0       	ldi	r24, 0x01	; 1
     8d2:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
    adjust_blink_timer = 0;
     8d6:	10 92 bd 05 	sts	0x05BD, r1	; 0x8005bd <adjust_blink_timer>

    lcd_clear();
     8da:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
    adjust_draw_lcd();
     8de:	0e 94 6c 03 	call	0x6d8	; 0x6d8 <adjust_draw_lcd>
    adjust_update_7seg();
     8e2:	0e 94 21 04 	call	0x842	; 0x842 <adjust_update_7seg>
}
     8e6:	0f 90       	pop	r0
     8e8:	0f 90       	pop	r0
     8ea:	0f 90       	pop	r0
     8ec:	df 91       	pop	r29
     8ee:	cf 91       	pop	r28
     8f0:	08 95       	ret

000008f2 <action_7seg_countup>:
    }
}

// --- Mode 3: Count Up ---
static void action_7seg_countup(void) {
    count_val++;
     8f2:	80 91 bf 05 	lds	r24, 0x05BF	; 0x8005bf <count_val>
     8f6:	90 91 c0 05 	lds	r25, 0x05C0	; 0x8005c0 <count_val+0x1>
     8fa:	01 96       	adiw	r24, 0x01	; 1
     8fc:	90 93 c0 05 	sts	0x05C0, r25	; 0x8005c0 <count_val+0x1>
     900:	80 93 bf 05 	sts	0x05BF, r24	; 0x8005bf <count_val>
    seg7_set_dp_mask(0x00); // No decimal points in count up
     904:	80 e0       	ldi	r24, 0x00	; 0
     906:	0e 94 c5 01 	call	0x38a	; 0x38a <seg7_set_dp_mask>
    seg7_set_number(count_val);
     90a:	60 91 bf 05 	lds	r22, 0x05BF	; 0x8005bf <count_val>
     90e:	70 91 c0 05 	lds	r23, 0x05C0	; 0x8005c0 <count_val+0x1>
     912:	90 e0       	ldi	r25, 0x00	; 0
     914:	80 e0       	ldi	r24, 0x00	; 0
     916:	0e 94 8a 01 	call	0x314	; 0x314 <seg7_set_number>

    lcd_set_cursor(0, 0);
     91a:	60 e0       	ldi	r22, 0x00	; 0
     91c:	80 e0       	ldi	r24, 0x00	; 0
     91e:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== COUNT UP MODE ==");
     922:	86 e0       	ldi	r24, 0x06	; 6
     924:	94 e0       	ldi	r25, 0x04	; 4
     926:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     92a:	60 e0       	ldi	r22, 0x00	; 0
     92c:	81 e0       	ldi	r24, 0x01	; 1
     92e:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("DISPLAYING ON 7-SEG ");
     932:	8b e1       	ldi	r24, 0x1B	; 27
     934:	94 e0       	ldi	r25, 0x04	; 4
     936:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     93a:	60 e0       	ldi	r22, 0x00	; 0
     93c:	82 e0       	ldi	r24, 0x02	; 2
     93e:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("COUNTER INCREASING  ");
     942:	80 e3       	ldi	r24, 0x30	; 48
     944:	94 e0       	ldi	r25, 0x04	; 4
     946:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     94a:	60 e0       	ldi	r22, 0x00	; 0
     94c:	83 e0       	ldi	r24, 0x03	; 3
     94e:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     952:	84 e3       	ldi	r24, 0x34	; 52
     954:	93 e0       	ldi	r25, 0x03	; 3
     956:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

0000095a <action_7seg_mode4>:
}

// --- Mode 4: Test All 8s ---
static void action_7seg_mode4(void) {
    seg7_set_dp_mask(0x0A); // DPs on for test
     95a:	8a e0       	ldi	r24, 0x0A	; 10
     95c:	0e 94 c5 01 	call	0x38a	; 0x38a <seg7_set_dp_mask>
    seg7_set_number(888888);
     960:	68 e3       	ldi	r22, 0x38	; 56
     962:	70 e9       	ldi	r23, 0x90	; 144
     964:	8d e0       	ldi	r24, 0x0D	; 13
     966:	90 e0       	ldi	r25, 0x00	; 0
     968:	0e 94 8a 01 	call	0x314	; 0x314 <seg7_set_number>

    lcd_set_cursor(0, 0);
     96c:	60 e0       	ldi	r22, 0x00	; 0
     96e:	80 e0       	ldi	r24, 0x00	; 0
     970:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== 7-SEG MODE 4 ===");
     974:	85 e4       	ldi	r24, 0x45	; 69
     976:	94 e0       	ldi	r25, 0x04	; 4
     978:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     97c:	60 e0       	ldi	r22, 0x00	; 0
     97e:	81 e0       	ldi	r24, 0x01	; 1
     980:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("ALL DIGITS SET TO 8 ");
     984:	8a e5       	ldi	r24, 0x5A	; 90
     986:	94 e0       	ldi	r25, 0x04	; 4
     988:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     98c:	60 e0       	ldi	r22, 0x00	; 0
     98e:	82 e0       	ldi	r24, 0x02	; 2
     990:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("TESTING SEGMENTS    ");
     994:	8f e6       	ldi	r24, 0x6F	; 111
     996:	94 e0       	ldi	r25, 0x04	; 4
     998:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     99c:	60 e0       	ldi	r22, 0x00	; 0
     99e:	83 e0       	ldi	r24, 0x03	; 3
     9a0:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     9a4:	84 e3       	ldi	r24, 0x34	; 52
     9a6:	93 e0       	ldi	r25, 0x03	; 3
     9a8:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

000009ac <action_relay_0_2>:
}

// --- Relay Actions ---
static void action_relay_0_2(void) {
    relay_mode_0_2();
     9ac:	0e 94 ed 08 	call	0x11da	; 0x11da <relay_mode_0_2>

    lcd_set_cursor(0, 0);
     9b0:	60 e0       	ldi	r22, 0x00	; 0
     9b2:	80 e0       	ldi	r24, 0x00	; 0
     9b4:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== RELAYS 0 & 2 ===");
     9b8:	84 e8       	ldi	r24, 0x84	; 132
     9ba:	94 e0       	ldi	r25, 0x04	; 4
     9bc:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     9c0:	60 e0       	ldi	r22, 0x00	; 0
     9c2:	81 e0       	ldi	r24, 0x01	; 1
     9c4:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL0:ON   RL1:OFF    ");
     9c8:	89 e9       	ldi	r24, 0x99	; 153
     9ca:	94 e0       	ldi	r25, 0x04	; 4
     9cc:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     9d0:	60 e0       	ldi	r22, 0x00	; 0
     9d2:	82 e0       	ldi	r24, 0x02	; 2
     9d4:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL2:ON   RL3:OFF    ");
     9d8:	8e ea       	ldi	r24, 0xAE	; 174
     9da:	94 e0       	ldi	r25, 0x04	; 4
     9dc:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     9e0:	60 e0       	ldi	r22, 0x00	; 0
     9e2:	83 e0       	ldi	r24, 0x03	; 3
     9e4:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     9e8:	84 e3       	ldi	r24, 0x34	; 52
     9ea:	93 e0       	ldi	r25, 0x03	; 3
     9ec:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

000009f0 <action_relay_1_3>:
}

static void action_relay_1_3(void) {
    relay_mode_1_3();
     9f0:	0e 94 f3 08 	call	0x11e6	; 0x11e6 <relay_mode_1_3>

    lcd_set_cursor(0, 0);
     9f4:	60 e0       	ldi	r22, 0x00	; 0
     9f6:	80 e0       	ldi	r24, 0x00	; 0
     9f8:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== RELAYS 1 & 3 ===");
     9fc:	83 ec       	ldi	r24, 0xC3	; 195
     9fe:	94 e0       	ldi	r25, 0x04	; 4
     a00:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     a04:	60 e0       	ldi	r22, 0x00	; 0
     a06:	81 e0       	ldi	r24, 0x01	; 1
     a08:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL0:OFF  RL1:ON     ");
     a0c:	88 ed       	ldi	r24, 0xD8	; 216
     a0e:	94 e0       	ldi	r25, 0x04	; 4
     a10:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     a14:	60 e0       	ldi	r22, 0x00	; 0
     a16:	82 e0       	ldi	r24, 0x02	; 2
     a18:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL2:OFF  RL3:ON     ");
     a1c:	8d ee       	ldi	r24, 0xED	; 237
     a1e:	94 e0       	ldi	r25, 0x04	; 4
     a20:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     a24:	60 e0       	ldi	r22, 0x00	; 0
     a26:	83 e0       	ldi	r24, 0x03	; 3
     a28:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     a2c:	84 e3       	ldi	r24, 0x34	; 52
     a2e:	93 e0       	ldi	r25, 0x03	; 3
     a30:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

00000a34 <action_relay_all_on>:
}

static void action_relay_all_on(void) {
    relay_all_on();
     a34:	0e 94 f9 08 	call	0x11f2	; 0x11f2 <relay_all_on>

    lcd_set_cursor(0, 0);
     a38:	60 e0       	ldi	r22, 0x00	; 0
     a3a:	80 e0       	ldi	r24, 0x00	; 0
     a3c:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS ON ==");
     a40:	82 e0       	ldi	r24, 0x02	; 2
     a42:	95 e0       	ldi	r25, 0x05	; 5
     a44:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     a48:	60 e0       	ldi	r22, 0x00	; 0
     a4a:	81 e0       	ldi	r24, 0x01	; 1
     a4c:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL0:ON   RL1:ON     ");
     a50:	87 e1       	ldi	r24, 0x17	; 23
     a52:	95 e0       	ldi	r25, 0x05	; 5
     a54:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     a58:	60 e0       	ldi	r22, 0x00	; 0
     a5a:	82 e0       	ldi	r24, 0x02	; 2
     a5c:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL2:ON   RL3:ON     ");
     a60:	8c e2       	ldi	r24, 0x2C	; 44
     a62:	95 e0       	ldi	r25, 0x05	; 5
     a64:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     a68:	60 e0       	ldi	r22, 0x00	; 0
     a6a:	83 e0       	ldi	r24, 0x03	; 3
     a6c:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     a70:	84 e3       	ldi	r24, 0x34	; 52
     a72:	93 e0       	ldi	r25, 0x03	; 3
     a74:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

00000a78 <action_relay_all_off>:
}

static void action_relay_all_off(void) {
    relay_all_off();
     a78:	0e 94 ff 08 	call	0x11fe	; 0x11fe <relay_all_off>

    lcd_set_cursor(0, 0);
     a7c:	60 e0       	ldi	r22, 0x00	; 0
     a7e:	80 e0       	ldi	r24, 0x00	; 0
     a80:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("=== ALL RELAYS OFF =");
     a84:	81 e4       	ldi	r24, 0x41	; 65
     a86:	95 e0       	ldi	r25, 0x05	; 5
     a88:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(1, 0);
     a8c:	60 e0       	ldi	r22, 0x00	; 0
     a8e:	81 e0       	ldi	r24, 0x01	; 1
     a90:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL0:OFF  RL1:OFF    ");
     a94:	86 e5       	ldi	r24, 0x56	; 86
     a96:	95 e0       	ldi	r25, 0x05	; 5
     a98:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(2, 0);
     a9c:	60 e0       	ldi	r22, 0x00	; 0
     a9e:	82 e0       	ldi	r24, 0x02	; 2
     aa0:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("RL2:OFF  RL3:OFF    ");
     aa4:	8b e6       	ldi	r24, 0x6B	; 107
     aa6:	95 e0       	ldi	r25, 0x05	; 5
     aa8:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    lcd_set_cursor(3, 0);
     aac:	60 e0       	ldi	r22, 0x00	; 0
     aae:	83 e0       	ldi	r24, 0x03	; 3
     ab0:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    lcd_send_string("LEFT:Back     1:Exit");
     ab4:	84 e3       	ldi	r24, 0x34	; 52
     ab6:	93 e0       	ldi	r25, 0x03	; 3
     ab8:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>

00000abc <menu_init>:
static uint8_t adjust_blink_timer = 0;

// ==========================================
// 4. INITIALIZATION
// ==========================================
void menu_init(void) {
     abc:	cf 93       	push	r28
     abe:	df 93       	push	r29
    // Wire up Main Menu
    Main_Item1.next = &Main_Item2; Main_Item1.prev = NULL;
     ac0:	ef e6       	ldi	r30, 0x6F	; 111
     ac2:	f2 e0       	ldi	r31, 0x02	; 2
     ac4:	a2 e5       	ldi	r26, 0x52	; 82
     ac6:	b2 e0       	ldi	r27, 0x02	; 2
     ac8:	b6 8b       	std	Z+22, r27	; 0x16
     aca:	a5 8b       	std	Z+21, r26	; 0x15
     acc:	10 8e       	std	Z+24, r1	; 0x18
     ace:	17 8a       	std	Z+23, r1	; 0x17
    Main_Item2.next = &Main_Item3; Main_Item2.prev = &Main_Item1;
     ad0:	c5 e3       	ldi	r28, 0x35	; 53
     ad2:	d2 e0       	ldi	r29, 0x02	; 2
     ad4:	56 96       	adiw	r26, 0x16	; 22
     ad6:	dc 93       	st	X, r29
     ad8:	ce 93       	st	-X, r28
     ada:	55 97       	sbiw	r26, 0x15	; 21
     adc:	58 96       	adiw	r26, 0x18	; 24
     ade:	fc 93       	st	X, r31
     ae0:	ee 93       	st	-X, r30
     ae2:	57 97       	sbiw	r26, 0x17	; 23
    Main_Item3.next = NULL;        Main_Item3.prev = &Main_Item2;
     ae4:	1e 8a       	std	Y+22, r1	; 0x16
     ae6:	1d 8a       	std	Y+21, r1	; 0x15
     ae8:	b8 8f       	std	Y+24, r27	; 0x18
     aea:	af 8b       	std	Y+23, r26	; 0x17
    MainMenu.first_item = &Main_Item1;
     aec:	27 ed       	ldi	r18, 0xD7	; 215
     aee:	32 e0       	ldi	r19, 0x02	; 2
     af0:	d9 01       	movw	r26, r18
     af2:	56 96       	adiw	r26, 0x16	; 22
     af4:	fc 93       	st	X, r31
     af6:	ee 93       	st	-X, r30
     af8:	55 97       	sbiw	r26, 0x15	; 21

    // Wire up 7-SEG Menu (4 items)
    Seg_Item1.next = &Seg_Item2; Seg_Item1.prev = NULL;
     afa:	68 e1       	ldi	r22, 0x18	; 24
     afc:	72 e0       	ldi	r23, 0x02	; 2
     afe:	8b ef       	ldi	r24, 0xFB	; 251
     b00:	91 e0       	ldi	r25, 0x01	; 1
     b02:	db 01       	movw	r26, r22
     b04:	56 96       	adiw	r26, 0x16	; 22
     b06:	9c 93       	st	X, r25
     b08:	8e 93       	st	-X, r24
     b0a:	55 97       	sbiw	r26, 0x15	; 21
     b0c:	58 96       	adiw	r26, 0x18	; 24
     b0e:	1c 92       	st	X, r1
     b10:	1e 92       	st	-X, r1
     b12:	57 97       	sbiw	r26, 0x17	; 23
    Seg_Item2.next = &Seg_Item3; Seg_Item2.prev = &Seg_Item1;
     b14:	ce ed       	ldi	r28, 0xDE	; 222
     b16:	d1 e0       	ldi	r29, 0x01	; 1
     b18:	dc 01       	movw	r26, r24
     b1a:	56 96       	adiw	r26, 0x16	; 22
     b1c:	dc 93       	st	X, r29
     b1e:	ce 93       	st	-X, r28
     b20:	55 97       	sbiw	r26, 0x15	; 21
     b22:	58 96       	adiw	r26, 0x18	; 24
     b24:	7c 93       	st	X, r23
     b26:	6e 93       	st	-X, r22
     b28:	57 97       	sbiw	r26, 0x17	; 23
    Seg_Item3.next = &Seg_Item4; Seg_Item3.prev = &Seg_Item2;
     b2a:	41 ec       	ldi	r20, 0xC1	; 193
     b2c:	51 e0       	ldi	r21, 0x01	; 1
     b2e:	5e 8b       	std	Y+22, r21	; 0x16
     b30:	4d 8b       	std	Y+21, r20	; 0x15
     b32:	98 8f       	std	Y+24, r25	; 0x18
     b34:	8f 8b       	std	Y+23, r24	; 0x17
    Seg_Item4.next = NULL;       Seg_Item4.prev = &Seg_Item3;
     b36:	da 01       	movw	r26, r20
     b38:	56 96       	adiw	r26, 0x16	; 22
     b3a:	1c 92       	st	X, r1
     b3c:	1e 92       	st	-X, r1
     b3e:	55 97       	sbiw	r26, 0x15	; 21
     b40:	58 96       	adiw	r26, 0x18	; 24
     b42:	dc 93       	st	X, r29
     b44:	ce 93       	st	-X, r28
     b46:	57 97       	sbiw	r26, 0x17	; 23
    SegMenu.first_item = &Seg_Item1;
     b48:	70 93 d4 02 	sts	0x02D4, r23	; 0x8002d4 <SegMenu+0x16>
     b4c:	60 93 d3 02 	sts	0x02D3, r22	; 0x8002d3 <SegMenu+0x15>

    // Wire up Relay Menu (4 items)
    Relay_Item1.next = &Relay_Item2; Relay_Item1.prev = NULL;
     b50:	64 ea       	ldi	r22, 0xA4	; 164
     b52:	71 e0       	ldi	r23, 0x01	; 1
     b54:	87 e8       	ldi	r24, 0x87	; 135
     b56:	91 e0       	ldi	r25, 0x01	; 1
     b58:	db 01       	movw	r26, r22
     b5a:	56 96       	adiw	r26, 0x16	; 22
     b5c:	9c 93       	st	X, r25
     b5e:	8e 93       	st	-X, r24
     b60:	55 97       	sbiw	r26, 0x15	; 21
     b62:	58 96       	adiw	r26, 0x18	; 24
     b64:	1c 92       	st	X, r1
     b66:	1e 92       	st	-X, r1
     b68:	57 97       	sbiw	r26, 0x17	; 23
    Relay_Item2.next = &Relay_Item3; Relay_Item2.prev = &Relay_Item1;
     b6a:	ca e6       	ldi	r28, 0x6A	; 106
     b6c:	d1 e0       	ldi	r29, 0x01	; 1
     b6e:	dc 01       	movw	r26, r24
     b70:	56 96       	adiw	r26, 0x16	; 22
     b72:	dc 93       	st	X, r29
     b74:	ce 93       	st	-X, r28
     b76:	55 97       	sbiw	r26, 0x15	; 21
     b78:	58 96       	adiw	r26, 0x18	; 24
     b7a:	7c 93       	st	X, r23
     b7c:	6e 93       	st	-X, r22
     b7e:	57 97       	sbiw	r26, 0x17	; 23
    Relay_Item3.next = &Relay_Item4; Relay_Item3.prev = &Relay_Item2;
     b80:	4d e4       	ldi	r20, 0x4D	; 77
     b82:	51 e0       	ldi	r21, 0x01	; 1
     b84:	5e 8b       	std	Y+22, r21	; 0x16
     b86:	4d 8b       	std	Y+21, r20	; 0x15
     b88:	98 8f       	std	Y+24, r25	; 0x18
     b8a:	8f 8b       	std	Y+23, r24	; 0x17
    Relay_Item4.next = NULL;         Relay_Item4.prev = &Relay_Item3;
     b8c:	da 01       	movw	r26, r20
     b8e:	56 96       	adiw	r26, 0x16	; 22
     b90:	1c 92       	st	X, r1
     b92:	1e 92       	st	-X, r1
     b94:	55 97       	sbiw	r26, 0x15	; 21
     b96:	58 96       	adiw	r26, 0x18	; 24
     b98:	dc 93       	st	X, r29
     b9a:	ce 93       	st	-X, r28
     b9c:	57 97       	sbiw	r26, 0x17	; 23
    RelayMenu.first_item = &Relay_Item1;
     b9e:	70 93 bb 02 	sts	0x02BB, r23	; 0x8002bb <RelayMenu+0x16>
     ba2:	60 93 ba 02 	sts	0x02BA, r22	; 0x8002ba <RelayMenu+0x15>

    // Wire up System Menu
    Sys_Item1.next = &Sys_Item2; Sys_Item1.prev = NULL;
     ba6:	a0 e3       	ldi	r26, 0x30	; 48
     ba8:	b1 e0       	ldi	r27, 0x01	; 1
     baa:	c3 e1       	ldi	r28, 0x13	; 19
     bac:	d1 e0       	ldi	r29, 0x01	; 1
     bae:	56 96       	adiw	r26, 0x16	; 22
     bb0:	dc 93       	st	X, r29
     bb2:	ce 93       	st	-X, r28
     bb4:	55 97       	sbiw	r26, 0x15	; 21
     bb6:	58 96       	adiw	r26, 0x18	; 24
     bb8:	1c 92       	st	X, r1
     bba:	1e 92       	st	-X, r1
     bbc:	57 97       	sbiw	r26, 0x17	; 23
    Sys_Item2.next = NULL;       Sys_Item2.prev = &Sys_Item1;
     bbe:	1e 8a       	std	Y+22, r1	; 0x16
     bc0:	1d 8a       	std	Y+21, r1	; 0x15
     bc2:	b8 8f       	std	Y+24, r27	; 0x18
     bc4:	af 8b       	std	Y+23, r26	; 0x17
    SystemMenu.first_item = &Sys_Item1;
     bc6:	b0 93 a2 02 	sts	0x02A2, r27	; 0x8002a2 <SystemMenu+0x16>
     bca:	a0 93 a1 02 	sts	0x02A1, r26	; 0x8002a1 <SystemMenu+0x15>

    // Set initial engine pointers
    current_menu = &MainMenu;
     bce:	30 93 cc 05 	sts	0x05CC, r19	; 0x8005cc <current_menu+0x1>
     bd2:	20 93 cb 05 	sts	0x05CB, r18	; 0x8005cb <current_menu>
    current_item = current_menu->first_item;
     bd6:	f0 93 ca 05 	sts	0x05CA, r31	; 0x8005ca <current_item+0x1>
     bda:	e0 93 c9 05 	sts	0x05C9, r30	; 0x8005c9 <current_item>
    top_display_item = current_menu->first_item;
     bde:	f0 93 c8 05 	sts	0x05C8, r31	; 0x8005c8 <top_display_item+0x1>
     be2:	e0 93 c7 05 	sts	0x05C7, r30	; 0x8005c7 <top_display_item>
    cursor_row = 1;
     be6:	81 e0       	ldi	r24, 0x01	; 1
     be8:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
    current_state = STATE_WELCOME;
     bec:	10 92 ce 05 	sts	0x05CE, r1	; 0x8005ce <current_state+0x1>
     bf0:	10 92 cd 05 	sts	0x05CD, r1	; 0x8005cd <current_state>
    active_action_func = NULL;
     bf4:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <active_action_func+0x1>
     bf8:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <active_action_func>
    welcome_char_idx = 0;
     bfc:	10 92 c2 05 	sts	0x05C2, r1	; 0x8005c2 <welcome_char_idx>
    welcome_timer = 0;
     c00:	10 92 c1 05 	sts	0x05C1, r1	; 0x8005c1 <welcome_timer>

    blink_counter = 0;
     c04:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <blink_counter>
    blink_on = 1;
     c08:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
    action_tick = 0;
     c0c:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <action_tick>
    count_val = 0;
     c10:	10 92 c0 05 	sts	0x05C0, r1	; 0x8005c0 <count_val+0x1>
     c14:	10 92 bf 05 	sts	0x05BF, r1	; 0x8005bf <count_val>

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
}
     c18:	df 91       	pop	r29
     c1a:	cf 91       	pop	r28
    blink_on = 1;
    action_tick = 0;
    count_val = 0;

    // Non-blocking start: clear display and let menu_update type smoothly
    lcd_clear();
     c1c:	0c 94 a3 00 	jmp	0x146	; 0x146 <lcd_clear>

00000c20 <menu_draw>:
}

// ==========================================
// 5. SCREEN RENDERING (20x4 Viewport)
// ==========================================
void menu_draw(void) {
     c20:	ef 92       	push	r14
     c22:	ff 92       	push	r15
     c24:	0f 93       	push	r16
     c26:	1f 93       	push	r17
     c28:	cf 93       	push	r28
     c2a:	df 93       	push	r29
     c2c:	cd b7       	in	r28, 0x3d	; 61
     c2e:	de b7       	in	r29, 0x3e	; 62
     c30:	65 97       	sbiw	r28, 0x15	; 21
     c32:	0f b6       	in	r0, 0x3f	; 63
     c34:	f8 94       	cli
     c36:	de bf       	out	0x3e, r29	; 62
     c38:	0f be       	out	0x3f, r0	; 63
     c3a:	cd bf       	out	0x3d, r28	; 61
    // Row 0: Title (Blinking if root menu, or category title if child)
    lcd_set_cursor(0, 0);
     c3c:	60 e0       	ldi	r22, 0x00	; 0
     c3e:	80 e0       	ldi	r24, 0x00	; 0
     c40:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
    if (current_menu == &MainMenu && !blink_on) {
     c44:	e0 91 cb 05 	lds	r30, 0x05CB	; 0x8005cb <current_menu>
     c48:	f0 91 cc 05 	lds	r31, 0x05CC	; 0x8005cc <current_menu+0x1>
     c4c:	82 e0       	ldi	r24, 0x02	; 2
     c4e:	e7 3d       	cpi	r30, 0xD7	; 215
     c50:	f8 07       	cpc	r31, r24
     c52:	69 f5       	brne	.+90     	; 0xcae <menu_draw+0x8e>
     c54:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
     c58:	81 11       	cpse	r24, r1
     c5a:	29 c0       	rjmp	.+82     	; 0xcae <menu_draw+0x8e>
        lcd_send_string("                    ");
     c5c:	80 e8       	ldi	r24, 0x80	; 128
     c5e:	95 e0       	ldi	r25, 0x05	; 5
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
        lcd_send_string(buf);
     c60:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
     c64:	e0 90 c7 05 	lds	r14, 0x05C7	; 0x8005c7 <top_display_item>
     c68:	f0 90 c8 05 	lds	r15, 0x05C8	; 0x8005c8 <top_display_item+0x1>
    for (uint8_t r = 1; r <= 3; r++) {
     c6c:	11 e0       	ldi	r17, 0x01	; 1
            lcd_send_data((r == cursor_row) ? '>' : ' ');
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
            while (len < 19) buf[len++] = ' ';
     c6e:	00 e2       	ldi	r16, 0x20	; 32
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
     c70:	60 e0       	ldi	r22, 0x00	; 0
     c72:	81 2f       	mov	r24, r17
     c74:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
        if (temp != NULL) {
     c78:	e1 14       	cp	r14, r1
     c7a:	f1 04       	cpc	r15, r1
     c7c:	09 f4       	brne	.+2      	; 0xc80 <menu_draw+0x60>
     c7e:	4e c0       	rjmp	.+156    	; 0xd1c <menu_draw+0xfc>
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     c80:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     c84:	81 17       	cp	r24, r17
     c86:	59 f1       	breq	.+86     	; 0xcde <menu_draw+0xbe>
     c88:	80 e2       	ldi	r24, 0x20	; 32
     c8a:	0e 94 85 00 	call	0x10a	; 0x10a <lcd_send_data>
     c8e:	d7 01       	movw	r26, r14
     c90:	fe 01       	movw	r30, r28
     c92:	31 96       	adiw	r30, 0x01	; 1
            char buf[20];
            uint8_t len = 0;
     c94:	90 e0       	ldi	r25, 0x00	; 0
     c96:	9f 01       	movw	r18, r30
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     c98:	8d 91       	ld	r24, X+
     c9a:	81 11       	cpse	r24, r1
     c9c:	25 c0       	rjmp	.+74     	; 0xce8 <menu_draw+0xc8>
     c9e:	f9 01       	movw	r30, r18
     ca0:	e9 0f       	add	r30, r25
     ca2:	f1 1d       	adc	r31, r1
            while (len < 19) buf[len++] = ' ';
     ca4:	93 31       	cpi	r25, 0x13	; 19
     ca6:	11 f1       	breq	.+68     	; 0xcec <menu_draw+0xcc>
     ca8:	9f 5f       	subi	r25, 0xFF	; 255
     caa:	01 93       	st	Z+, r16
     cac:	fb cf       	rjmp	.-10     	; 0xca4 <menu_draw+0x84>
     cae:	de 01       	movw	r26, r28
     cb0:	11 96       	adiw	r26, 0x01	; 1
    lcd_set_cursor(0, 0);
    if (current_menu == &MainMenu && !blink_on) {
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
     cb2:	90 e0       	ldi	r25, 0x00	; 0
     cb4:	9d 01       	movw	r18, r26
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     cb6:	81 91       	ld	r24, Z+
     cb8:	81 11       	cpse	r24, r1
     cba:	0c c0       	rjmp	.+24     	; 0xcd4 <menu_draw+0xb4>
     cbc:	f9 01       	movw	r30, r18
     cbe:	e9 0f       	add	r30, r25
     cc0:	f1 1d       	adc	r31, r1
        while (len < 20) buf[len++] = ' ';
     cc2:	80 e2       	ldi	r24, 0x20	; 32
     cc4:	94 31       	cpi	r25, 0x14	; 20
     cc6:	41 f0       	breq	.+16     	; 0xcd8 <menu_draw+0xb8>
     cc8:	9f 5f       	subi	r25, 0xFF	; 255
     cca:	81 93       	st	Z+, r24
     ccc:	fb cf       	rjmp	.-10     	; 0xcc4 <menu_draw+0xa4>
        lcd_send_string("                    ");
    } else {
        char buf[21];
        uint8_t len = 0;
        const char *p = current_menu->title;
        while (*p && len < 20) buf[len++] = *p++;
     cce:	9f 5f       	subi	r25, 0xFF	; 255
     cd0:	8d 93       	st	X+, r24
     cd2:	f1 cf       	rjmp	.-30     	; 0xcb6 <menu_draw+0x96>
     cd4:	94 31       	cpi	r25, 0x14	; 20
     cd6:	d9 f7       	brne	.-10     	; 0xcce <menu_draw+0xae>
        while (len < 20) buf[len++] = ' ';
        buf[20] = '\0';
     cd8:	1d 8a       	std	Y+21, r1	; 0x15
        lcd_send_string(buf);
     cda:	c9 01       	movw	r24, r18
     cdc:	c1 cf       	rjmp	.-126    	; 0xc60 <menu_draw+0x40>
    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
        lcd_set_cursor(r, 0);
        if (temp != NULL) {
            lcd_send_data((r == cursor_row) ? '>' : ' ');
     cde:	8e e3       	ldi	r24, 0x3E	; 62
     ce0:	d4 cf       	rjmp	.-88     	; 0xc8a <menu_draw+0x6a>
            char buf[20];
            uint8_t len = 0;
            const char *p = temp->text;
            while (*p && len < 19) buf[len++] = *p++;
     ce2:	9f 5f       	subi	r25, 0xFF	; 255
     ce4:	81 93       	st	Z+, r24
     ce6:	d8 cf       	rjmp	.-80     	; 0xc98 <menu_draw+0x78>
     ce8:	93 31       	cpi	r25, 0x13	; 19
     cea:	d9 f7       	brne	.-10     	; 0xce2 <menu_draw+0xc2>
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
     cec:	1c 8a       	std	Y+20, r1	; 0x14
            lcd_send_string(buf);
     cee:	c9 01       	movw	r24, r18
     cf0:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
            temp = temp->next;
     cf4:	f7 01       	movw	r30, r14
     cf6:	e5 88       	ldd	r14, Z+21	; 0x15
     cf8:	f6 88       	ldd	r15, Z+22	; 0x16
        lcd_send_string(buf);
    }

    // Rows 1 to 3: Display 3 items from top_display_item with '>' cursor
    MenuItem *temp = top_display_item;
    for (uint8_t r = 1; r <= 3; r++) {
     cfa:	1f 5f       	subi	r17, 0xFF	; 255
     cfc:	14 30       	cpi	r17, 0x04	; 4
     cfe:	09 f0       	breq	.+2      	; 0xd02 <menu_draw+0xe2>
     d00:	b7 cf       	rjmp	.-146    	; 0xc70 <menu_draw+0x50>
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
        }
    }
}
     d02:	65 96       	adiw	r28, 0x15	; 21
     d04:	0f b6       	in	r0, 0x3f	; 63
     d06:	f8 94       	cli
     d08:	de bf       	out	0x3e, r29	; 62
     d0a:	0f be       	out	0x3f, r0	; 63
     d0c:	cd bf       	out	0x3d, r28	; 61
     d0e:	df 91       	pop	r29
     d10:	cf 91       	pop	r28
     d12:	1f 91       	pop	r17
     d14:	0f 91       	pop	r16
     d16:	ff 90       	pop	r15
     d18:	ef 90       	pop	r14
     d1a:	08 95       	ret
            while (len < 19) buf[len++] = ' ';
            buf[19] = '\0';
            lcd_send_string(buf);
            temp = temp->next;
        } else {
            lcd_send_string("                    ");
     d1c:	80 e8       	ldi	r24, 0x80	; 128
     d1e:	95 e0       	ldi	r25, 0x05	; 5
     d20:	0e 94 1d 01 	call	0x23a	; 0x23a <lcd_send_string>
     d24:	ea cf       	rjmp	.-44     	; 0xcfa <menu_draw+0xda>

00000d26 <menu_down>:

// ==========================================
// 6. NAVIGATION FUNCTIONS
// ==========================================
void menu_down(void) {
    if (current_item && current_item->next != NULL) {
     d26:	e0 91 c9 05 	lds	r30, 0x05C9	; 0x8005c9 <current_item>
     d2a:	f0 91 ca 05 	lds	r31, 0x05CA	; 0x8005ca <current_item+0x1>
     d2e:	30 97       	sbiw	r30, 0x00	; 0
     d30:	e1 f0       	breq	.+56     	; 0xd6a <menu_down+0x44>
     d32:	85 89       	ldd	r24, Z+21	; 0x15
     d34:	96 89       	ldd	r25, Z+22	; 0x16
     d36:	00 97       	sbiw	r24, 0x00	; 0
     d38:	c1 f0       	breq	.+48     	; 0xd6a <menu_down+0x44>
        current_item = current_item->next;
     d3a:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     d3e:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
        if (cursor_row < 3) {
     d42:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     d46:	83 30       	cpi	r24, 0x03	; 3
     d48:	28 f4       	brcc	.+10     	; 0xd54 <menu_down+0x2e>
            cursor_row++;
     d4a:	8f 5f       	subi	r24, 0xFF	; 255
     d4c:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->next;
        }
        menu_draw();
     d50:	0c 94 10 06 	jmp	0xc20	; 0xc20 <menu_draw>
    if (current_item && current_item->next != NULL) {
        current_item = current_item->next;
        if (cursor_row < 3) {
            cursor_row++;
        } else {
            top_display_item = top_display_item->next;
     d54:	e0 91 c7 05 	lds	r30, 0x05C7	; 0x8005c7 <top_display_item>
     d58:	f0 91 c8 05 	lds	r31, 0x05C8	; 0x8005c8 <top_display_item+0x1>
     d5c:	85 89       	ldd	r24, Z+21	; 0x15
     d5e:	96 89       	ldd	r25, Z+22	; 0x16
     d60:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     d64:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
     d68:	f3 cf       	rjmp	.-26     	; 0xd50 <menu_down+0x2a>
        }
        menu_draw();
    }
}
     d6a:	08 95       	ret

00000d6c <menu_up>:

void menu_up(void) {
    if (current_item && current_item->prev != NULL) {
     d6c:	e0 91 c9 05 	lds	r30, 0x05C9	; 0x8005c9 <current_item>
     d70:	f0 91 ca 05 	lds	r31, 0x05CA	; 0x8005ca <current_item+0x1>
     d74:	30 97       	sbiw	r30, 0x00	; 0
     d76:	e1 f0       	breq	.+56     	; 0xdb0 <menu_up+0x44>
     d78:	87 89       	ldd	r24, Z+23	; 0x17
     d7a:	90 8d       	ldd	r25, Z+24	; 0x18
     d7c:	00 97       	sbiw	r24, 0x00	; 0
     d7e:	c1 f0       	breq	.+48     	; 0xdb0 <menu_up+0x44>
        current_item = current_item->prev;
     d80:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     d84:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
        if (cursor_row > 1) {
     d88:	80 91 12 01 	lds	r24, 0x0112	; 0x800112 <cursor_row>
     d8c:	82 30       	cpi	r24, 0x02	; 2
     d8e:	28 f0       	brcs	.+10     	; 0xd9a <menu_up+0x2e>
            cursor_row--;
     d90:	81 50       	subi	r24, 0x01	; 1
     d92:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        } else {
            top_display_item = top_display_item->prev;
        }
        menu_draw();
     d96:	0c 94 10 06 	jmp	0xc20	; 0xc20 <menu_draw>
    if (current_item && current_item->prev != NULL) {
        current_item = current_item->prev;
        if (cursor_row > 1) {
            cursor_row--;
        } else {
            top_display_item = top_display_item->prev;
     d9a:	e0 91 c7 05 	lds	r30, 0x05C7	; 0x8005c7 <top_display_item>
     d9e:	f0 91 c8 05 	lds	r31, 0x05C8	; 0x8005c8 <top_display_item+0x1>
     da2:	87 89       	ldd	r24, Z+23	; 0x17
     da4:	90 8d       	ldd	r25, Z+24	; 0x18
     da6:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     daa:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
     dae:	f3 cf       	rjmp	.-26     	; 0xd96 <menu_up+0x2a>
        }
        menu_draw();
    }
}
     db0:	08 95       	ret

00000db2 <menu_enter>:

void menu_enter(void) {
    if (current_item == NULL) return;
     db2:	e0 91 c9 05 	lds	r30, 0x05C9	; 0x8005c9 <current_item>
     db6:	f0 91 ca 05 	lds	r31, 0x05CA	; 0x8005ca <current_item+0x1>
     dba:	30 97       	sbiw	r30, 0x00	; 0
     dbc:	89 f1       	breq	.+98     	; 0xe20 <menu_enter+0x6e>
    if (current_item->child_menu != NULL) {
     dbe:	a1 8d       	ldd	r26, Z+25	; 0x19
     dc0:	b2 8d       	ldd	r27, Z+26	; 0x1a
     dc2:	10 97       	sbiw	r26, 0x00	; 0
     dc4:	b1 f0       	breq	.+44     	; 0xdf2 <menu_enter+0x40>
        current_menu = current_item->child_menu;
     dc6:	b0 93 cc 05 	sts	0x05CC, r27	; 0x8005cc <current_menu+0x1>
     dca:	a0 93 cb 05 	sts	0x05CB, r26	; 0x8005cb <current_menu>
        current_item = current_menu->first_item;
     dce:	55 96       	adiw	r26, 0x15	; 21
     dd0:	8d 91       	ld	r24, X+
     dd2:	9c 91       	ld	r25, X
     dd4:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     dd8:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
        top_display_item = current_menu->first_item;
     ddc:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     de0:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
        cursor_row = 1;
     de4:	81 e0       	ldi	r24, 0x01	; 1
     de6:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     dea:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
        menu_draw();
     dee:	0c 94 10 06 	jmp	0xc20	; 0xc20 <menu_draw>
    } else if (current_item->action != NULL) {
     df2:	83 8d       	ldd	r24, Z+27	; 0x1b
     df4:	94 8d       	ldd	r25, Z+28	; 0x1c
     df6:	00 97       	sbiw	r24, 0x00	; 0
     df8:	99 f0       	breq	.+38     	; 0xe20 <menu_enter+0x6e>
        current_state = STATE_RUNNING;
     dfa:	22 e0       	ldi	r18, 0x02	; 2
     dfc:	30 e0       	ldi	r19, 0x00	; 0
     dfe:	30 93 ce 05 	sts	0x05CE, r19	; 0x8005ce <current_state+0x1>
     e02:	20 93 cd 05 	sts	0x05CD, r18	; 0x8005cd <current_state>
        active_action_func = current_item->action;
     e06:	90 93 c6 05 	sts	0x05C6, r25	; 0x8005c6 <active_action_func+0x1>
     e0a:	80 93 c5 05 	sts	0x05C5, r24	; 0x8005c5 <active_action_func>
        action_tick = 0;
     e0e:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <action_tick>
        lcd_clear();
     e12:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
        active_action_func(); // render initial action view
     e16:	e0 91 c5 05 	lds	r30, 0x05C5	; 0x8005c5 <active_action_func>
     e1a:	f0 91 c6 05 	lds	r31, 0x05C6	; 0x8005c6 <active_action_func+0x1>
     e1e:	09 94       	ijmp
    }
}
     e20:	08 95       	ret

00000e22 <menu_back>:

void menu_back(void) {
    if (current_menu->parent_menu != NULL) {
     e22:	e0 91 cb 05 	lds	r30, 0x05CB	; 0x8005cb <current_menu>
     e26:	f0 91 cc 05 	lds	r31, 0x05CC	; 0x8005cc <current_menu+0x1>
     e2a:	07 88       	ldd	r0, Z+23	; 0x17
     e2c:	f0 8d       	ldd	r31, Z+24	; 0x18
     e2e:	e0 2d       	mov	r30, r0
     e30:	30 97       	sbiw	r30, 0x00	; 0
     e32:	a9 f0       	breq	.+42     	; 0xe5e <menu_back+0x3c>
        // Return to parent menu
        current_menu = current_menu->parent_menu;
     e34:	f0 93 cc 05 	sts	0x05CC, r31	; 0x8005cc <current_menu+0x1>
     e38:	e0 93 cb 05 	sts	0x05CB, r30	; 0x8005cb <current_menu>
        current_item = current_menu->first_item;
     e3c:	85 89       	ldd	r24, Z+21	; 0x15
     e3e:	96 89       	ldd	r25, Z+22	; 0x16
     e40:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     e44:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
        top_display_item = current_menu->first_item;
     e48:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     e4c:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
        cursor_row = 1;
     e50:	81 e0       	ldi	r24, 0x01	; 1
     e52:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        lcd_clear();
     e56:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
        menu_draw();
     e5a:	0c 94 10 06 	jmp	0xc20	; 0xc20 <menu_draw>
    } else {
        // At Root Main Menu -> Return to Welcome Screen!
        current_state = STATE_WELCOME;
     e5e:	10 92 ce 05 	sts	0x05CE, r1	; 0x8005ce <current_state+0x1>
     e62:	10 92 cd 05 	sts	0x05CD, r1	; 0x8005cd <current_state>
        welcome_char_idx = 0;
     e66:	10 92 c2 05 	sts	0x05C2, r1	; 0x8005c2 <welcome_char_idx>
        welcome_timer = 0;
     e6a:	10 92 c1 05 	sts	0x05C1, r1	; 0x8005c1 <welcome_timer>
        lcd_clear();
     e6e:	0c 94 a3 00 	jmp	0x146	; 0x146 <lcd_clear>

00000e72 <menu_update>:
}

// ==========================================
// 7. PERIODIC ENGINE TICK
// ==========================================
void menu_update(void) {
     e72:	cf 93       	push	r28
    uint8_t btns = button_triggered();
     e74:	0e 94 75 02 	call	0x4ea	; 0x4ea <button_triggered>
     e78:	c8 2f       	mov	r28, r24
    uint8_t pressed = button_pressed();
     e7a:	0e 94 6c 02 	call	0x4d8	; 0x4d8 <button_pressed>
     e7e:	20 91 cd 05 	lds	r18, 0x05CD	; 0x8005cd <current_state>
     e82:	30 91 ce 05 	lds	r19, 0x05CE	; 0x8005ce <current_state+0x1>

    // 1. GLOBAL SHORTCUT: BTN1 is the EXIT button -> Returns to Welcome Screen from ANYWHERE
    if ((pressed & BTN_BIT_1) && current_state != STATE_WELCOME) {
     e86:	85 ff       	sbrs	r24, 5
     e88:	2c c0       	rjmp	.+88     	; 0xee2 <menu_update+0x70>
     e8a:	21 15       	cp	r18, r1
     e8c:	31 05       	cpc	r19, r1
     e8e:	49 f1       	breq	.+82     	; 0xee2 <menu_update+0x70>
        if (current_state == STATE_ADJUST_CLOCK) {
     e90:	23 30       	cpi	r18, 0x03	; 3
     e92:	31 05       	cpc	r19, r1
     e94:	11 f4       	brne	.+4      	; 0xe9a <menu_update+0x28>
            clock_start(); // ensure clock keeps ticking if canceled
     e96:	0e 94 7b 02 	call	0x4f6	; 0x4f6 <clock_start>
        }
        current_state = STATE_WELCOME;
     e9a:	10 92 ce 05 	sts	0x05CE, r1	; 0x8005ce <current_state+0x1>
     e9e:	10 92 cd 05 	sts	0x05CD, r1	; 0x8005cd <current_state>
        active_action_func = NULL;
     ea2:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <active_action_func+0x1>
     ea6:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <active_action_func>
        current_menu = &MainMenu;
     eaa:	87 ed       	ldi	r24, 0xD7	; 215
     eac:	92 e0       	ldi	r25, 0x02	; 2
     eae:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_menu+0x1>
     eb2:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_menu>
        current_item = current_menu->first_item;
     eb6:	80 91 ec 02 	lds	r24, 0x02EC	; 0x8002ec <MainMenu+0x15>
     eba:	90 91 ed 02 	lds	r25, 0x02ED	; 0x8002ed <MainMenu+0x16>
     ebe:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     ec2:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
        top_display_item = current_menu->first_item;
     ec6:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     eca:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
        cursor_row = 1;
     ece:	81 e0       	ldi	r24, 0x01	; 1
     ed0:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
        welcome_char_idx = 0;
     ed4:	10 92 c2 05 	sts	0x05C2, r1	; 0x8005c2 <welcome_char_idx>
        welcome_timer = 0;
     ed8:	10 92 c1 05 	sts	0x05C1, r1	; 0x8005c1 <welcome_timer>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     edc:	cf 91       	pop	r28
        current_item = current_menu->first_item;
        top_display_item = current_menu->first_item;
        cursor_row = 1;
        welcome_char_idx = 0;
        welcome_timer = 0;
        lcd_clear();
     ede:	0c 94 a3 00 	jmp	0x146	; 0x146 <lcd_clear>
        return;
    }

    // 2. STATE_WELCOME: Non-blocking typewriter animation + instant button wake-up
    if (current_state == STATE_WELCOME) {
     ee2:	21 15       	cp	r18, r1
     ee4:	31 05       	cpc	r19, r1
     ee6:	09 f0       	breq	.+2      	; 0xeea <menu_update+0x78>
     ee8:	54 c0       	rjmp	.+168    	; 0xf92 <menu_update+0x120>
        if (pressed != 0) {
     eea:	88 23       	and	r24, r24
     eec:	21 f1       	breq	.+72     	; 0xf36 <menu_update+0xc4>
            current_state = STATE_MENU;
     eee:	81 e0       	ldi	r24, 0x01	; 1
     ef0:	90 e0       	ldi	r25, 0x00	; 0
     ef2:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_state+0x1>
     ef6:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_state>
            current_menu = &MainMenu;
     efa:	87 ed       	ldi	r24, 0xD7	; 215
     efc:	92 e0       	ldi	r25, 0x02	; 2
     efe:	90 93 cc 05 	sts	0x05CC, r25	; 0x8005cc <current_menu+0x1>
     f02:	80 93 cb 05 	sts	0x05CB, r24	; 0x8005cb <current_menu>
            current_item = current_menu->first_item;
     f06:	80 91 ec 02 	lds	r24, 0x02EC	; 0x8002ec <MainMenu+0x15>
     f0a:	90 91 ed 02 	lds	r25, 0x02ED	; 0x8002ed <MainMenu+0x16>
     f0e:	90 93 ca 05 	sts	0x05CA, r25	; 0x8005ca <current_item+0x1>
     f12:	80 93 c9 05 	sts	0x05C9, r24	; 0x8005c9 <current_item>
            top_display_item = current_menu->first_item;
     f16:	90 93 c8 05 	sts	0x05C8, r25	; 0x8005c8 <top_display_item+0x1>
     f1a:	80 93 c7 05 	sts	0x05C7, r24	; 0x8005c7 <top_display_item>
            cursor_row = 1;
     f1e:	81 e0       	ldi	r24, 0x01	; 1
     f20:	80 93 12 01 	sts	0x0112, r24	; 0x800112 <cursor_row>
            blink_counter = 0;
     f24:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <blink_counter>
            blink_on = 1;
     f28:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
            if (s > 59) s = 59;
            clock_set_time(h, m, s);
            clock_start();

            current_state = STATE_MENU;
            lcd_clear();
     f2c:	0e 94 a3 00 	call	0x146	; 0x146 <lcd_clear>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     f30:	cf 91       	pop	r28
            clock_set_time(h, m, s);
            clock_start();

            current_state = STATE_MENU;
            lcd_clear();
            menu_draw();
     f32:	0c 94 10 06 	jmp	0xc20	; 0xc20 <menu_draw>
        }

        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
     f36:	80 91 c1 05 	lds	r24, 0x05C1	; 0x8005c1 <welcome_timer>
     f3a:	8f 5f       	subi	r24, 0xFF	; 255
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
     f3c:	83 30       	cpi	r24, 0x03	; 3
     f3e:	20 f4       	brcc	.+8      	; 0xf48 <menu_update+0xd6>
        }

        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
     f40:	80 93 c1 05 	sts	0x05C1, r24	; 0x8005c1 <welcome_timer>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
     f44:	cf 91       	pop	r28
     f46:	08 95       	ret
        const char *welcome_l1 = "HI YOU";
        const char *welcome_l2 = "Press any button";

        welcome_timer++;
        if (welcome_timer >= 3) { // 3 x 10ms = 30ms per character
            welcome_timer = 0;
     f48:	10 92 c1 05 	sts	0x05C1, r1	; 0x8005c1 <welcome_timer>

            if (welcome_char_idx < 6) {
     f4c:	60 91 c2 05 	lds	r22, 0x05C2	; 0x8005c2 <welcome_char_idx>
     f50:	66 30       	cpi	r22, 0x06	; 6
     f52:	90 f4       	brcc	.+36     	; 0xf78 <menu_update+0x106>
                lcd_set_cursor(0, 5 + welcome_char_idx);
     f54:	6b 5f       	subi	r22, 0xFB	; 251
     f56:	80 e0       	ldi	r24, 0x00	; 0
     f58:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
                lcd_send_data(welcome_l1[welcome_char_idx]);
     f5c:	e0 91 c2 05 	lds	r30, 0x05C2	; 0x8005c2 <welcome_char_idx>
     f60:	f0 e0       	ldi	r31, 0x00	; 0
     f62:	eb 56       	subi	r30, 0x6B	; 107
     f64:	fa 4f       	sbci	r31, 0xFA	; 250
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
                uint8_t l2_idx = welcome_char_idx - 6;
                lcd_set_cursor(1, l2_idx);
                lcd_send_data(welcome_l2[l2_idx]);
     f66:	80 81       	ld	r24, Z
     f68:	0e 94 85 00 	call	0x10a	; 0x10a <lcd_send_data>
                welcome_char_idx++;
     f6c:	80 91 c2 05 	lds	r24, 0x05C2	; 0x8005c2 <welcome_char_idx>
     f70:	8f 5f       	subi	r24, 0xFF	; 255
     f72:	80 93 c2 05 	sts	0x05C2, r24	; 0x8005c2 <welcome_char_idx>
     f76:	e6 cf       	rjmp	.-52     	; 0xf44 <menu_update+0xd2>

            if (welcome_char_idx < 6) {
                lcd_set_cursor(0, 5 + welcome_char_idx);
                lcd_send_data(welcome_l1[welcome_char_idx]);
                welcome_char_idx++;
            } else if (welcome_char_idx < 6 + 16) {
     f78:	66 31       	cpi	r22, 0x16	; 22
     f7a:	20 f7       	brcc	.-56     	; 0xf44 <menu_update+0xd2>
                uint8_t l2_idx = welcome_char_idx - 6;
     f7c:	ca ef       	ldi	r28, 0xFA	; 250
     f7e:	c6 0f       	add	r28, r22
                lcd_set_cursor(1, l2_idx);
     f80:	6c 2f       	mov	r22, r28
     f82:	81 e0       	ldi	r24, 0x01	; 1
     f84:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
                lcd_send_data(welcome_l2[l2_idx]);
     f88:	ec 2f       	mov	r30, r28
     f8a:	f0 e0       	ldi	r31, 0x00	; 0
     f8c:	e4 56       	subi	r30, 0x64	; 100
     f8e:	fa 4f       	sbci	r31, 0xFA	; 250
     f90:	ea cf       	rjmp	.-44     	; 0xf66 <menu_update+0xf4>
        }
        return;
    }

    // 3. STATE_ADJUST_CLOCK: Dedicated Clock Adjust Mode
    if (current_state == STATE_ADJUST_CLOCK) {
     f92:	23 30       	cpi	r18, 0x03	; 3
     f94:	31 05       	cpc	r19, r1
     f96:	09 f0       	breq	.+2      	; 0xf9a <menu_update+0x128>
     f98:	7d c0       	rjmp	.+250    	; 0x1094 <__DATA_REGION_LENGTH__+0x94>
        // --- Navigation: LEFT / RIGHT selects digit 0 to 5 ---
        if (btns & BTN_BIT_LEFT) {
     f9a:	c0 ff       	sbrs	r28, 0
     f9c:	1b c0       	rjmp	.+54     	; 0xfd4 <menu_update+0x162>
            adjust_pos = (adjust_pos == 0) ? 5 : adjust_pos - 1;
     f9e:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <adjust_pos>
     fa2:	88 23       	and	r24, r24
     fa4:	a9 f0       	breq	.+42     	; 0xfd0 <menu_update+0x15e>
     fa6:	81 50       	subi	r24, 0x01	; 1
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_RIGHT) {
            adjust_pos = (adjust_pos == 5) ? 0 : adjust_pos + 1;
     fa8:	80 93 be 05 	sts	0x05BE, r24	; 0x8005be <adjust_pos>
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
            adjust_blink_phase = 1;
     fac:	81 e0       	ldi	r24, 0x01	; 1
     fae:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
            adjust_blink_timer = 0;
     fb2:	10 92 bd 05 	sts	0x05BD, r1	; 0x8005bd <adjust_blink_timer>
            adjust_draw_lcd();
     fb6:	0e 94 6c 03 	call	0x6d8	; 0x6d8 <adjust_draw_lcd>
            adjust_update_7seg();
     fba:	0e 94 21 04 	call	0x842	; 0x842 <adjust_update_7seg>
            menu_draw();
            return;
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
     fbe:	80 91 bd 05 	lds	r24, 0x05BD	; 0x8005bd <adjust_blink_timer>
     fc2:	8f 5f       	subi	r24, 0xFF	; 255
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
     fc4:	84 31       	cpi	r24, 0x14	; 20
     fc6:	08 f0       	brcs	.+2      	; 0xfca <menu_update+0x158>
     fc8:	59 c0       	rjmp	.+178    	; 0x107c <__DATA_REGION_LENGTH__+0x7c>
            menu_draw();
            return;
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
     fca:	80 93 bd 05 	sts	0x05BD, r24	; 0x8005bd <adjust_blink_timer>
     fce:	ba cf       	rjmp	.-140    	; 0xf44 <menu_update+0xd2>

    // 3. STATE_ADJUST_CLOCK: Dedicated Clock Adjust Mode
    if (current_state == STATE_ADJUST_CLOCK) {
        // --- Navigation: LEFT / RIGHT selects digit 0 to 5 ---
        if (btns & BTN_BIT_LEFT) {
            adjust_pos = (adjust_pos == 0) ? 5 : adjust_pos - 1;
     fd0:	85 e0       	ldi	r24, 0x05	; 5
     fd2:	ea cf       	rjmp	.-44     	; 0xfa8 <menu_update+0x136>
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_RIGHT) {
     fd4:	c1 ff       	sbrs	r28, 1
     fd6:	08 c0       	rjmp	.+16     	; 0xfe8 <menu_update+0x176>
            adjust_pos = (adjust_pos == 5) ? 0 : adjust_pos + 1;
     fd8:	80 91 be 05 	lds	r24, 0x05BE	; 0x8005be <adjust_pos>
     fdc:	85 30       	cpi	r24, 0x05	; 5
     fde:	11 f0       	breq	.+4      	; 0xfe4 <menu_update+0x172>
     fe0:	8f 5f       	subi	r24, 0xFF	; 255
     fe2:	e2 cf       	rjmp	.-60     	; 0xfa8 <menu_update+0x136>
     fe4:	80 e0       	ldi	r24, 0x00	; 0
     fe6:	e0 cf       	rjmp	.-64     	; 0xfa8 <menu_update+0x136>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Adjust Value: UP / DOWN changes number 0 to 9 ---
        else if (btns & BTN_BIT_UP) {
     fe8:	c2 ff       	sbrs	r28, 2
     fea:	0e c0       	rjmp	.+28     	; 0x1008 <__DATA_REGION_LENGTH__+0x8>
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] + 1) % 10;
     fec:	e0 91 be 05 	lds	r30, 0x05BE	; 0x8005be <adjust_pos>
     ff0:	f0 e0       	ldi	r31, 0x00	; 0
     ff2:	e5 5f       	subi	r30, 0xF5	; 245
     ff4:	fe 4f       	sbci	r31, 0xFE	; 254
     ff6:	80 81       	ld	r24, Z
     ff8:	90 e0       	ldi	r25, 0x00	; 0
     ffa:	01 96       	adiw	r24, 0x01	; 1
     ffc:	6a e0       	ldi	r22, 0x0A	; 10
     ffe:	70 e0       	ldi	r23, 0x00	; 0
    1000:	0e 94 2c 09 	call	0x1258	; 0x1258 <__divmodhi4>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
    1004:	80 83       	st	Z, r24
    1006:	d2 cf       	rjmp	.-92     	; 0xfac <menu_update+0x13a>
            adjust_blink_phase = 1;
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        else if (btns & BTN_BIT_DOWN) {
    1008:	c3 ff       	sbrs	r28, 3
    100a:	0c c0       	rjmp	.+24     	; 0x1024 <__DATA_REGION_LENGTH__+0x24>
            adjust_digits[adjust_pos] = (adjust_digits[adjust_pos] == 0) ? 9 : adjust_digits[adjust_pos] - 1;
    100c:	e0 91 be 05 	lds	r30, 0x05BE	; 0x8005be <adjust_pos>
    1010:	f0 e0       	ldi	r31, 0x00	; 0
    1012:	e5 5f       	subi	r30, 0xF5	; 245
    1014:	fe 4f       	sbci	r31, 0xFE	; 254
    1016:	80 81       	ld	r24, Z
    1018:	88 23       	and	r24, r24
    101a:	11 f0       	breq	.+4      	; 0x1020 <__DATA_REGION_LENGTH__+0x20>
    101c:	81 50       	subi	r24, 0x01	; 1
    101e:	f2 cf       	rjmp	.-28     	; 0x1004 <__DATA_REGION_LENGTH__+0x4>
    1020:	89 e0       	ldi	r24, 0x09	; 9
    1022:	f0 cf       	rjmp	.-32     	; 0x1004 <__DATA_REGION_LENGTH__+0x4>
            adjust_blink_timer = 0;
            adjust_draw_lcd();
            adjust_update_7seg();
        }
        // --- Confirm: GO saves time and returns to menu ---
        else if (pressed & BTN_BIT_GO) {
    1024:	84 ff       	sbrs	r24, 4
    1026:	cb cf       	rjmp	.-106    	; 0xfbe <menu_update+0x14c>
            uint8_t h = adjust_digits[0] * 10 + adjust_digits[1];
    1028:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <adjust_digits>
    102c:	9a e0       	ldi	r25, 0x0A	; 10
    102e:	80 91 0c 01 	lds	r24, 0x010C	; 0x80010c <adjust_digits+0x1>
    1032:	29 9f       	mul	r18, r25
    1034:	80 0d       	add	r24, r0
    1036:	11 24       	eor	r1, r1
            uint8_t m = adjust_digits[2] * 10 + adjust_digits[3];
    1038:	20 91 0d 01 	lds	r18, 0x010D	; 0x80010d <adjust_digits+0x2>
    103c:	60 91 0e 01 	lds	r22, 0x010E	; 0x80010e <adjust_digits+0x3>
    1040:	29 9f       	mul	r18, r25
    1042:	60 0d       	add	r22, r0
    1044:	11 24       	eor	r1, r1
            uint8_t s = adjust_digits[4] * 10 + adjust_digits[5];
    1046:	20 91 0f 01 	lds	r18, 0x010F	; 0x80010f <adjust_digits+0x4>
    104a:	40 91 10 01 	lds	r20, 0x0110	; 0x800110 <adjust_digits+0x5>
    104e:	29 9f       	mul	r18, r25
    1050:	40 0d       	add	r20, r0
    1052:	11 24       	eor	r1, r1
            if (h > 23) h = 23;
            if (m > 59) m = 59;
            if (s > 59) s = 59;
            clock_set_time(h, m, s);
    1054:	4c 33       	cpi	r20, 0x3C	; 60
    1056:	08 f0       	brcs	.+2      	; 0x105a <__DATA_REGION_LENGTH__+0x5a>
    1058:	4b e3       	ldi	r20, 0x3B	; 59
    105a:	6c 33       	cpi	r22, 0x3C	; 60
    105c:	08 f0       	brcs	.+2      	; 0x1060 <__DATA_REGION_LENGTH__+0x60>
    105e:	6b e3       	ldi	r22, 0x3B	; 59
    1060:	88 31       	cpi	r24, 0x18	; 24
    1062:	08 f0       	brcs	.+2      	; 0x1066 <__DATA_REGION_LENGTH__+0x66>
    1064:	87 e1       	ldi	r24, 0x17	; 23
    1066:	0e 94 ea 02 	call	0x5d4	; 0x5d4 <clock_set_time>
            clock_start();
    106a:	0e 94 7b 02 	call	0x4f6	; 0x4f6 <clock_start>

            current_state = STATE_MENU;
    106e:	81 e0       	ldi	r24, 0x01	; 1
    1070:	90 e0       	ldi	r25, 0x00	; 0
    1072:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_state+0x1>
    1076:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_state>
    107a:	58 cf       	rjmp	.-336    	; 0xf2c <menu_update+0xba>
        }

        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
            adjust_blink_timer = 0;
    107c:	10 92 bd 05 	sts	0x05BD, r1	; 0x8005bd <adjust_blink_timer>
            adjust_blink_phase = !adjust_blink_phase;
    1080:	81 e0       	ldi	r24, 0x01	; 1
    1082:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <adjust_blink_phase>
    1086:	91 11       	cpse	r25, r1
    1088:	80 e0       	ldi	r24, 0x00	; 0
    108a:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <adjust_blink_phase>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
    108e:	cf 91       	pop	r28
        // --- 7-Segment Selected Digit Blinking (every 200ms) ---
        adjust_blink_timer++;
        if (adjust_blink_timer >= 20) { // 20 * 10ms = 200ms
            adjust_blink_timer = 0;
            adjust_blink_phase = !adjust_blink_phase;
            adjust_update_7seg();
    1090:	0c 94 21 04 	jmp	0x842	; 0x842 <adjust_update_7seg>
        }
        return;
    }

    // 4. STATE_RUNNING: Inside an active action
    if (current_state == STATE_RUNNING) {
    1094:	22 30       	cpi	r18, 0x02	; 2
    1096:	31 05       	cpc	r19, r1
    1098:	01 f5       	brne	.+64     	; 0x10da <__DATA_REGION_LENGTH__+0xda>
        if (pressed & BTN_BIT_LEFT) {
    109a:	80 ff       	sbrs	r24, 0
    109c:	0b c0       	rjmp	.+22     	; 0x10b4 <__DATA_REGION_LENGTH__+0xb4>
            // LEFT exits the action and returns to the menu!
            current_state = STATE_MENU;
    109e:	81 e0       	ldi	r24, 0x01	; 1
    10a0:	90 e0       	ldi	r25, 0x00	; 0
    10a2:	90 93 ce 05 	sts	0x05CE, r25	; 0x8005ce <current_state+0x1>
    10a6:	80 93 cd 05 	sts	0x05CD, r24	; 0x8005cd <current_state>
            active_action_func = NULL;
    10aa:	10 92 c6 05 	sts	0x05C6, r1	; 0x8005c6 <active_action_func+0x1>
    10ae:	10 92 c5 05 	sts	0x05C5, r1	; 0x8005c5 <active_action_func>
    10b2:	3c cf       	rjmp	.-392    	; 0xf2c <menu_update+0xba>
            menu_draw();
            return;
        }

        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
    10b4:	e0 91 c5 05 	lds	r30, 0x05C5	; 0x8005c5 <active_action_func>
    10b8:	f0 91 c6 05 	lds	r31, 0x05C6	; 0x8005c6 <active_action_func+0x1>
    10bc:	30 97       	sbiw	r30, 0x00	; 0
    10be:	09 f4       	brne	.+2      	; 0x10c2 <__DATA_REGION_LENGTH__+0xc2>
    10c0:	41 cf       	rjmp	.-382    	; 0xf44 <menu_update+0xd2>
            action_tick++;
    10c2:	80 91 c3 05 	lds	r24, 0x05C3	; 0x8005c3 <action_tick>
    10c6:	8f 5f       	subi	r24, 0xFF	; 255
            if (action_tick >= 10) {
    10c8:	8a 30       	cpi	r24, 0x0A	; 10
    10ca:	18 f4       	brcc	.+6      	; 0x10d2 <__DATA_REGION_LENGTH__+0xd2>
            return;
        }

        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
            action_tick++;
    10cc:	80 93 c3 05 	sts	0x05C3, r24	; 0x8005c3 <action_tick>
    10d0:	39 cf       	rjmp	.-398    	; 0xf44 <menu_update+0xd2>
            if (action_tick >= 10) {
                action_tick = 0;
    10d2:	10 92 c3 05 	sts	0x05C3, r1	; 0x8005c3 <action_tick>
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
    10d6:	cf 91       	pop	r28
        // Periodic action tick (e.g. update count or time display every 100ms)
        if (active_action_func) {
            action_tick++;
            if (action_tick >= 10) {
                action_tick = 0;
                active_action_func();
    10d8:	09 94       	ijmp
        }
        return;
    }

    // 5. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
    10da:	21 30       	cpi	r18, 0x01	; 1
    10dc:	31 05       	cpc	r19, r1
    10de:	09 f0       	breq	.+2      	; 0x10e2 <__DATA_REGION_LENGTH__+0xe2>
    10e0:	31 cf       	rjmp	.-414    	; 0xf44 <menu_update+0xd2>
        if (btns & BTN_BIT_DOWN) {
    10e2:	c3 ff       	sbrs	r28, 3
    10e4:	12 c0       	rjmp	.+36     	; 0x110a <__stack+0xb>
            menu_down();
    10e6:	0e 94 93 06 	call	0xd26	; 0xd26 <menu_down>
        else if (pressed & BTN_BIT_LEFT) {
            menu_back();
        }

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
    10ea:	80 91 cb 05 	lds	r24, 0x05CB	; 0x8005cb <current_menu>
    10ee:	90 91 cc 05 	lds	r25, 0x05CC	; 0x8005cc <current_menu+0x1>
    10f2:	87 5d       	subi	r24, 0xD7	; 215
    10f4:	92 40       	sbci	r25, 0x02	; 2
    10f6:	09 f0       	breq	.+2      	; 0x10fa <__DATA_REGION_LENGTH__+0xfa>
    10f8:	25 cf       	rjmp	.-438    	; 0xf44 <menu_update+0xd2>
            blink_counter++;
    10fa:	80 91 c4 05 	lds	r24, 0x05C4	; 0x8005c4 <blink_counter>
    10fe:	8f 5f       	subi	r24, 0xFF	; 255
            if (blink_counter >= 30) { // 30 * 10ms = 300ms
    1100:	8e 31       	cpi	r24, 0x1E	; 30
    1102:	98 f4       	brcc	.+38     	; 0x112a <__stack+0x2b>
            menu_back();
        }

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
            blink_counter++;
    1104:	80 93 c4 05 	sts	0x05C4, r24	; 0x8005c4 <blink_counter>
    1108:	1d cf       	rjmp	.-454    	; 0xf44 <menu_update+0xd2>
    // 5. STATE_MENU: Menu Navigation
    if (current_state == STATE_MENU) {
        if (btns & BTN_BIT_DOWN) {
            menu_down();
        }
        else if (btns & BTN_BIT_UP) {
    110a:	c2 ff       	sbrs	r28, 2
    110c:	03 c0       	rjmp	.+6      	; 0x1114 <__stack+0x15>
            menu_up();
    110e:	0e 94 b6 06 	call	0xd6c	; 0xd6c <menu_up>
    1112:	eb cf       	rjmp	.-42     	; 0x10ea <__DATA_REGION_LENGTH__+0xea>
        }
        else if ((pressed & BTN_BIT_GO) || (pressed & BTN_BIT_RIGHT)) {
    1114:	98 2f       	mov	r25, r24
    1116:	92 71       	andi	r25, 0x12	; 18
    1118:	19 f0       	breq	.+6      	; 0x1120 <__stack+0x21>
            menu_enter();
    111a:	0e 94 d9 06 	call	0xdb2	; 0xdb2 <menu_enter>
    111e:	e5 cf       	rjmp	.-54     	; 0x10ea <__DATA_REGION_LENGTH__+0xea>
        }
        else if (pressed & BTN_BIT_LEFT) {
    1120:	80 ff       	sbrs	r24, 0
    1122:	e3 cf       	rjmp	.-58     	; 0x10ea <__DATA_REGION_LENGTH__+0xea>
            menu_back();
    1124:	0e 94 11 07 	call	0xe22	; 0xe22 <menu_back>
    1128:	e0 cf       	rjmp	.-64     	; 0x10ea <__DATA_REGION_LENGTH__+0xea>

        // Header blinking timer on root menu (smooth, zero-flicker title blink)
        if (current_menu == &MainMenu) {
            blink_counter++;
            if (blink_counter >= 30) { // 30 * 10ms = 300ms
                blink_counter = 0;
    112a:	10 92 c4 05 	sts	0x05C4, r1	; 0x8005c4 <blink_counter>
                blink_on = !blink_on;
    112e:	81 e0       	ldi	r24, 0x01	; 1
    1130:	90 91 11 01 	lds	r25, 0x0111	; 0x800111 <blink_on>
    1134:	91 11       	cpse	r25, r1
    1136:	80 e0       	ldi	r24, 0x00	; 0
    1138:	80 93 11 01 	sts	0x0111, r24	; 0x800111 <blink_on>
                lcd_set_cursor(0, 0);
    113c:	60 e0       	ldi	r22, 0x00	; 0
    113e:	80 e0       	ldi	r24, 0x00	; 0
    1140:	0e 94 f6 00 	call	0x1ec	; 0x1ec <lcd_set_cursor>
                if (!blink_on) {
    1144:	80 91 11 01 	lds	r24, 0x0111	; 0x800111 <blink_on>
    1148:	81 11       	cpse	r24, r1
    114a:	05 c0       	rjmp	.+10     	; 0x1156 <__stack+0x57>
                    lcd_send_string("                    ");
    114c:	80 e8       	ldi	r24, 0x80	; 128
    114e:	95 e0       	ldi	r25, 0x05	; 5
                    lcd_send_string(current_menu->title);
                }
            }
        }
    }
}
    1150:	cf 91       	pop	r28
                blink_on = !blink_on;
                lcd_set_cursor(0, 0);
                if (!blink_on) {
                    lcd_send_string("                    ");
                } else {
                    lcd_send_string(current_menu->title);
    1152:	0c 94 1d 01 	jmp	0x23a	; 0x23a <lcd_send_string>
    1156:	80 91 cb 05 	lds	r24, 0x05CB	; 0x8005cb <current_menu>
    115a:	90 91 cc 05 	lds	r25, 0x05CC	; 0x8005cc <current_menu+0x1>
    115e:	f8 cf       	rjmp	.-16     	; 0x1150 <__stack+0x51>

00001160 <relay_set_raw>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    1160:	8f 70       	andi	r24, 0x0F	; 15
    1162:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_relay_state>
    RELAYS = current_relay_state;
    1166:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb34>
}
    116a:	08 95       	ret

0000116c <relay_get_state>:

uint8_t relay_get_state(void) {
    return current_relay_state;
}
    116c:	80 91 cf 05 	lds	r24, 0x05CF	; 0x8005cf <current_relay_state>
    1170:	08 95       	ret

00001172 <relay_on>:

void relay_on(uint8_t relay_num) {
    if (relay_num < 4) {
    1172:	84 30       	cpi	r24, 0x04	; 4
    1174:	70 f4       	brcc	.+28     	; 0x1192 <relay_on+0x20>
        relay_set_raw(current_relay_state | (1 << relay_num));
    1176:	21 e0       	ldi	r18, 0x01	; 1
    1178:	30 e0       	ldi	r19, 0x00	; 0
    117a:	a9 01       	movw	r20, r18
    117c:	02 c0       	rjmp	.+4      	; 0x1182 <relay_on+0x10>
    117e:	44 0f       	add	r20, r20
    1180:	55 1f       	adc	r21, r21
    1182:	8a 95       	dec	r24
    1184:	e2 f7       	brpl	.-8      	; 0x117e <relay_on+0xc>
    1186:	ca 01       	movw	r24, r20
    1188:	90 91 cf 05 	lds	r25, 0x05CF	; 0x8005cf <current_relay_state>
    118c:	89 2b       	or	r24, r25
    118e:	0c 94 b0 08 	jmp	0x1160	; 0x1160 <relay_set_raw>
    }
}
    1192:	08 95       	ret

00001194 <relay_off>:

void relay_off(uint8_t relay_num) {
    if (relay_num < 4) {
    1194:	84 30       	cpi	r24, 0x04	; 4
    1196:	78 f4       	brcc	.+30     	; 0x11b6 <relay_off+0x22>
        relay_set_raw(current_relay_state & ~(1 << relay_num));
    1198:	21 e0       	ldi	r18, 0x01	; 1
    119a:	30 e0       	ldi	r19, 0x00	; 0
    119c:	a9 01       	movw	r20, r18
    119e:	02 c0       	rjmp	.+4      	; 0x11a4 <relay_off+0x10>
    11a0:	44 0f       	add	r20, r20
    11a2:	55 1f       	adc	r21, r21
    11a4:	8a 95       	dec	r24
    11a6:	e2 f7       	brpl	.-8      	; 0x11a0 <relay_off+0xc>
    11a8:	ca 01       	movw	r24, r20
    11aa:	80 95       	com	r24
    11ac:	90 91 cf 05 	lds	r25, 0x05CF	; 0x8005cf <current_relay_state>
    11b0:	89 23       	and	r24, r25
    11b2:	0c 94 b0 08 	jmp	0x1160	; 0x1160 <relay_set_raw>
    }
}
    11b6:	08 95       	ret

000011b8 <relay_toggle>:

void relay_toggle(uint8_t relay_num) {
    if (relay_num < 4) {
    11b8:	84 30       	cpi	r24, 0x04	; 4
    11ba:	70 f4       	brcc	.+28     	; 0x11d8 <relay_toggle+0x20>
        relay_set_raw(current_relay_state ^ (1 << relay_num));
    11bc:	21 e0       	ldi	r18, 0x01	; 1
    11be:	30 e0       	ldi	r19, 0x00	; 0
    11c0:	a9 01       	movw	r20, r18
    11c2:	02 c0       	rjmp	.+4      	; 0x11c8 <relay_toggle+0x10>
    11c4:	44 0f       	add	r20, r20
    11c6:	55 1f       	adc	r21, r21
    11c8:	8a 95       	dec	r24
    11ca:	e2 f7       	brpl	.-8      	; 0x11c4 <relay_toggle+0xc>
    11cc:	ca 01       	movw	r24, r20
    11ce:	90 91 cf 05 	lds	r25, 0x05CF	; 0x8005cf <current_relay_state>
    11d2:	89 27       	eor	r24, r25
    11d4:	0c 94 b0 08 	jmp	0x1160	; 0x1160 <relay_set_raw>
    }
}
    11d8:	08 95       	ret

000011da <relay_mode_0_2>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    11da:	85 e0       	ldi	r24, 0x05	; 5
    11dc:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_relay_state>
    RELAYS = current_relay_state;
    11e0:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb34>
}

void relay_mode_0_2(void) {
    // Turn ON Relay 0 & Relay 2, Turn OFF Relay 1 & Relay 3
    relay_set_raw(RELAY_0_BIT | RELAY_2_BIT);
}
    11e4:	08 95       	ret

000011e6 <relay_mode_1_3>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    11e6:	8a e0       	ldi	r24, 0x0A	; 10
    11e8:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_relay_state>
    RELAYS = current_relay_state;
    11ec:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb34>
}

void relay_mode_1_3(void) {
    // Turn ON Relay 1 & Relay 3, Turn OFF Relay 0 & Relay 2
    relay_set_raw(RELAY_1_BIT | RELAY_3_BIT);
}
    11f0:	08 95       	ret

000011f2 <relay_all_on>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    11f2:	8f e0       	ldi	r24, 0x0F	; 15
    11f4:	80 93 cf 05 	sts	0x05CF, r24	; 0x8005cf <current_relay_state>
    RELAYS = current_relay_state;
    11f8:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xb34>
    relay_set_raw(RELAY_1_BIT | RELAY_3_BIT);
}

void relay_all_on(void) {
    relay_set_raw(0x0F);
}
    11fc:	08 95       	ret

000011fe <relay_all_off>:
    relay_all_off();
}

void relay_set_raw(uint8_t state) {
    // Only bits 0..3 are connected to RL0..RL3
    current_relay_state = state & 0x0F;
    11fe:	10 92 cf 05 	sts	0x05CF, r1	; 0x8005cf <current_relay_state>
    RELAYS = current_relay_state;
    1202:	10 92 05 11 	sts	0x1105, r1	; 0x801105 <__bss_end+0xb34>
    relay_set_raw(0x0F);
}

void relay_all_off(void) {
    relay_set_raw(0x00);
}
    1206:	08 95       	ret

00001208 <relay_init>:
    1208:	0c 94 ff 08 	jmp	0x11fe	; 0x11fe <relay_all_off>

0000120c <main>:
#include "clock.h"

int main(void) {
    // 1. Enable External Memory Interface with wait states
    //    SRW10 in MCUCR, and SRW01/SRW00/SRW11 in XMCRA give 2 wait states
    MCUCR |= (1 << SRE) | (1 << SRW10);
    120c:	85 b7       	in	r24, 0x35	; 53
    120e:	80 6c       	ori	r24, 0xC0	; 192
    1210:	85 bf       	out	0x35, r24	; 53
    XMCRA = (1 << SRW01) | (1 << SRW00) | (1 << SRW11);
    1212:	8e e0       	ldi	r24, 0x0E	; 14
    1214:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7e006d>

    // 2. Initialize Peripherals
    lcd_init();     // Initialize LCD (HD44780 8-bit mode)
    1218:	0e 94 ab 00 	call	0x156	; 0x156 <lcd_init>
    relay_init();   // Initialize Relays (all 4 relays OFF)
    121c:	0e 94 04 09 	call	0x1208	; 0x1208 <relay_init>
    clock_init();   // Initialize clock/display buffer before Timer0 starts.
    1220:	0e 94 fe 02 	call	0x5fc	; 0x5fc <clock_init>
    seg7_init();    // Initialize 7-segment display (turn all digits off)
    1224:	0e 94 4e 01 	call	0x29c	; 0x29c <seg7_init>
    menu_init();    // Build linked-list menu tree & show "HI YOU"
    1228:	0e 94 5e 05 	call	0xabc	; 0xabc <menu_init>
    122c:	c0 e4       	ldi	r28, 0x40	; 64
    122e:	dc e9       	ldi	r29, 0x9C	; 156

    // 3. Main Loop
    while (1) {
        // Sample & debounce button states
        button_update();
    1230:	0e 94 35 02 	call	0x46a	; 0x46a <button_update>

        // Update menu navigation, blinking header, and LCD display
        menu_update();
    1234:	0e 94 39 07 	call	0xe72	; 0xe72 <menu_update>
    1238:	ce 01       	movw	r24, r28
    123a:	01 97       	sbiw	r24, 0x01	; 1
    123c:	f1 f7       	brne	.-4      	; 0x123a <main+0x2e>
    123e:	f8 cf       	rjmp	.-16     	; 0x1230 <main+0x24>

00001240 <__udivmodqi4>:
    1240:	99 1b       	sub	r25, r25
    1242:	79 e0       	ldi	r23, 0x09	; 9
    1244:	04 c0       	rjmp	.+8      	; 0x124e <__udivmodqi4_ep>

00001246 <__udivmodqi4_loop>:
    1246:	99 1f       	adc	r25, r25
    1248:	96 17       	cp	r25, r22
    124a:	08 f0       	brcs	.+2      	; 0x124e <__udivmodqi4_ep>
    124c:	96 1b       	sub	r25, r22

0000124e <__udivmodqi4_ep>:
    124e:	88 1f       	adc	r24, r24
    1250:	7a 95       	dec	r23
    1252:	c9 f7       	brne	.-14     	; 0x1246 <__udivmodqi4_loop>
    1254:	80 95       	com	r24
    1256:	08 95       	ret

00001258 <__divmodhi4>:
    1258:	97 fb       	bst	r25, 7
    125a:	07 2e       	mov	r0, r23
    125c:	16 f4       	brtc	.+4      	; 0x1262 <__divmodhi4+0xa>
    125e:	00 94       	com	r0
    1260:	07 d0       	rcall	.+14     	; 0x1270 <__divmodhi4_neg1>
    1262:	77 fd       	sbrc	r23, 7
    1264:	09 d0       	rcall	.+18     	; 0x1278 <__divmodhi4_neg2>
    1266:	0e 94 62 09 	call	0x12c4	; 0x12c4 <__udivmodhi4>
    126a:	07 fc       	sbrc	r0, 7
    126c:	05 d0       	rcall	.+10     	; 0x1278 <__divmodhi4_neg2>
    126e:	3e f4       	brtc	.+14     	; 0x127e <__divmodhi4_exit>

00001270 <__divmodhi4_neg1>:
    1270:	90 95       	com	r25
    1272:	81 95       	neg	r24
    1274:	9f 4f       	sbci	r25, 0xFF	; 255
    1276:	08 95       	ret

00001278 <__divmodhi4_neg2>:
    1278:	70 95       	com	r23
    127a:	61 95       	neg	r22
    127c:	7f 4f       	sbci	r23, 0xFF	; 255

0000127e <__divmodhi4_exit>:
    127e:	08 95       	ret

00001280 <__udivmodsi4>:
    1280:	a1 e2       	ldi	r26, 0x21	; 33
    1282:	1a 2e       	mov	r1, r26
    1284:	aa 1b       	sub	r26, r26
    1286:	bb 1b       	sub	r27, r27
    1288:	fd 01       	movw	r30, r26
    128a:	0d c0       	rjmp	.+26     	; 0x12a6 <__udivmodsi4_ep>

0000128c <__udivmodsi4_loop>:
    128c:	aa 1f       	adc	r26, r26
    128e:	bb 1f       	adc	r27, r27
    1290:	ee 1f       	adc	r30, r30
    1292:	ff 1f       	adc	r31, r31
    1294:	a2 17       	cp	r26, r18
    1296:	b3 07       	cpc	r27, r19
    1298:	e4 07       	cpc	r30, r20
    129a:	f5 07       	cpc	r31, r21
    129c:	20 f0       	brcs	.+8      	; 0x12a6 <__udivmodsi4_ep>
    129e:	a2 1b       	sub	r26, r18
    12a0:	b3 0b       	sbc	r27, r19
    12a2:	e4 0b       	sbc	r30, r20
    12a4:	f5 0b       	sbc	r31, r21

000012a6 <__udivmodsi4_ep>:
    12a6:	66 1f       	adc	r22, r22
    12a8:	77 1f       	adc	r23, r23
    12aa:	88 1f       	adc	r24, r24
    12ac:	99 1f       	adc	r25, r25
    12ae:	1a 94       	dec	r1
    12b0:	69 f7       	brne	.-38     	; 0x128c <__udivmodsi4_loop>
    12b2:	60 95       	com	r22
    12b4:	70 95       	com	r23
    12b6:	80 95       	com	r24
    12b8:	90 95       	com	r25
    12ba:	9b 01       	movw	r18, r22
    12bc:	ac 01       	movw	r20, r24
    12be:	bd 01       	movw	r22, r26
    12c0:	cf 01       	movw	r24, r30
    12c2:	08 95       	ret

000012c4 <__udivmodhi4>:
    12c4:	aa 1b       	sub	r26, r26
    12c6:	bb 1b       	sub	r27, r27
    12c8:	51 e1       	ldi	r21, 0x11	; 17
    12ca:	07 c0       	rjmp	.+14     	; 0x12da <__udivmodhi4_ep>

000012cc <__udivmodhi4_loop>:
    12cc:	aa 1f       	adc	r26, r26
    12ce:	bb 1f       	adc	r27, r27
    12d0:	a6 17       	cp	r26, r22
    12d2:	b7 07       	cpc	r27, r23
    12d4:	10 f0       	brcs	.+4      	; 0x12da <__udivmodhi4_ep>
    12d6:	a6 1b       	sub	r26, r22
    12d8:	b7 0b       	sbc	r27, r23

000012da <__udivmodhi4_ep>:
    12da:	88 1f       	adc	r24, r24
    12dc:	99 1f       	adc	r25, r25
    12de:	5a 95       	dec	r21
    12e0:	a9 f7       	brne	.-22     	; 0x12cc <__udivmodhi4_loop>
    12e2:	80 95       	com	r24
    12e4:	90 95       	com	r25
    12e6:	bc 01       	movw	r22, r24
    12e8:	cd 01       	movw	r24, r26
    12ea:	08 95       	ret

000012ec <_exit>:
    12ec:	f8 94       	cli

000012ee <__stop_program>:
    12ee:	ff cf       	rjmp	.-2      	; 0x12ee <__stop_program>
