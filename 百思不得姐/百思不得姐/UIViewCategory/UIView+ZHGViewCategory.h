//
//  UIView+ZHGViewCategory.h
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZHGViewCategory)

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGSize size;
/** 在分类Category中声明@property，只会生成方法的声明，不会生成方法的实现和带有_下划线的成员变量 **/
//即这句代码 @property (nonatomic, assign) CGFloat y; 就相当于下面两句方法的声明（set方法和get方法），所以要在.m中实现
//-(void)setY:(CGFloat)y;
//-(CGFloat)y;

@end
