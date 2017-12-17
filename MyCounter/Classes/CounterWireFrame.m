//
//  CounterWireFrame.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "CounterWireFrame.h"
#import "CounterPresenter.h"
#import "CounterViewController.h"

@implementation CounterWireFrame

- (void)presentCounterViewFromWindow:(UIWindow *)window {
    CounterViewController *view = [self counterViewController];
    self.presenter.view = view;
    view.presenter = self.presenter;
    [self.rootWireFrame presentViewControler:view inWindow:window];
}

- (CounterViewController *)counterViewController {
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    CounterViewController *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"CounterViewController"];
    return vc;
}

@end
