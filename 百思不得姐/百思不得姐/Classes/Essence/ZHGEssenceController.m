//
//  ZHGEssenceController.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGEssenceController.h"

@interface ZHGEssenceController ()

@end

@implementation ZHGEssenceController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTitle:nil Image:@"MainTagSubIcon" hightImage:@"MainTagSubIconClick" target:self action:@selector(mainItemAction)];
    self.view.backgroundColor = GLOBALCOLOR;
    
}

-(void)mainItemAction {
    ZHGLog(@"%s",__func__);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor cyanColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
