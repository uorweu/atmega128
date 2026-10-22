
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
      24:	0c 94 e0 07 	jmp	0xfc0	; 0xfc0 <__vector_9>
      28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      30:	0c 94 8b 01 	jmp	0x316	; 0x316 <__vector_12>
      34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
      3c:	0c 94 dd 03 	jmp	0x7ba	; 0x7ba <__vector_15>
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
      9e:	e2 eb       	ldi	r30, 0xB2	; 178
      a0:	f4 e1       	ldi	r31, 0x14	; 20
      a2:	00 e0       	ldi	r16, 0x00	; 0
      a4:	0b bf       	out	0x3b, r16	; 59
      a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
      a8:	07 90       	elpm	r0, Z+
      aa:	0d 92       	st	X+, r0
      ac:	a8 3b       	cpi	r26, 0xB8	; 184
      ae:	b1 07       	cpc	r27, r17
      b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
      b2:	24 e0       	ldi	r18, 0x04	; 4
      b4:	a8 eb       	ldi	r26, 0xB8	; 184
      b6:	b3 e0       	ldi	r27, 0x03	; 3
      b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
      ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
      bc:	ae 31       	cpi	r26, 0x1E	; 30
      be:	b2 07       	cpc	r27, r18
      c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
      c2:	0e 94 c1 08 	call	0x1182	; 0x1182 <main>
      c6:	0c 94 57 0a 	jmp	0x14ae	; 0x14ae <_exit>

000000ca <__bad_interrupt>:
      ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <write_row>:
{
    ticks++;
}

static void write_row(uint8_t row, const char *text)
{
      ce:	0f 93       	push	r16
      d0:	1f 93       	push	r17
      d2:	cf 93       	push	r28
      d4:	8b 01       	movw	r16, r22
    lcd_set_cursor(row, 0);
      d6:	60 e0       	ldi	r22, 0x00	; 0
      d8:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
      dc:	c4 e1       	ldi	r28, 0x14	; 20
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
      de:	f8 01       	movw	r30, r16
      e0:	80 81       	ld	r24, Z
      e2:	88 23       	and	r24, r24
      e4:	51 f0       	breq	.+20     	; 0xfa <write_row+0x2c>
      e6:	0f 5f       	subi	r16, 0xFF	; 255
      e8:	1f 4f       	sbci	r17, 0xFF	; 255
        else lcd_send_data(' ');
      ea:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
      ee:	c1 50       	subi	r28, 0x01	; 1
}

static void write_row(uint8_t row, const char *text)
{
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
      f0:	b1 f7       	brne	.-20     	; 0xde <write_row+0x10>
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
    }
}
      f2:	cf 91       	pop	r28
      f4:	1f 91       	pop	r17
      f6:	0f 91       	pop	r16
      f8:	08 95       	ret
static void write_row(uint8_t row, const char *text)
{
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
      fa:	80 e2       	ldi	r24, 0x20	; 32
      fc:	f6 cf       	rjmp	.-20     	; 0xea <write_row+0x1c>

000000fe <draw_members>:
        }
    }
}

static void draw_members(void)
{
      fe:	cf 93       	push	r28
     100:	df 93       	push	r29
    lcd_set_cursor(2, 0);
     102:	60 e0       	ldi	r22, 0x00	; 0
     104:	82 e0       	ldi	r24, 0x02	; 2
     106:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
     10a:	d0 e0       	ldi	r29, 0x00	; 0
     10c:	c0 e0       	ldi	r28, 0x00	; 0
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
        lcd_send_data((uint8_t)members[scroll_position + column]);
     10e:	e0 91 bc 03 	lds	r30, 0x03BC	; 0x8003bc <scroll_position>
     112:	ce 01       	movw	r24, r28
     114:	8c 50       	subi	r24, 0x0C	; 12
     116:	9e 4f       	sbci	r25, 0xFE	; 254
     118:	e8 0f       	add	r30, r24
     11a:	f9 2f       	mov	r31, r25
     11c:	f1 1d       	adc	r31, r1
     11e:	80 81       	ld	r24, Z
     120:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     124:	21 96       	adiw	r28, 0x01	; 1
}

