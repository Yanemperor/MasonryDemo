//
//  Type3Cell.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/21.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "Type3Cell.h"
#import "Masonry.h"

@interface Type3Cell ()

@property (nonatomic, strong) UILabel *left;
@property (nonatomic, strong) UILabel *right;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) MASConstraint *constraintWdith;
@property (nonatomic, strong) MASConstraint *constraintLeft;

@end

@implementation Type3Cell

- (void)click {
    self.right.hidden = self.right.hidden ? NO : YES;
//    if (self.right.hidden) {
//        [self.right mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_offset(CGSizeMake(0, 0));
//        }];
//        [self.left mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.right.equalTo(self.right.mas_left).offset(0);
//        }];
//    }else{
//        [self.right mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_offset(CGSizeMake(50, 20));
//        }];
//        [self.left mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.right.equalTo(self.right.mas_left).offset(-10);
//        }];
//    }
    
    if (self.right.hidden) {
        _constraintWdith.mas_offset(0);
        _constraintLeft.offset(0);
    }else{
        _constraintWdith.mas_offset(50);
        _constraintLeft.offset(-10);
    }
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.left];
        [self.contentView addSubview:self.right];
        [self.contentView addSubview:self.button];
        [self.right mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_offset(CGSizeMake(50, 20));
            _constraintWdith = make.width.mas_offset(50);
            make.height.mas_offset(20);
            make.centerY.equalTo(self.contentView);
            make.right.equalTo(self.contentView).offset(-15);
        }];
        [self.left mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            _constraintLeft = make.right.equalTo(self.right.mas_left).offset(-10);
        }];
        [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            make.left.equalTo(self.contentView).offset(15);
        }];
    }
    return self;
}

- (UILabel *)left {
    if (!_left) {
        _left = [[UILabel alloc] init];
        _left.backgroundColor = [UIColor orangeColor];
        _left.text = @"左边左边左边";
    }
    return _left;
}

- (UILabel *)right {
    if (!_right) {
        _right = [[UILabel alloc] init];
        _right.backgroundColor = [UIColor lightGrayColor];
        _right.text = @"标签";
    }
    return _right;
}

- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] init];
        _button.backgroundColor = [UIColor greenColor];
        [_button setTitle:@"点击" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@end
