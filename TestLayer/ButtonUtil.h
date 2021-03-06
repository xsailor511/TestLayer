//
//  ButtonUtil.h
//  TestLayer
//
//  Created by richard on 16/1/19.
//  Copyright © 2016年 richard. All rights reserved.
//  使用工具类的方式给button添加边框（实线，虚线）

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_OPTIONS(NSUInteger, UIButtonBorder) {
    UIButtonBorderTop       = 1 << 0,   //1
    UIButtonBorderRight     = 1 << 1,   //2
    UIButtonBorderBottom    = 1 << 2,   //4
    UIButtonBorderLeft      = 1 << 3,   //8
    UIButtonBorderAllBorders  = ~0UL    //ffffffffffffffff
};


@interface ButtonUtil : NSObject

@property (nonatomic) UIColor *borderColor;
@property (nonatomic,assign) NSInteger borderWidth;
//添加实线边框
+(void)addBorder:(UIButton*)button borderColor:(UIColor*)color borderWidth:(NSInteger)width borders:(UIButtonBorder)borders;
//添加虚线边框
+(void)addDottedBorder:(UIButton*)button borderColor:(UIColor*)color borderWidth:(NSInteger)width borders:(UIButtonBorder)borders;
@end
