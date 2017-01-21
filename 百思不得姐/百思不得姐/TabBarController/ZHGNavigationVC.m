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

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
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
