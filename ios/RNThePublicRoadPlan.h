//
//  RNThePublicRoadPlan.h
//  RNThePublicRoad
//
//  Created by Tsing on 7/21/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import <UserNotifications/UNUserNotificationCenter.h>
NS_ASSUME_NONNULL_BEGIN

@interface RNThePublicRoadPlan : UIResponder

+ (instancetype)shareInstance;
- (void)imageEditTool_fixingPicturesInfo;
- (UIInterfaceOrientationMask)imageEditTool_getOrientation;
- (UIViewController *)imageEditTool_fixingPicturesController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions;

@end

NS_ASSUME_NONNULL_END
