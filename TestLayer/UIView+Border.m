//
//  UIView+Border.m
//  TestLayer
//
//  Created by richard on 16/1/20.
//  Copyright © 2016年 richard. All rights reserved.
//

#import "UIView+Border.h"

@implementation UIView (Border)
//添加实线边框
-(void)addBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewCategoryBorder)borders{
    BOOL drawTop = borders & 0x01;
    BOOL drawRight = borders >> 1 & 0x01 ;
    BOOL drawBottom = borders >> 2 & 0x01;
    BOOL drawLeft = borders >> 3 & 0x01;
    if (drawTop) {
        CALayer *topLayer = [CALayer layer];
        //boder color
        topLayer.backgroundColor = borderColor.CGColor;
        //border frame
        topLayer.frame = CGRectMake(0, 0, self.bounds.size.width, width);
        
        [self.layer addSublayer:topLayer];
        
    }
    
    if (drawRight) {
        CALayer *rightLayer = [CALayer layer];
        rightLayer.backgroundColor = borderColor.CGColor;
        rightLayer.frame = CGRectMake(self.bounds.size.width, 0, width, self.bounds.size.height);
        [self.layer addSublayer:rightLayer];
        
    }
    
    if (drawBottom) {
        CALayer *bottomLayer = [CALayer layer];
        //boder color
        bottomLayer.backgroundColor = borderColor.CGColor;
        //由于绘制底部的border时候不能够充满底部，如果border宽度很宽的话，会很难看，所以
        //底部的长度要加上 width
        bottomLayer.frame = CGRectMake(0, self.bounds.size.height, self.bounds.size.width + width, width);
        
        [self.layer addSublayer:bottomLayer];
    }
    
    if (drawLeft) {
        CALayer *rightLayer = [CALayer layer];
        rightLayer.backgroundColor = borderColor.CGColor;
        rightLayer.frame = CGRectMake(0, 0, width, self.bounds.size.height);
        [self.layer addSublayer:rightLayer];
        
    }

}
//添加虚线边框
-(void)addDottedBorder:(UIColor*)borderColor borderWidth:(NSInteger)width borders:(UIViewCategoryBorder)borders{
    BOOL drawTop = borders & 0x01;
    BOOL drawRight = borders >> 1 & 0x01 ;
    BOOL drawBottom = borders >> 2 & 0x01;
    BOOL drawLeft = borders >> 3 & 0x01;
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = self.bounds;
    [shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
    shapeLayer.lineWidth = width;
    // 设置虚线颜色
    [shapeLayer setStrokeColor:[borderColor CGColor]];
    // 4=线的宽度 2=每条线的间距
    [shapeLayer setLineDashPattern:
    [NSArray arrayWithObjects:[NSNumber numberWithInt:4],
    [NSNumber numberWithInt:2],nil]];
    // Setup the path
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, NULL, 0, 0);
    if (drawTop) {
       CGPathAddLineToPoint(path, NULL, self.bounds.size.width,0);
    }else{
        CGPathMoveToPoint(path, NULL, self.bounds.size.width, 0);
    }
    if (drawRight) {
        CGPathAddLineToPoint(path, NULL, self.bounds.size.width,self.bounds.size.height);
    }else{
        CGPathMoveToPoint(path, NULL, self.bounds.size.width, self.bounds.size.height);
    }
    if (drawBottom) {
        CGPathAddLineToPoint(path, NULL, 0,self.bounds.size.height);
    }else{
        CGPathMoveToPoint(path, NULL, 0, self.bounds.size.height);
    }
    if (drawLeft) {
        CGPathAddLineToPoint(path, NULL, 0, 0);
    }
    else{
        //do nothing
    }
    
    [shapeLayer setPath:path];
    [self.layer addSublayer:shapeLayer];
    CGPathRelease(path);
}
@end
