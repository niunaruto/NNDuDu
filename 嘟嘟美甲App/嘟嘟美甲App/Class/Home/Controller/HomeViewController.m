//
//  HomeViewController.m
//  嘟嘟美甲App
//
//  Created by niuting on 15/11/5.
//  Copyright (c) 2015年 niuting. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTabView.h"
#import "PublicHeader.h"
@interface HomeViewController ()

/**   nav      */
@property (strong, nonatomic) NNNavView *nav;
@property (strong, nonatomic) HomeTabView *tableView;
@end

@implementation HomeViewController
- (NNNavView *)nav{
    if (!_nav) {
        _nav = [[NNNavView alloc]initWithLeftImage:nil leftHigImage:nil rightImage:nil rightHigImage:nil backgroundColor:[UIColor whiteColor] title:@"嘟嘟美甲" click:nil target:self];
        
    }
    return _nav;
}
- (HomeTabView *)tableView{
    if (!_tableView) {
        _tableView = [[HomeTabView alloc]initWithFrame:CGRectMake(0, 0, ScreenSize.width, ScreenSize.height) style:UITableViewStylePlain loadNewData:nil loadMoreData:nil target:self];
    }
    return _tableView;
}
- (void)loadNewData{
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.nav];
    [self.view addSubview:self.tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