static void draw_members(void)
{
    lcd_set_cursor(2, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
     126:	c4 31       	cpi	r28, 0x14	; 20
     128:	d1 05       	cpc	r29, r1
     12a:	89 f7       	brne	.-30     	; 0x10e <draw_members+0x10>
        lcd_send_data((uint8_t)members[scroll_position + column]);
}
     12c:	df 91       	pop	r29
     12e:	cf 91       	pop	r28
     130:	08 95       	ret

00000132 <draw_welcome>:

static void draw_welcome(void)
{
    screen = SCREEN_WELCOME;
     132:	10 92 c4 03 	sts	0x03C4, r1	; 0x8003c4 <screen+0x1>
     136:	10 92 c3 03 	sts	0x03C3, r1	; 0x8003c3 <screen>
    scroll_position = 0;
     13a:	10 92 bc 03 	sts	0x03BC, r1	; 0x8003bc <scroll_position>
    scroll_forward = 1;
     13e:	81 e0       	ldi	r24, 0x01	; 1
     140:	80 93 bb 03 	sts	0x03BB, r24	; 0x8003bb <scroll_forward>
    scroll_delay = SCROLL_END_PAUSE_TICKS;
     144:	84 e6       	ldi	r24, 0x64	; 100
     146:	80 93 ba 03 	sts	0x03BA, r24	; 0x8003ba <scroll_delay>
    lcd_clear();
     14a:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    write_row(1, "     PROJECT 01");
     14e:	6e e8       	ldi	r22, 0x8E	; 142
     150:	72 e0       	ldi	r23, 0x02	; 2
     152:	81 e0       	ldi	r24, 0x01	; 1
     154:	0e 94 67 00 	call	0xce	; 0xce <write_row>
    draw_members();
     158:	0c 94 7f 00 	jmp	0xfe	; 0xfe <draw_members>

0000015c <draw_list>:
}

// Header plus three visible entries. Scroll the four-entry LED menu vertically.
static void draw_list(const char *title, const char *const *items,
                      uint8_t count, uint8_t selected)
{
     15c:	bf 92       	push	r11
     15e:	cf 92       	push	r12
     160:	df 92       	push	r13
     162:	ef 92       	push	r14
     164:	ff 92       	push	r15
     166:	0f 93       	push	r16
     168:	1f 93       	push	r17
     16a:	cf 93       	push	r28
     16c:	df 93       	push	r29
     16e:	8b 01       	movw	r16, r22
     170:	b4 2e       	mov	r11, r20
     172:	d2 2e       	mov	r13, r18
    write_row(0, title);
     174:	bc 01       	movw	r22, r24
     176:	80 e0       	ldi	r24, 0x00	; 0
     178:	0e 94 67 00 	call	0xce	; 0xce <write_row>
    uint8_t first = selected >= 3 ? selected - 2 : 0;
     17c:	cd 2d       	mov	r28, r13
     17e:	82 e0       	ldi	r24, 0x02	; 2
     180:	d8 16       	cp	r13, r24
     182:	08 f4       	brcc	.+2      	; 0x186 <draw_list+0x2a>
     184:	c2 e0       	ldi	r28, 0x02	; 2
     186:	c2 50       	subi	r28, 0x02	; 2
    for (uint8_t row = 1; row < 4; row++) {
     188:	d1 e0       	ldi	r29, 0x01	; 1
        uint8_t item = first + row - 1;
        lcd_set_cursor(row, 0);
     18a:	60 e0       	ldi	r22, 0x00	; 0
     18c:	8d 2f       	mov	r24, r29
     18e:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
        const char *text = item < count ? items[item] : "";
     192:	cb 15       	cp	r28, r11
     194:	60 f5       	brcc	.+88     	; 0x1ee <draw_list+0x92>
     196:	ec 2f       	mov	r30, r28
     198:	f0 e0       	ldi	r31, 0x00	; 0
     19a:	ee 0f       	add	r30, r30
     19c:	ff 1f       	adc	r31, r31
     19e:	e0 0f       	add	r30, r16
     1a0:	f1 1f       	adc	r31, r17
     1a2:	e0 80       	ld	r14, Z
     1a4:	f1 80       	ldd	r15, Z+1	; 0x01
        lcd_send_data(item < count && item == selected ? '>' : ' ');
     1a6:	8e e3       	ldi	r24, 0x3E	; 62
     1a8:	cd 11       	cpse	r28, r13
     1aa:	80 e2       	ldi	r24, 0x20	; 32
     1ac:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
        lcd_send_data(' ');
     1b0:	80 e2       	ldi	r24, 0x20	; 32
     1b2:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     1b6:	82 e1       	ldi	r24, 0x12	; 18
     1b8:	c8 2e       	mov	r12, r24
        for (uint8_t column = 2; column < LCD_COLUMNS; column++) {
            if (*text) lcd_send_data((uint8_t)*text++);
     1ba:	f7 01       	movw	r30, r14
     1bc:	80 81       	ld	r24, Z
     1be:	88 23       	and	r24, r24
     1c0:	d9 f0       	breq	.+54     	; 0x1f8 <draw_list+0x9c>
     1c2:	ff ef       	ldi	r31, 0xFF	; 255
     1c4:	ef 1a       	sub	r14, r31
     1c6:	ff 0a       	sbc	r15, r31
            else lcd_send_data(' ');
     1c8:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     1cc:	ca 94       	dec	r12
        uint8_t item = first + row - 1;
        lcd_set_cursor(row, 0);
        const char *text = item < count ? items[item] : "";
        lcd_send_data(item < count && item == selected ? '>' : ' ');
        lcd_send_data(' ');
        for (uint8_t column = 2; column < LCD_COLUMNS; column++) {
     1ce:	c1 10       	cpse	r12, r1
     1d0:	f4 cf       	rjmp	.-24     	; 0x1ba <draw_list+0x5e>
static void draw_list(const char *title, const char *const *items,
                      uint8_t count, uint8_t selected)
{
    write_row(0, title);
    uint8_t first = selected >= 3 ? selected - 2 : 0;
    for (uint8_t row = 1; row < 4; row++) {
     1d2:	df 5f       	subi	r29, 0xFF	; 255
     1d4:	cf 5f       	subi	r28, 0xFF	; 255
     1d6:	d4 30       	cpi	r29, 0x04	; 4
     1d8:	c1 f6       	brne	.-80     	; 0x18a <draw_list+0x2e>
        for (uint8_t column = 2; column < LCD_COLUMNS; column++) {
            if (*text) lcd_send_data((uint8_t)*text++);
            else lcd_send_data(' ');
        }
    }
}
     1da:	df 91       	pop	r29
     1dc:	cf 91       	pop	r28
     1de:	1f 91       	pop	r17
     1e0:	0f 91       	pop	r16
     1e2:	ff 90       	pop	r15
     1e4:	ef 90       	pop	r14
     1e6:	df 90       	pop	r13
     1e8:	cf 90       	pop	r12
     1ea:	bf 90       	pop	r11
     1ec:	08 95       	ret
    write_row(0, title);
    uint8_t first = selected >= 3 ? selected - 2 : 0;
    for (uint8_t row = 1; row < 4; row++) {
        uint8_t item = first + row - 1;
        lcd_set_cursor(row, 0);
        const char *text = item < count ? items[item] : "";
     1ee:	9f ea       	ldi	r25, 0xAF	; 175
     1f0:	e9 2e       	mov	r14, r25
     1f2:	92 e0       	ldi	r25, 0x02	; 2
     1f4:	f9 2e       	mov	r15, r25
     1f6:	d9 cf       	rjmp	.-78     	; 0x1aa <draw_list+0x4e>
        lcd_send_data(item < count && item == selected ? '>' : ' ');
        lcd_send_data(' ');
        for (uint8_t column = 2; column < LCD_COLUMNS; column++) {
            if (*text) lcd_send_data((uint8_t)*text++);
            else lcd_send_data(' ');
     1f8:	80 e2       	ldi	r24, 0x20	; 32
     1fa:	e6 cf       	rjmp	.-52     	; 0x1c8 <draw_list+0x6c>

000001fc <display_led_value>:
    scroll_delay = (scroll_position == 0 || scroll_position == SCROLL_MAX)
                 ? SCROLL_END_PAUSE_TICKS : SCROLL_STEP_TICKS;
}

static void display_led_value(void)
{
     1fc:	ef 92       	push	r14
     1fe:	ff 92       	push	r15
     200:	0f 93       	push	r16
     202:	1f 93       	push	r17
     204:	cf 93       	push	r28
     206:	df 93       	push	r29
     208:	cd b7       	in	r28, 0x3d	; 61
     20a:	de b7       	in	r29, 0x3e	; 62
     20c:	28 97       	sbiw	r28, 0x08	; 8
     20e:	0f b6       	in	r0, 0x3f	; 63
     210:	f8 94       	cli
     212:	de bf       	out	0x3e, r29	; 62
     214:	0f be       	out	0x3f, r0	; 63
     216:	cd bf       	out	0x3d, r28	; 61
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
     218:	8f ef       	ldi	r24, 0xFF	; 255
     21a:	89 83       	std	Y+1, r24	; 0x01
     21c:	8a 83       	std	Y+2, r24	; 0x02
     21e:	8b 83       	std	Y+3, r24	; 0x03
     220:	8c 83       	std	Y+4, r24	; 0x04
    uint16_t value = led_value;
     222:	e0 91 bd 03 	lds	r30, 0x03BD	; 0x8003bd <led_value>
     226:	f0 91 be 03 	lds	r31, 0x03BE	; 0x8003be <led_value+0x1>
    for (uint8_t i = 0; i < 4; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = value % 10;
     22a:	2a e0       	ldi	r18, 0x0A	; 10
     22c:	30 e0       	ldi	r19, 0x00	; 0
     22e:	cf 01       	movw	r24, r30
     230:	b9 01       	movw	r22, r18
     232:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     236:	88 87       	std	Y+8, r24	; 0x08
     238:	cb 01       	movw	r24, r22
     23a:	b9 01       	movw	r22, r18
     23c:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     240:	8f 83       	std	Y+7, r24	; 0x07
        value /= 10;
     242:	cf 01       	movw	r24, r30
     244:	64 e6       	ldi	r22, 0x64	; 100
     246:	70 e0       	ldi	r23, 0x00	; 0
     248:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     24c:	cb 01       	movw	r24, r22
{
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    uint16_t value = led_value;
    for (uint8_t i = 0; i < 4; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = value % 10;
     24e:	b9 01       	movw	r22, r18
     250:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     254:	8e 83       	std	Y+6, r24	; 0x06
        value /= 10;
     256:	cf 01       	movw	r24, r30
     258:	68 ee       	ldi	r22, 0xE8	; 232
     25a:	73 e0       	ldi	r23, 0x03	; 3
     25c:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     260:	cb 01       	movw	r24, r22
{
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    uint16_t value = led_value;
    for (uint8_t i = 0; i < 4; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = value % 10;
     262:	b9 01       	movw	r22, r18
     264:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     268:	8d 83       	std	Y+5, r24	; 0x05
        value /= 10;
    }
    seg7_set_dp_mask(0);
     26a:	80 e0       	ldi	r24, 0x00	; 0
     26c:	0e 94 aa 03 	call	0x754	; 0x754 <seg7_set_dp_mask>
    seg7_set_array(digits);
     270:	ce 01       	movw	r24, r28
     272:	01 96       	adiw	r24, 0x01	; 1
     274:	0e 94 b9 02 	call	0x572	; 0x572 <seg7_set_array>

    lcd_set_cursor(1, 0);
     278:	60 e0       	ldi	r22, 0x00	; 0
     27a:	81 e0       	ldi	r24, 0x01	; 1
     27c:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
    lcd_send_string("VALUE: ");
     280:	8e e9       	ldi	r24, 0x9E	; 158
     282:	92 e0       	ldi	r25, 0x02	; 2
     284:	0e 94 f6 01 	call	0x3ec	; 0x3ec <lcd_send_string>
     288:	8e 01       	movw	r16, r28
     28a:	0b 5f       	subi	r16, 0xFB	; 251
     28c:	1f 4f       	sbci	r17, 0xFF	; 255
     28e:	7e 01       	movw	r14, r28
     290:	89 e0       	ldi	r24, 0x09	; 9
     292:	e8 0e       	add	r14, r24
     294:	f1 1c       	adc	r15, r1
    for (uint8_t i = SEG7_NUM_DIGITS - 4; i < SEG7_NUM_DIGITS; i++)
        lcd_send_data('0' + digits[i]);
     296:	f8 01       	movw	r30, r16
     298:	81 91       	ld	r24, Z+
     29a:	8f 01       	movw	r16, r30
     29c:	80 5d       	subi	r24, 0xD0	; 208
     29e:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
    seg7_set_dp_mask(0);
    seg7_set_array(digits);

    lcd_set_cursor(1, 0);
    lcd_send_string("VALUE: ");
    for (uint8_t i = SEG7_NUM_DIGITS - 4; i < SEG7_NUM_DIGITS; i++)
     2a2:	0e 15       	cp	r16, r14
     2a4:	1f 05       	cpc	r17, r15
     2a6:	b9 f7       	brne	.-18     	; 0x296 <display_led_value+0x9a>
        lcd_send_data('0' + digits[i]);
    lcd_send_string("         ");
     2a8:	86 ea       	ldi	r24, 0xA6	; 166
     2aa:	92 e0       	ldi	r25, 0x02	; 2
     2ac:	0e 94 f6 01 	call	0x3ec	; 0x3ec <lcd_send_string>
}
     2b0:	28 96       	adiw	r28, 0x08	; 8
     2b2:	0f b6       	in	r0, 0x3f	; 63
     2b4:	f8 94       	cli
     2b6:	de bf       	out	0x3e, r29	; 62
     2b8:	0f be       	out	0x3f, r0	; 63
     2ba:	cd bf       	out	0x3d, r28	; 61
     2bc:	df 91       	pop	r29
     2be:	cf 91       	pop	r28
     2c0:	1f 91       	pop	r17
     2c2:	0f 91       	pop	r16
     2c4:	ff 90       	pop	r15
     2c6:	ef 90       	pop	r14
     2c8:	08 95       	ret

000002ca <draw_menu>:
    draw_members();
}

static void draw_menu(void)
{
    if (screen == SCREEN_DEVICES)
     2ca:	80 91 c3 03 	lds	r24, 0x03C3	; 0x8003c3 <screen>
     2ce:	90 91 c4 03 	lds	r25, 0x03C4	; 0x8003c4 <screen+0x1>
     2d2:	81 30       	cpi	r24, 0x01	; 1
     2d4:	91 05       	cpc	r25, r1
     2d6:	49 f4       	brne	.+18     	; 0x2ea <draw_menu+0x20>
        draw_list("DEVICE:", devices, 2, device_selection);
     2d8:	20 91 c2 03 	lds	r18, 0x03C2	; 0x8003c2 <device_selection>
     2dc:	42 e0       	ldi	r20, 0x02	; 2
     2de:	60 ef       	ldi	r22, 0xF0	; 240
     2e0:	71 e0       	ldi	r23, 0x01	; 1
     2e2:	80 eb       	ldi	r24, 0xB0	; 176
     2e4:	92 e0       	ldi	r25, 0x02	; 2
    else if (screen == SCREEN_LED_MENU)
        draw_list("LED:", led_modes, 4, led_selection);
    else if (screen == SCREEN_RELAY_MENU)
        draw_list("RELAY:", relay_modes, 2, relay_selection);
     2e6:	0c 94 ae 00 	jmp	0x15c	; 0x15c <draw_list>

static void draw_menu(void)
{
    if (screen == SCREEN_DEVICES)
        draw_list("DEVICE:", devices, 2, device_selection);
    else if (screen == SCREEN_LED_MENU)
     2ea:	82 30       	cpi	r24, 0x02	; 2
     2ec:	91 05       	cpc	r25, r1
     2ee:	41 f4       	brne	.+16     	; 0x300 <draw_menu+0x36>
        draw_list("LED:", led_modes, 4, led_selection);
     2f0:	20 91 c1 03 	lds	r18, 0x03C1	; 0x8003c1 <led_selection>
     2f4:	44 e0       	ldi	r20, 0x04	; 4
     2f6:	68 ee       	ldi	r22, 0xE8	; 232
     2f8:	71 e0       	ldi	r23, 0x01	; 1
     2fa:	88 eb       	ldi	r24, 0xB8	; 184
     2fc:	92 e0       	ldi	r25, 0x02	; 2
     2fe:	f3 cf       	rjmp	.-26     	; 0x2e6 <draw_menu+0x1c>
    else if (screen == SCREEN_RELAY_MENU)
     300:	04 97       	sbiw	r24, 0x04	; 4
     302:	41 f4       	brne	.+16     	; 0x314 <draw_menu+0x4a>
        draw_list("RELAY:", relay_modes, 2, relay_selection);
     304:	20 91 c0 03 	lds	r18, 0x03C0	; 0x8003c0 <relay_selection>
     308:	42 e0       	ldi	r20, 0x02	; 2
     30a:	64 ee       	ldi	r22, 0xE4	; 228
     30c:	71 e0       	ldi	r23, 0x01	; 1
     30e:	8d eb       	ldi	r24, 0xBD	; 189
     310:	92 e0       	ldi	r25, 0x02	; 2
     312:	e9 cf       	rjmp	.-46     	; 0x2e6 <draw_menu+0x1c>
}
     314:	08 95       	ret

00000316 <__vector_12>:
static uint8_t scroll_forward;
static uint8_t scroll_delay;
static volatile uint16_t ticks;

ISR(TIMER1_COMPA_vect)
{
     316:	1f 92       	push	r1
     318:	0f 92       	push	r0
     31a:	0f b6       	in	r0, 0x3f	; 63
     31c:	0f 92       	push	r0
     31e:	11 24       	eor	r1, r1
     320:	8f 93       	push	r24
     322:	9f 93       	push	r25
    ticks++;
     324:	80 91 b8 03 	lds	r24, 0x03B8	; 0x8003b8 <__data_end>
     328:	90 91 b9 03 	lds	r25, 0x03B9	; 0x8003b9 <__data_end+0x1>
     32c:	01 96       	adiw	r24, 0x01	; 1
     32e:	90 93 b9 03 	sts	0x03B9, r25	; 0x8003b9 <__data_end+0x1>
     332:	80 93 b8 03 	sts	0x03B8, r24	; 0x8003b8 <__data_end>
}
     336:	9f 91       	pop	r25
     338:	8f 91       	pop	r24
     33a:	0f 90       	pop	r0
     33c:	0f be       	out	0x3f, r0	; 63
     33e:	0f 90       	pop	r0
     340:	1f 90       	pop	r1
     342:	18 95       	reti

00000344 <lcd_write>:

/* Main-context API: ISRs may use the shared bus, but must not call the LCD.
 * Keep RS, the data latch, and E atomic; leave execution waits interruptible.
 */
static void lcd_write(uint8_t value, uint8_t is_data) {
  uint8_t sreg = SREG;
     344:	2f b7       	in	r18, 0x3f	; 63
  cli();
     346:	f8 94       	cli
  if (is_data) {
    PORTG |= LCD_RS_MASK;
     348:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 * Keep RS, the data latch, and E atomic; leave execution waits interruptible.
 */
static void lcd_write(uint8_t value, uint8_t is_data) {
  uint8_t sreg = SREG;
  cli();
  if (is_data) {
     34c:	66 23       	and	r22, r22
     34e:	d1 f0       	breq	.+52     	; 0x384 <lcd_write+0x40>
    PORTG |= LCD_RS_MASK;
     350:	90 61       	ori	r25, 0x10	; 16
     352:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
void io_bus_init(void);
void io_bus_write(uint16_t address, uint8_t data);
uint8_t io_bus_read(uint16_t address);
#else
static inline void io_bus_write(uint16_t address, uint8_t data) {
    *(volatile uint8_t *)(uintptr_t)address = data;
     356:	80 93 01 11 	sts	0x1101, r24	; 0x801101 <__bss_end+0xce3>
    can be achieved.
*/
void
_delay_loop_1(uint8_t __count)
{
	__asm__ volatile (
     35a:	85 e0       	ldi	r24, 0x05	; 5
     35c:	98 2f       	mov	r25, r24
     35e:	9a 95       	dec	r25
     360:	f1 f7       	brne	.-4      	; 0x35e <lcd_write+0x1a>
  } else {
    PORTG &= ~LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL2, value);
  }
  _delay_us(1);
  PORTG |= LCD_E_MASK;
     362:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     366:	98 60       	ori	r25, 0x08	; 8
     368:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     36c:	9a e0       	ldi	r25, 0x0A	; 10
     36e:	9a 95       	dec	r25
     370:	f1 f7       	brne	.-4      	; 0x36e <lcd_write+0x2a>
  _delay_us(2);
  PORTG &= ~LCD_E_MASK;
     372:	90 91 65 00 	lds	r25, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     376:	97 7f       	andi	r25, 0xF7	; 247
     378:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     37c:	8a 95       	dec	r24
     37e:	f1 f7       	brne	.-4      	; 0x37c <lcd_write+0x38>
  _delay_us(1);
  SREG = sreg;
     380:	2f bf       	out	0x3f, r18	; 63
}
     382:	08 95       	ret
  cli();
  if (is_data) {
    PORTG |= LCD_RS_MASK;
    io_bus_write(EXTERNAL_MEM + CSEL1, value);
  } else {
    PORTG &= ~LCD_RS_MASK;
     384:	9f 7e       	andi	r25, 0xEF	; 239
     386:	90 93 65 00 	sts	0x0065, r25	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     38a:	80 93 02 11 	sts	0x1102, r24	; 0x801102 <__bss_end+0xce4>
     38e:	e5 cf       	rjmp	.-54     	; 0x35a <lcd_write+0x16>

00000390 <lcd_send_cmd>:
  PORTG &= ~LCD_E_MASK;
  _delay_us(1);
  SREG = sreg;
}

void lcd_send_cmd(uint8_t cmd) {
     390:	cf 93       	push	r28
     392:	c8 2f       	mov	r28, r24
  lcd_write(cmd, 0);
     394:	60 e0       	ldi	r22, 0x00	; 0
     396:	0e 94 a2 01 	call	0x344	; 0x344 <lcd_write>
  /* Clear and both return-home encodings need a long wait. R/W is grounded.
   * HD44780U: 1.52 ms / 37 us at 270 kHz; allow for a 190 kHz oscillator.
   */
  if (cmd == 0x01 || (cmd & 0xFE) == 0x02) {
     39a:	c1 30       	cpi	r28, 0x01	; 1
     39c:	29 f0       	breq	.+10     	; 0x3a8 <lcd_send_cmd+0x18>
     39e:	ce 7f       	andi	r28, 0xFE	; 254
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
     3a0:	80 ef       	ldi	r24, 0xF0	; 240
     3a2:	90 e0       	ldi	r25, 0x00	; 0
     3a4:	c2 30       	cpi	r28, 0x02	; 2
     3a6:	11 f4       	brne	.+4      	; 0x3ac <lcd_send_cmd+0x1c>
     3a8:	80 ee       	ldi	r24, 0xE0	; 224
     3aa:	9e e2       	ldi	r25, 0x2E	; 46
     3ac:	01 97       	sbiw	r24, 0x01	; 1
     3ae:	f1 f7       	brne	.-4      	; 0x3ac <lcd_send_cmd+0x1c>
    _delay_ms(3);
  } else {
    _delay_us(60);
  }
}
     3b0:	cf 91       	pop	r28
     3b2:	08 95       	ret

000003b4 <lcd_send_data>:

void lcd_send_data(uint8_t data) {
  lcd_write(data, 1);
     3b4:	61 e0       	ldi	r22, 0x01	; 1
     3b6:	0e 94 a2 01 	call	0x344	; 0x344 <lcd_write>
     3ba:	80 ef       	ldi	r24, 0xF0	; 240
     3bc:	90 e0       	ldi	r25, 0x00	; 0
     3be:	01 97       	sbiw	r24, 0x01	; 1
     3c0:	f1 f7       	brne	.-4      	; 0x3be <lcd_send_data+0xa>
  /* Includes oscillator margin and the address-counter update time. */
  _delay_us(60);
}
     3c2:	08 95       	ret

000003c4 <lcd_clear>:
  lcd_send_cmd(0x06); // Increment cursor, no display shift
  _delay_ms(5);
}

void lcd_clear(void) {
  lcd_send_cmd(0x01);
     3c4:	81 e0       	ldi	r24, 0x01	; 1
     3c6:	0c 94 c8 01 	jmp	0x390	; 0x390 <lcd_send_cmd>

000003ca <lcd_set_cursor>:
}

void lcd_set_cursor(uint8_t row, uint8_t col) {
     3ca:	84 30       	cpi	r24, 0x04	; 4
     3cc:	08 f0       	brcs	.+2      	; 0x3d0 <lcd_set_cursor+0x6>
     3ce:	83 e0       	ldi	r24, 0x03	; 3
  if (row > 3) row = 3;
  /* 20x4 DDRAM row bases: 0x00, 0x40, 0x14, 0x54.
   * Compute them without an SRAM table or stack copy.
   */
  uint8_t offset = ((row & 1) ? 0x40 : 0) + ((row & 2) ? 0x14 : 0);
     3d0:	90 e4       	ldi	r25, 0x40	; 64
     3d2:	89 9f       	mul	r24, r25
     3d4:	90 01       	movw	r18, r0
     3d6:	11 24       	eor	r1, r1
     3d8:	20 74       	andi	r18, 0x40	; 64
     3da:	90 e0       	ldi	r25, 0x00	; 0
     3dc:	81 fd       	sbrc	r24, 1
     3de:	94 e1       	ldi	r25, 0x14	; 20
  lcd_send_cmd(0x80 | (col + offset));
     3e0:	82 2f       	mov	r24, r18
     3e2:	86 0f       	add	r24, r22
     3e4:	89 0f       	add	r24, r25
     3e6:	80 68       	ori	r24, 0x80	; 128
     3e8:	0c 94 c8 01 	jmp	0x390	; 0x390 <lcd_send_cmd>

000003ec <lcd_send_string>:
}

void lcd_send_string(const char *str) {
     3ec:	cf 93       	push	r28
     3ee:	df 93       	push	r29
     3f0:	ec 01       	movw	r28, r24
  while (*str) lcd_send_data((uint8_t)*str++);
     3f2:	89 91       	ld	r24, Y+
     3f4:	81 11       	cpse	r24, r1
     3f6:	03 c0       	rjmp	.+6      	; 0x3fe <lcd_send_string+0x12>
}
     3f8:	df 91       	pop	r29
     3fa:	cf 91       	pop	r28
     3fc:	08 95       	ret
  uint8_t offset = ((row & 1) ? 0x40 : 0) + ((row & 2) ? 0x14 : 0);
  lcd_send_cmd(0x80 | (col + offset));
}

void lcd_send_string(const char *str) {
  while (*str) lcd_send_data((uint8_t)*str++);
     3fe:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     402:	f7 cf       	rjmp	.-18     	; 0x3f2 <lcd_send_string+0x6>

00000404 <lcd_send_string_animated>:
}

void lcd_send_string_animated(const char *str, uint16_t delay_ms_per_char) {
     404:	ef 92       	push	r14
     406:	ff 92       	push	r15
     408:	0f 93       	push	r16
     40a:	1f 93       	push	r17
     40c:	cf 93       	push	r28
     40e:	df 93       	push	r29
     410:	8b 01       	movw	r16, r22
     412:	ec 01       	movw	r28, r24
     414:	80 ea       	ldi	r24, 0xA0	; 160
     416:	e8 2e       	mov	r14, r24
     418:	8f e0       	ldi	r24, 0x0F	; 15
     41a:	f8 2e       	mov	r15, r24
  while (*str) {
     41c:	89 91       	ld	r24, Y+
     41e:	81 11       	cpse	r24, r1
     420:	07 c0       	rjmp	.+14     	; 0x430 <lcd_send_string_animated+0x2c>
    lcd_send_data((uint8_t)*str++);
    for (uint16_t i = 0; i < delay_ms_per_char; i++) _delay_ms(1);
  }
}
     422:	df 91       	pop	r29
     424:	cf 91       	pop	r28
     426:	1f 91       	pop	r17
     428:	0f 91       	pop	r16
     42a:	ff 90       	pop	r15
     42c:	ef 90       	pop	r14
     42e:	08 95       	ret
  while (*str) lcd_send_data((uint8_t)*str++);
}

void lcd_send_string_animated(const char *str, uint16_t delay_ms_per_char) {
  while (*str) {
    lcd_send_data((uint8_t)*str++);
     430:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
    for (uint16_t i = 0; i < delay_ms_per_char; i++) _delay_ms(1);
     434:	90 e0       	ldi	r25, 0x00	; 0
     436:	80 e0       	ldi	r24, 0x00	; 0
     438:	80 17       	cp	r24, r16
     43a:	91 07       	cpc	r25, r17
     43c:	79 f3       	breq	.-34     	; 0x41c <lcd_send_string_animated+0x18>
     43e:	f7 01       	movw	r30, r14
     440:	31 97       	sbiw	r30, 0x01	; 1
     442:	f1 f7       	brne	.-4      	; 0x440 <lcd_send_string_animated+0x3c>
     444:	01 96       	adiw	r24, 0x01	; 1
     446:	f8 cf       	rjmp	.-16     	; 0x438 <lcd_send_string_animated+0x34>

00000448 <lcd_display>:
  }
}

void lcd_display(void) {
  lcd_send_cmd(0x0C);
     448:	8c e0       	ldi	r24, 0x0C	; 12
     44a:	0c 94 c8 01 	jmp	0x390	; 0x390 <lcd_send_cmd>

0000044e <lcd_init>:
  lcd_write(data, 1);
  /* Includes oscillator margin and the address-counter update time. */
  _delay_us(60);
}

void lcd_init(void) {
     44e:	0f 93       	push	r16
     450:	1f 93       	push	r17
     452:	cf 93       	push	r28
     454:	df 93       	push	r29
  // PG3 = LCD E, PG4 = LCD RS. RS must be disconnected from latched A0.
  // AS0=0 leaves PG3/PG4 as GPIO rather than asynchronous timer pins.
  ASSR &= ~(1 << AS0);
     456:	80 b7       	in	r24, 0x30	; 48
     458:	87 7f       	andi	r24, 0xF7	; 247
     45a:	80 bf       	out	0x30, r24	; 48
  PORTG &= ~(LCD_E_MASK | LCD_RS_MASK);
     45c:	80 91 65 00 	lds	r24, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
     460:	87 7e       	andi	r24, 0xE7	; 231
     462:	80 93 65 00 	sts	0x0065, r24	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
  DDRG |= LCD_E_MASK | LCD_RS_MASK;
     466:	80 91 64 00 	lds	r24, 0x0064	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     46a:	88 61       	ori	r24, 0x18	; 24
     46c:	80 93 64 00 	sts	0x0064, r24	; 0x800064 <__TEXT_REGION_LENGTH__+0x7e0064>
     470:	88 ee       	ldi	r24, 0xE8	; 232
     472:	93 e0       	ldi	r25, 0x03	; 3
     474:	20 e9       	ldi	r18, 0x90	; 144
     476:	31 e0       	ldi	r19, 0x01	; 1
     478:	f9 01       	movw	r30, r18
     47a:	31 97       	sbiw	r30, 0x01	; 1
     47c:	f1 f7       	brne	.-4      	; 0x47a <lcd_init+0x2c>
     47e:	01 97       	sbiw	r24, 0x01	; 1
		__ticks = 1;
	else if (__tmp > 65535)
	{
		//	__ticks = requested delay in 1/10 ms
		__ticks = (uint16_t) (__ms * 10.0);
		while(__ticks)
     480:	d9 f7       	brne	.-10     	; 0x478 <lcd_init+0x2a>

  // Retain the board's conservative startup/recovery sequence.
  _delay_ms(100);
  lcd_send_cmd(0x38);
     482:	88 e3       	ldi	r24, 0x38	; 56
     484:	0e 94 c8 01 	call	0x390	; 0x390 <lcd_send_cmd>
     488:	00 e4       	ldi	r16, 0x40	; 64
     48a:	1c e9       	ldi	r17, 0x9C	; 156
     48c:	c8 01       	movw	r24, r16
     48e:	01 97       	sbiw	r24, 0x01	; 1
     490:	f1 f7       	brne	.-4      	; 0x48e <lcd_init+0x40>
  _delay_ms(10);
  lcd_send_cmd(0x38);
     492:	88 e3       	ldi	r24, 0x38	; 56
     494:	0e 94 c8 01 	call	0x390	; 0x390 <lcd_send_cmd>
     498:	c0 e2       	ldi	r28, 0x20	; 32
     49a:	de e4       	ldi	r29, 0x4E	; 78
     49c:	ce 01       	movw	r24, r28
     49e:	01 97       	sbiw	r24, 0x01	; 1
     4a0:	f1 f7       	brne	.-4      	; 0x49e <lcd_init+0x50>
  _delay_ms(5);
  lcd_send_cmd(0x38);
     4a2:	88 e3       	ldi	r24, 0x38	; 56
     4a4:	0e 94 c8 01 	call	0x390	; 0x390 <lcd_send_cmd>
     4a8:	ce 01       	movw	r24, r28
     4aa:	01 97       	sbiw	r24, 0x01	; 1
     4ac:	f1 f7       	brne	.-4      	; 0x4aa <lcd_init+0x5c>
  _delay_ms(5);
  lcd_send_cmd(0x38); // 8-bit, 2 controller lines, 5x8 font
     4ae:	88 e3       	ldi	r24, 0x38	; 56
     4b0:	0e 94 c8 01 	call	0x390	; 0x390 <lcd_send_cmd>
     4b4:	ce 01       	movw	r24, r28
     4b6:	01 97       	sbiw	r24, 0x01	; 1
     4b8:	f1 f7       	brne	.-4      	; 0x4b6 <lcd_init+0x68>
  _delay_ms(5);
  lcd_display();
     4ba:	0e 94 24 02 	call	0x448	; 0x448 <lcd_display>
     4be:	ce 01       	movw	r24, r28
     4c0:	01 97       	sbiw	r24, 0x01	; 1
     4c2:	f1 f7       	brne	.-4      	; 0x4c0 <lcd_init+0x72>
  _delay_ms(5);
  lcd_clear();
     4c4:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
     4c8:	c8 01       	movw	r24, r16
     4ca:	01 97       	sbiw	r24, 0x01	; 1
     4cc:	f1 f7       	brne	.-4      	; 0x4ca <lcd_init+0x7c>
  _delay_ms(10);
  lcd_send_cmd(0x06); // Increment cursor, no display shift
     4ce:	86 e0       	ldi	r24, 0x06	; 6
     4d0:	0e 94 c8 01 	call	0x390	; 0x390 <lcd_send_cmd>
     4d4:	21 97       	sbiw	r28, 0x01	; 1
     4d6:	f1 f7       	brne	.-4      	; 0x4d4 <lcd_init+0x86>
  _delay_ms(5);
}
     4d8:	df 91       	pop	r29
     4da:	cf 91       	pop	r28
     4dc:	1f 91       	pop	r17
     4de:	0f 91       	pop	r16
     4e0:	08 95       	ret

000004e2 <lcd_write_line>:
  lcd_send_cmd(0x0C);
}


void lcd_write_line(uint8_t row, const char *text)
{
     4e2:	0f 93       	push	r16
     4e4:	1f 93       	push	r17
     4e6:	cf 93       	push	r28
     4e8:	8b 01       	movw	r16, r22
    if (row >= LCD_ROWS) return;
     4ea:	84 30       	cpi	r24, 0x04	; 4
     4ec:	70 f4       	brcc	.+28     	; 0x50a <lcd_write_line+0x28>
    lcd_set_cursor(row, 0);
     4ee:	60 e0       	ldi	r22, 0x00	; 0
     4f0:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
     4f4:	c4 e1       	ldi	r28, 0x14	; 20
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
     4f6:	f8 01       	movw	r30, r16
     4f8:	80 81       	ld	r24, Z
     4fa:	88 23       	and	r24, r24
     4fc:	51 f0       	breq	.+20     	; 0x512 <lcd_write_line+0x30>
     4fe:	0f 5f       	subi	r16, 0xFF	; 255
     500:	1f 4f       	sbci	r17, 0xFF	; 255
        else lcd_send_data(' ');
     502:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     506:	c1 50       	subi	r28, 0x01	; 1

void lcd_write_line(uint8_t row, const char *text)
{
    if (row >= LCD_ROWS) return;
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
     508:	b1 f7       	brne	.-20     	; 0x4f6 <lcd_write_line+0x14>
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
    }
}
     50a:	cf 91       	pop	r28
     50c:	1f 91       	pop	r17
     50e:	0f 91       	pop	r16
     510:	08 95       	ret
{
    if (row >= LCD_ROWS) return;
    lcd_set_cursor(row, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++) {
        if (*text) lcd_send_data((uint8_t)*text++);
        else lcd_send_data(' ');
     512:	80 e2       	ldi	r24, 0x20	; 32
     514:	f6 cf       	rjmp	.-20     	; 0x502 <lcd_write_line+0x20>

00000516 <seg7_init>:
static uint16_t timer0_tick_count = 0;
#endif

void seg7_init(void) {
    // Synchronous Timer0 leaves PG3/PG4 available for LCD E and RS.
    ASSR &= ~(1 << AS0);
     516:	80 b7       	in	r24, 0x30	; 48
     518:	87 7f       	andi	r24, 0xF7	; 247
     51a:	80 bf       	out	0x30, r24	; 48
    current_digit = 0;
     51c:	10 92 cb 03 	sts	0x03CB, r1	; 0x8003cb <current_digit>
#ifdef SEG7_ENABLE_CLOCK
    timer0_tick_count = 0;
     520:	10 92 c9 03 	sts	0x03C9, r1	; 0x8003c9 <timer0_tick_count+0x1>
     524:	10 92 c8 03 	sts	0x03C8, r1	; 0x8003c8 <timer0_tick_count>
#endif
    dp_mask = 0;
     528:	10 92 ca 03 	sts	0x03CA, r1	; 0x8003ca <dp_mask>
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
        display_buffer[i] = SEG7_BLANK;
     52c:	e0 e0       	ldi	r30, 0x00	; 0
     52e:	f1 e0       	ldi	r31, 0x01	; 1
     530:	8f ef       	ldi	r24, 0xFF	; 255
     532:	80 83       	st	Z, r24
     534:	81 83       	std	Z+1, r24	; 0x01
     536:	82 83       	std	Z+2, r24	; 0x02
     538:	83 83       	std	Z+3, r24	; 0x03
     53a:	84 83       	std	Z+4, r24	; 0x04
     53c:	85 83       	std	Z+5, r24	; 0x05
     53e:	86 83       	std	Z+6, r24	; 0x06
     540:	87 83       	std	Z+7, r24	; 0x07
    }
    // Hardware memory interface writes to CSEL3 and CSEL4:
    LED_7CONTROL = 0x00;        // Turn off all digit transistors
     542:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xce6>
    LED_7DATA    = SEG_BLANK;   // Turn off all segment lines
     546:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xce5>

    // Timer0 /64, 250 counts at 16 MHz: 1 ms slots, 125 Hz per digit.
    TCCR0 = (1 << WGM01) | (1 << CS02);
     54a:	8c e0       	ldi	r24, 0x0C	; 12
     54c:	83 bf       	out	0x33, r24	; 51
    TCNT0 = 0;
     54e:	12 be       	out	0x32, r1	; 50
    OCR0 = (F_CPU / 64UL / 1000UL) - 1;
     550:	89 ef       	ldi	r24, 0xF9	; 249
     552:	81 bf       	out	0x31, r24	; 49
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
     554:	82 e0       	ldi	r24, 0x02	; 2
     556:	86 bf       	out	0x36, r24	; 54
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
     558:	87 b7       	in	r24, 0x37	; 55
     55a:	82 60       	ori	r24, 0x02	; 2
     55c:	87 bf       	out	0x37, r24	; 55
    sei();                      // Enable global interrupts
     55e:	78 94       	sei
}
     560:	08 95       	ret

00000562 <seg7_set_digit>:
    }
#endif
}

void seg7_set_digit(uint8_t pos, uint8_t value) {
    if (pos < SEG7_NUM_DIGITS) {
     562:	88 30       	cpi	r24, 0x08	; 8
     564:	28 f4       	brcc	.+10     	; 0x570 <seg7_set_digit+0xe>
        display_buffer[pos] = value;
     566:	e8 2f       	mov	r30, r24
     568:	f0 e0       	ldi	r31, 0x00	; 0
     56a:	e0 50       	subi	r30, 0x00	; 0
     56c:	ff 4f       	sbci	r31, 0xFF	; 255
     56e:	60 83       	st	Z, r22
    }
}
     570:	08 95       	ret

00000572 <seg7_set_array>:

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     572:	2f b7       	in	r18, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     574:	f8 94       	cli
     576:	fc 01       	movw	r30, r24
     578:	90 e0       	ldi	r25, 0x00	; 0
     57a:	80 e0       	ldi	r24, 0x00	; 0
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
            display_buffer[i] = digits[i];
     57c:	31 91       	ld	r19, Z+
     57e:	dc 01       	movw	r26, r24
     580:	a0 50       	subi	r26, 0x00	; 0
     582:	bf 4f       	sbci	r27, 0xFF	; 255
     584:	3c 93       	st	X, r19
     586:	01 96       	adiw	r24, 0x01	; 1
    }
}

void seg7_set_array(const uint8_t digits[SEG7_NUM_DIGITS]) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) {
     588:	88 30       	cpi	r24, 0x08	; 8
     58a:	91 05       	cpc	r25, r1
     58c:	b9 f7       	brne	.-18     	; 0x57c <seg7_set_array+0xa>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     58e:	2f bf       	out	0x3f, r18	; 63
            display_buffer[i] = digits[i];
        }
    }
}
     590:	08 95       	ret

00000592 <seg7_set_decimal.part.1>:

    // Advance across all eight logical positions.
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}

void seg7_set_decimal(uint32_t num, uint8_t width)
     592:	8f 92       	push	r8
     594:	9f 92       	push	r9
     596:	af 92       	push	r10
     598:	bf 92       	push	r11
     59a:	ef 92       	push	r14
     59c:	ff 92       	push	r15
     59e:	0f 93       	push	r16
     5a0:	1f 93       	push	r17
     5a2:	cf 93       	push	r28
     5a4:	df 93       	push	r29
     5a6:	cd b7       	in	r28, 0x3d	; 61
     5a8:	de b7       	in	r29, 0x3e	; 62
     5aa:	28 97       	sbiw	r28, 0x08	; 8
     5ac:	0f b6       	in	r0, 0x3f	; 63
     5ae:	f8 94       	cli
     5b0:	de bf       	out	0x3e, r29	; 62
     5b2:	0f be       	out	0x3f, r0	; 63
     5b4:	cd bf       	out	0x3d, r28	; 61
     5b6:	e4 2e       	mov	r14, r20
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
     5b8:	ef ef       	ldi	r30, 0xFF	; 255
     5ba:	e9 83       	std	Y+1, r30	; 0x01
     5bc:	ea 83       	std	Y+2, r30	; 0x02
     5be:	eb 83       	std	Y+3, r30	; 0x03
     5c0:	ec 83       	std	Y+4, r30	; 0x04
     5c2:	ed 83       	std	Y+5, r30	; 0x05
     5c4:	ee 83       	std	Y+6, r30	; 0x06
     5c6:	ef 83       	std	Y+7, r30	; 0x07
     5c8:	e8 87       	std	Y+8, r30	; 0x08
     5ca:	8e 01       	movw	r16, r28
     5cc:	07 5f       	subi	r16, 0xF7	; 247
     5ce:	1f 4f       	sbci	r17, 0xFF	; 255
    for (uint8_t i = 0; i < width; i++) {
     5d0:	f1 2c       	mov	r15, r1
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
     5d2:	2a e0       	ldi	r18, 0x0A	; 10
     5d4:	82 2e       	mov	r8, r18
     5d6:	91 2c       	mov	r9, r1
     5d8:	a1 2c       	mov	r10, r1
     5da:	b1 2c       	mov	r11, r1
void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
     5dc:	fe 10       	cpse	r15, r14
     5de:	15 c0       	rjmp	.+42     	; 0x60a <seg7_set_decimal.part.1+0x78>
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
     5e0:	ce 01       	movw	r24, r28
     5e2:	01 96       	adiw	r24, 0x01	; 1
     5e4:	0e 94 b9 02 	call	0x572	; 0x572 <seg7_set_array>
}
     5e8:	28 96       	adiw	r28, 0x08	; 8
     5ea:	0f b6       	in	r0, 0x3f	; 63
     5ec:	f8 94       	cli
     5ee:	de bf       	out	0x3e, r29	; 62
     5f0:	0f be       	out	0x3f, r0	; 63
     5f2:	cd bf       	out	0x3d, r28	; 61
     5f4:	df 91       	pop	r29
     5f6:	cf 91       	pop	r28
     5f8:	1f 91       	pop	r17
     5fa:	0f 91       	pop	r16
     5fc:	ff 90       	pop	r15
     5fe:	ef 90       	pop	r14
     600:	bf 90       	pop	r11
     602:	af 90       	pop	r10
     604:	9f 90       	pop	r9
     606:	8f 90       	pop	r8
     608:	08 95       	ret
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
     60a:	a5 01       	movw	r20, r10
     60c:	94 01       	movw	r18, r8
     60e:	0e 94 35 0a 	call	0x146a	; 0x146a <__udivmodsi4>
     612:	f8 01       	movw	r30, r16
     614:	62 93       	st	-Z, r22
     616:	8f 01       	movw	r16, r30
        num /= 10;
     618:	b9 01       	movw	r22, r18
     61a:	ca 01       	movw	r24, r20
void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < SEG7_NUM_DIGITS; i++) digits[i] = SEG7_BLANK;
    for (uint8_t i = 0; i < width; i++) {
     61c:	f3 94       	inc	r15
     61e:	de cf       	rjmp	.-68     	; 0x5dc <seg7_set_decimal.part.1+0x4a>

00000620 <action_seg_draw_value>:
#include "buttons.h"
static uint16_t action_value;
static int8_t action_direction;

static void action_seg_draw_value(void)
{
     620:	ef 92       	push	r14
     622:	ff 92       	push	r15
     624:	0f 93       	push	r16
     626:	1f 93       	push	r17
     628:	cf 93       	push	r28
     62a:	df 93       	push	r29
     62c:	cd b7       	in	r28, 0x3d	; 61
     62e:	de b7       	in	r29, 0x3e	; 62
     630:	2c 97       	sbiw	r28, 0x0c	; 12
     632:	0f b6       	in	r0, 0x3f	; 63
     634:	f8 94       	cli
     636:	de bf       	out	0x3e, r29	; 62
     638:	0f be       	out	0x3f, r0	; 63
     63a:	cd bf       	out	0x3d, r28	; 61
    uint16_t remaining = action_value;
     63c:	20 91 c6 03 	lds	r18, 0x03C6	; 0x8003c6 <action_value>
     640:	30 91 c7 03 	lds	r19, 0x03C7	; 0x8003c7 <action_value+0x1>
    char line[] = "VALUE: 0000";
     644:	8c e0       	ldi	r24, 0x0C	; 12
     646:	ea e3       	ldi	r30, 0x3A	; 58
     648:	f3 e0       	ldi	r31, 0x03	; 3
     64a:	de 01       	movw	r26, r28
     64c:	11 96       	adiw	r26, 0x01	; 1
     64e:	01 90       	ld	r0, Z+
     650:	0d 92       	st	X+, r0
     652:	8a 95       	dec	r24
     654:	e1 f7       	brne	.-8      	; 0x64e <action_seg_draw_value+0x2e>
     656:	fe 01       	movw	r30, r28
     658:	31 96       	adiw	r30, 0x01	; 1
     65a:	8e 01       	movw	r16, r28
     65c:	03 50       	subi	r16, 0x03	; 3
     65e:	11 09       	sbc	r17, r1
static uint16_t action_value;
static int8_t action_direction;

static void action_seg_draw_value(void)
{
    uint16_t remaining = action_value;
     660:	c9 01       	movw	r24, r18
    char line[] = "VALUE: 0000";
    for (uint8_t i = 0; i < 4; i++) {
        line[10 - i] = '0' + remaining % 10;
     662:	4a e0       	ldi	r20, 0x0A	; 10
     664:	e4 2e       	mov	r14, r20
     666:	f1 2c       	mov	r15, r1
     668:	b7 01       	movw	r22, r14
     66a:	0e 94 21 0a 	call	0x1442	; 0x1442 <__udivmodhi4>
     66e:	80 5d       	subi	r24, 0xD0	; 208
     670:	82 87       	std	Z+10, r24	; 0x0a
        remaining /= 10;
     672:	cb 01       	movw	r24, r22
     674:	31 97       	sbiw	r30, 0x01	; 1

static void action_seg_draw_value(void)
{
    uint16_t remaining = action_value;
    char line[] = "VALUE: 0000";
    for (uint8_t i = 0; i < 4; i++) {
     676:	e0 17       	cp	r30, r16
     678:	f1 07       	cpc	r31, r17
     67a:	b1 f7       	brne	.-20     	; 0x668 <action_seg_draw_value+0x48>
        line[10 - i] = '0' + remaining % 10;
        remaining /= 10;
    }
    seg7_set_decimal(action_value, 4);
     67c:	b9 01       	movw	r22, r18
     67e:	90 e0       	ldi	r25, 0x00	; 0
     680:	80 e0       	ldi	r24, 0x00	; 0
     682:	44 e0       	ldi	r20, 0x04	; 4
     684:	0e 94 c9 02 	call	0x592	; 0x592 <seg7_set_decimal.part.1>
    lcd_write_line(1, line);
     688:	be 01       	movw	r22, r28
     68a:	6f 5f       	subi	r22, 0xFF	; 255
     68c:	7f 4f       	sbci	r23, 0xFF	; 255
     68e:	81 e0       	ldi	r24, 0x01	; 1
     690:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
}
     694:	2c 96       	adiw	r28, 0x0c	; 12
     696:	0f b6       	in	r0, 0x3f	; 63
     698:	f8 94       	cli
     69a:	de bf       	out	0x3e, r29	; 62
     69c:	0f be       	out	0x3f, r0	; 63
     69e:	cd bf       	out	0x3d, r28	; 61
     6a0:	df 91       	pop	r29
     6a2:	cf 91       	pop	r28
     6a4:	1f 91       	pop	r17
     6a6:	0f 91       	pop	r16
     6a8:	ff 90       	pop	r15
     6aa:	ef 90       	pop	r14
     6ac:	08 95       	ret

000006ae <action_seg_start>:

static void action_seg_start(const char *title, uint16_t value, int8_t direction)
{
     6ae:	cf 93       	push	r28
     6b0:	df 93       	push	r29
     6b2:	ec 01       	movw	r28, r24
    action_value = value;
     6b4:	70 93 c7 03 	sts	0x03C7, r23	; 0x8003c7 <action_value+0x1>
     6b8:	60 93 c6 03 	sts	0x03C6, r22	; 0x8003c6 <action_value>
    action_direction = direction;
     6bc:	40 93 c5 03 	sts	0x03C5, r20	; 0x8003c5 <action_direction>
    }
    seg7_set_array(digits);
}

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
     6c0:	10 92 ca 03 	sts	0x03CA, r1	; 0x8003ca <dp_mask>
static void action_seg_start(const char *title, uint16_t value, int8_t direction)
{
    action_value = value;
    action_direction = direction;
    seg7_set_dp_mask(0);
    lcd_clear();
     6c4:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    lcd_write_line(0, title);
     6c8:	be 01       	movw	r22, r28
     6ca:	80 e0       	ldi	r24, 0x00	; 0
     6cc:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
    action_seg_draw_value();
}
     6d0:	df 91       	pop	r29
     6d2:	cf 91       	pop	r28
    action_value = value;
    action_direction = direction;
    seg7_set_dp_mask(0);
    lcd_clear();
    lcd_write_line(0, title);
    action_seg_draw_value();
     6d4:	0c 94 10 03 	jmp	0x620	; 0x620 <action_seg_draw_value>

000006d8 <seg7_set_number>:
            display_buffer[i] = digits[i];
        }
    }
}

void seg7_set_number(uint32_t num) {
     6d8:	8f 92       	push	r8
     6da:	9f 92       	push	r9
     6dc:	af 92       	push	r10
     6de:	bf 92       	push	r11
     6e0:	ef 92       	push	r14
     6e2:	ff 92       	push	r15
     6e4:	0f 93       	push	r16
     6e6:	1f 93       	push	r17
     6e8:	cf 93       	push	r28
     6ea:	df 93       	push	r29
     6ec:	cd b7       	in	r28, 0x3d	; 61
     6ee:	de b7       	in	r29, 0x3e	; 62
     6f0:	28 97       	sbiw	r28, 0x08	; 8
     6f2:	0f b6       	in	r0, 0x3f	; 63
     6f4:	f8 94       	cli
     6f6:	de bf       	out	0x3e, r29	; 62
     6f8:	0f be       	out	0x3f, r0	; 63
     6fa:	cd bf       	out	0x3d, r28	; 61
     6fc:	8e 01       	movw	r16, r28
     6fe:	07 5f       	subi	r16, 0xF7	; 247
     700:	1f 4f       	sbci	r17, 0xFF	; 255
     702:	9e 01       	movw	r18, r28
     704:	2f 5f       	subi	r18, 0xFF	; 255
     706:	3f 4f       	sbci	r19, 0xFF	; 255
     708:	79 01       	movw	r14, r18
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
        digits[i] = num % 10;
     70a:	2a e0       	ldi	r18, 0x0A	; 10
     70c:	82 2e       	mov	r8, r18
     70e:	91 2c       	mov	r9, r1
     710:	a1 2c       	mov	r10, r1
     712:	b1 2c       	mov	r11, r1
     714:	a5 01       	movw	r20, r10
     716:	94 01       	movw	r18, r8
     718:	0e 94 35 0a 	call	0x146a	; 0x146a <__udivmodsi4>
     71c:	f8 01       	movw	r30, r16
     71e:	62 93       	st	-Z, r22
     720:	8f 01       	movw	r16, r30
        num /= 10;
     722:	b9 01       	movw	r22, r18
     724:	ca 01       	movw	r24, r20
    }
}

void seg7_set_number(uint32_t num) {
    uint8_t digits[SEG7_NUM_DIGITS];
    for (int8_t i = SEG7_NUM_DIGITS - 1; i >= 0; i--) {
     726:	ee 15       	cp	r30, r14
     728:	ff 05       	cpc	r31, r15
     72a:	a1 f7       	brne	.-24     	; 0x714 <seg7_set_number+0x3c>
        digits[i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
     72c:	cf 01       	movw	r24, r30
     72e:	0e 94 b9 02 	call	0x572	; 0x572 <seg7_set_array>
}
     732:	28 96       	adiw	r28, 0x08	; 8
     734:	0f b6       	in	r0, 0x3f	; 63
     736:	f8 94       	cli
     738:	de bf       	out	0x3e, r29	; 62
     73a:	0f be       	out	0x3f, r0	; 63
     73c:	cd bf       	out	0x3d, r28	; 61
     73e:	df 91       	pop	r29
     740:	cf 91       	pop	r28
     742:	1f 91       	pop	r17
     744:	0f 91       	pop	r16
     746:	ff 90       	pop	r15
     748:	ef 90       	pop	r14
     74a:	bf 90       	pop	r11
     74c:	af 90       	pop	r10
     74e:	9f 90       	pop	r9
     750:	8f 90       	pop	r8
     752:	08 95       	ret

00000754 <seg7_set_dp_mask>:

void seg7_set_dp_mask(uint8_t mask) {
    dp_mask = mask;
     754:	80 93 ca 03 	sts	0x03CA, r24	; 0x8003ca <dp_mask>
}
     758:	08 95       	ret

0000075a <seg7_update>:

void seg7_update(void) {
    // 1. Blanking: Turn off all transistors first (via CSEL4) to prevent ghosting
    LED_7CONTROL = 0x00;
     75a:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xce6>

    // 2. Load the segment pattern for the active digit (via CSEL3)
    uint8_t val = display_buffer[current_digit];
     75e:	30 91 cb 03 	lds	r19, 0x03CB	; 0x8003cb <current_digit>
     762:	e3 2f       	mov	r30, r19
     764:	f0 e0       	ldi	r31, 0x00	; 0
     766:	e0 50       	subi	r30, 0x00	; 0
     768:	ff 4f       	sbci	r31, 0xFF	; 255
     76a:	e0 81       	ld	r30, Z
    uint8_t seg_pattern = (val < 16) ? SEGMENT_MAP[val] : SEG_BLANK;
     76c:	20 e0       	ldi	r18, 0x00	; 0
     76e:	e0 31       	cpi	r30, 0x10	; 16
     770:	70 f4       	brcc	.+28     	; 0x78e <seg7_update+0x34>
     772:	f0 e0       	ldi	r31, 0x00	; 0
     774:	eb 5e       	subi	r30, 0xEB	; 235
     776:	fd 4f       	sbci	r31, 0xFD	; 253
     778:	20 81       	ld	r18, Z

    // 2b. Turn on Decimal Point if enabled for this digit
    if (val < 16 && (dp_mask & (1 << current_digit))) {
     77a:	80 91 ca 03 	lds	r24, 0x03CA	; 0x8003ca <dp_mask>
     77e:	90 e0       	ldi	r25, 0x00	; 0
     780:	02 c0       	rjmp	.+4      	; 0x786 <seg7_update+0x2c>
     782:	95 95       	asr	r25
     784:	87 95       	ror	r24
     786:	3a 95       	dec	r19
     788:	e2 f7       	brpl	.-8      	; 0x782 <seg7_update+0x28>
     78a:	80 fd       	sbrc	r24, 0
        seg_pattern |= SEG7_DP_MASK; // Decimal point is segment-data bit 0.
     78c:	21 60       	ori	r18, 0x01	; 1
    }

    LED_7DATA = seg_pattern;
     78e:	20 93 03 11 	sts	0x1103, r18	; 0x801103 <__bss_end+0xce5>

    // Physical order from left to right: Q7 Q6 Q5 Q4 Q3 Q2 Q1 Q0.
    LED_7CONTROL = (uint8_t)(0x80u >> current_digit);
     792:	20 91 cb 03 	lds	r18, 0x03CB	; 0x8003cb <current_digit>
     796:	80 e8       	ldi	r24, 0x80	; 128
     798:	90 e0       	ldi	r25, 0x00	; 0
     79a:	02 c0       	rjmp	.+4      	; 0x7a0 <seg7_update+0x46>
     79c:	96 95       	lsr	r25
     79e:	87 95       	ror	r24
     7a0:	2a 95       	dec	r18
     7a2:	e2 f7       	brpl	.-8      	; 0x79c <seg7_update+0x42>
     7a4:	80 93 04 11 	sts	0x1104, r24	; 0x801104 <__bss_end+0xce6>

    // Advance across all eight logical positions.
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
     7a8:	80 91 cb 03 	lds	r24, 0x03CB	; 0x8003cb <current_digit>
     7ac:	90 e0       	ldi	r25, 0x00	; 0
     7ae:	01 96       	adiw	r24, 0x01	; 1
     7b0:	87 70       	andi	r24, 0x07	; 7
     7b2:	99 27       	eor	r25, r25
     7b4:	80 93 cb 03 	sts	0x03CB, r24	; 0x8003cb <current_digit>
}
     7b8:	08 95       	ret

000007ba <__vector_15>:
    TIFR = (1 << OCF0); // Discard any pending compare before enabling it.
    TIMSK |= (1 << OCIE0);      // Enable Timer0 Compare Match Interrupt
    sei();                      // Enable global interrupts
}

ISR(TIMER0_COMP_vect) {
     7ba:	1f 92       	push	r1
     7bc:	0f 92       	push	r0
     7be:	0f b6       	in	r0, 0x3f	; 63
     7c0:	0f 92       	push	r0
     7c2:	11 24       	eor	r1, r1
     7c4:	0b b6       	in	r0, 0x3b	; 59
     7c6:	0f 92       	push	r0
     7c8:	2f 93       	push	r18
     7ca:	3f 93       	push	r19
     7cc:	4f 93       	push	r20
     7ce:	5f 93       	push	r21
     7d0:	6f 93       	push	r22
     7d2:	7f 93       	push	r23
     7d4:	8f 93       	push	r24
     7d6:	9f 93       	push	r25
     7d8:	af 93       	push	r26
     7da:	bf 93       	push	r27
     7dc:	ef 93       	push	r30
     7de:	ff 93       	push	r31
    seg7_update();
     7e0:	0e 94 ad 03 	call	0x75a	; 0x75a <seg7_update>

#ifdef SEG7_ENABLE_CLOCK
    // Legacy clock diagnostic only; the main application just scans digits.
    // 1000 interrupts at 1 ms supply the only one-second clock tick.
    timer0_tick_count++;
     7e4:	80 91 c8 03 	lds	r24, 0x03C8	; 0x8003c8 <timer0_tick_count>
     7e8:	90 91 c9 03 	lds	r25, 0x03C9	; 0x8003c9 <timer0_tick_count+0x1>
     7ec:	01 96       	adiw	r24, 0x01	; 1
    if (timer0_tick_count >= 1000) {
     7ee:	88 3e       	cpi	r24, 0xE8	; 232
     7f0:	23 e0       	ldi	r18, 0x03	; 3
     7f2:	92 07       	cpc	r25, r18
     7f4:	b8 f4       	brcc	.+46     	; 0x824 <__vector_15+0x6a>
    seg7_update();

#ifdef SEG7_ENABLE_CLOCK
    // Legacy clock diagnostic only; the main application just scans digits.
    // 1000 interrupts at 1 ms supply the only one-second clock tick.
    timer0_tick_count++;
     7f6:	90 93 c9 03 	sts	0x03C9, r25	; 0x8003c9 <timer0_tick_count+0x1>
     7fa:	80 93 c8 03 	sts	0x03C8, r24	; 0x8003c8 <timer0_tick_count>
    if (timer0_tick_count >= 1000) {
        timer0_tick_count = 0;
        clock_tick_1s();
    }
#endif
}
     7fe:	ff 91       	pop	r31
     800:	ef 91       	pop	r30
     802:	bf 91       	pop	r27
     804:	af 91       	pop	r26
     806:	9f 91       	pop	r25
     808:	8f 91       	pop	r24
     80a:	7f 91       	pop	r23
     80c:	6f 91       	pop	r22
     80e:	5f 91       	pop	r21
     810:	4f 91       	pop	r20
     812:	3f 91       	pop	r19
     814:	2f 91       	pop	r18
     816:	0f 90       	pop	r0
     818:	0b be       	out	0x3b, r0	; 59
     81a:	0f 90       	pop	r0
     81c:	0f be       	out	0x3f, r0	; 63
     81e:	0f 90       	pop	r0
     820:	1f 90       	pop	r1
     822:	18 95       	reti
#ifdef SEG7_ENABLE_CLOCK
    // Legacy clock diagnostic only; the main application just scans digits.
    // 1000 interrupts at 1 ms supply the only one-second clock tick.
    timer0_tick_count++;
    if (timer0_tick_count >= 1000) {
        timer0_tick_count = 0;
     824:	10 92 c9 03 	sts	0x03C9, r1	; 0x8003c9 <timer0_tick_count+0x1>
     828:	10 92 c8 03 	sts	0x03C8, r1	; 0x8003c8 <timer0_tick_count>
        clock_tick_1s();
     82c:	0e 94 be 04 	call	0x97c	; 0x97c <clock_tick_1s>
    }
#endif
}
     830:	e6 cf       	rjmp	.-52     	; 0x7fe <__vector_15+0x44>

00000832 <seg7_set_decimal>:
    current_digit = (current_digit + 1) % SEG7_NUM_DIGITS;
}

void seg7_set_decimal(uint32_t num, uint8_t width)
{
    if (width == 0 || width > SEG7_NUM_DIGITS) return;
     832:	2f ef       	ldi	r18, 0xFF	; 255
     834:	24 0f       	add	r18, r20
     836:	28 30       	cpi	r18, 0x08	; 8
     838:	10 f4       	brcc	.+4      	; 0x83e <seg7_set_decimal+0xc>
     83a:	0c 94 c9 02 	jmp	0x592	; 0x592 <seg7_set_decimal.part.1>
    for (uint8_t i = 0; i < width; i++) {
        digits[SEG7_NUM_DIGITS - 1 - i] = num % 10;
        num /= 10;
    }
    seg7_set_array(digits);
}
     83e:	08 95       	ret

00000840 <action_seg_clear>:
    lcd_clear();
    lcd_write_line(0, title);
    action_seg_draw_value();
}

void action_seg_clear(void) { action_seg_start("1. DISPLAY 0000", 0, 0); }
     840:	40 e0       	ldi	r20, 0x00	; 0
     842:	70 e0       	ldi	r23, 0x00	; 0
     844:	60 e0       	ldi	r22, 0x00	; 0
     846:	82 ef       	ldi	r24, 0xF2	; 242
     848:	92 e0       	ldi	r25, 0x02	; 2
     84a:	0c 94 57 03 	jmp	0x6ae	; 0x6ae <action_seg_start>

0000084e <action_seg_set>:
void action_seg_set(void) { action_seg_start("2. DISPLAY 9999", 9999, 0); }
     84e:	40 e0       	ldi	r20, 0x00	; 0
     850:	6f e0       	ldi	r22, 0x0F	; 15
     852:	77 e2       	ldi	r23, 0x27	; 39
     854:	82 e0       	ldi	r24, 0x02	; 2
     856:	93 e0       	ldi	r25, 0x03	; 3
     858:	0c 94 57 03 	jmp	0x6ae	; 0x6ae <action_seg_start>

0000085c <action_seg_increase>:
void action_seg_increase(void) { action_seg_start("3. INCREASE", 0, 1); }
     85c:	41 e0       	ldi	r20, 0x01	; 1
     85e:	70 e0       	ldi	r23, 0x00	; 0
     860:	60 e0       	ldi	r22, 0x00	; 0
     862:	82 e1       	ldi	r24, 0x12	; 18
     864:	93 e0       	ldi	r25, 0x03	; 3
     866:	0c 94 57 03 	jmp	0x6ae	; 0x6ae <action_seg_start>

0000086a <action_seg_decrease>:
void action_seg_decrease(void) { action_seg_start("4. DECREASE", 9999, -1); }
     86a:	4f ef       	ldi	r20, 0xFF	; 255
     86c:	6f e0       	ldi	r22, 0x0F	; 15
     86e:	77 e2       	ldi	r23, 0x27	; 39
     870:	8e e1       	ldi	r24, 0x1E	; 30
     872:	93 e0       	ldi	r25, 0x03	; 3
     874:	0c 94 57 03 	jmp	0x6ae	; 0x6ae <action_seg_start>

00000878 <action_seg_input>:

void action_seg_input(uint8_t pressed)
{
    if (action_direction > 0 && (pressed & BTN_BIT_UP) && action_value < 9999)
     878:	90 91 c5 03 	lds	r25, 0x03C5	; 0x8003c5 <action_direction>
     87c:	19 16       	cp	r1, r25
     87e:	8c f4       	brge	.+34     	; 0x8a2 <action_seg_input+0x2a>
     880:	82 ff       	sbrs	r24, 2
     882:	1b c0       	rjmp	.+54     	; 0x8ba <action_seg_input+0x42>
     884:	80 91 c6 03 	lds	r24, 0x03C6	; 0x8003c6 <action_value>
     888:	90 91 c7 03 	lds	r25, 0x03C7	; 0x8003c7 <action_value+0x1>
     88c:	8f 30       	cpi	r24, 0x0F	; 15
     88e:	27 e2       	ldi	r18, 0x27	; 39
     890:	92 07       	cpc	r25, r18
     892:	98 f4       	brcc	.+38     	; 0x8ba <action_seg_input+0x42>
        action_value++;
     894:	01 96       	adiw	r24, 0x01	; 1
    else if (action_direction < 0 && (pressed & BTN_BIT_DOWN) && action_value > 0)
        action_value--;
     896:	90 93 c7 03 	sts	0x03C7, r25	; 0x8003c7 <action_value+0x1>
     89a:	80 93 c6 03 	sts	0x03C6, r24	; 0x8003c6 <action_value>
    else return;
    action_seg_draw_value();
     89e:	0c 94 10 03 	jmp	0x620	; 0x620 <action_seg_draw_value>

void action_seg_input(uint8_t pressed)
{
    if (action_direction > 0 && (pressed & BTN_BIT_UP) && action_value < 9999)
        action_value++;
    else if (action_direction < 0 && (pressed & BTN_BIT_DOWN) && action_value > 0)
     8a2:	99 23       	and	r25, r25
     8a4:	51 f0       	breq	.+20     	; 0x8ba <action_seg_input+0x42>
     8a6:	83 ff       	sbrs	r24, 3
     8a8:	08 c0       	rjmp	.+16     	; 0x8ba <action_seg_input+0x42>
     8aa:	80 91 c6 03 	lds	r24, 0x03C6	; 0x8003c6 <action_value>
     8ae:	90 91 c7 03 	lds	r25, 0x03C7	; 0x8003c7 <action_value+0x1>
     8b2:	00 97       	sbiw	r24, 0x00	; 0
     8b4:	11 f0       	breq	.+4      	; 0x8ba <action_seg_input+0x42>
        action_value--;
     8b6:	01 97       	sbiw	r24, 0x01	; 1
     8b8:	ee cf       	rjmp	.-36     	; 0x896 <action_seg_input+0x1e>
    else return;
    action_seg_draw_value();
}
     8ba:	08 95       	ret

000008bc <button_update>:
static uint8_t last_raw    = 0x00;
static uint8_t press_event = 0x00;
static uint8_t held_event  = 0x00;
static uint8_t hold_cnt[8] = {0};

void button_update(void) {
     8bc:	cf 93       	push	r28
}
static inline uint8_t io_bus_read(uint16_t address) {
    return *(volatile uint8_t *)(uintptr_t)address;
     8be:	20 91 00 11 	lds	r18, 0x1100	; 0x801100 <__bss_end+0xce2>
  READ_BUTTONS;
     8c2:	20 93 1d 04 	sts	0x041D, r18	; 0x80041d <buttons>
  uint8_t raw = *(uint8_t *)(&buttons);

  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
     8c6:	80 91 d6 03 	lds	r24, 0x03D6	; 0x8003d6 <last_raw>
     8ca:	80 95       	com	r24
     8cc:	82 23       	and	r24, r18
     8ce:	80 93 d5 03 	sts	0x03D5, r24	; 0x8003d5 <press_event>
     8d2:	ec ec       	ldi	r30, 0xCC	; 204
     8d4:	f3 e0       	ldi	r31, 0x03	; 3
  held_event  = 0x00;
     8d6:	50 e0       	ldi	r21, 0x00	; 0
     8d8:	40 e0       	ldi	r20, 0x00	; 0
     8da:	30 e0       	ldi	r19, 0x00	; 0

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     8dc:	a1 e0       	ldi	r26, 0x01	; 1
     8de:	b0 e0       	ldi	r27, 0x00	; 0
      hold_cnt[i]++;
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
          held_event |= bit;
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     8e0:	cb e1       	ldi	r28, 0x1B	; 27
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
    uint8_t bit = (1 << i);
     8e2:	bd 01       	movw	r22, r26
     8e4:	04 2e       	mov	r0, r20
     8e6:	01 c0       	rjmp	.+2      	; 0x8ea <button_update+0x2e>
     8e8:	66 0f       	add	r22, r22
     8ea:	0a 94       	dec	r0
     8ec:	ea f7       	brpl	.-6      	; 0x8e8 <button_update+0x2c>
    if (raw & bit) {
     8ee:	82 2f       	mov	r24, r18
     8f0:	86 23       	and	r24, r22
     8f2:	c9 f0       	breq	.+50     	; 0x926 <button_update+0x6a>
      hold_cnt[i]++;
     8f4:	80 81       	ld	r24, Z
     8f6:	8f 5f       	subi	r24, 0xFF	; 255
     8f8:	80 83       	st	Z, r24
      if (hold_cnt[i] >= HOLD_THRESHOLD) {
     8fa:	83 32       	cpi	r24, 0x23	; 35
     8fc:	40 f0       	brcs	.+16     	; 0x90e <button_update+0x52>
        if ((hold_cnt[i] - HOLD_THRESHOLD) % HOLD_REPEAT_RATE == 0) {
     8fe:	83 52       	subi	r24, 0x23	; 35
     900:	99 0b       	sbc	r25, r25
     902:	87 70       	andi	r24, 0x07	; 7
     904:	99 27       	eor	r25, r25
     906:	89 2b       	or	r24, r25
     908:	11 f4       	brne	.+4      	; 0x90e <button_update+0x52>
          held_event |= bit;
     90a:	36 2b       	or	r19, r22
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
     90c:	c0 83       	st	Z, r28
     90e:	4f 5f       	subi	r20, 0xFF	; 255
     910:	5f 4f       	sbci	r21, 0xFF	; 255
     912:	31 96       	adiw	r30, 0x01	; 1
  // 1. Instant trigger on press (rising edge 0 -> 1)
  press_event = raw & ~last_raw;
  held_event  = 0x00;

  // 2. Auto-repeat handler when button is held down
  for (uint8_t i = 0; i < 8; i++) {
     914:	48 30       	cpi	r20, 0x08	; 8
     916:	51 05       	cpc	r21, r1
     918:	21 f7       	brne	.-56     	; 0x8e2 <button_update+0x26>
     91a:	30 93 d4 03 	sts	0x03D4, r19	; 0x8003d4 <held_event>
    } else {
      hold_cnt[i] = 0;
    }
  }

  last_raw = raw;
     91e:	20 93 d6 03 	sts	0x03D6, r18	; 0x8003d6 <last_raw>
}
     922:	cf 91       	pop	r28
     924:	08 95       	ret
          // Restart the interval so even a long hold continues repeating.
          hold_cnt[i] = HOLD_THRESHOLD - HOLD_REPEAT_RATE;
        }
      }
    } else {
      hold_cnt[i] = 0;
     926:	10 82       	st	Z, r1
     928:	f2 cf       	rjmp	.-28     	; 0x90e <button_update+0x52>

0000092a <button_pressed>:
  }

  last_raw = raw;
}

