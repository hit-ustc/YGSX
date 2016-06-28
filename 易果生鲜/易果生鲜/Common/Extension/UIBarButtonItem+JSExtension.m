//
//  UIBarButtonItem+JSExtension.m
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/4.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import "UIBarButtonItem+JSExtension.h"

@implementation UIBarButtonItem (JSExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

@end
