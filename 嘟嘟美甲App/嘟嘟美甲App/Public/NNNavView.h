//
//  NNNavView.h
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NNNavView : UIView


-(id)initWithLeftImage:(UIImage*)leftImage
          leftHigImage:(UIImage*)leftHigImage
            rightImage:(UIImage*)rightImage
         rightHigImage:(UIImage*)rightHigImage
       backgroundColor:(UIColor*)backgroundColor
                 title:(NSString*)title
                 click:(SEL)selector
                target:(id)target;
@end
