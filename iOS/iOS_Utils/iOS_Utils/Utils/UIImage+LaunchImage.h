//
//  UIImage+LaunchImage.h
//  iOS_Utils
//
//  Created by lkp on 2018/8/8.
//  Copyright © 2018 lkp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LaunchImage)

/**
 Return the launch image from Info.plist file.
 
 从本地plist文件中获取启动图片
 */
+ (UIImage *)HXLaunchImage;

/**
 Return the name of launch image from Info.plist file.
 
 从本地plist文件中获取启动图片的名称
 */
+ (NSString *)HXLaunchImageName;

@end
