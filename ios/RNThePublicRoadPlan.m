//
//  RNThePublicRoadPlan.m
//  RNThePublicRoad
//
//  Created by Tsing on 7/21/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNThePublicRoadPlan.h"

#import "JJException.h"
#import "RNIndicator.h"
#import "RNCPushNotificationIOS.h"

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNThePublicRoadPlan () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNThePublicRoadPlan()


@end

@implementation RNThePublicRoadPlan

static NSString *imageEditTool_fixingPicturesHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *imageEditTool_fixingPicturesHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *imageEditTool_fixingPicturesVersion = @"appVersion";
static NSString *imageEditTool_fixingPicturesDPKey = @"deploymentKey";
static NSString *imageEditTool_fixingPicturesUrl = @"serverUrl";

static NSString *imageEditTool_fixingPicturesUKey = @"umKey";
static NSString *imageEditTool_fixingPicturesUChannel = @"umChannel";
static NSString *imageEditTool_fixingPicturesSenServerUrl = @"sensorUrl";
static NSString *imageEditTool_fixingPicturesSenProperty = @"sensorProperty";

static NSString *imageEditTool_fixingPicturesAPP = @"imageEditTool_STATE_APP";
static NSString *imageEditTool_fixingPicturesRoutes = @"spareRoutes";
static NSString *imageEditTool_fixingPicturesParams = @"washParams";
static NSString *imageEditTool_fixingPicturesPort = @"vPort";
static NSString *imageEditTool_fixingPicturesSecu = @"vSecu";


static RNThePublicRoadPlan *instance = nil;

+ (instancetype)shareInstance {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}

- (void)imageEditTool_fixingPicturesInfo {
    
    NSDictionary *dict = [NSDictionary dictionary];
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:NO forKey:imageEditTool_fixingPicturesAPP];
    [ud setObject:dict[imageEditTool_fixingPicturesVersion] forKey:imageEditTool_fixingPicturesVersion];
    [ud setObject:dict[imageEditTool_fixingPicturesDPKey] forKey:imageEditTool_fixingPicturesDPKey];
    [ud setObject:dict[imageEditTool_fixingPicturesUrl] forKey:imageEditTool_fixingPicturesUrl];
    
    [ud setObject:dict[imageEditTool_fixingPicturesUKey] forKey:imageEditTool_fixingPicturesUKey];
    [ud setObject:dict[imageEditTool_fixingPicturesUChannel] forKey:imageEditTool_fixingPicturesUChannel];
    [ud setObject:dict[imageEditTool_fixingPicturesSenServerUrl] forKey:imageEditTool_fixingPicturesSenServerUrl];
    [ud setObject:dict[imageEditTool_fixingPicturesSenProperty] forKey:imageEditTool_fixingPicturesSenProperty];
  
    [ud setObject:dict[imageEditTool_fixingPicturesRoutes] forKey:imageEditTool_fixingPicturesRoutes];
    [ud setObject:dict[imageEditTool_fixingPicturesParams] forKey:imageEditTool_fixingPicturesParams];
    [ud setObject:dict[imageEditTool_fixingPicturesPort] forKey:imageEditTool_fixingPicturesPort];
    [ud setObject:dict[imageEditTool_fixingPicturesSecu] forKey:imageEditTool_fixingPicturesSecu];

    [ud synchronize];
}

- (UIInterfaceOrientationMask)imageEditTool_getOrientation {
  return [Orientation getOrientation];
}

- (void)imageEditTool_collectionTheNatureLogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:imageEditTool_fixingPicturesUKey] channel:[ud stringForKey:imageEditTool_fixingPicturesUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:imageEditTool_fixingPicturesSenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:imageEditTool_fixingPicturesSenProperty]];
}

- (UIViewController *)imageEditTool_fixingPicturesController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self imageEditTool_collectionTheNatureLogicalInfo];

  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
