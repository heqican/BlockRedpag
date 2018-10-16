//
//  ViewController.m
//  BlockRedpag
//
//  Created by 何其灿 on 2018/10/16.
//  Copyright © 2018年 Lixiaoqian. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()
@property (nonatomic, strong) UIView *titleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createSubViews];
    [self layoutSubViews];
}

- (void)createSubViews{
    [self.view addSubview:self.titleView];
}

- (void)layoutSubViews{
    __weak typeof(self) weakSelf = self;
    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(20);
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(250);
    }];
}

@synthesize titleView = _titleView;
-(UIView *)titleView{
    if (!_titleView) {
        _titleView = [[UIView alloc] initWithFrame:CGRectZero];
        _titleView.backgroundColor = [UIColor redColor];
    }
    return _titleView;
}

@end
