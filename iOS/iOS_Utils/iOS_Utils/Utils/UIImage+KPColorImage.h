//
//  UIImage+KPColorImage.h
//  iOS_Utils
//
//  Created by lkp on 2018/8/7.
//  Copyright © 2018 lkp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (KPColorImage)
+ (UIImage*)imageWithColor:(UIColor*)color;
+ (UIImage*)imageWithLayer:(CALayer*)layer;
+ (UIImage*)gradientImageWithColors:(NSArray*)colors size:(CGSize)size;
@end
