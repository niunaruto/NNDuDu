//
//  HomeTabView.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "HomeTabView.h"
#import "PublicHeader.h"
#import "HomeTopCell.h"

@interface HomeTabView()<UITableViewDataSource,UITableViewDelegate>

@end
@implementation HomeTabView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style loadNewData:(SEL)loadNewData loadMoreData:(SEL)loadMoreData target:(id)target{
    
    if (self = [super initWithFrame:frame style:style loadNewData:@selector(loadNewData) loadMoreData:@selector(loadMoreData) target:self]) {
        self.frame = CGRectMake(0, 64, ScreenSize.width, ScreenSize.height - 64 - 44);
        self.dataSource = self;
        self.delegate = self;
        self.rowHeight = 150;
        [self loadNewData];
        [self registerNib:[UINib nibWithNibName:@"HomeTopCell" bundle:nil] forCellReuseIdentifier:@"cell1"];
    }
    return self;
}
-(void)loadNewData{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.header endRefreshing];
    });
}
-(void)loadMoreData{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.footer endRefreshing];
    });
}
- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HomeTopCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
    
    return cell;
}
@end
