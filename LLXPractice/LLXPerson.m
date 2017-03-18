//
//  LLXPerson.m
//  LLXPractice
//
//  Created by 林喜 on 2017/3/8.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import "LLXPerson.h"
#import <objc/runtime.h>

@implementation LLXPerson
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super init]) {
        unsigned int index = 0;
        Ivar *ivars = class_copyIvarList([self class], &index);
        for (int i = 0; i < index; i++) {
            //取出变量
            Ivar ivar = ivars[i];
            // 获取变量名
            const char *name = ivar_getName(ivar);
            // 输出属性名字及在内存偏移量
            NSLog(@"init %s %td",name,ivar_getOffset(ivar));
            // 解档
            NSString *key = [NSString stringWithUTF8String:name];
            id value = [aDecoder decodeObjectForKey:key];
            [self setValue:value forKey:key];
            
        }
        free(ivars);
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder{
    unsigned int index = 0;
    Ivar *ivars = class_copyIvarList([self class], &index);
    for (int i = 0; i < index; i ++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        NSLog(@"encoder %s %td",name,ivar_getOffset(ivar));

        NSString *key = [NSString stringWithUTF8String:name];
        id value = [self valueForKey:key];
        [aCoder encodeObject:value forKey:key];
    }
    free(ivars);
}

- (NSString *)description{
    
    return [NSString stringWithFormat:@"name == %@ brithday == %@",self.name,self.birthday];
}

@end
