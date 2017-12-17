//
//  ViewController.h
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CounterProtocols.h"

@class CounterPresenter;

@interface CounterViewController : UIViewController <CounterPresenterOutputProtocol>

@property (nonatomic, strong) CounterPresenter *presenter;

@end

