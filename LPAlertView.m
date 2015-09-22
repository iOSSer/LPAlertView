//
//  LPAlertView.m
//  AlterView
//
//  Created by MacBook on 15/9/22.
//  Copyright © 2015年 zhangdongdong. All rights reserved.
//

#import "LPAlertView.h"

@implementation LPAlertView

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ...
{
    self = [super initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if (self) {
        self.delegate = self;
    }
    return self;
}

- (void)setClickedButtonIndexBlock:(LPAlertClickedButtonIndexBlock)clickedButtonIndexBlock
{
    _clickedButtonIndexBlock = clickedButtonIndexBlock;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    !_clickedButtonIndexBlock ?: _clickedButtonIndexBlock(buttonIndex);
}
@end
