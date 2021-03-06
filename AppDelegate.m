//
//  AppDelegate.m
//  taokouling
//
//  Created by 薛飞龙 on 2018/6/22.
//  Copyright © 2018年 flonger. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (void)getIncitationPush{
    UIPasteboard * pasteoard = [UIPasteboard generalPasteboard];
    NSString * pStr = pasteoard.string;
    if (pStr == nil || pStr.length == 0) {
        return;
    }
    
    //弹出添加
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"提示"message:pasteoard.string delegate:self cancelButtonTitle:nil otherButtonTitles:@"打开",nil];
    [alert show];
    
    //清空剪切板
    pasteoard.string = @"";
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self getIncitationPush];

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
    [self getIncitationPush];

}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
