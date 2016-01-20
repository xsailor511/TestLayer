//
//  UIView+Border.h
//  TestLayer
//
//  Created by richard on 16/1/20.
//  Copyright © 2016年 richard. All rights reserved.
//  该类使用category来实现添加边框

#import <UIKit/UIKit.h>
#include <CoreGraphics/CGPath.h>

typedef NS_OPTIONS(NSUInteger, UIViewCategoryBorder) {
    UIViewCategoryBorderTop       = 1 << 0,   //1
    UIViewCategoryBorderRight     = 1 << 1,   //2
    UIViewCategoryBorderBottom    = 1 << 2,   //4
    UIViewCategoryBorderLeft      = 1 << 3,   //8
    UIViewCategoryBorderAllBorders  = ~0UL    //ffffffffffffffff
};

@interface UIView (Border)

//添加实线边框
-(void)addBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewCategoryBorder)borders;
//添加虚线边框
-(void)addDottedBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewCategoryBorder)borders;
@end
