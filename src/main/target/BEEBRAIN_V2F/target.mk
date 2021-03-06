F3_TARGETS  += $(TARGET)
FEATURES    = VCP

TARGET_SRC = \
            drivers/accgyro/accgyro_mpu.c \
            drivers/accgyro/accgyro_mpu6500.c \
            drivers/accgyro/accgyro_spi_mpu6500.c \
            drivers/max7456.c

ifeq ($(TARGET), BEESTORM)
else
TARGET_SRC += drivers/vtx_rtc6705_soft_spi.c
endif