uint8_t button_pressed(void)   { return press_event; }
     92a:	80 91 d5 03 	lds	r24, 0x03D5	; 0x8003d5 <press_event>
     92e:	08 95       	ret

00000930 <button_held>:
uint8_t button_held(void)      { return held_event;  }
     930:	80 91 d4 03 	lds	r24, 0x03D4	; 0x8003d4 <held_event>
     934:	08 95       	ret

00000936 <button_state>:
uint8_t button_state(void)     { return last_raw;    }
     936:	80 91 d6 03 	lds	r24, 0x03D6	; 0x8003d6 <last_raw>
     93a:	08 95       	ret

0000093c <button_triggered>:
uint8_t button_triggered(void) { return press_event | held_event; }
     93c:	90 91 d5 03 	lds	r25, 0x03D5	; 0x8003d5 <press_event>
     940:	80 91 d4 03 	lds	r24, 0x03D4	; 0x8003d4 <held_event>
     944:	89 2b       	or	r24, r25
     946:	08 95       	ret

00000948 <clock_start>:
    clock_set_time(12, 0, 0);
    is_running = 1;
}

void clock_start(void) {
    is_running = 1;
     948:	81 e0       	ldi	r24, 0x01	; 1
     94a:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <is_running>
}
     94e:	08 95       	ret

