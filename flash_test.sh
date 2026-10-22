#!/bin/bash
sudo avrdude -c usbasp -p m128 -U flash:w:output/main.hex:i
