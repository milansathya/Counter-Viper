//
//  CounterPresenter.h
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CounterProtocols.h"

@class CounterWireFrame;

@interface CounterPresenter : NSObject <CounterPresenterInputProtocol, CounterInteractorOutputProtocol>

@property (nonatomic, weak) id<CounterPresenterOutputProtocol> view;
@property (nonatomic, strong) id<CounterInteractorInputProtocol> interactor;
@property (nonatomic, strong) CounterWireFrame *wireFrame;

@end
