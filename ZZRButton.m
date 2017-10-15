//
//  ZZRButton.m
//  ZZRButtonWithTitleAndImage
//
//  Created by 张忠瑞 on 2017/8/10.
//  Copyright © 2017年 张忠瑞. All rights reserved.
//

#import "ZZRButton.h"

@implementation ZZRButton

+ (UIButton *)setUpButtonWithFrame:(CGRect)frame
                             image:(UIImage *)buttonImage
                             title:(NSString *)buttonTitle
                        titleColor:(UIColor *)buttonTitleColor
                         titleFont:(UIFont *)buttonTitleFont
                             space:(CGFloat)buttonSpace
                              type:(ZZRButtonType)buttonType
                            target:(id)buttonTarget
                            action:(SEL)buttonAction
{
    ZZRButton *button = [ZZRButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    
    [button setUpButtonImage:buttonImage
                       title:buttonTitle
                  titleColor:buttonTitleColor
                   titleFont:buttonTitleFont
                       Space:buttonSpace
                        type:buttonType];
    
    [button addTarget:buttonTarget action:buttonAction forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

- (void)setUpButtonImage:(UIImage *)buttonImage
                   title:(NSString *)buttonTitle
              titleColor:(UIColor *)buttonTitleColor
               titleFont:(UIFont *)buttonTitleFont
                   Space:(CGFloat)buttonSpace
                    type:(ZZRButtonType)type
{
    [self setImage:buttonImage forState:UIControlStateNormal];
    [self setTitle:buttonTitle forState:UIControlStateNormal];
    [self setTitleColor:buttonTitleColor forState:UIControlStateNormal];
    self.titleLabel.font = buttonTitleFont;
    
    CGSize buttonSize = self.frame.size;
    CGSize titleSize = self.titleLabel.intrinsicContentSize;
    CGSize imageSize = self.imageView.frame.size;
    

    switch (type) {
        case ZZRBUTTONTYPE_IMAGE_TOP:
        {
            //上下空余的间隙
            CGFloat verticalSpace = (buttonSize.height - titleSize.height - imageSize.height - buttonSpace)/2.0;
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(verticalSpace,
                                                      (buttonSize.width-imageSize.width)/2.0,
                                                      verticalSpace + titleSize.height + buttonSpace,
                                                      (buttonSize.width-imageSize.width)/2.0-titleSize.width)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(verticalSpace + imageSize.height + buttonSpace,
                                                      (buttonSize.width - titleSize.width)/2.0 - imageSize.width,
                                                      verticalSpace,
                                                      (buttonSize.width - titleSize.width)/2.0)];
            
            break;
        }
        case ZZRBUTTONTYPE_IMAGE_LEFT:
        {
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(0,
                                                      0,
                                                      0,
                                                      buttonSpace)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,
                                                      buttonSpace,
                                                      0,
                                                      0)];
            
            
            break;
        }
        case ZZRBUTTONTYPE_IMAGE_RIGHT:
        {
            [self setImageEdgeInsets:UIEdgeInsetsMake(0,
                                                      0,
                                                      0,
                                                      -(imageSize.width + titleSize.width + buttonSpace))];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,
                                                      -(imageSize.width + titleSize.width + buttonSpace),
                                                      0,
                                                      0)];
            
            
            break;
        }
        case ZZRBUTTONTYPE_IMAGE_BOTTOM:
        {
            CGFloat verticalSpace = (buttonSize.height - titleSize.height - imageSize.height - buttonSpace)/2.0;
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(verticalSpace + titleSize.height + buttonSpace,
                                                      (buttonSize.width-imageSize.width)/2.0,
                                                      verticalSpace,
                                                      (buttonSize.width-imageSize.width)/2.0-titleSize.width)];

            [self setTitleEdgeInsets:UIEdgeInsetsMake(verticalSpace,
                                                      (buttonSize.width - titleSize.width)/2.0 - imageSize.width,
                                                      verticalSpace + imageSize.height + buttonSpace,
                                                      (buttonSize.width - titleSize.width)/2.0)];

            
            break;
        }
            
        default:
            break;
    }
    
    
}

@end
