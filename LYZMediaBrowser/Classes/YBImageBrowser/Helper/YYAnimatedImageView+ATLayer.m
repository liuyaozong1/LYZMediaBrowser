//
//  YYAnimatedImageView+ATLayer.m
//  Avatar
//
//  Created by liuyaozong on 2021/9/8.
//

#import "YYAnimatedImageView+ATLayer.h"
#import <objc/runtime.h>
#import <objc/message.h>
@implementation YYAnimatedImageView (ATLayer)
+ (void)load {
    static dispatch_once_t t;
    dispatch_once(&t, ^{
        Method  methond1 = class_getInstanceMethod(self, @selector(displayLayer:));
        Method methond2 = class_getInstanceMethod(self, @selector(AT_displayLayer:));
        method_exchangeImplementations(methond1, methond2);
    });
    
    
}

-(void)AT_displayLayer:(CALayer *)layer
{
    Ivar imgIvar = class_getInstanceVariable([self class], "_curFrame");
    UIImage *img = object_getIvar(self, imgIvar);
    if (img) {
        layer.contents = (__bridge id)img.CGImage;
    } else {
        if (@available(iOS 14.0, *)) {
            [super displayLayer:layer];
        }
    }
}
@end
