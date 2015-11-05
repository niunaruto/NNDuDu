//
//  NNBaseTableView.h
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NNBaseTableView : UITableView

-(id)initWithFrame:(CGRect)frame
             style:(UITableViewStyle)style
       loadNewData:(SEL)loadNewData
      loadMoreData:(SEL)loadMoreData
            target:(id)target;
@end
