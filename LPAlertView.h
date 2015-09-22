//
//  LPAlertView.h
//  AlterView
//
//  Created by MacBook on 15/9/22.
//  Copyright © 2015年 zhangdongdong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LPAlertClickedButtonIndexBlock)(NSInteger buttonIndex);

@interface LPAlertView : UIAlertView<UIAlertViewDelegate>

@property (nonatomic, copy) LPAlertClickedButtonIndexBlock clickedButtonIndexBlock;

@end
