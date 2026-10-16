# Toolchains 
CC = avr-gcc
MCU = atmega128
CFLAGS = -mmcu=$(MCU) -Os -ffreestanding -DF_CPU=16000000UL -Wall -Wextra -g -MMD -MP

# Convert to .hex and generate .s
OBJCOPY = avr-objcopy 
OBJDUMP = avr-objdump 
SIZE = avr-size

# Directories
SRC = src
OUTPUT = output
BUILD = build

# Source files (.c)
MAIN_SRCS = $(wildcard src/main/*.c) $(wildcard src/drivers/*.c) $(wildcard src/common/*.c) $(wildcard src/app/*.c)
# For some test functions
TEST_SRCS = $(wildcard src/test/*.c) $(wildcard src/drivers/*.c) $(wildcard src/common/*.c) $(wildcard src/app/*.c)

# Generate object files (stored in build/)
MAIN_OBJS = $(patsubst src/main/%.c,   build/main/%.o,          $(wildcard src/main/*.c)) \
						$(patsubst src/drivers/%.c, build/main/drivers/%.o,  $(wildcard src/drivers/*.c)) \
						$(patsubst src/common/%.c,  build/main/common/%.o,   $(wildcard src/common/*.c)) \
						$(patsubst src/app/%.c,     build/main/app/%.o,      $(wildcard src/app/*.c))

TEST_OBJS = $(patsubst src/test/%.c,   build/test/%.o,          $(wildcard src/test/*.c)) \
						$(patsubst src/drivers/%.c, build/test/drivers/%.o,  $(wildcard src/drivers/*.c)) \
						$(patsubst src/common/%.c,  build/test/common/%.o,   $(wildcard src/common/*.c)) \
						$(patsubst src/app/%.c,     build/test/app/%.o,      $(wildcard src/app/*.c))


# Include the header files
CFLAGS += -Isrc/main -Isrc/drivers -Isrc/common -Isrc/app -Isrc/test

# Targets and rules

.PHONY: all main test clean

all: main

main: output/main.hex output/main.s
	@$(SIZE) --format=avr --mcu=$(MCU) build/main/main.elf

# linking rule
build/main/main.elf: $(MAIN_OBJS)
	@mkdir -p $(dir $@)
	$(CC) -mmcu=$(MCU) $^ -o $@


# For .elf to .hex and from .elf to .s
output/main.hex: build/main/main.elf
	@mkdir -p $(OUTPUT)
	$(OBJCOPY) -O ihex -R .eeprom $< $@

output/main.s: build/main/main.elf
	@mkdir -p $(OUTPUT)
	$(OBJDUMP) -S -d $< > $@ 

# Compile rules for main
build/main/%.o: src/main/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/main/drivers/%.o: src/drivers/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/main/common/%.o: src/common/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/main/app/%.o: src/app/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@


# Rule for the test/

test: output/test.hex output/test.s
	@$(SIZE) --format=avr --mcu=$(MCU) build/test/test.elf

build/test/test.elf: $(TEST_OBJS)
	@mkdir -p $(dir $@)
	$(CC) -mmcu=$(MCU) $^ -o $@

# For .elf to .hex and from .elf to .s
output/test.hex: build/test/test.elf
	@mkdir -p $(OUTPUT)
	$(OBJCOPY) -O ihex -R .eeprom $< $@

output/test.s: build/test/test.elf
	@mkdir -p $(OUTPUT)
	$(OBJDUMP) -S -d $< > $@ 

# Compile rules for test
build/test/%.o: src/test/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/test/drivers/%.o: src/drivers/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/test/common/%.o: src/common/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

build/test/app/%.o: src/app/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# Rules for clean build project
clean: 
	rm -rf build output



