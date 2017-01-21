//
//  UIBarButtonItem+ZHGBarButtonItem.h
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZHGBarButtonItem)

+ (instancetype)itemWithTitle:(NSString *)title Image:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action;

@end
