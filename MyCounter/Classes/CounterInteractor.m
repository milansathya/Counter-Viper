//
//  CounterInteractor.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "CounterInteractor.h"

@interface CounterInteractor ()

@property (nonatomic, assign) NSUInteger count;

@end

@implementation CounterInteractor

#pragma mark - CounterInteractorInputProtocol

- (void)incrementCount {
    [self.presenter updateCount:++self.count];
}

- (void)decrementCount {
    [self.presenter updateCount:--self.count];
}

@end
