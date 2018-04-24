//
//  UIImageView+CornerRadius.m
//  SampleExample
//
//  Created by maitianer on 2018/4/24.
//  Copyright © 2018年 maitianer. All rights reserved.
//

#import "UIImageView+CornerRadius.h"
#import "UIImage+CornerRadius.h"
#import <YYWebImage/YYWebImage.h>

@implementation UIImageView (CornerRadius)

- (void)cm_setImageWithUrlString:(NSString *)urlString placeholder:(UIImage *)placeholder {
    [self yy_setImageWithURL:[NSURL URLWithString:urlString] placeholder:placeholder options:kNilOptions completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError * _Nullable error) {
        
    }];
}

- (void)cm_setQinuiImageWithUrlString:(NSString *)urlString placeholder:(UIImage *)placeholder andSize:(CGSize)size {
    NSString *cuteUrl = [NSString stringWithFormat:@"%@?imageView2/2/w/%.f/h/%.f/",urlString,size.width*2,size.height*2];
    [self yy_setImageWithURL:[NSURL URLWithString:cuteUrl] placeholder:placeholder options:kNilOptions completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError * _Nullable error) {
        
    }];
}

- (void)cm_imageWithCornerRadius:(CGFloat)radius andImage:(UIImage *)image {
    if (!image) {
        self.image = [[self emptyImage] imageWithCornerRadius:radius andSize:self.frame.size];
        return;
    }
    
    self.image = [image imageWithCornerRadius:radius andSize:self.frame.size];
}

- (void)cm_imageWithCornerRadius:(CGFloat)radius andImageUrl:(NSString *)url placeholder:(UIImage *)placehoder {
    if (!url || url.length <= 0) {
        if (!placehoder) {
            self.image = [[self emptyImage] imageWithCornerRadius:radius andSize:self.frame.size];
        }else {
            self.image = [placehoder imageWithCornerRadius:radius andSize:self.frame.size];
        }
        return;
    }
    
    __weak typeof(self)weakSelf = self;
    [self yy_setImageWithURL:[NSURL URLWithString:url] placeholder:placehoder options:kNilOptions completion:^(UIImage * _Nullable image, NSURL * _Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError * _Nullable error) {
        weakSelf.image = [image imageWithCornerRadius:radius andSize:weakSelf.frame.size];
    }];
}

- (UIImage *)emptyImage {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, self.backgroundColor.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
