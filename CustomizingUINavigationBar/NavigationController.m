/*
 Copyright (C) 2015 Apple Inc. All Rights Reserved.
 See LICENSE.txt for this sample’s licensing information
 
 Abstract:
 A UINavigationController subclass that always defers queries about
  its preferred status bar style and supported interface orientations to its 
  child view controllers.
 */

#import "NavigationController.h"

@implementation NavigationController

//| ----------------------------------------------------------------------------
//  Defer returning the supported interface orientations to the navigation
//  controller's top-most view controller.
//
- (NSUInteger)supportedInterfaceOrientations
{
    return [self.topViewController supportedInterfaceOrientations];
}

@end
