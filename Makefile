export ARCHS = arm64 arm64e
export TARGET := iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES += SpringBoard

include $(THEOS)/makefiles/common.mk

export TWEAK_NAME = BrainRot

$(TWEAK_NAME)_FILES = $(shell find Sources/$(TWEAK_NAME) -name '*.swift') $(shell find Sources/$(TWEAK_NAME)C -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
$(TWEAK_NAME)_SWIFTFLAGS = -ISources/$(TWEAK_NAME)C/include
$(TWEAK_NAME)_CFLAGS = -fobjc-arc -ISources/$(TWEAK_NAME)C/include
$(TWEAK_NAME)_FRAMEWORKS += SpringBoard

include $(THEOS_MAKE_PATH)/tweak.mk
