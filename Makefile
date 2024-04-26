export THEOS_PACKAGE_DIR_NAME=./releases/debs
export TARGET := iphone:clang:latest:12.2
# export ARCHS=armv7 armv7s arm64
export ADDITIONAL_CFLAGS = -Ithird-party/partialzip/include -Ithird-party/libcurl
export SSH_ASKPASS = ./ssh-askpass

THEOS_DEVICE_IP = 10.2.19.215
DEBUG = 0
FINALPACKAGE = 1
ARCHS = arm64

include theos/makefiles/common.mk

TWEAK_NAME = RHRevealLoader
RHRevealLoader_FILES = RHRevealLoader.xm

TOOL_NAME = extrainst_
extrainst__INSTALL_PATH = /DEBIAN
extrainst__FILES = RHDownloadReveal.m third-party/partialzip/partial.c
extrainst__LIBRARIES = z
extrainst__FRAMEWORKS = Security
extrainst__OBJ_FILES = third-party/libcurl/libcurl.a

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/tool.mk

after-install::
	install.exec "killall -9 SpringBoard"
