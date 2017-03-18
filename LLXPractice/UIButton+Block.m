//
//  UIButton+Block.m
//  LLXPractice
//
//  Created by 林喜 on 2017/3/8.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static char *overViewKey;

@implementation UIButton (Block)
- (void)handleClickEvent:(UIControlEvents)aEvent UsingBlock:(ActionBlock)block{
     objc_setAssociatedObject(self, &overViewKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    // 给button增加点击事件
    [self addTarget:self action:@selector(buttonClicked:) forControlEvents:aEvent];
}
- (void)buttonClicked:(UIButton *)sender{
    ActionBlock clickedBlock = objc_getAssociatedObject(self, &overViewKey);
    // 如果block存在则调用Blcok
    if (clickedBlock != nil) {
        clickedBlock(sender);
    }
    
}

@end
