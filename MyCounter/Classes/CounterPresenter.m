//
//  CounterPresenter.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "CounterPresenter.h"

@interface CounterPresenter ()

@property (nonatomic, strong) NSNumberFormatter *formatter;

@end

@implementation CounterPresenter

- (instancetype)init {
    if (self = [super init]) {
        self.formatter = [[NSNumberFormatter alloc] init];
        self.formatter.numberStyle = NSNumberFormatterSpellOutStyle;
    }
    return self;
}

#pragma mark - CounterPresenterInputProtocol

- (void)incrementCount {
    [self.interactor incrementCount];
}

- (void)decrementCount {
    [self.interactor decrementCount];
}

#pragma mark - CounterInteractorOutputProtocol

- (void)updateCount:(NSUInteger)count {
    [self.view updateCount:[self stringFromNumber:count]];
    [self.view enableDecrement:[self canDecrement:count]];
}

#pragma mark - Helper Methods
- (BOOL)canDecrement:(NSUInteger)count {
    return count > 0;
}

- (NSString *)stringFromNumber:(NSUInteger)number {
    return [self.formatter stringForObjectValue:@(number)];
}

@end
