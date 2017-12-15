//
//  Type2Cell.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/14.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "Type2Cell.h"
#import "Masonry.h"

@interface Type2Cell ()

@property (nonatomic, strong) UILabel *leftTop;
@property (nonatomic, strong) UILabel *rightTop;
@property (nonatomic, strong) UILabel *leftBottom;
@property (nonatomic, strong) UILabel *rightBottom;


@end

@implementation Type2Cell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.leftTop = [self getLabel];
        self.leftTop.textAlignment = NSTextAlignmentLeft;
        self.rightTop = [self getLabel];
        self.rightTop.textAlignment = NSTextAlignmentRight;
        self.leftBottom = [self getLabel];
        self.leftBottom.textAlignment = NSTextAlignmentLeft;
        self.rightBottom = [self getLabel];
        self.rightBottom.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.leftTop];
        [self.contentView addSubview:self.rightTop];
        [self.contentView addSubview:self.leftBottom];
        [self.contentView addSubview:self.rightBottom];
        [self.leftTop mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(self.contentView).offset(20);
        }];
        [self.rightTop mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(20);
            make.right.equalTo(self.contentView).offset(-20);
            make.left.greaterThanOrEqualTo(self.leftTop.mas_right).offset(20);
        }];
        [self.leftBottom mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView).offset(20);
            make.bottom.equalTo(self.contentView).offset(-20);
        }];
        [self.rightBottom mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self.contentView).offset(-20);
            make.bottom.equalTo(self.contentView).offset(-20);
            make.left.greaterThanOrEqualTo(self.leftBottom.mas_right).offset(20);
        }];
        [self.leftBottom setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];

        [self.rightBottom setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisHorizontal];

        self.leftTop.text = @"左上方";
        self.rightTop.text = @"右上方右上方右上方右上方右上方右上方右上方右上方右上方右上方右上方右上方右上方右上方";
        self.leftBottom.text = @"左下方";
        self.rightBottom.text = @"右下方下方右下方右下方右下方右下方右下方下方右下方右下方右下方右下方右下方下方右下方右下方右下方右下方";
        

    }
    return self;
}

- (UILabel *)getLabel {
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor orangeColor];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:13.0];
    return label;
}


@end
