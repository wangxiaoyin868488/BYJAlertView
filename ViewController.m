//
//  ViewController.m
//  BYJAlertView
//
//  Created by mac on 2017/9/11.
//  Copyright © 2017年 baiyujing. All rights reserved.
//

#import "ViewController.h"
#import "MOIPoisonSheetView.h"

#define kheight ([UIScreen mainScreen].bounds.size.height)
#define kwidth ([UIScreen mainScreen].bounds.size.width)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btn1Click:(UIButton *)sender {
    [self showViewP];
}
- (IBAction)btn2Click:(UIButton *)sender {
    [self showViewP];
}
- (IBAction)btn3Click:(UIButton *)sender {
    [self showViewP];
}

- (void)showViewP{

    MOIPoisonSheetView *poisSheet = [MOIPoisonSheetView allocMOIPoisonSheetView];
    poisSheet.frame = CGRectMake(0, 0, kwidth, kheight);
    
    NSDictionary *dict;
    [poisSheet setMOIPoisonSheetViewWithDict:dict];
    
    //看毒文
    [poisSheet setLookDuwenBtnClick:^(NSDictionary *dict) {
        
        
    }];
    //去解毒
    [poisSheet setGoJieduBtnClick:^(NSDictionary *dict) {
        
    }];
    
    //已解毒？？？
    [poisSheet setBeJieduBtnClick:^(NSDictionary *dict) {
        
    }];
    
    //取消中毒
    [poisSheet setExPoisonBtnClick:^(NSDictionary *dict) {
        
    }];
    [poisSheet showInView:self.view];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
