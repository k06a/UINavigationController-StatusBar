//
//  UINavigationViewController+StatusBar.m
//
//  Created by Anton Bukov on 05.07.15.
//  Copyright (c) 2015 Anton Bukov. All rights reserved.
//

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

@end
