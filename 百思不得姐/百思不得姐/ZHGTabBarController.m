//
//  ZHGTabBarController.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/20.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGTabBarController.h"

@interface ZHGTabBarController ()

@end

@implementation ZHGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableDictionary *attrDic = [NSMutableDictionary dictionary];
    attrDic[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrDic[NSForegroundColorAttributeName] = [UIColor  grayColor];
    
    NSMutableDictionary *selectAttDic = [NSMutableDictionary dictionary];
    selectAttDic[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectAttDic[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UIViewController *controller1 = [[UIViewController alloc] init];
    controller1.view.backgroundColor = [UIColor redColor];
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor greenColor];
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor cyanColor];
    
    controller1.tabBarItem.title = @"精华";
    controller1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    //选中图片默认被渲染成蓝色，在这里选择RenderingMode为原始模式，不让渲染，这种方式代码长
//    UIImage *image = [UIImage imageNamed:@"tabBar_essence_click_icon"];
//    image = [image imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
//    controller1.tabBarItem.selectedImage = image;
    
    //设置tabBar的title的颜色，字体大小和选中时的颜色，这样写代码太多
//    [controller1.tabBarItem setTitleTextAttributes:attrDic forState:(UIControlStateNormal)];
//    [controller1.tabBarItem setTitleTextAttributes:selectAttDic forState:(UIControlStateSelected)];
    
    //下面几句代码是设置所有tabbaritem的title的文字颜色，大小和点击效果
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrDic forState:(UIControlStateNormal)];
    [item setTitleTextAttributes:selectAttDic forState:(UIControlStateSelected)];
    
    controller1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    controller2.tabBarItem.title = @"新帖";
    controller2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    
    controller3.tabBarItem.title = @"关注";
    controller3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    
    controller4.tabBarItem.title = @"我";
    controller4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    
    [self addChildViewController:controller1];
    [self addChildViewController:controller2];
    [self addChildViewController:controller3];
    [self addChildViewController:controller4];
    
}


@end
