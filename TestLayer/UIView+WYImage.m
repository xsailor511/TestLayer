//
//  UIView+WYImage.m
//  TestLayer
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 richard. All rights reserved.
//

#import "UIView+WYImage.h"

@implementation UIView (WYImage)

/**
 *  将UIView转换成一个Image图像
 *
 *  @return 生成的Image
 */
-(UIImage*)imageFromView{
    
    UIGraphicsBeginImageContext(self.bounds.size);
    
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return viewImage;
}

@end
