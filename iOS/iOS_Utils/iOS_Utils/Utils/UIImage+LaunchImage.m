//
//  UIImage+LaunchImage.m
//  iOS_Utils
//
//  Created by lkp on 2018/8/8.
//  Copyright © 2018 lkp. All rights reserved.
//

#import "UIImage+LaunchImage.h"
#define kDCLaunchWindow [[UIApplication sharedApplication].windows firstObject]

@implementation UIImage (LaunchImage)

+ (UIImage *)HXLaunchImage {
    return [UIImage imageNamed:[self HXLaunchImageName]];
}

+ (NSString *)HXLaunchImageName {
    NSString *viewOrientation = @"Portrait";
    if (UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])) {
        viewOrientation = @"Landscape";
    }
    
    __block NSString *launchImageName = nil;
    CGSize viewSize = kDCLaunchWindow.bounds.size;
    NSArray *imagesArray = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    [imagesArray enumerateObjectsUsingBlock:^(NSDictionary *launchImageDic, NSUInteger idx, BOOL * _Nonnull stop) {
        CGSize imageSize = CGSizeFromString(launchImageDic[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:launchImageDic[@"UILaunchImageOrientation"]]) {
            launchImageName = launchImageDic[@"UILaunchImageName"];
            *stop = YES;
        }
    }];
    
    return launchImageName;
}

@end
