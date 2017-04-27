//
//  ViewController.m
//  ceshi
//
//  Created by lyscds2017 on 2017/4/26.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "ViewController.h"
#import <POP.h>
#import <AFNetworking.h>
#import "MJLTableViewController.h"
@interface ViewController ()
- (IBAction)pushVC:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试的高哈哈哈
}


- (IBAction)pushVC:(UIButton *)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MJLStoryboard" bundle:nil];
    MJLTableViewController *mvc = [sb instantiateViewControllerWithIdentifier:@"table"];
   // MJLTableViewController *mvc = [[MJLTableViewController alloc]init];
    [self.navigationController pushViewController:mvc animated:YES];
}
@end
