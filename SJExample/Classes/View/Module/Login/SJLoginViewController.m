//
//  SJLoginViewController.m
//  SJExample
//
//  Created by Sun on 2018/3/14.
//  Copyright © 2018年 Sun. All rights reserved.
//

#import "SJLoginViewController.h"

@interface SJLoginViewController ()

@end

@implementation SJLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton * presetNav = [UIButton buttonWithType:UIButtonTypeCustom];
    [presetNav setTitle:@"新闻" forState:UIControlStateNormal];
    [presetNav setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:presetNav];
    [presetNav addTarget:self.viewModel action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [presetNav mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).mas_offset(100);
        make.left.equalTo(self.view).mas_offset(50);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    UIButton * resetToRoot = [UIButton buttonWithType:UIButtonTypeCustom];
    [resetToRoot setTitle:@"toRoot" forState:UIControlStateNormal];
    [resetToRoot setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:resetToRoot];
    [resetToRoot addTarget:self.viewModel action:@selector(resetToRoot) forControlEvents:UIControlEventTouchUpInside];
    [resetToRoot mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).mas_offset(300);
        make.left.equalTo(self.view).mas_offset(50);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)enableBackBarButton{
    return YES;
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
