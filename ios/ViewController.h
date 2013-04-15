//
//  ViewController.h
//  ios
//
//  Created by David Windham on 4/14/13.
//  Copyright (c) 2013 Zeken Woozer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void)buttonPressed:(UIButton *)sender;

@end
