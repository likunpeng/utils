//
//  NSDictionary+Unnull.h
//  iOS_Utils
//  Created by lkp on 2018/7/18.
//  Copyright © 2018 lkp. All rights reserved.
//  防止从NSDictionary取到的值为空
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Unnull)
- (id)objectForKey:(id)aKey placeholderObject:(id)object;
@end
