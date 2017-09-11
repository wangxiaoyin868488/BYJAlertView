//
//  MOIPoisonSheetView.m
//  EpicLive
//
//  Created by apple on 16/10/9.
//  Copyright © 2016年 liyun. All rights reserved.
//

#import "MOIPoisonSheetView.h"

@interface MOIPoisonSheetView ()<UIAlertViewDelegate>

@end



@implementation MOIPoisonSheetView{

    dispatch_block_t _dismissBlock;

   
}

- (void)awakeFromNib{
    [super awakeFromNib];
    _beJieduBtn.layer.cornerRadius = 2.5;
    _beJieduBtn.clipsToBounds = YES;
    
    _mainView.layer.cornerRadius = 1;
    _mainView.clipsToBounds = YES;
    
    _lookDuwenBtn.layer.cornerRadius = 2.5;
    _lookDuwenBtn.clipsToBounds = YES;
    
    _goJieduBtn.layer.cornerRadius = 2.5;
    _goJieduBtn.clipsToBounds = YES;
    
}

- (void)setMOIPoisonSheetViewWithDict:(NSDictionary *)dict{
    
    _dictR = dict;
    
    _bgView.userInteractionEnabled = YES;
    UITapGestureRecognizer *_tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissSelf)];
    [_bgView addGestureRecognizer:_tap];
    
}

- (void)showInView:(UIView *)_inView{
    
    _bgView.alpha = 0;
    _mainView.alpha = 0;
    _mainView.transform = CGAffineTransformMakeScale(.7, .7);
    [_inView addSubview:self];
    
    [UIView animateWithDuration:.2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _bgView.alpha = .66;
        _mainView.alpha = 1;
        _mainView.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {
        
    }];

}


-(void)dismissSelf{
    [UIView animateWithDuration:.3 animations:^{
        _bgView.alpha = 0;
        _mainView.alpha = 0;
    } completion:^(BOOL finished) {
        
        if (_dismissBlock) {
            _dismissBlock();
        }
        [self removeAllSubviews];
        [self removeFromSuperview];
    }];
}

- (void)removeAllSubviews {
    while (self.subviews.count) {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

- (IBAction)lookDuwenBtn:(UIButton *)sender {

    if (self.lookDuwenBtnClick) {
        self.lookDuwenBtnClick(_dictR);
    }
    [self dismissSelf];
}
- (IBAction)goJieduBtn:(UIButton *)sender {
   
    if (self.goJieduBtnClick) {
        self.goJieduBtnClick(_dictR);
    }
    [self dismissSelf];

}
//已解毒
- (IBAction)beJieduBtn:(UIButton *)sender {
    
    if ([_beJieduBtn.titleLabel.text isEqualToString:@"已解毒"]) {
        if (self.beJieduBtnClick) {
            self.beJieduBtnClick(_dictR);
        }
        
    }else{
        if (self.goShaiwuBtnClick) {
            self.goShaiwuBtnClick(_dictR);
        }
    }
    [self dismissSelf];    
    
}

//取消中毒
- (IBAction)exPoisonBtn:(UIButton *)sender {
    
    if (self.exPoisonBtnClick) {
        self.exPoisonBtnClick(_dictR);
    }
    [self dismissSelf];
}
- (IBAction)dissMissBtn:(UIButton *)sender {
    
    [self dismissSelf];
}


+ (instancetype)allocMOIPoisonSheetView{

    return [[[NSBundle mainBundle]loadNibNamed:@"MOIPoisonSheetView" owner:nil options:nil] lastObject];
}


@end
