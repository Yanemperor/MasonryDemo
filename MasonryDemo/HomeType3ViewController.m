//
//  HomeType3ViewController.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/15.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "HomeType3ViewController.h"
#import "Type3Cell.h"

@interface HomeType3ViewController ()

@end

@implementation HomeType3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}


#pragma mark - 初始化

- (void)initUI {
    self.tableView.rowHeight = 100;
    [self.tableView registerClass:[Type3Cell class] forCellReuseIdentifier:@"Type3Cell"];
    
}

#pragma mark - View(页面处理)


#pragma mark - XXXDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Type3Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"Type3Cell" forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}


#pragma mark - 对外接口


#pragma mark - private methods(内部接口)


#pragma mark -  loading


#pragma mark - 懒加载




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
