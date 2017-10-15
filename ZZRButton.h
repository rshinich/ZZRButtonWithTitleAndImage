//
//  ZZRButton.h
//  ZZRButtonWithTitleAndImage
//
//  Created by 张忠瑞 on 2017/8/10.
//  Copyright © 2017年 张忠瑞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger ,ZZRButtonType)
{
    ZZRBUTTONTYPE_IMAGE_LEFT = 0,
    ZZRBUTTONTYPE_IMAGE_RIGHT ,
    ZZRBUTTONTYPE_IMAGE_TOP,
    ZZRBUTTONTYPE_IMAGE_BOTTOM,
    
};


@interface ZZRButton : UIButton

+ (UIButton *)setUpButtonWithFrame:(CGRect)frame
                             image:(UIImage *)buttonImage
                             title:(NSString *)buttonTitle
                        titleColor:(UIColor *)buttonTitleColor
                         titleFont:(UIFont *)buttonTitleFont
                             space:(CGFloat)buttonSpace
                              type:(ZZRButtonType)buttonType
                            target:(id)buttonTarget
                            action:(SEL)buttonAction;


@end
