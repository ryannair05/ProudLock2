export THEOS_DEVICE_IP=Janiks-iPad-Pro.local
export THEOS_DEVICE_PORT=22
export SDKROOT=iphoneos
export SYSROOT=$(THEOS)/sdks/iPhoneOS11.2.sdk

export PACKAGE_VERSION=0.1-1
export ARCHS = arm64
TARGET=iphone:latest:11.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ProudLock2
ProudLock2_FILES = Tweak.xm
ProudLock2_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
