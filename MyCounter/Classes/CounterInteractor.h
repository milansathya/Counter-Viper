//
//  CounterInteractor.h
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CounterProtocols.h"

@interface CounterInteractor : NSObject <CounterInteractorInputProtocol>

@property (nonatomic, weak) id<CounterInteractorOutputProtocol> presenter;

@end