00000950 <clock_pause>:

void clock_pause(void) {
    is_running = 0;
     950:	10 92 08 01 	sts	0x0108, r1	; 0x800108 <is_running>
}
     954:	08 95       	ret

00000956 <clock_is_running>:

uint8_t clock_is_running(void) {
    return is_running;
     956:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <is_running>
}
     95a:	08 95       	ret

0000095c <clock_get_time>:
        sys_time.seconds = (s < 60) ? s : 0;
    }
    clock_update_display();
}

void clock_get_time(ClockTime_t *t) {
     95c:	fc 01       	movw	r30, r24
    if (t) {
     95e:	89 2b       	or	r24, r25
     960:	61 f0       	breq	.+24     	; 0x97a <clock_get_time+0x1e>
        ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     962:	8f b7       	in	r24, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     964:	f8 94       	cli
            t->hours = sys_time.hours;
     966:	90 91 09 01 	lds	r25, 0x0109	; 0x800109 <sys_time>
     96a:	90 83       	st	Z, r25
            t->minutes = sys_time.minutes;
     96c:	90 91 0a 01 	lds	r25, 0x010A	; 0x80010a <sys_time+0x1>
     970:	91 83       	std	Z+1, r25	; 0x01
            t->seconds = sys_time.seconds;
     972:	90 91 0b 01 	lds	r25, 0x010B	; 0x80010b <sys_time+0x2>
     976:	92 83       	std	Z+2, r25	; 0x02
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     978:	8f bf       	out	0x3f, r24	; 63
        }
    }
}
     97a:	08 95       	ret

0000097c <clock_tick_1s>:

void clock_tick_1s(void) {
    if (!is_running) return;
     97c:	80 91 08 01 	lds	r24, 0x0108	; 0x800108 <is_running>
     980:	88 23       	and	r24, r24
     982:	09 f1       	breq	.+66     	; 0x9c6 <clock_tick_1s+0x4a>

    sys_time.seconds++;
     984:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <sys_time+0x2>
     988:	8f 5f       	subi	r24, 0xFF	; 255
     98a:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <sys_time+0x2>
    if (sys_time.seconds >= 60) {
     98e:	80 91 0b 01 	lds	r24, 0x010B	; 0x80010b <sys_time+0x2>
     992:	8c 33       	cpi	r24, 0x3C	; 60
     994:	c0 f0       	brcs	.+48     	; 0x9c6 <clock_tick_1s+0x4a>
        sys_time.seconds = 0;
     996:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <sys_time+0x2>
        sys_time.minutes++;
     99a:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <sys_time+0x1>
     99e:	8f 5f       	subi	r24, 0xFF	; 255
     9a0:	80 93 0a 01 	sts	0x010A, r24	; 0x80010a <sys_time+0x1>
        if (sys_time.minutes >= 60) {
     9a4:	80 91 0a 01 	lds	r24, 0x010A	; 0x80010a <sys_time+0x1>
     9a8:	8c 33       	cpi	r24, 0x3C	; 60
     9aa:	68 f0       	brcs	.+26     	; 0x9c6 <clock_tick_1s+0x4a>
            sys_time.minutes = 0;
     9ac:	10 92 0a 01 	sts	0x010A, r1	; 0x80010a <sys_time+0x1>
            sys_time.hours++;
     9b0:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time>
     9b4:	8f 5f       	subi	r24, 0xFF	; 255
     9b6:	80 93 09 01 	sts	0x0109, r24	; 0x800109 <sys_time>
            if (sys_time.hours >= 24) {
     9ba:	80 91 09 01 	lds	r24, 0x0109	; 0x800109 <sys_time>
     9be:	88 31       	cpi	r24, 0x18	; 24
     9c0:	10 f0       	brcs	.+4      	; 0x9c6 <clock_tick_1s+0x4a>
                sys_time.hours = 0;
     9c2:	10 92 09 01 	sts	0x0109, r1	; 0x800109 <sys_time>
            }
        }
    }
}
     9c6:	08 95       	ret

000009c8 <clock_update_display>:

void clock_update_display(void) {
     9c8:	cf 93       	push	r28
     9ca:	df 93       	push	r29
     9cc:	cd b7       	in	r28, 0x3d	; 61
     9ce:	de b7       	in	r29, 0x3e	; 62
     9d0:	2b 97       	sbiw	r28, 0x0b	; 11
     9d2:	0f b6       	in	r0, 0x3f	; 63
     9d4:	f8 94       	cli
     9d6:	de bf       	out	0x3e, r29	; 62
     9d8:	0f be       	out	0x3f, r0	; 63
     9da:	cd bf       	out	0x3d, r28	; 61
    ClockTime_t snapshot;
    clock_get_time(&snapshot);
     9dc:	ce 01       	movw	r24, r28
     9de:	09 96       	adiw	r24, 0x09	; 9
     9e0:	0e 94 ae 04 	call	0x95c	; 0x95c <clock_get_time>
    // Right-align HH.MM.SS; leave the two extra leftmost positions blank.
    const uint8_t offset = SEG7_NUM_DIGITS - 6;
    seg7_set_dp_mask((1u << (offset + 1)) | (1u << (offset + 3)));
     9e4:	88 e2       	ldi	r24, 0x28	; 40
     9e6:	0e 94 aa 03 	call	0x754	; 0x754 <seg7_set_dp_mask>
    uint8_t digits[SEG7_NUM_DIGITS];
    for (uint8_t i = 0; i < offset; i++) digits[i] = SEG7_BLANK;
     9ea:	8f ef       	ldi	r24, 0xFF	; 255
     9ec:	89 83       	std	Y+1, r24	; 0x01
     9ee:	8a 83       	std	Y+2, r24	; 0x02
    digits[offset] = snapshot.hours / 10;
     9f0:	89 85       	ldd	r24, Y+9	; 0x09
     9f2:	2a e0       	ldi	r18, 0x0A	; 10
     9f4:	62 2f       	mov	r22, r18
     9f6:	0e 94 15 0a 	call	0x142a	; 0x142a <__udivmodqi4>
     9fa:	8b 83       	std	Y+3, r24	; 0x03
    digits[offset + 1] = snapshot.hours % 10;
     9fc:	9c 83       	std	Y+4, r25	; 0x04
    digits[offset + 2] = snapshot.minutes / 10;
     9fe:	8a 85       	ldd	r24, Y+10	; 0x0a
     a00:	0e 94 15 0a 	call	0x142a	; 0x142a <__udivmodqi4>
     a04:	8d 83       	std	Y+5, r24	; 0x05
    digits[offset + 3] = snapshot.minutes % 10;
     a06:	9e 83       	std	Y+6, r25	; 0x06
    digits[offset + 4] = snapshot.seconds / 10;
     a08:	8b 85       	ldd	r24, Y+11	; 0x0b
     a0a:	0e 94 15 0a 	call	0x142a	; 0x142a <__udivmodqi4>
     a0e:	8f 83       	std	Y+7, r24	; 0x07
    digits[offset + 5] = snapshot.seconds % 10;
     a10:	98 87       	std	Y+8, r25	; 0x08
    seg7_set_array(digits);
     a12:	ce 01       	movw	r24, r28
     a14:	01 96       	adiw	r24, 0x01	; 1
     a16:	0e 94 b9 02 	call	0x572	; 0x572 <seg7_set_array>
}
     a1a:	2b 96       	adiw	r28, 0x0b	; 11
     a1c:	0f b6       	in	r0, 0x3f	; 63
     a1e:	f8 94       	cli
     a20:	de bf       	out	0x3e, r29	; 62
     a22:	0f be       	out	0x3f, r0	; 63
     a24:	cd bf       	out	0x3d, r28	; 61
     a26:	df 91       	pop	r29
     a28:	cf 91       	pop	r28
     a2a:	08 95       	ret

00000a2c <clock_set_time>:
uint8_t clock_is_running(void) {
    return is_running;
}

void clock_set_time(uint8_t h, uint8_t m, uint8_t s) {
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     a2c:	9f b7       	in	r25, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     a2e:	f8 94       	cli
        sys_time.hours = (h < 24) ? h : 0;
     a30:	88 31       	cpi	r24, 0x18	; 24
     a32:	08 f0       	brcs	.+2      	; 0xa36 <clock_set_time+0xa>
     a34:	80 e0       	ldi	r24, 0x00	; 0
     a36:	80 93 09 01 	sts	0x0109, r24	; 0x800109 <sys_time>
        sys_time.minutes = (m < 60) ? m : 0;
     a3a:	6c 33       	cpi	r22, 0x3C	; 60
     a3c:	08 f0       	brcs	.+2      	; 0xa40 <clock_set_time+0x14>
     a3e:	60 e0       	ldi	r22, 0x00	; 0
     a40:	60 93 0a 01 	sts	0x010A, r22	; 0x80010a <sys_time+0x1>
        sys_time.seconds = (s < 60) ? s : 0;
     a44:	4c 33       	cpi	r20, 0x3C	; 60
     a46:	08 f0       	brcs	.+2      	; 0xa4a <clock_set_time+0x1e>
     a48:	40 e0       	ldi	r20, 0x00	; 0
     a4a:	40 93 0b 01 	sts	0x010B, r20	; 0x80010b <sys_time+0x2>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     a4e:	9f bf       	out	0x3f, r25	; 63
    }
    clock_update_display();
     a50:	0c 94 e4 04 	jmp	0x9c8	; 0x9c8 <clock_update_display>

00000a54 <clock_init>:

static volatile ClockTime_t sys_time = {12, 0, 0};
static volatile uint8_t is_running = 1;

void clock_init(void) {
    clock_set_time(12, 0, 0);
     a54:	40 e0       	ldi	r20, 0x00	; 0
     a56:	60 e0       	ldi	r22, 0x00	; 0
     a58:	8c e0       	ldi	r24, 0x0C	; 12
     a5a:	0e 94 16 05 	call	0xa2c	; 0xa2c <clock_set_time>
    is_running = 1;
     a5e:	81 e0       	ldi	r24, 0x01	; 1
     a60:	80 93 08 01 	sts	0x0108, r24	; 0x800108 <is_running>
}
     a64:	08 95       	ret

00000a66 <link_menu>:
static MenuItem *active_action;

