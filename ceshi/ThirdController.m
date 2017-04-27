//
//  ThirdController.m
//  ceshi
//
//  Created by lyscds2017 on 2017/4/26.
//  Copyright © 2017年 miaojinliang. All rights reserved.
//

#import "ThirdController.h"

@interface ThirdController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic,copy) NSString *text;
@end

@implementation ThirdController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.text = self.text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
