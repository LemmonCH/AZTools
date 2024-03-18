//
//  NSObject+AZSafeArea.m
//  AZCategoryDemo
//
//  Created by Alfred Zhang on 2018/11/13.
//  Copyright © 2018年 Alfred Zhang. All rights reserved.
//

#import "NSObject+AZSafeArea.h"

@implementation NSObject (AZSafeArea)

- (BOOL)az_hasSafeArea {
    static dispatch_once_t onceToken;
    static BOOL hasSafeArea = NO;
    dispatch_once(&onceToken, ^{
        if (@available(iOS 11.0, *)) {
            UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
            hasSafeArea = window.safeAreaInsets.bottom > 0;
        }
    });
    return hasSafeArea;
}

@end
