//
//  YGNavigationController.m
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/3.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import "YGNavigationController.h"

@interface YGNavigationController ()

@end

@implementation YGNavigationController

/**
 * 当第一次使用这个类的时候会调用一次
 */
+ (void)initialize
{
    // 当导航栏用在XMGNavigationController中, appearance设置才会生效
//        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    UINavigationBar *bar = [UINavigationBar appearance];
//    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = JSTabBarItemTitleColor;
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:21];
    [bar setTitleTextAttributes:itemAttrs];
    
    // 设置item
//    UIBarButtonItem *item = [UIBarButtonItem appearance];
//    // UIControlStateNormal
//    NSMutableDictionary *itemAtts = [NSMutableDictionary dictionary];
//    itemAtts[NSForegroundColorAttributeName] = JSTabBarItemTitleColor;
//    itemAtts[NSFontAttributeName] = [UIFont systemFontOfSize:21];
//    [item setTitleTextAttributes:itemAtts forState:UIControlStateNormal];
//    // UIControlStateDisabled
//    NSMutableDictionary *itemDisabledAttrs = [NSMutableDictionary dictionary];
//    itemDisabledAttrs[NSForegroundColorAttributeName] = JSTabBarItemTitleColor;
//    [item setTitleTextAttributes:itemDisabledAttrs forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/**
 * 可以在这个方法中拦截所有push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) { // 如果push进来的不是第一个控制器
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
        button.size = CGSizeMake(34, 60);
        // 让按钮内部的所有内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //        [button sizeToFit];
        // 让按钮的内容往左边偏移10
//        button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        // 修改导航栏左边的item
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        
        // 隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
    
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}


@end
