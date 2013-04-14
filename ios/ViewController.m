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
	
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    [firstButton setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    [firstButton setTitle:@"Clicked" forState:UIControlStateHighlighted];
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
    self.view.alpha = ((double)arc4random() / 0x100000000);

}

@end
