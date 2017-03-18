//
//  LLXPerson.h
//  LLXPractice
//
//  Created by 林喜 on 2017/3/8.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LLXPerson : NSObject<NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *crad;
@property (nonatomic, copy) NSString *birthday;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, copy) NSString *iphone;
@property (nonatomic, copy) NSString *adress;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat weight;

@end
