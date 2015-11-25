//
//  UINavigationViewController+StatusBar.m
//
//  Created by Anton Bukov on 05.07.15.
//  Copyright (c) 2015 Anton Bukov. All rights reserved.
//

#import <JRSwizzle/JRSwizzle.h>
#import "UINavigationController+StatusBar.h"

@implementation UINavigationController (StatusBar)

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.visibleViewController;
}

- (UIViewController *)childViewControllerForStatusBarHidden
{
    return self.visibleViewController;
}

- (BOOL)xxx_shouldAutorotate
{
    return self.visibleViewController ? [self.visibleViewController shouldAutorotate] : YES;
}

- (UIInterfaceOrientationMask)xxx_supportedInterfaceOrientations
{
    return [self.visibleViewController supportedInterfaceOrientations];
}

+ (void)load
{
    [self jr_swizzleMethod:@selector(shouldAutorotate) withMethod:@selector(xxx_shouldAutorotate) error:NULL];
    [self jr_swizzleMethod:@selector(supportedInterfaceOrientations) withMethod:@selector(xxx_supportedInterfaceOrientations) error:NULL];
}

@end
