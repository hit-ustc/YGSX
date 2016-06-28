//
//  YGTabBarController.m
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/3.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import "YGTabBarController.h"
#import "YGNavigationController.h"
#import "YGHomeViewController.h"
#import "YGCartViewController.h"
#import "YGSearchViewController.h"
#import "YGCategoryViewController.h"
#import "YGMeViewController.h"

@interface YGTabBarController ()

@end

@implementation YGTabBarController

+ (void)initialize
{
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = JSTabBarItemTitleColor;
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildVc:[[YGHomeViewController alloc] init] title:@"首页" image:@"nav_home" selectedImage:@"nav_home_active"];
    
    [self setupChildVc:[[YGCategoryViewController alloc] init] title:@"分类" image:@"nav_cate" selectedImage:@"nav_cate_active"];
    
    [self setupChildVc:[[YGSearchViewController alloc] init] title:@"搜索" image:@"nav_search" selectedImage:@"nav_search_active"];
    
    [self setupChildVc:[[YGCartViewController alloc] init] title:@"购物车" image:@"nav_cart" selectedImage:@"nav_cart_active"];
    
    [self setupChildVc:[[YGMeViewController alloc] init] title:@"我的易果" image:@"nav_usercenter" selectedImage:@"nav_usercenter_active"];
    
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabBarBackground"]];
    
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置文字和图片
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 包装一个导航控制器, 添加导航控制器为tabbarcontroller的子控制器
    YGNavigationController *nav = [[YGNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}


@end
