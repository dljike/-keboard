//
//  ViewController.m
//  keyBoard
//
//  Created by mac on 16/4/26.
//  Copyright © 2016年 dubo. All rights reserved.
//

#import "ViewController.h"
#import "LTInputAccessoryView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 80, 20)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"弹起" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 80, 20)];
    button2.backgroundColor = [UIColor redColor];
    [button2 addTarget:self action:@selector(button2) forControlEvents:UIControlEventTouchUpInside];
     [button2 setTitle:@"回收" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
}
-(void)button2
{
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
}

-(void)buttonAction
{
    LTInputAccessoryView* view = [LTInputAccessoryView new];
    [view showKeyboardType:UIKeyboardTypeDefault content:@"请输入...." Block:^(NSString *contentStr) {
        
        [self showAlertStr:contentStr];
    }];

    
}
#pragma mark - 评论内容
-(void)showAlertStr:(NSString*)str{
    
    NSLog(@"=========%@",str);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
