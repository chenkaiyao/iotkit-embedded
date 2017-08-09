LIBA_TARGET := libiot_platform.a
LIB_SRCS    := $(wildcard *.c)

LIB_SRCS    += $(wildcard os/$(PLATFORM_OS)/*.c)
LIB_SRCS    += $(wildcard ssl/mbedtls/*.c)
LIB_SRCS    += $(wildcard product/$(PLATFORM_OS)/*.c)

DEPENDS     += src/external/mbedtls

# TODO: fix coap warnings
CFLAGS := $(filter-out -Werror,$(CFLAGS))

HDR_REFS    += src/sdk-impl
