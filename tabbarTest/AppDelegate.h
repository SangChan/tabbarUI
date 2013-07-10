//
//  AppDelegate.h
//  tabbarTest
//
//  Created by 이 상찬 on 13. 7. 10..
//  Copyright (c) 2013년 이 상찬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
