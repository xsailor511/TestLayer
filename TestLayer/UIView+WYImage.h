//
//  UIView+WYImage.h
//  TestLayer
//
//  Created by richard on 16/4/19.
//  Copyright © 2016年 richard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WYImage)

/**
 *  将UIView转换成一个Image图像
 *
 *  @return 生成的Image
 */
-(UIImage*)imageFromView;

@end
