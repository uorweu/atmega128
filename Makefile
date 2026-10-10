# Directory
BUILD_DIR = build/
OUTPUT_DIR = output/
SRC_DIRS = src src/app src/common src/drivers/

# Toolchain
CC = avr-gcc
OBJCOPY = avr-objcopy 
OBJDUMP = avr-objdump
SIZE = avr-size
RM = rm -rf

# Files
TARGET_NAME = main

# Test feature directories  - using `make test`
ifeq ($(MAKECMDGOALS),test)
	SRC_DIRS = src/test src/app src/common src/drivers
	TARGET_NAME = test_run
endif

TARGET_ELF = $(BUILD_DIR)/$(TARGET_NAME).elf
TARGET_HEX = $(OUTPUT_DIR)/$(TARGET_NAME).hex
TARGET_ASM = $(OUTPUT_DIR)/$(TARGET_NAME).s

# Find all .c files in the source directories
SOURCES = $(foreach dir, $(SRC_DIRS), $(wildcard $(dir)/*.c))

# Map the .c files to .o files inside the build directory
OBJECTS = $(SOURCES:%.c=$(BUILD_DIR)/%.o)

# Flags
MCU = atmega128
WFLAGS = -Wall -Wextra -Wshadow

# Include directories are the same as source directories
CFLAGS = -mmcu=$(MCU) $(WFLAGS) $(addprefix -I,$(SRC_DIRS)) -Os -ffreestanding -g
LDFLAGS = -mmcu=$(MCU)

# Phonies
.PHONY:  all clean size

# Default target 
all: $(TARGET_HEX) $(TARGET_ASM) size

# LInk ELF
$(TARGET_ELF): $(OBJECTS)
	@mkdir -p $(dir $@)
	$(CC) $(LDFLAGS) $^ -o $@

# Compile Objects
$(BUILD_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c -o $@ $<

# Extract HEX file into output folder
$(TARGET_HEX): $(TARGET_ELF)
	@mkdir -p $(dir $@)
	$(OBJCOPY) -O ihex -R .eeprom $< $@

# Extract Assembly file into the output/
$(TARGET_ASM): $(TARGET_ELF) 
	@mkdir -p $(dir $@)
	$(OBJDUMP) -S -d $< > $@

# Size report
size: $(TARGET_ELF)
	$(SIZE) --format=avr --mcu=$(MCU) $<

clean:
	$(RM) $(BUILD_DIR) $(OUTPUT_DIR)/*

test: all



