//
//  ZHGNavigationVC.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGNavigationVC.h"

@interface ZHGNavigationVC ()

@end

@implementation ZHGNavigationVC

/*
 *  当第一次使用这个类的时候回调用一次
 */
+ (void)initialize {
    
    //所有的导航栏都会设置
//    UINavigationBar *allBar = [UINavigationBar appearance];
//    [allBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    //当导航栏用在ZHGNavigationVC时才会生效
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //拿到当前的导航栏控制器
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    
    //和上一句代码一样，设置导航栏背景图，但下面这句是设置全局所有的导航栏的背景图，而上一句只是摄者ZHGNavigationVC这个控制器的导航栏的背景图
    //    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:(UIBarMetricsDefault)];
    
}

/*
 *  重写这个方法，拦截所有push进来的控制器
 */

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.childViewControllers.count > 0) { //如果push进来的不是第一个控制器
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [button setTitle:@"返回" forState:(UIControlStateNormal)];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:(UIControlStateNormal)];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:(UIControlStateHighlighted)];
        
        [button setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
        [button setTitleColor:[UIColor redColor] forState:(UIControlStateHighlighted)];
        
        //内容水平对齐方向
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        //内边距
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        
        [button addTarget:self action:@selector(backAction) forControlEvents:(UIControlEventTouchUpInside)];
        button.size = CGSizeMake(70, 30);
        
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    }
    //这句super的push要放在后面，让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
}

-(void)backAction {
    [self popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
