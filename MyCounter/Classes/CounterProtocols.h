//
//  CounterProtocols.h
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

@protocol CounterPresenterOutputProtocol
- (void)updateCount:(NSString *)count;
- (void)enableDecrement:(BOOL)enabled;
@end

@protocol CounterPresenterInputProtocol
- (void)incrementCount;
- (void)decrementCount;
@end

@protocol CounterInteractorOutputProtocol
- (void)updateCount:(NSUInteger)count;
@end

@protocol CounterInteractorInputProtocol
- (void)incrementCount;
- (void)decrementCount;
@end
