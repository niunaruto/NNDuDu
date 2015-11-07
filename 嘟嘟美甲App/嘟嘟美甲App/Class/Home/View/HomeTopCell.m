//
//  HomeTopCell.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/7.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "HomeTopCell.h"
#import "PublicHeader.h"

@implementation HomeTopCell

- (void)awakeFromNib {
    self.frame = CGRectMake(0, 0, ScreenSize.width, 50);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
