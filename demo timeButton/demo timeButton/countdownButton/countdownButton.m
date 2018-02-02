//
//  countdownButton.m
//  demo timeButton
//
//  Created by 小白 on 17/9/20.
//  Copyright © 2017年 DingXiangGuo. All rights reserved.
//

#import "countdownButton.h"

@interface countdownButton()

@property(nonatomic,strong)UIButton * btn;

@end

@implementation countdownButton
{
    
    NSInteger secondsCountDown;
    NSTimer * countDownTimer;
    
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        secondsCountDown = 60;
        
        [self setBtnUI];
    }
    
    return self;
}

-(void)setBtnUI
{
    
    [self setBackgroundColor:[UIColor orangeColor]];
    
    [self setTitle:@"获取验证码" forState:UIControlStateNormal];
    
    [self.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
    
    [self addTarget:self action:@selector(countDownAction:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)countDownAction:(UIButton *)sender
{
    
    [self setTitle:[NSString stringWithFormat:@"%zd s",secondsCountDown] forState:UIControlStateNormal];
    
    countDownTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeFireMethod) userInfo:nil repeats:YES];

    [self setEnabled:NO];
    
    if(self.setBtnAction)
    {
        self.setBtnAction();
    }

}

-(void)timeFireMethod
{
    secondsCountDown--;
    
    [self setTitle:[NSString stringWithFormat:@"%zd s",secondsCountDown] forState:UIControlStateNormal];
    
    if (secondsCountDown<0)
    {
        [countDownTimer invalidate];
        
        [self setEnabled:YES];
        
        [self setTitle:@"获取验证码" forState:UIControlStateNormal];
        
        secondsCountDown = 60;
    }

}
@end
