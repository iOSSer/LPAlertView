//
//  ViewController.m
//  LPAlertView
//
//  Created by MacBook on 15/9/22.
//  Copyright © 2015年 lipeng. All rights reserved.
//

#import "ViewController.h"
#import "LPAlertView.h"

@interface ViewController ()<UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickAction:(id)sender {
    
    LPAlertView *alert1 = [[LPAlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"other", @"ooo", nil];
    alert1.clickedButtonIndexBlock = ^(NSInteger buttonIndex)
    {
        NSLog(@"button index %ld", buttonIndex);
    };
    [alert1 show];
}

- (BOOL)alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView
{
    return NO;
}


- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"willl");
}

@end
