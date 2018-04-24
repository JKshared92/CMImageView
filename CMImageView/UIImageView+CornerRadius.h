//
//  UIImageView+CornerRadius.h
//  SampleExample
//
//  Created by maitianer on 2018/4/24.
//  Copyright © 2018年 maitianer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (CornerRadius)

/**正常加载图片*/
- (void)cm_setImageWithUrlString:(NSString *)urlString placeholder:(UIImage *)placeholder;

/**加载七牛图片,规定size*/
- (void)cm_setQinuiImageWithUrlString:(NSString *)urlString placeholder:(UIImage *)placeholder andSize:(CGSize)size;

/**加圆角*/
- (void)cm_imageWithCornerRadius:(CGFloat)radius andImageUrl:(NSString *)url placeholder:(UIImage *)placehoder;

- (void)cm_imageWithCornerRadius:(CGFloat)radius andImage:(UIImage *)image;

@end
