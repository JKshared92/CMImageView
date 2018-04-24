//
//  UIImage+CornerRadius.h
//  SampleExample
//
//  Created by maitianer on 2018/4/24.
//  Copyright © 2018年 maitianer. All rights reserved.
//

/**
 * 离屏渲染，添加图片圆角
 */

#import <UIKit/UIKit.h>

@interface UIImage (CornerRadius)

- (UIImage *)imageWithCornerRadius:(CGFloat)radius andSize:(CGSize)size;

@end
