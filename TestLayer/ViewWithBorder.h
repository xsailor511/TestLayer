//
//  ViewWithBorder.h
//  TestLayer
//
//  Created by richard on 16/1/19.
//  Copyright © 2016年 richard. All rights reserved.
//  该类使用继承来实现添加实线和虚线边框

#import <UIKit/UIKit.h>
typedef NS_OPTIONS(NSUInteger, UIViewBorder) {
    UIViewBorderTop       = 1 << 0,   //1
    UIViewBorderRight     = 1 << 1,   //2
    UIViewBorderBottom    = 1 << 2,   //4
    UIViewBorderLeft      = 1 << 3,   //8
    UIViewBorderAllBorders  = ~0UL    //ffffffffffffffff
};

@interface ViewWithBorder : UIView
//添加实线边框
-(void)addBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewBorder)borders;
//添加虚线边框
-(void)addDottedBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewBorder)borders;
@end
