//
//  RNThePublicRoadPlan.h
//  RNThePublicRoad
//
//  Created by Mac on 7/21/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>
NS_ASSUME_NONNULL_BEGIN

@interface RNThePublicRoadPlan : UIResponder

+ (instancetype)shareInstance;
- (void)publicRoadPlan_theFutureRoadInfo;
- (UIInterfaceOrientationMask)publicRoadPlan_getOrientation;
- (UIViewController *)publicRoadPlan_buildModernController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
