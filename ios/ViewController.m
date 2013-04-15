//
//  ViewController.m
//  ios
//
//  Created by David Windham on 4/14/13.
//  Copyright (c) 2013 Zeken Woozer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.49 green:0.59 blue:0.59 alpha:1.0];
	
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Zeken Woozer";
    [self.view addSubview:firstLabel];
    
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);
    [self.fiftyPercentButton setTitle:@"50%" forState:UIControlStateNormal];
    [self.view addSubview:fiftyPercentButton];
    [self.fiftyPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.fiftyPercentButton setTitle:@"Clicked" forState:UIControlStateHighlighted];
    
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);
    [self.hundredPercentButton setTitle:@"100%" forState:UIControlStateNormal];
    [self.view addSubview:hundredPercentButton];
    [self.hundredPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.hundredPercentButton setTitle:@"Clicked" forState:UIControlStateHighlighted];

}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    if ([sender isEqual:self.fiftyPercentButton ]) {
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
    
    
}
- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches ended event occured");
}

@end
