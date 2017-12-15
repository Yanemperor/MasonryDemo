//
//  HomeType1ViewController.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/14.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "HomeType1ViewController.h"
#import "Type1Cell.h"
#import "HomeModel.h"

@interface HomeType1ViewController ()

@end

@implementation HomeType1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    [self initUI];
}


#pragma mark - 初始化

- (void)initUI {
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 50;
    [self.tableView registerClass:[Type1Cell class] forCellReuseIdentifier:@"Type1Cell"];
}

#pragma mark - View(页面处理)


#pragma mark - XXXDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Type1Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"Type1Cell" forIndexPath:indexPath];
    cell.model = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - 对外接口


#pragma mark - private methods(内部接口)


#pragma mark -  loading
- (void)loadData {
    [self.dataArray removeAllObjects];
    for (int i = 0; i < ([self getRandomNumber] / 10); i++) {
        HomeModel *model = [[HomeModel alloc] init];
        model.top = [self getText:@"top"];
        model.center = [self getText:@"center"];
        model.bottom = [self getText:@"bottom"];
        [self.dataArray addObject:model];
    }
    [self.tableView reloadData];
}

- (NSString *)getText:(NSString *)str {
    NSString *temp = str;
    for (int i = 0; i < [self getRandomNumber]; i++) {
        temp = [NSString stringWithFormat:@"%@%@",temp,str];
    }
    return temp;
}

- (int)getRandomNumber{
    return arc4random() % 100;
}

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
