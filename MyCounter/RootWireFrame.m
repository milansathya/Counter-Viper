//
//  RootWireFrame.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "RootWireFrame.h"

@implementation RootWireFrame

- (void)presentViewControler:(UIViewController *)viewController inWindow:(UIWindow *)window {
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    navigationController.viewControllers = @[viewController];
}

- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window {
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];
    return navigationController;
}

@end
