/* Imports */

#import "Headers/libcolorpicker.h"
#import "Headers/plist.h"

/* Interfaces/Properties */

//CC Background

@interface CCUIControlCenterPageContainerViewController : UIViewController
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@property (nonatomic, assign, readwrite, setter=_setCornerRadius:) CGFloat _cornerRadius;
@property (nonatomic, assign, readwrite) BOOL clipsToBounds;
@end


//CC Background Color


%hook CCUIControlCenterPageContainerViewController
-(void)viewDidLoad {
     %orig;

if(GetPrefBool(@"Enable")) {

NSDictionary *prefsDict = [NSDictionary dictionaryWithContentsOfFile: @"/library/PreferenceLoader/Preferences/ColorControl.plist"];
 
NSString *coolColorHex = [prefsDict objectForKey:@"ccbackgroundcolor"];
 
 self.view.backgroundColor = LCPParseColorString(coolColorHex, @"#0DFF00");

self.view.clipsToBounds = YES;
self.view.layer.cornerRadius = 13.5;
 }
}

%end
