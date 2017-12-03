
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ColorControl
ColorControl_FILES = XXXRootListController.m
ColorControl_INSTALL_PATH = /Library/PreferenceBundles
ColorControl_FRAMEWORKS = UIKit
ColorControl_PRIVATE_FRAMEWORKS = Preferences
ColorControl_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ColorControl.plist$(ECHO_END)
