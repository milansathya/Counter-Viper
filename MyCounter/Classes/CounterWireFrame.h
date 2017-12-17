//
//  CounterWireFrame.h
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RootWireFrame.h"

@class CounterPresenter;

@interface CounterWireFrame : NSObject

@property (nonatomic, strong) CounterPresenter *presenter;
@property (nonatomic, strong) RootWireFrame *rootWireFrame;

- (void)presentCounterViewFromWindow:(UIWindow *)window;

@end
