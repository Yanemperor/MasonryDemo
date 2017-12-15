//
//  HomeType2ViewController.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/14.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "HomeType2ViewController.h"
#import "Type2Cell.h"

@interface HomeType2ViewController ()

@end

@implementation HomeType2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}


#pragma mark - 初始化

- (void)initUI {
    self.tableView.rowHeight = 100;
    [self.tableView registerClass:[Type2Cell class] forCellReuseIdentifier:@"Type2Cell"];
}

#pragma mark - View(页面处理)


#pragma mark - XXXDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Type2Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"Type2Cell" forIndexPath:indexPath];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
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
