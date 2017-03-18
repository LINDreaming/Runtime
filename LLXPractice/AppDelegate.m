//
//  AppDelegate.m
//  LLXPractice
//
//  Created by 林喜 on 2017/3/7.
//  Copyright © 2017年 林喜. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /*
    dispatch_semaphore_t signal;
    signal = dispatch_semaphore_create(4);
    __block long x = 0;
    NSLog(@"0_x:%ld",x);
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        sleep(10);
        NSLog(@"waiting");
        x = dispatch_semaphore_signal(signal);
        NSLog(@"1_x:%ld",x);
        sleep(2);
        NSLog(@"waking");
        x = dispatch_semaphore_signal(signal);
        NSLog(@"2_x:%ld",x);
        
        x = dispatch_semaphore_signal(signal);

    });
    //    dispatch_time_t duration = dispatch_time(DISPATCH_TIME_NOW, 1*1000*1000*1000); //超时1秒
    //    dispatch_semaphore_wait(signal, duration);
    
    x = dispatch_semaphore_wait(signal, DISPATCH_TIME_FOREVER);
    NSLog(@"3_x:%ld",x);
    
    x = dispatch_semaphore_wait(signal, DISPATCH_TIME_FOREVER);
    NSLog(@"wait 2");
    NSLog(@"4_x:%ld",x);
    
    x = dispatch_semaphore_wait(signal, DISPATCH_TIME_FOREVER);
    NSLog(@"wait 3");
    NSLog(@"5_x:%ld",x);
     */
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
