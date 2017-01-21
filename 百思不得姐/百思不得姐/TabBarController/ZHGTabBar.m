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
//        addButton.bounds = CGRectMake(0, 0, addButton.currentBackgroundImage.size.width, addButton.currentBackgroundImage.size.height);
//        addButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
        [self addSubview:addButton];
        self.publicButton = addButton;
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    self.publicButton.frame = CGRectMake(0, 0, self.publicButton.currentBackgroundImage.size.width, self.publicButton.currentBackgroundImage.size.height);
    self.publicButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
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
