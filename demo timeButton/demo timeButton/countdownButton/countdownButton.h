//
//  countdownButton.h
//  demo timeButton
//
//  Created by 小白 on 17/9/20.
//  Copyright © 2017年 DingXiangGuo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^setBtnAction)();

@interface countdownButton : UIButton

//倒计时开始回调
@property(nonatomic,strong)setBtnAction setBtnAction;

@end
