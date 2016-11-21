//
//  UIButton+Util.h
//  百思不得姐
//
//  Created by Silence on 16/11/21.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Util)

//创建按钮的方法
+(UIButton *)createBtnTitle:(NSString *)title bgImageName:(NSString *)bgImageName heightlightBgImageName:(NSString *)heightlightBgImageName target:(id)target action:(SEL)action;

@end
