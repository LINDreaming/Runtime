//
//  UIButton+Block.h
//  LLXPractice
//
//  Created by 林喜 on 2017/3/8.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ActionBlock)(UIButton *sender);

@interface UIButton (Block)
- (void)handleClickEvent:(UIControlEvents) aEvent UsingBlock:(ActionBlock)block;


@end
