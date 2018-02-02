//
//  ViewController.m
//  demo timeButton
//
//  Created by 小白 on 17/9/20.
//  Copyright © 2017年 DingXiangGuo. All rights reserved.
//

#import "ViewController.h"


#import "countdownButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    countdownButton * btn = [[countdownButton alloc]initWithFrame:CGRectMake(100, 100, 90, 40)];
    
    [btn setBackgroundColor:[UIColor purpleColor]];
    
    [btn setSetBtnAction:^(){
    
        NSLog(@"倒计时开始");
        
    }];
    
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
