//
//  SecondViewController.m
//  testSwift
//
//  Created by xunianqiang on 15/5/4.
//  Copyright (c) 2015年 xunianqiang. All rights reserved.
//

#import "SecondViewController.h"

#import "oc-swift.h"//注意：此头文件是自己写的，工程里面（看不到）。一般前缀：工程名字-swift.h  前面可以修改：build setting -》packing -》product module name

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
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

- (IBAction)btnClick:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 200) {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }
    else if (btn.tag == 201)
    {
        FirstViewController *fvc = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
        [self presentViewController:fvc animated:YES completion:nil];
    }

}
@end
