ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = debs

include /var/theos/makefiles/common.mk

TWEAK_NAME = ColorControl
ColorControl_FILES = Tweak.xm
ColorControl_FRAMEWORKS = UIKit
ColorControl_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += colorcontrol
include $(THEOS_MAKE_PATH)/aggregate.mk
