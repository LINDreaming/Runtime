//
//  ViewController.m
//  LLXPractice
//
//  Created by 林喜 on 2017/3/7.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Block.h"
#import "LLXPerson.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, 60, 40);
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn handleClickEvent:UIControlEventTouchUpInside UsingBlock:^(UIButton *sender) {
        NSLog(@"你点击了%@按钮",
              [sender currentTitle]);
        
        LLXPerson *person = [[LLXPerson alloc]init];
        person.name = @"linxi";
        person.crad = @"3232";
        person.birthday = @"4343";
        
        NSData *archive = [NSKeyedArchiver archivedDataWithRootObject:person];
        
        [[NSUserDefaults standardUserDefaults]setObject:archive forKey:@"person"];
        
        
        NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:@"person"];
        LLXPerson *per1 = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        NSLog(@"per1%@",per1);
        [self testfirst];
        [self secondtest];
    }];
    

}

+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method testfirst = class_getInstanceMethod(self, @selector(testfirst));
        Method secondtest = class_getInstanceMethod(self, @selector(secondtest));
        if (testfirst != nil && secondtest != nil) {
            method_exchangeImplementations(testfirst, secondtest);
        }else{
            NSLog(@"方法获取失败");
        }
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private methods
- (void)testfirst{
    NSLog(@" -----  %s",__FUNCTION__);
}

- (void)secondtest{
    NSLog(@"2=== %s",__FUNCTION__);
}


@end
