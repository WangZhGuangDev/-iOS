//
//  ZHGTabBar.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGTabBar.h"

@interface ZHGTabBar ()

@property (nonatomic, weak) UIButton *publicButton;

@end

@implementation ZHGTabBar

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIButton *addButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [addButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:(UIControlStateNormal)];
        [addButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:(UIControlStateHighlighted)];
        [self addSubview:addButton];
        self.publicButton = addButton;
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    //利用UIView的分类
    CGFloat width = self.width;
    CGFloat height = self.height;
    
    self.publicButton.width = self.publicButton.currentBackgroundImage.size.width;
    self.publicButton.height = self.publicButton.currentBackgroundImage.size.height;
    self.publicButton.center = CGPointMake(width * 0.5, height * 0.5);
    
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")])
            continue;
        
        CGFloat buttonX = buttonW * ((index > 1) ? (index + 1) : index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        index++;
    }
}

@end
