//
//  MOIPoisonSheetView.h
//  EpicLive
//
//  Created by apple on 16/10/9.
//  Copyright © 2016年 liyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOIPoisonSheetView : UIView
@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIButton *lookDuwenBtn;
@property (weak, nonatomic) IBOutlet UIButton *goJieduBtn;
@property (weak, nonatomic) IBOutlet UIButton *beJieduBtn;
@property (weak, nonatomic) IBOutlet UIButton *exPoisonBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *beJieduBtnTop;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *goJieduBtnTop;


@property (copy) void(^lookDuwenBtnClick)(NSDictionary *);
@property (copy) void(^goJieduBtnClick)(NSDictionary *);
@property (copy) void(^beJieduBtnClick)(NSDictionary *);
@property (copy) void(^goShaiwuBtnClick)(NSDictionary *);
@property (copy) void(^exPoisonBtnClick)(NSDictionary *);


@property (strong , nonatomic) NSDictionary  *dictR;

- (void)setMOIPoisonSheetViewWithDict:(NSDictionary *)dict;
- (void)showInView:(UIView *)_inView;

+ (instancetype)allocMOIPoisonSheetView;

@end
