//
//  ViewController.m
//  点击返回顶部
//
//  Created by dzy on 16/1/11.
//  Copyright © 2016年 董震宇. All rights reserved.
//

#import "ViewController.h"
#import "DDBackTopButton.h"
#import "UIScrollView+DDBackTop.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.tableView.contentInset = UIEdgeInsetsMake(- 20, 0, 0, 0);
    
    // 添加返回按钮
    [self.tableView addBackTop];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.backgroundColor = [UIColor redColor];
    }
    return cell;
}

@end
