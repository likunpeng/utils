//
//  NSDictionary+Unnull.m
//  iOS_Utils
//
//  Created by lkp on 2018/7/18.
//  Copyright © 2018 lkp. All rights reserved.
//

#import "NSDictionary+Unnull.h"

@implementation NSDictionary (Unnull)

- (id)objectForKey:(id)aKey placeholderObject:(id)object {
    id ret = [self objectForKey:aKey];
    if ([ret isKindOfClass:[NSNull class]] || !ret) {
        return object;
    }
    return ret;
}

@end
