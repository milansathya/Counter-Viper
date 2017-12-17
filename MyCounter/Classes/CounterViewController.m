//
//  ViewController.m
//  MyCounter
//
//  Created by Chandrashekar, Sathyanarayan on 12/16/17.
//  Copyright © 2017 Chandrashekar, Sathyanarayan. All rights reserved.
//

#import "CounterViewController.h"
#import "CounterPresenter.h"

@interface CounterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UIButton *incrementButton;
@property (weak, nonatomic) IBOutlet UIButton *decrementButton;

@end

@implementation CounterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (IBAction)incrementButtonPressed:(id)sender {
    [self.presenter incrementCount];
}

- (IBAction)decrementButtonPressed:(id)sender {
    [self.presenter decrementCount];
}

- (void)setupViews {
    [self enableDecrement:NO];
}

#pragma mark - CounterViewProtocol

- (void)updateCount:(NSString *)count {
    self.countLabel.text = count;
}

- (void)enableDecrement:(BOOL)enabled {
    self.decrementButton.enabled = enabled;
    self.decrementButton.alpha = enabled ? 1.0f : 0.5f;
}

@end
