//
//  Type1Cell.m
//  MasonryDemo
//
//  Created by 周子龙 on 2017/12/14.
//  Copyright © 2017年 Zhou. All rights reserved.
//

#import "Type1Cell.h"
#import "Masonry.h"

@interface Type1Cell ()

@property (nonatomic, strong) UILabel *topLabel;
@property (nonatomic, strong) UILabel *centerLabel;
@property (nonatomic, strong) UILabel *bottomLabel;

@end

@implementation Type1Cell

- (void)setModel:(HomeModel *)model {
    _topLabel.text = model.top;
    _centerLabel.text = model.center;
    _bottomLabel.text = model.bottom;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.topLabel];
        [self.contentView addSubview:self.centerLabel];
        [self.contentView addSubview:self.bottomLabel];
        [self.topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(self.contentView).offset(20);
            make.right.equalTo(self.contentView).offset(-20);
        }];
        [self.centerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.topLabel.mas_bottom).offset(30);
            make.left.equalTo(self.contentView).offset(15);
            make.right.equalTo(self.contentView).offset(-30);
        }];
        [self.bottomLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.centerLabel.mas_bottom).offset(10);
            make.left.equalTo(self.contentView).offset(35);
            make.right.equalTo(self.contentView).offset(-35);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
    }
    return self;
}

- (UILabel *)topLabel {
    if (!_topLabel) {
        _topLabel = [[UILabel alloc] init];
        _topLabel.backgroundColor = [UIColor orangeColor];
        _topLabel.textColor = [UIColor blackColor];
        _topLabel.textAlignment = NSTextAlignmentLeft;
        _topLabel.font = [UIFont systemFontOfSize:20.0];
        _topLabel.numberOfLines = 0;
    }
    return _topLabel;
}

- (UILabel *)centerLabel {
    if (!_centerLabel) {
        _centerLabel = [[UILabel alloc] init];
        _centerLabel.backgroundColor = [UIColor lightGrayColor];
        _centerLabel.textColor = [UIColor blackColor];
        _centerLabel.textAlignment = NSTextAlignmentLeft;
        _centerLabel.font = [UIFont systemFontOfSize:15.0];
        _centerLabel.numberOfLines = 0;
    }
    return _centerLabel;
}

- (UILabel *)bottomLabel {
    if (!_bottomLabel) {
        _bottomLabel = [[UILabel alloc] init];
        _bottomLabel.backgroundColor = [UIColor yellowColor];
        _bottomLabel.textColor = [UIColor blackColor];
        _bottomLabel.textAlignment = NSTextAlignmentLeft;
        _bottomLabel.font = [UIFont systemFontOfSize:23.0];
        _bottomLabel.numberOfLines = 0;
    }
    return _bottomLabel;
}


@end
