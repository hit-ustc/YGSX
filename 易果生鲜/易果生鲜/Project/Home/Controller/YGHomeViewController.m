//
//  YGHomeViewController.m
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/3.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import "YGHomeViewController.h"

@interface YGHomeViewController ()

@end

@implementation YGHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNav];
    
}

- (void)setupNav {
    
    self.view.backgroundColor = JSGlobalBg;
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"position"] forState:UIControlStateNormal];
    leftBtn.size = leftBtn.currentBackgroundImage.size;
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"position"] forState:UIControlStateNormal];
    rightBtn.size = rightBtn.currentBackgroundImage.size;
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    
    self.navigationItem.leftBarButtonItem = left;
    self.navigationItem.rightBarButtonItem = right;
    
}

@end
