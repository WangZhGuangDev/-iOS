//
//  UIBarButtonItem+ZHGBarButtonItem.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "UIBarButtonItem+ZHGBarButtonItem.h"

@implementation UIBarButtonItem (ZHGBarButtonItem)

+ (instancetype)itemWithTitle:(NSString *)title Image:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:hightImage] forState:(UIControlStateHighlighted)];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    
    return [[self alloc] initWithCustomView:button];
}

@end
