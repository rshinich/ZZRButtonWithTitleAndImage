//
//  ViewController.m
//  ZZRButtonWithTitleAndImage
//
//  Created by 张忠瑞 on 2017/8/10.
//  Copyright © 2017年 张忠瑞. All rights reserved.
//

#import "ViewController.h"
#import "ZZRButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ZZRButton *button = [ZZRButton setUpButtonWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-50, 100, 100)
                                                  image:[UIImage imageNamed:@"bookRoom_delete"]
                                                  title:@"删除"
                                             titleColor:[UIColor colorWithRed:50.0/255 green:50.0/255 blue:50.0/255 alpha:1]
                                              titleFont:[UIFont systemFontOfSize:16]
                                                  space:10
                                                   type:ZZRBUTTONTYPE_IMAGE_BOTTOM
                                                 target:self
                                                 action:@selector(buttonClicked)];
    
    [self.view addSubview:button];
    
}

- (void)buttonClicked
{
    NSLog(@"I am Clicked");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