// Static storage, no heap allocation. This only wires next/prev/parent links.
static void link_menu(Menu *menu, const char *title, Menu *parent,
                      MenuItem *items, uint8_t count)
{
     a66:	0f 93       	push	r16
     a68:	fc 01       	movw	r30, r24
    menu->title = title;
     a6a:	71 83       	std	Z+1, r23	; 0x01
     a6c:	60 83       	st	Z, r22
    menu->first_item = items;
     a6e:	22 83       	std	Z+2, r18	; 0x02
     a70:	33 83       	std	Z+3, r19	; 0x03
    menu->parent_menu = parent;
     a72:	55 83       	std	Z+5, r21	; 0x05
     a74:	44 83       	std	Z+4, r20	; 0x04
    menu->selected = items;
     a76:	26 83       	std	Z+6, r18	; 0x06
     a78:	37 83       	std	Z+7, r19	; 0x07
     a7a:	f9 01       	movw	r30, r18
     a7c:	81 e0       	ldi	r24, 0x01	; 1
     a7e:	90 e0       	ldi	r25, 0x00	; 0
    for (uint8_t i = 0; i < count; i++) {
        items[i].prev = i ? &items[i - 1] : NULL;
     a80:	30 e0       	ldi	r19, 0x00	; 0
     a82:	20 e0       	ldi	r18, 0x00	; 0
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
     a84:	40 2f       	mov	r20, r16
     a86:	50 e0       	ldi	r21, 0x00	; 0
     a88:	bf 01       	movw	r22, r30
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
        items[i].prev = i ? &items[i - 1] : NULL;
     a8a:	34 83       	std	Z+4, r19	; 0x04
     a8c:	25 83       	std	Z+5, r18	; 0x05
     a8e:	9f 01       	movw	r18, r30
     a90:	24 5f       	subi	r18, 0xF4	; 244
     a92:	3f 4f       	sbci	r19, 0xFF	; 255
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
     a94:	84 17       	cp	r24, r20
     a96:	95 07       	cpc	r25, r21
     a98:	14 f0       	brlt	.+4      	; 0xa9e <link_menu+0x38>
     a9a:	30 e0       	ldi	r19, 0x00	; 0
     a9c:	20 e0       	ldi	r18, 0x00	; 0
     a9e:	33 83       	std	Z+3, r19	; 0x03
     aa0:	22 83       	std	Z+2, r18	; 0x02
{
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
     aa2:	80 17       	cp	r24, r16
     aa4:	10 f0       	brcs	.+4      	; 0xaaa <link_menu+0x44>
        items[i].prev = i ? &items[i - 1] : NULL;
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
    }
}
     aa6:	0f 91       	pop	r16
     aa8:	08 95       	ret
     aaa:	01 96       	adiw	r24, 0x01	; 1
     aac:	3c 96       	adiw	r30, 0x0c	; 12
{
    menu->title = title;
    menu->first_item = items;
    menu->parent_menu = parent;
    menu->selected = items;
    for (uint8_t i = 0; i < count; i++) {
     aae:	36 2f       	mov	r19, r22
     ab0:	27 2f       	mov	r18, r23
     ab2:	ea cf       	rjmp	.-44     	; 0xa88 <link_menu+0x22>

00000ab4 <menu_init>:
        items[i].next = i + 1 < count ? &items[i + 1] : NULL;
    }
}

void menu_init(void)
{
     ab4:	0f 93       	push	r16
    link_menu(&device_menu, "DEVICES", NULL, device_items, 2);
     ab6:	02 e0       	ldi	r16, 0x02	; 2
     ab8:	2c ec       	ldi	r18, 0xCC	; 204
     aba:	31 e0       	ldi	r19, 0x01	; 1
     abc:	50 e0       	ldi	r21, 0x00	; 0
     abe:	40 e0       	ldi	r20, 0x00	; 0
     ac0:	66 e4       	ldi	r22, 0x46	; 70
     ac2:	73 e0       	ldi	r23, 0x03	; 3
     ac4:	8b e0       	ldi	r24, 0x0B	; 11
     ac6:	94 e0       	ldi	r25, 0x04	; 4
     ac8:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&led_menu, "LED:", &device_menu, led_items, 4);
     acc:	04 e0       	ldi	r16, 0x04	; 4
     ace:	2c e9       	ldi	r18, 0x9C	; 156
     ad0:	31 e0       	ldi	r19, 0x01	; 1
     ad2:	4b e0       	ldi	r20, 0x0B	; 11
     ad4:	54 e0       	ldi	r21, 0x04	; 4
     ad6:	68 eb       	ldi	r22, 0xB8	; 184
     ad8:	72 e0       	ldi	r23, 0x02	; 2
     ada:	83 e0       	ldi	r24, 0x03	; 3
     adc:	94 e0       	ldi	r25, 0x04	; 4
     ade:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&relay_menu, "RELAYS:", &device_menu, relay_items, 4);
     ae2:	2c e6       	ldi	r18, 0x6C	; 108
     ae4:	31 e0       	ldi	r19, 0x01	; 1
     ae6:	4b e0       	ldi	r20, 0x0B	; 11
     ae8:	54 e0       	ldi	r21, 0x04	; 4
     aea:	6e e4       	ldi	r22, 0x4E	; 78
     aec:	73 e0       	ldi	r23, 0x03	; 3
     aee:	8b ef       	ldi	r24, 0xFB	; 251
     af0:	93 e0       	ldi	r25, 0x03	; 3
     af2:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&relay_actions[0], "RELAY 1:", &relay_menu, relay_1_items, 2);
     af6:	02 e0       	ldi	r16, 0x02	; 2
     af8:	24 e5       	ldi	r18, 0x54	; 84
     afa:	31 e0       	ldi	r19, 0x01	; 1
     afc:	4b ef       	ldi	r20, 0xFB	; 251
     afe:	53 e0       	ldi	r21, 0x03	; 3
     b00:	66 e5       	ldi	r22, 0x56	; 86
     b02:	73 e0       	ldi	r23, 0x03	; 3
     b04:	8b ed       	ldi	r24, 0xDB	; 219
     b06:	93 e0       	ldi	r25, 0x03	; 3
     b08:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&relay_actions[1], "RELAY 2:", &relay_menu, relay_2_items, 2);
     b0c:	2c e3       	ldi	r18, 0x3C	; 60
     b0e:	31 e0       	ldi	r19, 0x01	; 1
     b10:	4b ef       	ldi	r20, 0xFB	; 251
     b12:	53 e0       	ldi	r21, 0x03	; 3
     b14:	6f e5       	ldi	r22, 0x5F	; 95
     b16:	73 e0       	ldi	r23, 0x03	; 3
     b18:	83 ee       	ldi	r24, 0xE3	; 227
     b1a:	93 e0       	ldi	r25, 0x03	; 3
     b1c:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&relay_actions[2], "RELAY 3:", &relay_menu, relay_3_items, 2);
     b20:	24 e2       	ldi	r18, 0x24	; 36
     b22:	31 e0       	ldi	r19, 0x01	; 1
     b24:	4b ef       	ldi	r20, 0xFB	; 251
     b26:	53 e0       	ldi	r21, 0x03	; 3
     b28:	68 e6       	ldi	r22, 0x68	; 104
     b2a:	73 e0       	ldi	r23, 0x03	; 3
     b2c:	8b ee       	ldi	r24, 0xEB	; 235
     b2e:	93 e0       	ldi	r25, 0x03	; 3
     b30:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    link_menu(&relay_actions[3], "RELAY 4:", &relay_menu, relay_4_items, 2);
     b34:	2c e0       	ldi	r18, 0x0C	; 12
     b36:	31 e0       	ldi	r19, 0x01	; 1
     b38:	4b ef       	ldi	r20, 0xFB	; 251
     b3a:	53 e0       	ldi	r21, 0x03	; 3
     b3c:	61 e7       	ldi	r22, 0x71	; 113
     b3e:	73 e0       	ldi	r23, 0x03	; 3
     b40:	83 ef       	ldi	r24, 0xF3	; 243
     b42:	93 e0       	ldi	r25, 0x03	; 3
     b44:	0e 94 33 05 	call	0xa66	; 0xa66 <link_menu>
    current_menu = &device_menu;
     b48:	8b e0       	ldi	r24, 0x0B	; 11
     b4a:	94 e0       	ldi	r25, 0x04	; 4
     b4c:	90 93 da 03 	sts	0x03DA, r25	; 0x8003da <current_menu+0x1>
     b50:	80 93 d9 03 	sts	0x03D9, r24	; 0x8003d9 <current_menu>
    active_action = NULL;
     b54:	10 92 d8 03 	sts	0x03D8, r1	; 0x8003d8 <active_action+0x1>
     b58:	10 92 d7 03 	sts	0x03D7, r1	; 0x8003d7 <active_action>
}
     b5c:	0f 91       	pop	r16
     b5e:	08 95       	ret

00000b60 <menu_draw>:

void menu_draw(void)
{
     b60:	ef 92       	push	r14
     b62:	ff 92       	push	r15
     b64:	0f 93       	push	r16
     b66:	1f 93       	push	r17
     b68:	cf 93       	push	r28
     b6a:	df 93       	push	r29
    if (!current_menu || active_action) return;
     b6c:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     b70:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     b74:	30 97       	sbiw	r30, 0x00	; 0
     b76:	09 f4       	brne	.+2      	; 0xb7a <menu_draw+0x1a>
     b78:	57 c0       	rjmp	.+174    	; 0xc28 <menu_draw+0xc8>
     b7a:	80 91 d7 03 	lds	r24, 0x03D7	; 0x8003d7 <active_action>
     b7e:	90 91 d8 03 	lds	r25, 0x03D8	; 0x8003d8 <active_action+0x1>
     b82:	89 2b       	or	r24, r25
     b84:	09 f0       	breq	.+2      	; 0xb88 <menu_draw+0x28>
     b86:	50 c0       	rjmp	.+160    	; 0xc28 <menu_draw+0xc8>
    lcd_write_line(0, current_menu->title);
     b88:	60 81       	ld	r22, Z
     b8a:	71 81       	ldd	r23, Z+1	; 0x01
     b8c:	80 e0       	ldi	r24, 0x00	; 0
     b8e:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
     b92:	a0 91 d9 03 	lds	r26, 0x03D9	; 0x8003d9 <current_menu>
     b96:	b0 91 da 03 	lds	r27, 0x03DA	; 0x8003da <current_menu+0x1>
     b9a:	12 96       	adiw	r26, 0x02	; 2
     b9c:	cd 91       	ld	r28, X+
     b9e:	dc 91       	ld	r29, X
     ba0:	13 97       	sbiw	r26, 0x03	; 3
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
     ba2:	fe 01       	movw	r30, r28
{
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
     ba4:	80 e0       	ldi	r24, 0x00	; 0
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
     ba6:	30 97       	sbiw	r30, 0x00	; 0
     ba8:	41 f0       	breq	.+16     	; 0xbba <menu_draw+0x5a>
     baa:	16 96       	adiw	r26, 0x06	; 6
     bac:	2d 91       	ld	r18, X+
     bae:	3c 91       	ld	r19, X
     bb0:	17 97       	sbiw	r26, 0x07	; 7
     bb2:	2e 17       	cp	r18, r30
     bb4:	3f 07       	cpc	r19, r31
     bb6:	09 f0       	breq	.+2      	; 0xbba <menu_draw+0x5a>
     bb8:	3e c0       	rjmp	.+124    	; 0xc36 <menu_draw+0xd6>
        index++;
    while (index > 2 && first) {
     bba:	83 30       	cpi	r24, 0x03	; 3
     bbc:	18 f0       	brcs	.+6      	; 0xbc4 <menu_draw+0x64>
     bbe:	20 97       	sbiw	r28, 0x00	; 0
     bc0:	09 f0       	breq	.+2      	; 0xbc4 <menu_draw+0x64>
     bc2:	3e c0       	rjmp	.+124    	; 0xc40 <menu_draw+0xe0>
{
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
     bc4:	11 e0       	ldi	r17, 0x01	; 1
    while (index > 2 && first) {
        first = first->next;
        index--;
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
     bc6:	60 e0       	ldi	r22, 0x00	; 0
     bc8:	81 2f       	mov	r24, r17
     bca:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
     bce:	20 97       	sbiw	r28, 0x00	; 0
     bd0:	49 f0       	breq	.+18     	; 0xbe4 <menu_draw+0x84>
     bd2:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     bd6:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     bda:	86 81       	ldd	r24, Z+6	; 0x06
     bdc:	97 81       	ldd	r25, Z+7	; 0x07
     bde:	8c 17       	cp	r24, r28
     be0:	9d 07       	cpc	r25, r29
     be2:	99 f1       	breq	.+102    	; 0xc4a <menu_draw+0xea>
     be4:	80 e2       	ldi	r24, 0x20	; 32
     be6:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
        lcd_send_data(' ');
     bea:	80 e2       	ldi	r24, 0x20	; 32
     bec:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
        const char *text = first ? first->text : "";
     bf0:	8f ea       	ldi	r24, 0xAF	; 175
     bf2:	e8 2e       	mov	r14, r24
     bf4:	82 e0       	ldi	r24, 0x02	; 2
     bf6:	f8 2e       	mov	r15, r24
     bf8:	20 97       	sbiw	r28, 0x00	; 0
     bfa:	11 f0       	breq	.+4      	; 0xc00 <menu_draw+0xa0>
     bfc:	e8 80       	ld	r14, Y
     bfe:	f9 80       	ldd	r15, Y+1	; 0x01
     c00:	02 e1       	ldi	r16, 0x12	; 18
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
     c02:	f7 01       	movw	r30, r14
     c04:	80 81       	ld	r24, Z
     c06:	88 23       	and	r24, r24
     c08:	11 f1       	breq	.+68     	; 0xc4e <menu_draw+0xee>
     c0a:	ff ef       	ldi	r31, 0xFF	; 255
     c0c:	ef 1a       	sub	r14, r31
     c0e:	ff 0a       	sbc	r15, r31
     c10:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
     c14:	01 50       	subi	r16, 0x01	; 1
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
        lcd_send_data(' ');
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
     c16:	a9 f7       	brne	.-22     	; 0xc02 <menu_draw+0xa2>
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
        if (first) first = first->next;
     c18:	20 97       	sbiw	r28, 0x00	; 0
     c1a:	19 f0       	breq	.+6      	; 0xc22 <menu_draw+0xc2>
     c1c:	0a 80       	ldd	r0, Y+2	; 0x02
     c1e:	db 81       	ldd	r29, Y+3	; 0x03
     c20:	c0 2d       	mov	r28, r0
        index++;
    while (index > 2 && first) {
        first = first->next;
        index--;
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
     c22:	1f 5f       	subi	r17, 0xFF	; 255
     c24:	14 30       	cpi	r17, 0x04	; 4
     c26:	79 f6       	brne	.-98     	; 0xbc6 <menu_draw+0x66>
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
        if (first) first = first->next;
    }
}
     c28:	df 91       	pop	r29
     c2a:	cf 91       	pop	r28
     c2c:	1f 91       	pop	r17
     c2e:	0f 91       	pop	r16
     c30:	ff 90       	pop	r15
     c32:	ef 90       	pop	r14
     c34:	08 95       	ret
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
        index++;
     c36:	8f 5f       	subi	r24, 0xFF	; 255
    if (!current_menu || active_action) return;
    lcd_write_line(0, current_menu->title);
    // Keep the first three entries visible until selection reaches entry four.
    MenuItem *first = current_menu->first_item;
    uint8_t index = 0;
    for (MenuItem *item = first; item && item != current_menu->selected; item = item->next)
     c38:	02 80       	ldd	r0, Z+2	; 0x02
     c3a:	f3 81       	ldd	r31, Z+3	; 0x03
     c3c:	e0 2d       	mov	r30, r0
     c3e:	b3 cf       	rjmp	.-154    	; 0xba6 <menu_draw+0x46>
        index++;
    while (index > 2 && first) {
        first = first->next;
     c40:	0a 80       	ldd	r0, Y+2	; 0x02
     c42:	db 81       	ldd	r29, Y+3	; 0x03
     c44:	c0 2d       	mov	r28, r0
        index--;
     c46:	81 50       	subi	r24, 0x01	; 1
     c48:	b8 cf       	rjmp	.-144    	; 0xbba <menu_draw+0x5a>
    }
    for (uint8_t row = 1; row < LCD_ROWS; row++) {
        lcd_set_cursor(row, 0);
        lcd_send_data(first && first == current_menu->selected ? '>' : ' ');
     c4a:	8e e3       	ldi	r24, 0x3E	; 62
     c4c:	cc cf       	rjmp	.-104    	; 0xbe6 <menu_draw+0x86>
        lcd_send_data(' ');
        const char *text = first ? first->text : "";
        for (uint8_t col = 2; col < LCD_COLUMNS; col++)
            lcd_send_data(*text ? (uint8_t)*text++ : ' ');
     c4e:	80 e2       	ldi	r24, 0x20	; 32
     c50:	df cf       	rjmp	.-66     	; 0xc10 <menu_draw+0xb0>

00000c52 <menu_up>:
    }
}

void menu_up(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
     c52:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     c56:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     c5a:	30 97       	sbiw	r30, 0x00	; 0
     c5c:	99 f0       	breq	.+38     	; 0xc84 <menu_up+0x32>
     c5e:	80 91 d7 03 	lds	r24, 0x03D7	; 0x8003d7 <active_action>
     c62:	90 91 d8 03 	lds	r25, 0x03D8	; 0x8003d8 <active_action+0x1>
     c66:	89 2b       	or	r24, r25
     c68:	69 f4       	brne	.+26     	; 0xc84 <menu_up+0x32>
     c6a:	a6 81       	ldd	r26, Z+6	; 0x06
     c6c:	b7 81       	ldd	r27, Z+7	; 0x07
     c6e:	10 97       	sbiw	r26, 0x00	; 0
     c70:	49 f0       	breq	.+18     	; 0xc84 <menu_up+0x32>
    if (current_menu->selected->prev) {
     c72:	14 96       	adiw	r26, 0x04	; 4
     c74:	8d 91       	ld	r24, X+
     c76:	9c 91       	ld	r25, X
     c78:	00 97       	sbiw	r24, 0x00	; 0
     c7a:	21 f0       	breq	.+8      	; 0xc84 <menu_up+0x32>
        current_menu->selected = current_menu->selected->prev;
     c7c:	97 83       	std	Z+7, r25	; 0x07
     c7e:	86 83       	std	Z+6, r24	; 0x06
        menu_draw();
     c80:	0c 94 b0 05 	jmp	0xb60	; 0xb60 <menu_draw>
    }
}
     c84:	08 95       	ret

00000c86 <menu_down>:

void menu_down(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
     c86:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     c8a:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     c8e:	30 97       	sbiw	r30, 0x00	; 0
     c90:	99 f0       	breq	.+38     	; 0xcb8 <menu_down+0x32>
     c92:	80 91 d7 03 	lds	r24, 0x03D7	; 0x8003d7 <active_action>
     c96:	90 91 d8 03 	lds	r25, 0x03D8	; 0x8003d8 <active_action+0x1>
     c9a:	89 2b       	or	r24, r25
     c9c:	69 f4       	brne	.+26     	; 0xcb8 <menu_down+0x32>
     c9e:	a6 81       	ldd	r26, Z+6	; 0x06
     ca0:	b7 81       	ldd	r27, Z+7	; 0x07
     ca2:	10 97       	sbiw	r26, 0x00	; 0
     ca4:	49 f0       	breq	.+18     	; 0xcb8 <menu_down+0x32>
    if (current_menu->selected->next) {
     ca6:	12 96       	adiw	r26, 0x02	; 2
     ca8:	8d 91       	ld	r24, X+
     caa:	9c 91       	ld	r25, X
     cac:	00 97       	sbiw	r24, 0x00	; 0
     cae:	21 f0       	breq	.+8      	; 0xcb8 <menu_down+0x32>
        current_menu->selected = current_menu->selected->next;
     cb0:	97 83       	std	Z+7, r25	; 0x07
     cb2:	86 83       	std	Z+6, r24	; 0x06
        menu_draw();
     cb4:	0c 94 b0 05 	jmp	0xb60	; 0xb60 <menu_draw>
    }
}
     cb8:	08 95       	ret

00000cba <menu_enter>:

void menu_enter(void)
{
    if (!current_menu || active_action || !current_menu->selected) return;
     cba:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     cbe:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     cc2:	30 97       	sbiw	r30, 0x00	; 0
     cc4:	61 f1       	breq	.+88     	; 0xd1e <menu_enter+0x64>
     cc6:	80 91 d7 03 	lds	r24, 0x03D7	; 0x8003d7 <active_action>
     cca:	90 91 d8 03 	lds	r25, 0x03D8	; 0x8003d8 <active_action+0x1>
     cce:	89 2b       	or	r24, r25
     cd0:	31 f5       	brne	.+76     	; 0xd1e <menu_enter+0x64>
     cd2:	a6 81       	ldd	r26, Z+6	; 0x06
     cd4:	b7 81       	ldd	r27, Z+7	; 0x07
     cd6:	10 97       	sbiw	r26, 0x00	; 0
     cd8:	11 f1       	breq	.+68     	; 0xd1e <menu_enter+0x64>
    MenuItem *item = current_menu->selected;
    if (item->child_menu) {
     cda:	16 96       	adiw	r26, 0x06	; 6
     cdc:	ed 91       	ld	r30, X+
     cde:	fc 91       	ld	r31, X
     ce0:	17 97       	sbiw	r26, 0x07	; 7
     ce2:	30 97       	sbiw	r30, 0x00	; 0
     ce4:	89 f0       	breq	.+34     	; 0xd08 <menu_enter+0x4e>
        current_menu = item->child_menu;
     ce6:	f0 93 da 03 	sts	0x03DA, r31	; 0x8003da <current_menu+0x1>
     cea:	e0 93 d9 03 	sts	0x03D9, r30	; 0x8003d9 <current_menu>
        // Opening a relay channel starts at ON, matching the current interface.
        // Other menus retain their selection when revisited.
        if (current_menu->parent_menu == &relay_menu)
     cee:	84 81       	ldd	r24, Z+4	; 0x04
     cf0:	95 81       	ldd	r25, Z+5	; 0x05
     cf2:	8b 5f       	subi	r24, 0xFB	; 251
     cf4:	93 40       	sbci	r25, 0x03	; 3
     cf6:	21 f4       	brne	.+8      	; 0xd00 <menu_enter+0x46>
            current_menu->selected = current_menu->first_item;
     cf8:	82 81       	ldd	r24, Z+2	; 0x02
     cfa:	93 81       	ldd	r25, Z+3	; 0x03
     cfc:	97 83       	std	Z+7, r25	; 0x07
     cfe:	86 83       	std	Z+6, r24	; 0x06
        lcd_clear();
     d00:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
        menu_draw();
     d04:	0c 94 b0 05 	jmp	0xb60	; 0xb60 <menu_draw>
    } else if (item->action) {
     d08:	18 96       	adiw	r26, 0x08	; 8
     d0a:	ed 91       	ld	r30, X+
     d0c:	fc 91       	ld	r31, X
     d0e:	19 97       	sbiw	r26, 0x09	; 9
     d10:	30 97       	sbiw	r30, 0x00	; 0
     d12:	29 f0       	breq	.+10     	; 0xd1e <menu_enter+0x64>
        active_action = item;
     d14:	b0 93 d8 03 	sts	0x03D8, r27	; 0x8003d8 <active_action+0x1>
     d18:	a0 93 d7 03 	sts	0x03D7, r26	; 0x8003d7 <active_action>
        item->action();
     d1c:	09 94       	ijmp
    }
}
     d1e:	08 95       	ret

00000d20 <menu_back>:

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
     d20:	e0 91 d9 03 	lds	r30, 0x03D9	; 0x8003d9 <current_menu>
     d24:	f0 91 da 03 	lds	r31, 0x03DA	; 0x8003da <current_menu+0x1>
     d28:	30 97       	sbiw	r30, 0x00	; 0
     d2a:	c9 f0       	breq	.+50     	; 0xd5e <menu_back+0x3e>
    if (active_action) active_action = NULL;
     d2c:	80 91 d7 03 	lds	r24, 0x03D7	; 0x8003d7 <active_action>
     d30:	90 91 d8 03 	lds	r25, 0x03D8	; 0x8003d8 <active_action+0x1>
     d34:	89 2b       	or	r24, r25
     d36:	51 f0       	breq	.+20     	; 0xd4c <menu_back+0x2c>
     d38:	10 92 d8 03 	sts	0x03D8, r1	; 0x8003d8 <active_action+0x1>
     d3c:	10 92 d7 03 	sts	0x03D7, r1	; 0x8003d7 <active_action>
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
    else return 0;
    lcd_clear();
     d40:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    menu_draw();
     d44:	0e 94 b0 05 	call	0xb60	; 0xb60 <menu_draw>
    return 1;
     d48:	81 e0       	ldi	r24, 0x01	; 1
     d4a:	08 95       	ret

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
    if (active_action) active_action = NULL;
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
     d4c:	84 81       	ldd	r24, Z+4	; 0x04
     d4e:	95 81       	ldd	r25, Z+5	; 0x05
     d50:	00 97       	sbiw	r24, 0x00	; 0
     d52:	29 f0       	breq	.+10     	; 0xd5e <menu_back+0x3e>
     d54:	90 93 da 03 	sts	0x03DA, r25	; 0x8003da <current_menu+0x1>
     d58:	80 93 d9 03 	sts	0x03D9, r24	; 0x8003d9 <current_menu>
     d5c:	f1 cf       	rjmp	.-30     	; 0xd40 <menu_back+0x20>
    }
}

uint8_t menu_back(void)
{
    if (!current_menu) return 0;
     d5e:	80 e0       	ldi	r24, 0x00	; 0
    else if (current_menu->parent_menu) current_menu = current_menu->parent_menu;
    else return 0;
    lcd_clear();
    menu_draw();
    return 1;
}
     d60:	08 95       	ret

00000d62 <menu_action_active>:

uint8_t menu_action_active(void)
{
    return active_action != NULL;
     d62:	81 e0       	ldi	r24, 0x01	; 1
     d64:	20 91 d7 03 	lds	r18, 0x03D7	; 0x8003d7 <active_action>
     d68:	30 91 d8 03 	lds	r19, 0x03D8	; 0x8003d8 <active_action+0x1>
     d6c:	23 2b       	or	r18, r19
     d6e:	09 f4       	brne	.+2      	; 0xd72 <menu_action_active+0x10>
     d70:	80 e0       	ldi	r24, 0x00	; 0
}
     d72:	08 95       	ret

00000d74 <menu_action_input>:

void menu_action_input(uint8_t pressed)
{
    if (active_action && active_action->input) active_action->input(pressed);
     d74:	e0 91 d7 03 	lds	r30, 0x03D7	; 0x8003d7 <active_action>
     d78:	f0 91 d8 03 	lds	r31, 0x03D8	; 0x8003d8 <active_action+0x1>
     d7c:	30 97       	sbiw	r30, 0x00	; 0
     d7e:	31 f0       	breq	.+12     	; 0xd8c <menu_action_input+0x18>
     d80:	02 84       	ldd	r0, Z+10	; 0x0a
     d82:	f3 85       	ldd	r31, Z+11	; 0x0b
     d84:	e0 2d       	mov	r30, r0
     d86:	30 97       	sbiw	r30, 0x00	; 0
     d88:	09 f0       	breq	.+2      	; 0xd8c <menu_action_input+0x18>
     d8a:	09 94       	ijmp
}
     d8c:	08 95       	ret

00000d8e <alarm_load_step_locked>:
static volatile uint8_t buzzer_running;
static volatile uint16_t buzzer_settle_ticks;
static volatile uint8_t alarm_step;
static volatile uint16_t alarm_cycles;
static void alarm_load_step_locked(void) {
    OCR2 = alarm_pattern[alarm_step].compare;
     d8e:	e0 91 15 04 	lds	r30, 0x0415	; 0x800415 <alarm_step>
     d92:	84 e0       	ldi	r24, 0x04	; 4
     d94:	e8 9f       	mul	r30, r24
     d96:	f0 01       	movw	r30, r0
     d98:	11 24       	eor	r1, r1
     d9a:	eb 5d       	subi	r30, 0xDB	; 219
     d9c:	fd 4f       	sbci	r31, 0xFD	; 253
     d9e:	80 81       	ld	r24, Z
     da0:	83 bd       	out	0x23, r24	; 35
    TCNT2 = 0; // A smaller OCR2 must not miss its next compare.
     da2:	14 bc       	out	0x24, r1	; 36
    alarm_cycles = alarm_pattern[alarm_step].cycles;
     da4:	e0 91 15 04 	lds	r30, 0x0415	; 0x800415 <alarm_step>
     da8:	84 e0       	ldi	r24, 0x04	; 4
     daa:	e8 9f       	mul	r30, r24
     dac:	f0 01       	movw	r30, r0
     dae:	11 24       	eor	r1, r1
     db0:	eb 5d       	subi	r30, 0xDB	; 219
     db2:	fd 4f       	sbci	r31, 0xFD	; 253
     db4:	81 81       	ldd	r24, Z+1	; 0x01
     db6:	92 81       	ldd	r25, Z+2	; 0x02
     db8:	90 93 14 04 	sts	0x0414, r25	; 0x800414 <alarm_cycles+0x1>
     dbc:	80 93 13 04 	sts	0x0413, r24	; 0x800413 <alarm_cycles>
    output_state |= BUZZER_BIT; // Active-low module: HIGH is quiet.
     dc0:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     dc4:	80 61       	ori	r24, 0x10	; 16
     dc6:	80 93 19 04 	sts	0x0419, r24	; 0x800419 <output_state>
}
     dca:	08 95       	ret

00000dcc <buzzer_stop_locked>:
static void buzzer_stop_locked(void) {
    TIMSK &= ~(1 << OCIE2);
     dcc:	87 b7       	in	r24, 0x37	; 55
     dce:	8f 77       	andi	r24, 0x7F	; 127
     dd0:	87 bf       	out	0x37, r24	; 55
    TCCR2 = (1 << WGM21);
     dd2:	88 e0       	ldi	r24, 0x08	; 8
     dd4:	85 bd       	out	0x25, r24	; 37
    TIFR = (1 << OCF2);
     dd6:	80 e8       	ldi	r24, 0x80	; 128
     dd8:	86 bf       	out	0x36, r24	; 54
    buzzer_running = 0;
     dda:	10 92 18 04 	sts	0x0418, r1	; 0x800418 <buzzer_running>
    buzzer_settle_ticks = 0;
     dde:	10 92 17 04 	sts	0x0417, r1	; 0x800417 <buzzer_settle_ticks+0x1>
     de2:	10 92 16 04 	sts	0x0416, r1	; 0x800416 <buzzer_settle_ticks>
    alarm_step = 0;
     de6:	10 92 15 04 	sts	0x0415, r1	; 0x800415 <alarm_step>
    alarm_cycles = 0;
     dea:	10 92 14 04 	sts	0x0414, r1	; 0x800414 <alarm_cycles+0x1>
     dee:	10 92 13 04 	sts	0x0413, r1	; 0x800413 <alarm_cycles>
    // Relay removes VCC: keep I/O LOW to avoid backpowering the module.
    output_state &= (uint8_t)~BUZZER_BIT;
     df2:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     df6:	8f 7e       	andi	r24, 0xEF	; 239
     df8:	80 93 19 04 	sts	0x0419, r24	; 0x800419 <output_state>
}
     dfc:	08 95       	ret

00000dfe <relay_apply_locked>:
    TIMSK |= (1 << OCIE2);
    // Timer2 /64; Q4 is the external latch output.
    TCCR2 = (1 << WGM21) | (1 << CS21) | (1 << CS20);
}
static void relay_apply_locked(uint8_t state) {
    uint8_t previous = (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     dfe:	20 91 19 04 	lds	r18, 0x0419	; 0x800419 <output_state>
    uint8_t next = state & RELAY_MASK;
    output_state = (output_state & (uint8_t)~RELAY_MASK)
     e02:	90 91 19 04 	lds	r25, 0x0419	; 0x800419 <output_state>
     e06:	90 7f       	andi	r25, 0xF0	; 240
    // Timer2 /64; Q4 is the external latch output.
    TCCR2 = (1 << WGM21) | (1 << CS21) | (1 << CS20);
}
static void relay_apply_locked(uint8_t state) {
    uint8_t previous = (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
    uint8_t next = state & RELAY_MASK;
     e08:	38 2f       	mov	r19, r24
     e0a:	3f 70       	andi	r19, 0x0F	; 15
    output_state = (output_state & (uint8_t)~RELAY_MASK)
                 | ((next ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK);
     e0c:	93 2b       	or	r25, r19
    TCCR2 = (1 << WGM21) | (1 << CS21) | (1 << CS20);
}
static void relay_apply_locked(uint8_t state) {
    uint8_t previous = (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
    uint8_t next = state & RELAY_MASK;
    output_state = (output_state & (uint8_t)~RELAY_MASK)
     e0e:	90 93 19 04 	sts	0x0419, r25	; 0x800419 <output_state>
                 | ((next ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK);
    if (!(next & RELAY_0_BIT)) {
     e12:	80 fd       	sbrc	r24, 0
     e14:	07 c0       	rjmp	.+14     	; 0xe24 <relay_apply_locked+0x26>
        buzzer_stop_locked();
     e16:	0e 94 e6 06 	call	0xdcc	; 0xdcc <buzzer_stop_locked>
    } else if (!(previous & RELAY_0_BIT)) {
        // Start the alarm after approximately 20 ms for contact/power settling.
        buzzer_start_locked();
    }
    RELAYS = output_state;
     e1a:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     e1e:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xce7>
}
     e22:	08 95       	ret
    uint8_t next = state & RELAY_MASK;
    output_state = (output_state & (uint8_t)~RELAY_MASK)
                 | ((next ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK);
    if (!(next & RELAY_0_BIT)) {
        buzzer_stop_locked();
    } else if (!(previous & RELAY_0_BIT)) {
     e24:	20 fd       	sbrc	r18, 0
     e26:	f9 cf       	rjmp	.-14     	; 0xe1a <relay_apply_locked+0x1c>
    alarm_cycles = 0;
    // Relay removes VCC: keep I/O LOW to avoid backpowering the module.
    output_state &= (uint8_t)~BUZZER_BIT;
}
static void buzzer_start_locked(void) {
    buzzer_running = 0;
     e28:	10 92 18 04 	sts	0x0418, r1	; 0x800418 <buzzer_running>
    buzzer_settle_ticks = BUZZER_SETTLE_TICKS;
     e2c:	84 e1       	ldi	r24, 0x14	; 20
     e2e:	90 e0       	ldi	r25, 0x00	; 0
     e30:	90 93 17 04 	sts	0x0417, r25	; 0x800417 <buzzer_settle_ticks+0x1>
     e34:	80 93 16 04 	sts	0x0416, r24	; 0x800416 <buzzer_settle_ticks>
    alarm_step = 0;
     e38:	10 92 15 04 	sts	0x0415, r1	; 0x800415 <alarm_step>
    output_state &= (uint8_t)~BUZZER_BIT;
     e3c:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     e40:	8f 7e       	andi	r24, 0xEF	; 239
     e42:	80 93 19 04 	sts	0x0419, r24	; 0x800419 <output_state>
    TCNT2 = 0;
     e46:	14 bc       	out	0x24, r1	; 36
    OCR2 = REST_COUNTS - 1;
     e48:	89 ef       	ldi	r24, 0xF9	; 249
     e4a:	83 bd       	out	0x23, r24	; 35
    TIFR = (1 << OCF2);
     e4c:	80 e8       	ldi	r24, 0x80	; 128
     e4e:	86 bf       	out	0x36, r24	; 54
    TIMSK |= (1 << OCIE2);
     e50:	87 b7       	in	r24, 0x37	; 55
     e52:	80 68       	ori	r24, 0x80	; 128
     e54:	87 bf       	out	0x37, r24	; 55
    // Timer2 /64; Q4 is the external latch output.
    TCCR2 = (1 << WGM21) | (1 << CS21) | (1 << CS20);
     e56:	8b e0       	ldi	r24, 0x0B	; 11
     e58:	85 bd       	out	0x25, r24	; 37
     e5a:	df cf       	rjmp	.-66     	; 0xe1a <relay_apply_locked+0x1c>

00000e5c <relay_init>:
        buzzer_start_locked();
    }
    RELAYS = output_state;
}

void relay_init(void) {
     e5c:	cf 93       	push	r28
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     e5e:	cf b7       	in	r28, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     e60:	f8 94       	cli
        output_state = 0xF0u | (RELAY_ACTIVE_LOW_MASK & RELAY_MASK);
     e62:	80 ef       	ldi	r24, 0xF0	; 240
     e64:	80 93 19 04 	sts	0x0419, r24	; 0x800419 <output_state>
        buzzer_stop_locked();
     e68:	0e 94 e6 06 	call	0xdcc	; 0xdcc <buzzer_stop_locked>
        TCNT2 = 0;
     e6c:	14 bc       	out	0x24, r1	; 36
        OCR2 = REST_COUNTS - 1;
     e6e:	89 ef       	ldi	r24, 0xF9	; 249
     e70:	83 bd       	out	0x23, r24	; 35
        RELAYS = output_state;
     e72:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     e76:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xce7>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     e7a:	cf bf       	out	0x3f, r28	; 63
    }
}
     e7c:	cf 91       	pop	r28
     e7e:	08 95       	ret

00000e80 <relay_set_raw>:

void relay_set_raw(uint8_t state) {
     e80:	cf 93       	push	r28
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     e82:	cf b7       	in	r28, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     e84:	f8 94       	cli
        relay_apply_locked(state);
     e86:	0e 94 ff 06 	call	0xdfe	; 0xdfe <relay_apply_locked>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     e8a:	cf bf       	out	0x3f, r28	; 63
    }
}
     e8c:	cf 91       	pop	r28
     e8e:	08 95       	ret

00000e90 <relay_get_state>:

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     e90:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
}
     e94:	8f 70       	andi	r24, 0x0F	; 15
     e96:	08 95       	ret

00000e98 <relay_on>:

void relay_on(uint8_t num) {
     e98:	cf 93       	push	r28
    if (num >= 4) return;
     e9a:	84 30       	cpi	r24, 0x04	; 4
     e9c:	90 f4       	brcc	.+36     	; 0xec2 <relay_on+0x2a>
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     e9e:	cf b7       	in	r28, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     ea0:	f8 94       	cli
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     ea2:	40 91 19 04 	lds	r20, 0x0419	; 0x800419 <output_state>
     ea6:	4f 70       	andi	r20, 0x0F	; 15
}

void relay_on(uint8_t num) {
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() | (1u << num));
     ea8:	21 e0       	ldi	r18, 0x01	; 1
     eaa:	30 e0       	ldi	r19, 0x00	; 0
     eac:	b9 01       	movw	r22, r18
     eae:	02 c0       	rjmp	.+4      	; 0xeb4 <relay_on+0x1c>
     eb0:	66 0f       	add	r22, r22
     eb2:	77 1f       	adc	r23, r23
     eb4:	8a 95       	dec	r24
     eb6:	e2 f7       	brpl	.-8      	; 0xeb0 <relay_on+0x18>
     eb8:	cb 01       	movw	r24, r22
     eba:	84 2b       	or	r24, r20
     ebc:	0e 94 ff 06 	call	0xdfe	; 0xdfe <relay_apply_locked>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     ec0:	cf bf       	out	0x3f, r28	; 63
    }
}
     ec2:	cf 91       	pop	r28
     ec4:	08 95       	ret

