//
//  MJLTableViewController.m
//  ceshi
//
//  Created by lyscds2017 on 2017/4/26.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "MJLTableViewController.h"
#import "MJLCell.h"
@interface MJLTableViewController ()

@end

@implementation MJLTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.tableView registerClass:[MJLCell class] forCellReuseIdentifier:@"mjl"];
    //[self.tableView registerNib:[UINib nibWithNibName:@"MJLCell" bundle:nil] forCellReuseIdentifier:@"mjl"];
    //storyboard创建的cell不需重复注册
//    [self.tableView registerNib:[UINib nib] forCellReuseIdentifier:<#(nonnull NSString *)#>]
    self.tableView.tableFooterView = [[UIView alloc]init];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}
#pragma mark - height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50.;
}
#pragma mark - delegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MJLCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mjl" forIndexPath:indexPath];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
        [self performSegueWithIdentifier:@"denglu" sender:@"123456"];
}
//custom的segue需要自定义UIStoryboardSegue并重写perform方法
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%@---%@---%@-----%@",sender,segue.identifier,segue.sourceViewController,segue.destinationViewController);

    if ([segue.identifier isEqualToString:@"denglu"]) {
        [segue.destinationViewController setValue:sender forKey:@"text"];
        [self.navigationController pushViewController:segue.destinationViewController animated:YES];
    }
}
@end
