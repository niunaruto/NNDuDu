//
//  NNBaseTableView.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "NNBaseTableView.h"
#import "PublicHeader.h"
@implementation NNBaseTableView
-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style loadNewData:(SEL)loadNewData loadMoreData:(SEL)loadMoreData target:(id)target
{
    self=[super initWithFrame:frame style:style];
    if(self)
    {
        if(loadNewData)
        {
            self.backgroundColor= [UIColor whiteColor];
            
            MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:loadNewData];
            
            // 隐藏时间
            header.lastUpdatedTimeLabel.hidden = YES;
            header.backgroundColor= [UIColor whiteColor];
            [header setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
            [header setTitle:@"释放刷新" forState:MJRefreshStatePulling];
            [header setTitle:@"加载中..." forState:MJRefreshStateRefreshing];
            
            header.arrowView.image=[UIImage imageNamed:@"hf_overall_image_refresh_default.png"];
            
            // 圈圈
            
            // 设置header
            self.header = header;
            
            
        }
        if(loadMoreData)
        {
            MJRefreshAutoStateFooter *footer=[MJRefreshAutoStateFooter footerWithRefreshingTarget:target refreshingAction:loadMoreData];
            [footer setTitle:@"正在加载..." forState:MJRefreshStateRefreshing];
            [footer setTitle:@"" forState:MJRefreshStateIdle];
            [footer setTitle:@"没有更多了" forState:MJRefreshStateNoMoreData];
            self.footer=footer;
        }
        
    }
    return self;
}

@end
