//
//  UIButton+Util.m
//  百思不得姐
//
//  Created by Silence on 16/11/21.
//  Copyright © 2016年 Silence. All rights reserved.
//

#import "UIButton+Util.h"

@implementation UIButton (Util)

+(UIButton *)createBtnTitle:(NSString *)title bgImageName:(NSString *)bgImageName heightlightBgImageName:(NSString *)heightlightBgImageName target:(id)target action:(SEL)action{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    if (title){
        [btn setTitle:title forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    if (bgImageName){
        [btn setBackgroundImage:[UIImage imageNamed:bgImageName] forState:UIControlStateNormal];
        
    }
    
    if (heightlightBgImageName){
        [btn setBackgroundImage:[UIImage imageNamed:heightlightBgImageName] forState:UIControlStateNormal];
    }
    
    if (target && action){
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    
    return btn;
}

@end
