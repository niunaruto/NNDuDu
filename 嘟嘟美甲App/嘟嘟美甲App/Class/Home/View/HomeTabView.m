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

- (id)init{
    if (self = [super init]) {
        self.frame = CGRectMake(0, 64, ScreenSize.width, ScreenSize.height - 64 - 44);
        self.dataSource = self;
        self.delegate = self;
        [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return self;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
   cell.textLabel.text  =@"今天心情有点淡淡的忧桑。。。";
    
    return cell;
}
@end
