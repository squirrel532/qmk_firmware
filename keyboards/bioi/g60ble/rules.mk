# MCU name
MCU = atmega32u4

# Processor frequency
F_CPU = 8000000

# Bootloader selection
BOOTLOADER = qmk-dfu

SRC += usart.c \
       ble.c \
       main.c

OPT_DEFS += -DPROTOCOL_BLE
OPT_DEFS += -DUART_RX1_BUFFER_SIZE=16 -DUART_TX1_BUFFER_SIZE=16
OPT_DEFS += -DUSART1_ENABLED

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = yes      # Enable Bootmagic Lite
MOUSEKEY_ENABLE = yes      # Mouse keys
EXTRAKEY_ENABLE = yes      # Audio control and System control
CONSOLE_ENABLE = no        # Console for debug
COMMAND_ENABLE = yes       # Commands for debug and configuration
NKRO_ENABLE = yes           # Enable N-Key Rollover
BACKLIGHT_ENABLE = yes     # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no
AUDIO_ENABLE = no           # Audio output
LTO_ENABLE = yes

LAYOUTS = 60_ansi 60_iso 60_hhkb 60_ansi_split_bs_rshift 60_tsangan_hhkb
