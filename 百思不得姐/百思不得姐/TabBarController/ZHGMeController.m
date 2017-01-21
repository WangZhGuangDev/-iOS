//
//  ZHGMeController.m
//  百思不得姐
//
//  Created by 王忠光 on 2017/1/21.
//  Copyright © 2017年 王忠光. All rights reserved.
//

#import "ZHGMeController.h"

@interface ZHGMeController ()

@end

@implementation ZHGMeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithTitle:nil Image:@"mine-setting-icon" hightImage:@"mine-setting-icon-click" target:self action:@selector(settingAction)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithTitle:nil Image:@"mine-moon-icon" hightImage:@"mine-moon-icon-click" target:self action:@selector(moonModeActinon)];
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
}

-(void)settingAction {
    ZHGLog(@"%s",__func__);
}

-(void)moonModeActinon {
    ZHGLog(@"%s",__func__);
}

@end
