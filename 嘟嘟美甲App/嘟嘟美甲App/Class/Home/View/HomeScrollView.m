//
//  HomeScrollView.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "HomeScrollView.h"

@implementation HomeScrollView

+ (instancetype)scroView{
    
    return [[[NSBundle mainBundle] loadNibNamed:@"HomeScrollView" owner:nil options:nil] firstObject];
}

- (void)awakeFromNib
{
    // 不需要跟随父控件的尺寸变化而伸缩
    
}

@end