00000ec6 <relay_off>:
void relay_off(uint8_t num) {
     ec6:	cf 93       	push	r28
    if (num >= 4) return;
     ec8:	84 30       	cpi	r24, 0x04	; 4
     eca:	88 f4       	brcc	.+34     	; 0xeee <relay_off+0x28>
     ecc:	28 2f       	mov	r18, r24
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     ece:	cf b7       	in	r28, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     ed0:	f8 94       	cli
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     ed2:	30 91 19 04 	lds	r19, 0x0419	; 0x800419 <output_state>
    }
}
void relay_off(uint8_t num) {
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() & (uint8_t)~(1u << num));
     ed6:	81 e0       	ldi	r24, 0x01	; 1
     ed8:	90 e0       	ldi	r25, 0x00	; 0
     eda:	01 c0       	rjmp	.+2      	; 0xede <relay_off+0x18>
     edc:	88 0f       	add	r24, r24
     ede:	2a 95       	dec	r18
     ee0:	ea f7       	brpl	.-6      	; 0xedc <relay_off+0x16>
     ee2:	80 95       	com	r24
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     ee4:	3f 70       	andi	r19, 0x0F	; 15
    }
}
void relay_off(uint8_t num) {
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() & (uint8_t)~(1u << num));
     ee6:	83 23       	and	r24, r19
     ee8:	0e 94 ff 06 	call	0xdfe	; 0xdfe <relay_apply_locked>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     eec:	cf bf       	out	0x3f, r28	; 63
    }
}
     eee:	cf 91       	pop	r28
     ef0:	08 95       	ret

00000ef2 <action_relay>:
}

// Menu callbacks keep relay behavior and its status screen in this module.
#include "lcd.h"
static void action_relay(uint8_t channel, uint8_t on)
{
     ef2:	1f 93       	push	r17
     ef4:	cf 93       	push	r28
     ef6:	df 93       	push	r29
     ef8:	cd b7       	in	r28, 0x3d	; 61
     efa:	de b7       	in	r29, 0x3e	; 62
     efc:	28 97       	sbiw	r28, 0x08	; 8
     efe:	0f b6       	in	r0, 0x3f	; 63
     f00:	f8 94       	cli
     f02:	de bf       	out	0x3e, r29	; 62
     f04:	0f be       	out	0x3f, r0	; 63
     f06:	cd bf       	out	0x3d, r28	; 61
     f08:	18 2f       	mov	r17, r24
    if (on) relay_on(channel);
     f0a:	66 23       	and	r22, r22
     f0c:	91 f1       	breq	.+100    	; 0xf72 <action_relay+0x80>
     f0e:	0e 94 4c 07 	call	0xe98	; 0xe98 <relay_on>
    else relay_off(channel);
    char title[] = "RELAY 1";
     f12:	88 e0       	ldi	r24, 0x08	; 8
     f14:	ed e7       	ldi	r30, 0x7D	; 125
     f16:	f3 e0       	ldi	r31, 0x03	; 3
     f18:	de 01       	movw	r26, r28
     f1a:	11 96       	adiw	r26, 0x01	; 1
     f1c:	01 90       	ld	r0, Z+
     f1e:	0d 92       	st	X+, r0
     f20:	8a 95       	dec	r24
     f22:	e1 f7       	brne	.-8      	; 0xf1c <action_relay+0x2a>
    title[6] = '1' + channel;
     f24:	81 e3       	ldi	r24, 0x31	; 49
     f26:	81 0f       	add	r24, r17
     f28:	8f 83       	std	Y+7, r24	; 0x07
    lcd_clear();
     f2a:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    lcd_write_line(0, title);
     f2e:	be 01       	movw	r22, r28
     f30:	6f 5f       	subi	r22, 0xFF	; 255
     f32:	7f 4f       	sbci	r23, 0xFF	; 255
     f34:	80 e0       	ldi	r24, 0x00	; 0
     f36:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     f3a:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
     f3e:	8f 70       	andi	r24, 0x0F	; 15
    else relay_off(channel);
    char title[] = "RELAY 1";
    title[6] = '1' + channel;
    lcd_clear();
    lcd_write_line(0, title);
    lcd_write_line(1, relay_get_state() & (1u << channel) ? "STATE: ON" : "STATE: OFF");
     f40:	90 e0       	ldi	r25, 0x00	; 0
     f42:	02 c0       	rjmp	.+4      	; 0xf48 <action_relay+0x56>
     f44:	96 95       	lsr	r25
     f46:	87 95       	ror	r24
     f48:	1a 95       	dec	r17
     f4a:	e2 f7       	brpl	.-8      	; 0xf44 <action_relay+0x52>
     f4c:	6e ec       	ldi	r22, 0xCE	; 206
     f4e:	72 e0       	ldi	r23, 0x02	; 2
     f50:	80 ff       	sbrs	r24, 0
     f52:	02 c0       	rjmp	.+4      	; 0xf58 <action_relay+0x66>
     f54:	64 ec       	ldi	r22, 0xC4	; 196
     f56:	72 e0       	ldi	r23, 0x02	; 2
     f58:	81 e0       	ldi	r24, 0x01	; 1
     f5a:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
}
     f5e:	28 96       	adiw	r28, 0x08	; 8
     f60:	0f b6       	in	r0, 0x3f	; 63
     f62:	f8 94       	cli
     f64:	de bf       	out	0x3e, r29	; 62
     f66:	0f be       	out	0x3f, r0	; 63
     f68:	cd bf       	out	0x3d, r28	; 61
     f6a:	df 91       	pop	r29
     f6c:	cf 91       	pop	r28
     f6e:	1f 91       	pop	r17
     f70:	08 95       	ret
// Menu callbacks keep relay behavior and its status screen in this module.
#include "lcd.h"
static void action_relay(uint8_t channel, uint8_t on)
{
    if (on) relay_on(channel);
    else relay_off(channel);
     f72:	0e 94 63 07 	call	0xec6	; 0xec6 <relay_off>
     f76:	cd cf       	rjmp	.-102    	; 0xf12 <action_relay+0x20>

00000f78 <relay_toggle>:
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() & (uint8_t)~(1u << num));
    }
}
void relay_toggle(uint8_t num) {
     f78:	cf 93       	push	r28
    if (num >= 4) return;
     f7a:	84 30       	cpi	r24, 0x04	; 4
     f7c:	80 f4       	brcc	.+32     	; 0xf9e <relay_toggle+0x26>
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
     f7e:	cf b7       	in	r28, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
     f80:	f8 94       	cli
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     f82:	90 91 19 04 	lds	r25, 0x0419	; 0x800419 <output_state>
    }
}
void relay_toggle(uint8_t num) {
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() ^ (1u << num));
     f86:	21 e0       	ldi	r18, 0x01	; 1
     f88:	30 e0       	ldi	r19, 0x00	; 0
     f8a:	01 c0       	rjmp	.+2      	; 0xf8e <relay_toggle+0x16>
     f8c:	22 0f       	add	r18, r18
     f8e:	8a 95       	dec	r24
     f90:	ea f7       	brpl	.-6      	; 0xf8c <relay_toggle+0x14>
        relay_apply_locked(state);
    }
}

uint8_t relay_get_state(void) {
    return (output_state ^ RELAY_ACTIVE_LOW_MASK) & RELAY_MASK;
     f92:	89 2f       	mov	r24, r25
     f94:	8f 70       	andi	r24, 0x0F	; 15
    }
}
void relay_toggle(uint8_t num) {
    if (num >= 4) return;
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
        relay_apply_locked(relay_get_state() ^ (1u << num));
     f96:	82 27       	eor	r24, r18
     f98:	0e 94 ff 06 	call	0xdfe	; 0xdfe <relay_apply_locked>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
     f9c:	cf bf       	out	0x3f, r28	; 63
    }
}
     f9e:	cf 91       	pop	r28
     fa0:	08 95       	ret

00000fa2 <relay_mode_0_2>:
void relay_mode_0_2(void) { relay_set_raw(RELAY_0_BIT | RELAY_2_BIT); }
     fa2:	85 e0       	ldi	r24, 0x05	; 5
     fa4:	0c 94 40 07 	jmp	0xe80	; 0xe80 <relay_set_raw>

00000fa8 <relay_mode_1_3>:
void relay_mode_1_3(void) { relay_set_raw(RELAY_1_BIT | RELAY_3_BIT); }
     fa8:	8a e0       	ldi	r24, 0x0A	; 10
     faa:	0c 94 40 07 	jmp	0xe80	; 0xe80 <relay_set_raw>

00000fae <relay_all_on>:
void relay_all_on(void) { relay_set_raw(RELAY_MASK); }
     fae:	8f e0       	ldi	r24, 0x0F	; 15
     fb0:	0c 94 40 07 	jmp	0xe80	; 0xe80 <relay_set_raw>

00000fb4 <relay_all_off>:
void relay_all_off(void) { relay_set_raw(0); }
     fb4:	80 e0       	ldi	r24, 0x00	; 0
     fb6:	0c 94 40 07 	jmp	0xe80	; 0xe80 <relay_set_raw>

00000fba <relay_buzzer_is_running>:
uint8_t relay_buzzer_is_running(void) { return buzzer_running; }
     fba:	80 91 18 04 	lds	r24, 0x0418	; 0x800418 <buzzer_running>
     fbe:	08 95       	ret

00000fc0 <__vector_9>:

