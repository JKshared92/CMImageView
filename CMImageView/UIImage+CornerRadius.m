//
//  UIImage+CornerRadius.m
//  SampleExample
//
//  Created by maitianer on 2018/4/24.
//  Copyright © 2018年 maitianer. All rights reserved.
//

#import "UIImage+CornerRadius.h"

@implementation UIImage (CornerRadius)

- (UIImage *)imageWithCornerRadius:(CGFloat)radius andSize:(CGSize)size {
    CGRect rect = (CGRect){0,0,size};
    
    UIGraphicsBeginImageContextWithOptions(size, NO, UIScreen.mainScreen.scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    
    [self drawInRect:rect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
