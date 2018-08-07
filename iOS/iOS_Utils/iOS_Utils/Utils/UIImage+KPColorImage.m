//
//  UIImage+KPColorImage.m
//  iOS_Utils
//
//  Created by lkp on 2018/8/7.
//  Copyright © 2018 lkp. All rights reserved.
//

#import "UIImage+KPColorImage.h"

@implementation UIImage (KPColorImage)
+ (UIImage *)imageWithColor:(UIColor *)color {
    return [UIImage imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, (CGRect){.size = size});
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage*)gradientImageWithColors:(NSArray*)colors size:(CGSize)size {
    NSMutableArray *CGColors = [NSMutableArray array];
    for (UIColor *color in colors) {
        [CGColors addObject:(id)color.CGColor];
    }
    
    UIGraphicsBeginImageContext(size);
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSaveGState(contextRef);
    
    CGColorSpaceRef colorSpaceRef = CGColorGetColorSpace([[colors lastObject] CGColor]);
    CGGradientRef gradientRef = CGGradientCreateWithColors(colorSpaceRef, (CFArrayRef)CGColors, NULL);
    
    CGContextDrawLinearGradient(contextRef,
                                gradientRef,
                                CGPointMake(0.0f, size.height),
                                CGPointMake(size.width, 0.0f),
                                kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    CGGradientRelease(gradientRef);
    CGContextRestoreGState(contextRef);
    UIGraphicsEndImageContext();
    
    return image;
    
}

+ (UIImage*)imageWithLayer:(CALayer*)layer {
    UIGraphicsBeginImageContextWithOptions(layer.frame.size, layer.opaque, 0);
    
    [layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
