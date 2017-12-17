//
//  AppDependencies.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "AppDependencies.h"
#import "CounterPresenter.h"
#import "CounterInteractor.h"
#import "CounterWireFrame.h"
#import "RootWireFrame.h"

@interface AppDependencies ()

@property (nonatomic, strong) CounterWireFrame *wireFrame;

@end

@implementation AppDependencies

- (instancetype)init {
    if (self = [super init]) {
        [self setupDependencies];
    }
    return self;
}

- (void)presentCounterViewFromWindow:(UIWindow *)window {
    [self.wireFrame presentCounterViewFromWindow:window];
}

- (void)setupDependencies {
    CounterInteractor *interactor = [[CounterInteractor alloc] init];
    CounterPresenter *presenter = [[CounterPresenter alloc] init];
    CounterWireFrame *wireFrame = [[CounterWireFrame alloc] init];
    RootWireFrame *rootWireFrame = [[RootWireFrame alloc] init];
    
    interactor.presenter = presenter;
    presenter.interactor = interactor;
    wireFrame.presenter = presenter;
    presenter.wireFrame = wireFrame;
    wireFrame.rootWireFrame = rootWireFrame;
    self.wireFrame = wireFrame;
}

@end
