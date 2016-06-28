//
//  UIBarButtonItem+JSExtension.h
//  易果生鲜
//
//  Created by Aesthetic92 on 16/6/4.
//  Copyright © 2016年 Aesthetic92. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (JSExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
