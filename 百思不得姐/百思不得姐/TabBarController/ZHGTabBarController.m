//
//  ZHGTabBarController.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/20.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGTabBarController.h"
#import "ZHGEssenceController.h"
#import "ZHGNewController.h"
#import "ZHGTrendController.h"
#import "ZHGMeController.h"
#import "ZHGTabBar.h"
#import "ZHGNavigationVC.h"

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
    
//    UIViewController *controller1 = [[UIViewController alloc] init];
//    controller1.view.backgroundColor = [UIColor redColor];
    
    
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
    
    
    [self initChildContrller:[[ZHGEssenceController alloc] init] title:@"精华" imageName:@"tabBar_essence_icon" selectImage:@"tabBar_essence_click_icon"];
    [self initChildContrller:[[ZHGNewController alloc] init] title:@"新帖" imageName:@"tabBar_new_icon" selectImage:@"tabBar_new_click_icon"];
    [self initChildContrller:[[ZHGTrendController alloc] init] title:@"关注" imageName:@"tabBar_friendTrends_icon" selectImage:@"tabBar_friendTrends_click_icon"];
    [self initChildContrller:[[ZHGMeController alloc] init] title:@"我" imageName:@"tabBar_me_icon" selectImage:@"tabBar_me_click_icon"];
    
    
    
//    self.tabBar = [[ZHGTabBar alloc] init];
    //利用KVC设置自定义tabBar，KVC可以直接访问成员变量，适用于readOnly的属性
    [self setValue:[[ZHGTabBar alloc] init] forKey:@"tabBar"];
    
    
    
    
}

-(void)initChildContrller:(UIViewController *)childContrller title:(NSString *)title imageName:(NSString *)imageName selectImage:(NSString *)selectImage {
    childContrller.tabBarItem.title = title;
    childContrller.tabBarItem.image = [UIImage imageNamed:imageName];
    childContrller.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];

    
    ZHGNavigationVC *nav = [[ZHGNavigationVC alloc] initWithRootViewController:childContrller];
    childContrller.navigationItem.title = title;
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    //和上一句代码一样，设置导航栏背景图，但下面这句是设置全局所有的导航栏的背景图，而上一句只是摄者nav这个控制器的导航栏的背景图
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    [self addChildViewController:nav];
    
}

@end