ISR(TIMER2_COMP_vect) {
     fc0:	1f 92       	push	r1
     fc2:	0f 92       	push	r0
     fc4:	0f b6       	in	r0, 0x3f	; 63
     fc6:	0f 92       	push	r0
     fc8:	11 24       	eor	r1, r1
     fca:	0b b6       	in	r0, 0x3b	; 59
     fcc:	0f 92       	push	r0
     fce:	2f 93       	push	r18
     fd0:	3f 93       	push	r19
     fd2:	4f 93       	push	r20
     fd4:	5f 93       	push	r21
     fd6:	6f 93       	push	r22
     fd8:	7f 93       	push	r23
     fda:	8f 93       	push	r24
     fdc:	9f 93       	push	r25
     fde:	af 93       	push	r26
     fe0:	bf 93       	push	r27
     fe2:	ef 93       	push	r30
     fe4:	ff 93       	push	r31
    if (buzzer_settle_ticks) {
     fe6:	80 91 16 04 	lds	r24, 0x0416	; 0x800416 <buzzer_settle_ticks>
     fea:	90 91 17 04 	lds	r25, 0x0417	; 0x800417 <buzzer_settle_ticks+0x1>
     fee:	89 2b       	or	r24, r25
     ff0:	39 f1       	breq	.+78     	; 0x1040 <__DATA_REGION_LENGTH__+0x40>
        if (--buzzer_settle_ticks) return;
     ff2:	80 91 16 04 	lds	r24, 0x0416	; 0x800416 <buzzer_settle_ticks>
     ff6:	90 91 17 04 	lds	r25, 0x0417	; 0x800417 <buzzer_settle_ticks+0x1>
     ffa:	01 97       	sbiw	r24, 0x01	; 1
     ffc:	90 93 17 04 	sts	0x0417, r25	; 0x800417 <buzzer_settle_ticks+0x1>
    1000:	80 93 16 04 	sts	0x0416, r24	; 0x800416 <buzzer_settle_ticks>
    1004:	89 2b       	or	r24, r25
    1006:	49 f4       	brne	.+18     	; 0x101a <__DATA_REGION_LENGTH__+0x1a>
        buzzer_running = 1;
    1008:	81 e0       	ldi	r24, 0x01	; 1
    100a:	80 93 18 04 	sts	0x0418, r24	; 0x800418 <buzzer_running>
    }
    if (!buzzer_running) return;
    if (alarm_pattern[alarm_step].tone) output_state ^= BUZZER_BIT;
    if (--alarm_cycles == 0) {
        if (++alarm_step == ALARM_STEP_COUNT) alarm_step = 0;
        alarm_load_step_locked();
    100e:	0e 94 c7 06 	call	0xd8e	; 0xd8e <alarm_load_step_locked>
    }
    RELAYS = output_state; // Preserve relay and reserved outputs.
    1012:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
    1016:	80 93 05 11 	sts	0x1105, r24	; 0x801105 <__bss_end+0xce7>
}
    101a:	ff 91       	pop	r31
    101c:	ef 91       	pop	r30
    101e:	bf 91       	pop	r27
    1020:	af 91       	pop	r26
    1022:	9f 91       	pop	r25
    1024:	8f 91       	pop	r24
    1026:	7f 91       	pop	r23
    1028:	6f 91       	pop	r22
    102a:	5f 91       	pop	r21
    102c:	4f 91       	pop	r20
    102e:	3f 91       	pop	r19
    1030:	2f 91       	pop	r18
    1032:	0f 90       	pop	r0
    1034:	0b be       	out	0x3b, r0	; 59
    1036:	0f 90       	pop	r0
    1038:	0f be       	out	0x3f, r0	; 63
    103a:	0f 90       	pop	r0
    103c:	1f 90       	pop	r1
    103e:	18 95       	reti
        buzzer_running = 1;
        alarm_load_step_locked();
        RELAYS = output_state;
        return;
    }
    if (!buzzer_running) return;
    1040:	80 91 18 04 	lds	r24, 0x0418	; 0x800418 <buzzer_running>
    1044:	88 23       	and	r24, r24
    1046:	49 f3       	breq	.-46     	; 0x101a <__DATA_REGION_LENGTH__+0x1a>
    if (alarm_pattern[alarm_step].tone) output_state ^= BUZZER_BIT;
    1048:	e0 91 15 04 	lds	r30, 0x0415	; 0x800415 <alarm_step>
    104c:	84 e0       	ldi	r24, 0x04	; 4
    104e:	e8 9f       	mul	r30, r24
    1050:	f0 01       	movw	r30, r0
    1052:	11 24       	eor	r1, r1
    1054:	eb 5d       	subi	r30, 0xDB	; 219
    1056:	fd 4f       	sbci	r31, 0xFD	; 253
    1058:	83 81       	ldd	r24, Z+3	; 0x03
    105a:	88 23       	and	r24, r24
    105c:	31 f0       	breq	.+12     	; 0x106a <__DATA_REGION_LENGTH__+0x6a>
    105e:	80 91 19 04 	lds	r24, 0x0419	; 0x800419 <output_state>
    1062:	90 e1       	ldi	r25, 0x10	; 16
    1064:	89 27       	eor	r24, r25
    1066:	80 93 19 04 	sts	0x0419, r24	; 0x800419 <output_state>
    if (--alarm_cycles == 0) {
    106a:	80 91 13 04 	lds	r24, 0x0413	; 0x800413 <alarm_cycles>
    106e:	90 91 14 04 	lds	r25, 0x0414	; 0x800414 <alarm_cycles+0x1>
    1072:	01 97       	sbiw	r24, 0x01	; 1
    1074:	90 93 14 04 	sts	0x0414, r25	; 0x800414 <alarm_cycles+0x1>
    1078:	80 93 13 04 	sts	0x0413, r24	; 0x800413 <alarm_cycles>
    107c:	89 2b       	or	r24, r25
    107e:	49 f6       	brne	.-110    	; 0x1012 <__DATA_REGION_LENGTH__+0x12>
        if (++alarm_step == ALARM_STEP_COUNT) alarm_step = 0;
    1080:	80 91 15 04 	lds	r24, 0x0415	; 0x800415 <alarm_step>
    1084:	8f 5f       	subi	r24, 0xFF	; 255
    1086:	80 93 15 04 	sts	0x0415, r24	; 0x800415 <alarm_step>
    108a:	82 31       	cpi	r24, 0x12	; 18
    108c:	09 f0       	breq	.+2      	; 0x1090 <__DATA_REGION_LENGTH__+0x90>
    108e:	bf cf       	rjmp	.-130    	; 0x100e <__DATA_REGION_LENGTH__+0xe>
    1090:	10 92 15 04 	sts	0x0415, r1	; 0x800415 <alarm_step>
    1094:	bc cf       	rjmp	.-136    	; 0x100e <__DATA_REGION_LENGTH__+0xe>

00001096 <action_relay_1_on>:
    title[6] = '1' + channel;
    lcd_clear();
    lcd_write_line(0, title);
    lcd_write_line(1, relay_get_state() & (1u << channel) ? "STATE: ON" : "STATE: OFF");
}
void action_relay_1_on(void) { action_relay(0, 1); }
    1096:	61 e0       	ldi	r22, 0x01	; 1
    1098:	80 e0       	ldi	r24, 0x00	; 0
    109a:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

0000109e <action_relay_1_off>:
void action_relay_1_off(void) { action_relay(0, 0); }
    109e:	60 e0       	ldi	r22, 0x00	; 0
    10a0:	80 e0       	ldi	r24, 0x00	; 0
    10a2:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010a6 <action_relay_2_on>:
void action_relay_2_on(void) { action_relay(1, 1); }
    10a6:	61 e0       	ldi	r22, 0x01	; 1
    10a8:	81 e0       	ldi	r24, 0x01	; 1
    10aa:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010ae <action_relay_2_off>:
void action_relay_2_off(void) { action_relay(1, 0); }
    10ae:	60 e0       	ldi	r22, 0x00	; 0
    10b0:	81 e0       	ldi	r24, 0x01	; 1
    10b2:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010b6 <action_relay_3_on>:
void action_relay_3_on(void) { action_relay(2, 1); }
    10b6:	61 e0       	ldi	r22, 0x01	; 1
    10b8:	82 e0       	ldi	r24, 0x02	; 2
    10ba:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010be <action_relay_3_off>:
void action_relay_3_off(void) { action_relay(2, 0); }
    10be:	60 e0       	ldi	r22, 0x00	; 0
    10c0:	82 e0       	ldi	r24, 0x02	; 2
    10c2:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010c6 <action_relay_4_on>:
void action_relay_4_on(void) { action_relay(3, 1); }
    10c6:	61 e0       	ldi	r22, 0x01	; 1
    10c8:	83 e0       	ldi	r24, 0x03	; 3
    10ca:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010ce <action_relay_4_off>:
void action_relay_4_off(void) { action_relay(3, 0); }
    10ce:	60 e0       	ldi	r22, 0x00	; 0
    10d0:	83 e0       	ldi	r24, 0x03	; 3
    10d2:	0c 94 79 07 	jmp	0xef2	; 0xef2 <action_relay>

000010d6 <draw_members>:
static uint8_t scroll_position;
static uint8_t scroll_forward;
static uint8_t scroll_delay;

