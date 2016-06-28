//
//  YGMeViewController.m
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/3.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import "YGMeViewController.h"

@interface YGMeViewController ()

@end

@implementation YGMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNav];
    
}

- (void)setupNav {
    
    self.view.backgroundColor = JSGlobalBg;
    
    self.navigationItem.title = @"我的易果";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:@"icon-settings"] forState:UIControlStateNormal];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:self action:@selector(settings) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = right;
    
}

- (void)settings {
    
    
}
@end
