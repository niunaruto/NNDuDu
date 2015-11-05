//
//  HomeTopCell.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "HomeTopCell.h"
#import "HomeScrollView.h"
@interface HomeTopCell ()

@property (weak, nonatomic) IBOutlet UIScrollView *photoScro;
@property (weak, nonatomic) IBOutlet UIScrollView *scondScro;
@end
@implementation HomeTopCell

- (void)awakeFromNib {
    
    self.autoresizingMask = UIViewAutoresizingNone;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

@end