static void draw_members(void)
{
    10d6:	cf 93       	push	r28
    10d8:	df 93       	push	r29
    lcd_set_cursor(2, 0);
    10da:	60 e0       	ldi	r22, 0x00	; 0
    10dc:	82 e0       	ldi	r24, 0x02	; 2
    10de:	0e 94 e5 01 	call	0x3ca	; 0x3ca <lcd_set_cursor>
    10e2:	d0 e0       	ldi	r29, 0x00	; 0
    10e4:	c0 e0       	ldi	r28, 0x00	; 0
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
        lcd_send_data((uint8_t)members[scroll_position + column]);
    10e6:	e0 91 1c 04 	lds	r30, 0x041C	; 0x80041c <scroll_position>
    10ea:	ce 01       	movw	r24, r28
    10ec:	83 59       	subi	r24, 0x93	; 147
    10ee:	9d 4f       	sbci	r25, 0xFD	; 253
    10f0:	e8 0f       	add	r30, r24
    10f2:	f9 2f       	mov	r31, r25
    10f4:	f1 1d       	adc	r31, r1
    10f6:	80 81       	ld	r24, Z
    10f8:	0e 94 da 01 	call	0x3b4	; 0x3b4 <lcd_send_data>
    10fc:	21 96       	adiw	r28, 0x01	; 1
static uint8_t scroll_delay;

static void draw_members(void)
{
    lcd_set_cursor(2, 0);
    for (uint8_t column = 0; column < LCD_COLUMNS; column++)
    10fe:	c4 31       	cpi	r28, 0x14	; 20
    1100:	d1 05       	cpc	r29, r1
    1102:	89 f7       	brne	.-30     	; 0x10e6 <draw_members+0x10>
        lcd_send_data((uint8_t)members[scroll_position + column]);
}
    1104:	df 91       	pop	r29
    1106:	cf 91       	pop	r28
    1108:	08 95       	ret

0000110a <welcome_show>:

void welcome_show(void)
{
    scroll_position = 0;
    110a:	10 92 1c 04 	sts	0x041C, r1	; 0x80041c <scroll_position>
    scroll_forward = 1;
    110e:	81 e0       	ldi	r24, 0x01	; 1
    1110:	80 93 1b 04 	sts	0x041B, r24	; 0x80041b <scroll_forward>
    scroll_delay = SCROLL_END_PAUSE_TICKS;
    1114:	84 e6       	ldi	r24, 0x64	; 100
    1116:	80 93 1a 04 	sts	0x041A, r24	; 0x80041a <scroll_delay>
    lcd_clear();
    111a:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    lcd_write_line(1, "     PROJECT 01");
    111e:	6e e8       	ldi	r22, 0x8E	; 142
    1120:	72 e0       	ldi	r23, 0x02	; 2
    1122:	81 e0       	ldi	r24, 0x01	; 1
    1124:	0e 94 71 02 	call	0x4e2	; 0x4e2 <lcd_write_line>
    draw_members();
    1128:	0c 94 6b 08 	jmp	0x10d6	; 0x10d6 <draw_members>

0000112c <welcome_update>:
    112c:	80 91 1a 04 	lds	r24, 0x041A	; 0x80041a <scroll_delay>
    1130:	81 50       	subi	r24, 0x01	; 1
    1132:	80 93 1a 04 	sts	0x041A, r24	; 0x80041a <scroll_delay>
    1136:	81 11       	cpse	r24, r1
    1138:	18 c0       	rjmp	.+48     	; 0x116a <welcome_update+0x3e>
    113a:	80 91 1c 04 	lds	r24, 0x041C	; 0x80041c <scroll_position>
    113e:	90 91 1b 04 	lds	r25, 0x041B	; 0x80041b <scroll_forward>
    1142:	99 23       	and	r25, r25
    1144:	99 f0       	breq	.+38     	; 0x116c <welcome_update+0x40>
    1146:	8f 5f       	subi	r24, 0xFF	; 255
    1148:	80 93 1c 04 	sts	0x041C, r24	; 0x80041c <scroll_position>
    114c:	8c 30       	cpi	r24, 0x0C	; 12
    114e:	11 f4       	brne	.+4      	; 0x1154 <welcome_update+0x28>
    1150:	10 92 1b 04 	sts	0x041B, r1	; 0x80041b <scroll_forward>
    1154:	0e 94 6b 08 	call	0x10d6	; 0x10d6 <draw_members>
    1158:	80 91 1c 04 	lds	r24, 0x041C	; 0x80041c <scroll_position>
    115c:	88 23       	and	r24, r24
    115e:	11 f0       	breq	.+4      	; 0x1164 <welcome_update+0x38>
    1160:	8c 30       	cpi	r24, 0x0C	; 12
    1162:	69 f4       	brne	.+26     	; 0x117e <welcome_update+0x52>
    1164:	84 e6       	ldi	r24, 0x64	; 100
    1166:	80 93 1a 04 	sts	0x041A, r24	; 0x80041a <scroll_delay>
    116a:	08 95       	ret
    116c:	81 50       	subi	r24, 0x01	; 1
    116e:	80 93 1c 04 	sts	0x041C, r24	; 0x80041c <scroll_position>
    1172:	81 11       	cpse	r24, r1
    1174:	ef cf       	rjmp	.-34     	; 0x1154 <welcome_update+0x28>
    1176:	81 e0       	ldi	r24, 0x01	; 1
    1178:	80 93 1b 04 	sts	0x041B, r24	; 0x80041b <scroll_forward>
    117c:	eb cf       	rjmp	.-42     	; 0x1154 <welcome_update+0x28>
    117e:	89 e1       	ldi	r24, 0x19	; 25
    1180:	f2 cf       	rjmp	.-28     	; 0x1166 <welcome_update+0x3a>

00001182 <main>:
    if (*selected != before) draw_menu();
}

int main(void)
{
    XMCRA = (1 << SRW11);
    1182:	82 e0       	ldi	r24, 0x02	; 2
    1184:	80 93 6d 00 	sts	0x006D, r24	; 0x80006d <__TEXT_REGION_LENGTH__+0x7e006d>
    MCUCR |= (1 << SRE) | (1 << SRW10);
    1188:	85 b7       	in	r24, 0x35	; 53
    118a:	80 6c       	ori	r24, 0xC0	; 192
    118c:	85 bf       	out	0x35, r24	; 53
    relay_init();
    118e:	0e 94 2e 07 	call	0xe5c	; 0xe5c <relay_init>
    LED_7CONTROL = 0;
    1192:	10 92 04 11 	sts	0x1104, r1	; 0x801104 <__bss_end+0xce6>
    LED_7DATA = 0;
    1196:	10 92 03 11 	sts	0x1103, r1	; 0x801103 <__bss_end+0xce5>
    lcd_init();
    119a:	0e 94 27 02 	call	0x44e	; 0x44e <lcd_init>
    draw_welcome();
    119e:	0e 94 99 00 	call	0x132	; 0x132 <draw_welcome>

    TCCR1A = 0;
    11a2:	1f bc       	out	0x2f, r1	; 47
    TCCR1B = 0;
    11a4:	1e bc       	out	0x2e, r1	; 46
    TCNT1 = 0;
    11a6:	1d bc       	out	0x2d, r1	; 45
    11a8:	1c bc       	out	0x2c, r1	; 44
    OCR1A = (F_CPU / 64UL / 100UL) - 1;
    11aa:	83 ec       	ldi	r24, 0xC3	; 195
    11ac:	99 e0       	ldi	r25, 0x09	; 9
    11ae:	9b bd       	out	0x2b, r25	; 43
    11b0:	8a bd       	out	0x2a, r24	; 42
    TIFR = (1 << OCF1A);
    11b2:	80 e1       	ldi	r24, 0x10	; 16
    11b4:	86 bf       	out	0x36, r24	; 54
    TIMSK |= (1 << OCIE1A);
    11b6:	87 b7       	in	r24, 0x37	; 55
    11b8:	80 61       	ori	r24, 0x10	; 16
    11ba:	87 bf       	out	0x37, r24	; 55
    TCCR1B = (1 << WGM12) | (1 << CS11) | (1 << CS10);
    11bc:	8b e0       	ldi	r24, 0x0B	; 11
    11be:	8e bd       	out	0x2e, r24	; 46
    seg7_init();
    11c0:	0e 94 8b 02 	call	0x516	; 0x516 <seg7_init>
    sei();
    11c4:	78 94       	sei

    uint16_t processed = 0;
    11c6:	d0 e0       	ldi	r29, 0x00	; 0
    11c8:	c0 e0       	ldi	r28, 0x00	; 0
static void apply_relay_action(void)
{
    // Existing relay module/driver behavior, including its buzzer linkage.
    if (relay_selection == 0) relay_on(0);
    else relay_off(0);
    screen = SCREEN_RELAY_STATUS;
    11ca:	95 e0       	ldi	r25, 0x05	; 5
    11cc:	89 2e       	mov	r8, r25
    11ce:	91 2c       	mov	r9, r1
static void start_led_mode(void)
{
    active_led_mode = led_selection;
    led_value = (active_led_mode == 1 || active_led_mode == 3) ? 9999 : 0;

    screen = SCREEN_LED_RUN;
    11d0:	23 e0       	ldi	r18, 0x03	; 3
    11d2:	e2 2e       	mov	r14, r18
    11d4:	f1 2c       	mov	r15, r1
    uint8_t before = *selected;
    if ((navigation & BTN_BIT_DOWN) && *selected + 1 < count) (*selected)++;
    else if ((navigation & BTN_BIT_UP) && *selected > 0) (*selected)--;
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) {
        if (screen == SCREEN_DEVICES) {
            open_menu(device_selection == 0 ? SCREEN_LED_MENU : SCREEN_RELAY_MENU);
    11d6:	34 e0       	ldi	r19, 0x04	; 4
    11d8:	c3 2e       	mov	r12, r19
    11da:	d1 2c       	mov	r13, r1
    11dc:	42 e0       	ldi	r20, 0x02	; 2
    11de:	a4 2e       	mov	r10, r20
    11e0:	b1 2c       	mov	r11, r1
        draw_list("RELAY:", relay_modes, 2, relay_selection);
}

static void open_menu(Screen target)
{
    screen = target;
    11e2:	01 e0       	ldi	r16, 0x01	; 1
    11e4:	10 e0       	ldi	r17, 0x00	; 0
    sei();

    uint16_t processed = 0;
    while (1) {
        uint16_t now;
        ATOMIC_BLOCK(ATOMIC_RESTORESTATE) { now = ticks; }
    11e6:	2f b7       	in	r18, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
    11e8:	f8 94       	cli
    11ea:	80 91 b8 03 	lds	r24, 0x03B8	; 0x8003b8 <__data_end>
    11ee:	90 91 b9 03 	lds	r25, 0x03B9	; 0x8003b9 <__data_end+0x1>
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
    11f2:	2f bf       	out	0x3f, r18	; 63
        if (processed == now) continue;
    11f4:	c8 17       	cp	r28, r24
    11f6:	d9 07       	cpc	r29, r25
    11f8:	b1 f3       	breq	.-20     	; 0x11e6 <main+0x64>
        processed++;
    11fa:	21 96       	adiw	r28, 0x01	; 1
        button_update();
    11fc:	0e 94 5e 04 	call	0x8bc	; 0x8bc <button_update>
        ui_update(button_pressed(), button_triggered());
    1200:	0e 94 9e 04 	call	0x93c	; 0x93c <button_triggered>
    1204:	78 2e       	mov	r7, r24
    1206:	0e 94 95 04 	call	0x92a	; 0x92a <button_pressed>
}

// Call every 10 ms. Confirm/back/exit use new presses; UP/DOWN may repeat.
static void ui_update(uint8_t pressed, uint8_t navigation)
{
    if (screen == SCREEN_WELCOME) {
    120a:	20 91 c3 03 	lds	r18, 0x03C3	; 0x8003c3 <screen>
    120e:	30 91 c4 03 	lds	r19, 0x03C4	; 0x8003c4 <screen+0x1>
    1212:	21 15       	cp	r18, r1
    1214:	31 05       	cpc	r19, r1
    1216:	a1 f5       	brne	.+104    	; 0x1280 <main+0xfe>
        if (pressed) {
    1218:	88 23       	and	r24, r24
    121a:	39 f0       	breq	.+14     	; 0x122a <main+0xa8>
            device_selection = 0;
    121c:	10 92 c2 03 	sts	0x03C2, r1	; 0x8003c2 <device_selection>
        draw_list("RELAY:", relay_modes, 2, relay_selection);
}

static void open_menu(Screen target)
{
    screen = target;
    1220:	10 93 c4 03 	sts	0x03C4, r17	; 0x8003c4 <screen+0x1>
    1224:	00 93 c3 03 	sts	0x03C3, r16	; 0x8003c3 <screen>
    1228:	3c c0       	rjmp	.+120    	; 0x12a2 <main+0x120>
    draw_menu();
}

static void scroll_welcome(void)
{
    if (--scroll_delay != 0) return;
    122a:	80 91 ba 03 	lds	r24, 0x03BA	; 0x8003ba <scroll_delay>
    122e:	81 50       	subi	r24, 0x01	; 1
    1230:	80 93 ba 03 	sts	0x03BA, r24	; 0x8003ba <scroll_delay>
    1234:	81 11       	cpse	r24, r1
    1236:	d7 cf       	rjmp	.-82     	; 0x11e6 <main+0x64>
    1238:	80 91 bc 03 	lds	r24, 0x03BC	; 0x8003bc <scroll_position>
    if (scroll_forward) {
    123c:	90 91 bb 03 	lds	r25, 0x03BB	; 0x8003bb <scroll_forward>
    1240:	99 23       	and	r25, r25
    1242:	99 f0       	breq	.+38     	; 0x126a <main+0xe8>
        if (++scroll_position == SCROLL_MAX) scroll_forward = 0;
    1244:	8f 5f       	subi	r24, 0xFF	; 255
    1246:	80 93 bc 03 	sts	0x03BC, r24	; 0x8003bc <scroll_position>
    124a:	8c 30       	cpi	r24, 0x0C	; 12
    124c:	11 f4       	brne	.+4      	; 0x1252 <main+0xd0>
    124e:	10 92 bb 03 	sts	0x03BB, r1	; 0x8003bb <scroll_forward>
    } else {
        if (--scroll_position == 0) scroll_forward = 1;
    }
    draw_members();
    1252:	0e 94 7f 00 	call	0xfe	; 0xfe <draw_members>
    scroll_delay = (scroll_position == 0 || scroll_position == SCROLL_MAX)
    1256:	80 91 bc 03 	lds	r24, 0x03BC	; 0x8003bc <scroll_position>
    125a:	88 23       	and	r24, r24
    125c:	11 f0       	breq	.+4      	; 0x1262 <main+0xe0>
    125e:	8c 30       	cpi	r24, 0x0C	; 12
    1260:	69 f4       	brne	.+26     	; 0x127c <main+0xfa>
    1262:	84 e6       	ldi	r24, 0x64	; 100
    1264:	80 93 ba 03 	sts	0x03BA, r24	; 0x8003ba <scroll_delay>
    1268:	be cf       	rjmp	.-132    	; 0x11e6 <main+0x64>
{
    if (--scroll_delay != 0) return;
    if (scroll_forward) {
        if (++scroll_position == SCROLL_MAX) scroll_forward = 0;
    } else {
        if (--scroll_position == 0) scroll_forward = 1;
    126a:	81 50       	subi	r24, 0x01	; 1
    126c:	80 93 bc 03 	sts	0x03BC, r24	; 0x8003bc <scroll_position>
    1270:	81 11       	cpse	r24, r1
    1272:	ef cf       	rjmp	.-34     	; 0x1252 <main+0xd0>
    1274:	81 e0       	ldi	r24, 0x01	; 1
    1276:	80 93 bb 03 	sts	0x03BB, r24	; 0x8003bb <scroll_forward>
    127a:	eb cf       	rjmp	.-42     	; 0x1252 <main+0xd0>
    }
    draw_members();
    scroll_delay = (scroll_position == 0 || scroll_position == SCROLL_MAX)
    127c:	89 e1       	ldi	r24, 0x19	; 25
    127e:	f2 cf       	rjmp	.-28     	; 0x1264 <main+0xe2>
            device_selection = 0;
            open_menu(SCREEN_DEVICES);
        } else scroll_welcome();
        return;
    }
    if (pressed & BTN_BIT_1) {
    1280:	85 ff       	sbrs	r24, 5
    1282:	03 c0       	rjmp	.+6      	; 0x128a <main+0x108>
        draw_welcome();
    1284:	0e 94 99 00 	call	0x132	; 0x132 <draw_welcome>
    1288:	ae cf       	rjmp	.-164    	; 0x11e6 <main+0x64>
        return;
    }
    if (pressed & BTN_BIT_LEFT) {
    128a:	80 ff       	sbrs	r24, 0
    128c:	18 c0       	rjmp	.+48     	; 0x12be <main+0x13c>
        if (screen == SCREEN_DEVICES) draw_welcome();
    128e:	21 30       	cpi	r18, 0x01	; 1
    1290:	31 05       	cpc	r19, r1
    1292:	c1 f3       	breq	.-16     	; 0x1284 <main+0x102>
        else if (screen == SCREEN_LED_RUN) open_menu(SCREEN_LED_MENU);
    1294:	23 30       	cpi	r18, 0x03	; 3
    1296:	31 05       	cpc	r19, r1
    1298:	49 f4       	brne	.+18     	; 0x12ac <main+0x12a>
        draw_list("RELAY:", relay_modes, 2, relay_selection);
}

static void open_menu(Screen target)
{
    screen = target;
    129a:	b0 92 c4 03 	sts	0x03C4, r11	; 0x8003c4 <screen+0x1>
    129e:	a0 92 c3 03 	sts	0x03C3, r10	; 0x8003c3 <screen>
    lcd_clear();
    12a2:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    draw_menu();
    12a6:	0e 94 65 01 	call	0x2ca	; 0x2ca <draw_menu>
    12aa:	9d cf       	rjmp	.-198    	; 0x11e6 <main+0x64>
        return;
    }
    if (pressed & BTN_BIT_LEFT) {
        if (screen == SCREEN_DEVICES) draw_welcome();
        else if (screen == SCREEN_LED_RUN) open_menu(SCREEN_LED_MENU);
        else if (screen == SCREEN_RELAY_STATUS) open_menu(SCREEN_RELAY_MENU);
    12ac:	25 30       	cpi	r18, 0x05	; 5
    12ae:	31 05       	cpc	r19, r1
    12b0:	09 f0       	breq	.+2      	; 0x12b4 <main+0x132>
    12b2:	b6 cf       	rjmp	.-148    	; 0x1220 <main+0x9e>
        draw_list("RELAY:", relay_modes, 2, relay_selection);
}

static void open_menu(Screen target)
{
    screen = target;
    12b4:	d0 92 c4 03 	sts	0x03C4, r13	; 0x8003c4 <screen+0x1>
    12b8:	c0 92 c3 03 	sts	0x03C3, r12	; 0x8003c3 <screen>
    12bc:	f2 cf       	rjmp	.-28     	; 0x12a2 <main+0x120>
        else if (screen == SCREEN_LED_RUN) open_menu(SCREEN_LED_MENU);
        else if (screen == SCREEN_RELAY_STATUS) open_menu(SCREEN_RELAY_MENU);
        else open_menu(SCREEN_DEVICES);
        return;
    }
    if (screen == SCREEN_LED_RUN) {
    12be:	23 30       	cpi	r18, 0x03	; 3
    12c0:	31 05       	cpc	r19, r1
    12c2:	49 f5       	brne	.+82     	; 0x1316 <main+0x194>
    display_led_value();
}

static void run_led_press(uint8_t pressed)
{
    uint16_t before = led_value;
    12c4:	20 91 bd 03 	lds	r18, 0x03BD	; 0x8003bd <led_value>
    12c8:	30 91 be 03 	lds	r19, 0x03BE	; 0x8003be <led_value+0x1>
    if (active_led_mode == 2 && (pressed & BTN_BIT_UP) && led_value < 9999)
    12cc:	90 91 bf 03 	lds	r25, 0x03BF	; 0x8003bf <active_led_mode>
    12d0:	92 30       	cpi	r25, 0x02	; 2
    12d2:	b9 f4       	brne	.+46     	; 0x1302 <main+0x180>
    12d4:	82 ff       	sbrs	r24, 2
    12d6:	0a c0       	rjmp	.+20     	; 0x12ec <main+0x16a>
    12d8:	2f 30       	cpi	r18, 0x0F	; 15
    12da:	87 e2       	ldi	r24, 0x27	; 39
    12dc:	38 07       	cpc	r19, r24
    12de:	30 f4       	brcc	.+12     	; 0x12ec <main+0x16a>
        led_value++;
    12e0:	c9 01       	movw	r24, r18
    12e2:	01 96       	adiw	r24, 0x01	; 1
    else if (active_led_mode == 3 && (pressed & BTN_BIT_DOWN) && led_value > 0)
        led_value--;
    12e4:	90 93 be 03 	sts	0x03BE, r25	; 0x8003be <led_value+0x1>
    12e8:	80 93 bd 03 	sts	0x03BD, r24	; 0x8003bd <led_value>
    if (led_value != before) display_led_value();
    12ec:	80 91 bd 03 	lds	r24, 0x03BD	; 0x8003bd <led_value>
    12f0:	90 91 be 03 	lds	r25, 0x03BE	; 0x8003be <led_value+0x1>
    12f4:	28 17       	cp	r18, r24
    12f6:	39 07       	cpc	r19, r25
    12f8:	09 f4       	brne	.+2      	; 0x12fc <main+0x17a>
    12fa:	75 cf       	rjmp	.-278    	; 0x11e6 <main+0x64>
    led_value = (active_led_mode == 1 || active_led_mode == 3) ? 9999 : 0;

    screen = SCREEN_LED_RUN;
    lcd_clear();
    write_row(0, led_modes[active_led_mode]);
    display_led_value();
    12fc:	0e 94 fe 00 	call	0x1fc	; 0x1fc <display_led_value>
    1300:	72 cf       	rjmp	.-284    	; 0x11e6 <main+0x64>
static void run_led_press(uint8_t pressed)
{
    uint16_t before = led_value;
    if (active_led_mode == 2 && (pressed & BTN_BIT_UP) && led_value < 9999)
        led_value++;
    else if (active_led_mode == 3 && (pressed & BTN_BIT_DOWN) && led_value > 0)
    1302:	93 30       	cpi	r25, 0x03	; 3
    1304:	99 f7       	brne	.-26     	; 0x12ec <main+0x16a>
    1306:	83 ff       	sbrs	r24, 3
    1308:	f1 cf       	rjmp	.-30     	; 0x12ec <main+0x16a>
    130a:	21 15       	cp	r18, r1
    130c:	31 05       	cpc	r19, r1
    130e:	71 f3       	breq	.-36     	; 0x12ec <main+0x16a>
        led_value--;
    1310:	c9 01       	movw	r24, r18
    1312:	01 97       	sbiw	r24, 0x01	; 1
    1314:	e7 cf       	rjmp	.-50     	; 0x12e4 <main+0x162>
    }
    if (screen == SCREEN_LED_RUN) {
        run_led_press(pressed);
        return;
    }
    if (screen == SCREEN_RELAY_STATUS) return;
    1316:	25 30       	cpi	r18, 0x05	; 5
    1318:	31 05       	cpc	r19, r1
    131a:	09 f4       	brne	.+2      	; 0x131e <main+0x19c>
    131c:	64 cf       	rjmp	.-312    	; 0x11e6 <main+0x64>

    uint8_t *selected;
    uint8_t count;
    if (screen == SCREEN_DEVICES) {
        selected = &device_selection; count = 2;
    131e:	90 91 c2 03 	lds	r25, 0x03C2	; 0x8003c2 <device_selection>
    1322:	62 e0       	ldi	r22, 0x02	; 2
    1324:	e2 ec       	ldi	r30, 0xC2	; 194
    1326:	f3 e0       	ldi	r31, 0x03	; 3
    }
    if (screen == SCREEN_RELAY_STATUS) return;

    uint8_t *selected;
    uint8_t count;
    if (screen == SCREEN_DEVICES) {
    1328:	21 30       	cpi	r18, 0x01	; 1
    132a:	31 05       	cpc	r19, r1
    132c:	69 f0       	breq	.+26     	; 0x1348 <main+0x1c6>
        selected = &device_selection; count = 2;
    } else if (screen == SCREEN_LED_MENU) {
        selected = &led_selection; count = 4;
    132e:	90 91 c1 03 	lds	r25, 0x03C1	; 0x8003c1 <led_selection>
    1332:	64 e0       	ldi	r22, 0x04	; 4
    1334:	e1 ec       	ldi	r30, 0xC1	; 193
    1336:	f3 e0       	ldi	r31, 0x03	; 3

    uint8_t *selected;
    uint8_t count;
    if (screen == SCREEN_DEVICES) {
        selected = &device_selection; count = 2;
    } else if (screen == SCREEN_LED_MENU) {
    1338:	22 30       	cpi	r18, 0x02	; 2
    133a:	31 05       	cpc	r19, r1
    133c:	29 f0       	breq	.+10     	; 0x1348 <main+0x1c6>
        selected = &led_selection; count = 4;
    } else {
        selected = &relay_selection; count = 2;
    133e:	90 91 c0 03 	lds	r25, 0x03C0	; 0x8003c0 <relay_selection>
    1342:	62 e0       	ldi	r22, 0x02	; 2
    1344:	e0 ec       	ldi	r30, 0xC0	; 192
    1346:	f3 e0       	ldi	r31, 0x03	; 3
    }
    uint8_t before = *selected;
    if ((navigation & BTN_BIT_DOWN) && *selected + 1 < count) (*selected)++;
    1348:	73 fe       	sbrs	r7, 3
    134a:	0f c0       	rjmp	.+30     	; 0x136a <main+0x1e8>
    134c:	49 2f       	mov	r20, r25
    134e:	50 e0       	ldi	r21, 0x00	; 0
    1350:	4f 5f       	subi	r20, 0xFF	; 255
    1352:	5f 4f       	sbci	r21, 0xFF	; 255
    1354:	64 17       	cp	r22, r20
    1356:	15 06       	cpc	r1, r21
    1358:	41 f0       	breq	.+16     	; 0x136a <main+0x1e8>
    135a:	3c f0       	brlt	.+14     	; 0x136a <main+0x1e8>
    135c:	81 e0       	ldi	r24, 0x01	; 1
    else if ((navigation & BTN_BIT_UP) && *selected > 0) (*selected)--;
    135e:	89 0f       	add	r24, r25
    1360:	80 83       	st	Z, r24
            open_menu(device_selection == 0 ? SCREEN_LED_MENU : SCREEN_RELAY_MENU);
        } else if (screen == SCREEN_LED_MENU) start_led_mode();
        else apply_relay_action();
        return;
    }
    if (*selected != before) draw_menu();
    1362:	80 81       	ld	r24, Z
    1364:	98 13       	cpse	r25, r24
    1366:	9f cf       	rjmp	.-194    	; 0x12a6 <main+0x124>
    1368:	3e cf       	rjmp	.-388    	; 0x11e6 <main+0x64>
    } else {
        selected = &relay_selection; count = 2;
    }
    uint8_t before = *selected;
    if ((navigation & BTN_BIT_DOWN) && *selected + 1 < count) (*selected)++;
    else if ((navigation & BTN_BIT_UP) && *selected > 0) (*selected)--;
    136a:	72 fe       	sbrs	r7, 2
    136c:	04 c0       	rjmp	.+8      	; 0x1376 <main+0x1f4>
    136e:	99 23       	and	r25, r25
    1370:	11 f0       	breq	.+4      	; 0x1376 <main+0x1f4>
    1372:	8f ef       	ldi	r24, 0xFF	; 255
    1374:	f4 cf       	rjmp	.-24     	; 0x135e <main+0x1dc>
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) {
    1376:	82 71       	andi	r24, 0x12	; 18
    1378:	a1 f3       	breq	.-24     	; 0x1362 <main+0x1e0>
        if (screen == SCREEN_DEVICES) {
    137a:	21 30       	cpi	r18, 0x01	; 1
    137c:	31 05       	cpc	r19, r1
    137e:	71 f4       	brne	.+28     	; 0x139c <main+0x21a>
            open_menu(device_selection == 0 ? SCREEN_LED_MENU : SCREEN_RELAY_MENU);
    1380:	80 91 c2 03 	lds	r24, 0x03C2	; 0x8003c2 <device_selection>
    1384:	81 11       	cpse	r24, r1
    1386:	07 c0       	rjmp	.+14     	; 0x1396 <main+0x214>
    1388:	82 e0       	ldi	r24, 0x02	; 2
    138a:	90 e0       	ldi	r25, 0x00	; 0
        draw_list("RELAY:", relay_modes, 2, relay_selection);
}

static void open_menu(Screen target)
{
    screen = target;
    138c:	90 93 c4 03 	sts	0x03C4, r25	; 0x8003c4 <screen+0x1>
    1390:	80 93 c3 03 	sts	0x03C3, r24	; 0x8003c3 <screen>
    1394:	86 cf       	rjmp	.-244    	; 0x12a2 <main+0x120>
    uint8_t before = *selected;
    if ((navigation & BTN_BIT_DOWN) && *selected + 1 < count) (*selected)++;
    else if ((navigation & BTN_BIT_UP) && *selected > 0) (*selected)--;
    else if (pressed & (BTN_BIT_GO | BTN_BIT_RIGHT)) {
        if (screen == SCREEN_DEVICES) {
            open_menu(device_selection == 0 ? SCREEN_LED_MENU : SCREEN_RELAY_MENU);
    1396:	84 e0       	ldi	r24, 0x04	; 4
    1398:	90 e0       	ldi	r25, 0x00	; 0
    139a:	f8 cf       	rjmp	.-16     	; 0x138c <main+0x20a>
        } else if (screen == SCREEN_LED_MENU) start_led_mode();
    139c:	22 30       	cpi	r18, 0x02	; 2
    139e:	31 05       	cpc	r19, r1
    13a0:	19 f5       	brne	.+70     	; 0x13e8 <main+0x266>
    lcd_send_string("         ");
}

static void start_led_mode(void)
{
    active_led_mode = led_selection;
    13a2:	80 91 c1 03 	lds	r24, 0x03C1	; 0x8003c1 <led_selection>
    13a6:	80 93 bf 03 	sts	0x03BF, r24	; 0x8003bf <active_led_mode>
    led_value = (active_led_mode == 1 || active_led_mode == 3) ? 9999 : 0;
    13aa:	8d 7f       	andi	r24, 0xFD	; 253
    13ac:	81 30       	cpi	r24, 0x01	; 1
    13ae:	c9 f4       	brne	.+50     	; 0x13e2 <main+0x260>
    13b0:	8f e0       	ldi	r24, 0x0F	; 15
    13b2:	97 e2       	ldi	r25, 0x27	; 39
    13b4:	90 93 be 03 	sts	0x03BE, r25	; 0x8003be <led_value+0x1>
    13b8:	80 93 bd 03 	sts	0x03BD, r24	; 0x8003bd <led_value>

    screen = SCREEN_LED_RUN;
    13bc:	f0 92 c4 03 	sts	0x03C4, r15	; 0x8003c4 <screen+0x1>
    13c0:	e0 92 c3 03 	sts	0x03C3, r14	; 0x8003c3 <screen>
    lcd_clear();
    13c4:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    write_row(0, led_modes[active_led_mode]);
    13c8:	e0 91 bf 03 	lds	r30, 0x03BF	; 0x8003bf <active_led_mode>
    13cc:	f0 e0       	ldi	r31, 0x00	; 0
    13ce:	ee 0f       	add	r30, r30
    13d0:	ff 1f       	adc	r31, r31
    13d2:	e8 51       	subi	r30, 0x18	; 24
    13d4:	fe 4f       	sbci	r31, 0xFE	; 254
    13d6:	60 81       	ld	r22, Z
    13d8:	71 81       	ldd	r23, Z+1	; 0x01
    13da:	80 e0       	ldi	r24, 0x00	; 0
    13dc:	0e 94 67 00 	call	0xce	; 0xce <write_row>
    13e0:	8d cf       	rjmp	.-230    	; 0x12fc <main+0x17a>
}

static void start_led_mode(void)
{
    active_led_mode = led_selection;
    led_value = (active_led_mode == 1 || active_led_mode == 3) ? 9999 : 0;
    13e2:	90 e0       	ldi	r25, 0x00	; 0
    13e4:	80 e0       	ldi	r24, 0x00	; 0
    13e6:	e6 cf       	rjmp	.-52     	; 0x13b4 <main+0x232>
    if (led_value != before) display_led_value();
}
static void apply_relay_action(void)
{
    // Existing relay module/driver behavior, including its buzzer linkage.
    if (relay_selection == 0) relay_on(0);
    13e8:	80 91 c0 03 	lds	r24, 0x03C0	; 0x8003c0 <relay_selection>
    13ec:	81 11       	cpse	r24, r1
    13ee:	19 c0       	rjmp	.+50     	; 0x1422 <main+0x2a0>
    13f0:	0e 94 4c 07 	call	0xe98	; 0xe98 <relay_on>
    else relay_off(0);
    screen = SCREEN_RELAY_STATUS;
    13f4:	90 92 c4 03 	sts	0x03C4, r9	; 0x8003c4 <screen+0x1>
    13f8:	80 92 c3 03 	sts	0x03C3, r8	; 0x8003c3 <screen>
    lcd_clear();
    13fc:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <lcd_clear>
    write_row(0, "RELAY 1");
    1400:	6d e7       	ldi	r22, 0x7D	; 125
    1402:	73 e0       	ldi	r23, 0x03	; 3
    1404:	80 e0       	ldi	r24, 0x00	; 0
    1406:	0e 94 67 00 	call	0xce	; 0xce <write_row>
    write_row(1, (relay_get_state() & RELAY_0_BIT) ? "STATE: ON" : "STATE: OFF");
    140a:	0e 94 48 07 	call	0xe90	; 0xe90 <relay_get_state>
    140e:	64 ec       	ldi	r22, 0xC4	; 196
    1410:	72 e0       	ldi	r23, 0x02	; 2
    1412:	80 fd       	sbrc	r24, 0
    1414:	02 c0       	rjmp	.+4      	; 0x141a <main+0x298>
    1416:	6e ec       	ldi	r22, 0xCE	; 206
    1418:	72 e0       	ldi	r23, 0x02	; 2
    141a:	81 e0       	ldi	r24, 0x01	; 1
    141c:	0e 94 67 00 	call	0xce	; 0xce <write_row>
    1420:	e2 ce       	rjmp	.-572    	; 0x11e6 <main+0x64>
}
static void apply_relay_action(void)
{
    // Existing relay module/driver behavior, including its buzzer linkage.
    if (relay_selection == 0) relay_on(0);
    else relay_off(0);
    1422:	80 e0       	ldi	r24, 0x00	; 0
    1424:	0e 94 63 07 	call	0xec6	; 0xec6 <relay_off>
    1428:	e5 cf       	rjmp	.-54     	; 0x13f4 <main+0x272>

0000142a <__udivmodqi4>:
    142a:	99 1b       	sub	r25, r25
    142c:	79 e0       	ldi	r23, 0x09	; 9
    142e:	04 c0       	rjmp	.+8      	; 0x1438 <__udivmodqi4_ep>

00001430 <__udivmodqi4_loop>:
    1430:	99 1f       	adc	r25, r25
    1432:	96 17       	cp	r25, r22
    1434:	08 f0       	brcs	.+2      	; 0x1438 <__udivmodqi4_ep>
    1436:	96 1b       	sub	r25, r22

00001438 <__udivmodqi4_ep>:
    1438:	88 1f       	adc	r24, r24
    143a:	7a 95       	dec	r23
    143c:	c9 f7       	brne	.-14     	; 0x1430 <__udivmodqi4_loop>
    143e:	80 95       	com	r24
    1440:	08 95       	ret

00001442 <__udivmodhi4>:
    1442:	aa 1b       	sub	r26, r26
    1444:	bb 1b       	sub	r27, r27
    1446:	51 e1       	ldi	r21, 0x11	; 17
    1448:	07 c0       	rjmp	.+14     	; 0x1458 <__udivmodhi4_ep>

0000144a <__udivmodhi4_loop>:
    144a:	aa 1f       	adc	r26, r26
    144c:	bb 1f       	adc	r27, r27
    144e:	a6 17       	cp	r26, r22
    1450:	b7 07       	cpc	r27, r23
    1452:	10 f0       	brcs	.+4      	; 0x1458 <__udivmodhi4_ep>
    1454:	a6 1b       	sub	r26, r22
    1456:	b7 0b       	sbc	r27, r23

00001458 <__udivmodhi4_ep>:
    1458:	88 1f       	adc	r24, r24
    145a:	99 1f       	adc	r25, r25
    145c:	5a 95       	dec	r21
    145e:	a9 f7       	brne	.-22     	; 0x144a <__udivmodhi4_loop>
    1460:	80 95       	com	r24
    1462:	90 95       	com	r25
    1464:	bc 01       	movw	r22, r24
    1466:	cd 01       	movw	r24, r26
    1468:	08 95       	ret

0000146a <__udivmodsi4>:
    146a:	a1 e2       	ldi	r26, 0x21	; 33
    146c:	1a 2e       	mov	r1, r26
    146e:	aa 1b       	sub	r26, r26
    1470:	bb 1b       	sub	r27, r27
    1472:	fd 01       	movw	r30, r26
    1474:	0d c0       	rjmp	.+26     	; 0x1490 <__udivmodsi4_ep>

00001476 <__udivmodsi4_loop>:
    1476:	aa 1f       	adc	r26, r26
    1478:	bb 1f       	adc	r27, r27
    147a:	ee 1f       	adc	r30, r30
    147c:	ff 1f       	adc	r31, r31
    147e:	a2 17       	cp	r26, r18
    1480:	b3 07       	cpc	r27, r19
    1482:	e4 07       	cpc	r30, r20
    1484:	f5 07       	cpc	r31, r21
    1486:	20 f0       	brcs	.+8      	; 0x1490 <__udivmodsi4_ep>
    1488:	a2 1b       	sub	r26, r18
    148a:	b3 0b       	sbc	r27, r19
    148c:	e4 0b       	sbc	r30, r20
    148e:	f5 0b       	sbc	r31, r21

00001490 <__udivmodsi4_ep>:
    1490:	66 1f       	adc	r22, r22
    1492:	77 1f       	adc	r23, r23
    1494:	88 1f       	adc	r24, r24
    1496:	99 1f       	adc	r25, r25
    1498:	1a 94       	dec	r1
    149a:	69 f7       	brne	.-38     	; 0x1476 <__udivmodsi4_loop>
    149c:	60 95       	com	r22
    149e:	70 95       	com	r23
    14a0:	80 95       	com	r24
    14a2:	90 95       	com	r25
    14a4:	9b 01       	movw	r18, r22
    14a6:	ac 01       	movw	r20, r24
    14a8:	bd 01       	movw	r22, r26
    14aa:	cf 01       	movw	r24, r30
    14ac:	08 95       	ret

000014ae <_exit>:
    14ae:	f8 94       	cli

000014b0 <__stop_program>:
    14b0:	ff cf       	rjmp	.-2      	; 0x14b0 <__stop_program>
