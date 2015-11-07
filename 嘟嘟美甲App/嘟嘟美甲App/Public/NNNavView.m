//
//  NNNavView.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "NNNavView.h"
#import "PublicHeader.h"
@implementation NNNavView

- (id)initWithLeftImage:(UIImage *)leftImage leftHigImage:(UIImage *)leftHigImage rightImage:(UIImage *)rightImage rightHigImage:(UIImage *)rightHigImage backgroundColor:(UIColor *)backgroundColor title:(NSString *)title click:(SEL)selector target:(id)target
{
    self = [super initWithFrame:CGRectMake(0, 0, ScreenSize.width, 64)];
    
    
    if (self) {
        
        self.backgroundColor = [UIColor grayColor];
        
        
        if (leftImage !=nil) {
            UIButton *leftButton=[UIButton buttonWithType:UIButtonTypeCustom];
            leftButton.frame=CGRectMake(0, 20, 60, 44);
            [leftButton setImage:leftImage forState:UIControlStateNormal];
            [leftButton setImage:leftHigImage forState:UIControlStateHighlighted];
            leftButton.tag=1;
            
            [leftButton addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
//            [self addSubview:leftButton];
        }
        
        if (title.length>0) {
            UILabel*titleLable=[[UILabel alloc] initWithFrame:CGRectMake(56, 20, ScreenSize.width-56*2, 44)];
            titleLable.backgroundColor=[UIColor clearColor];
            titleLable.text=title;
            titleLable.textColor = [UIColor redColor];
            titleLable.tag=3;
            titleLable.textAlignment=NSTextAlignmentCenter;
//            titleLable.textColor= UIColorFrom87Black;
            titleLable.font=[UIFont boldSystemFontOfSize:17];
            
            CGSize theSize=[title boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17]} context:nil].size;
            int i = 17;
            while (theSize.width > (ScreenSize.width - 56 * 2 - 16 - 16 - 10))
            {
                i--;
                titleLable.font=[UIFont boldSystemFontOfSize:i];
                theSize = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:i]}];
            }
            [self addSubview:titleLable];
        }
        
        if (rightImage != nil) {
            UIButton *rightButton=[UIButton buttonWithType:UIButtonTypeCustom];
//            rightButton.frame=CGRectMake(ScreenSize.width-RightGap-44, 20, 44, 44);
            [rightButton setImage:rightImage forState:UIControlStateNormal];
            [rightButton setImage:rightHigImage forState:UIControlStateHighlighted];
            [rightButton setImageEdgeInsets:UIEdgeInsetsMake(0, 20, 0, 0)];
            rightButton.tag=2;
            [rightButton addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
//            [self addSubview:rightButton];
        }
        
        
        
//        UIView* line=[[UIView alloc] initWithFrame:CGRectMake(0, navBarFrame-0.5, ScreenSize.width, 0.5)];
//        line.tag = 100;
//        line.backgroundColor=LINECOLOR;
//        [self addSubview:line];
        
    }
    return self;
return self;
}
@end
