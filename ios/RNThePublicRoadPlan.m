//
//  RNThePublicRoadPlan.m
//  RNThePublicRoad
//
//  Created by Mac on 7/21/23.
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

static NSString *publicRoadPlan_senseOfTechnologyHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *publicRoadPlan_senseOfTechnologyHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *publicRoadPlan_senseOfTechnologyVersion = @"appVersion";
static NSString *publicRoadPlan_senseOfTechnologyDPKey = @"deploymentKey";
static NSString *publicRoadPlan_senseOfTechnologyUrl = @"serverUrl";

static NSString *publicRoadPlan_senseOfTechnologyUKey = @"umKey";
static NSString *publicRoadPlan_senseOfTechnologyUChannel = @"umChannel";
static NSString *publicRoadPlan_senseOfTechnologySenServerUrl = @"sensorUrl";
static NSString *publicRoadPlan_senseOfTechnologySenProperty = @"sensorProperty";

static NSString *publicRoadPlan_senseOfTechnologyAPP = @"publicRoadPlan_STATE_APP";
static NSString *publicRoadPlan_senseOfTechnologyRoutes = @"spareRoutes";
static NSString *publicRoadPlan_senseOfTechnologyParams = @"washParams";
static NSString *publicRoadPlan_senseOfTechnologyPort = @"vPort";
static NSString *publicRoadPlan_senseOfTechnologySecu = @"vSecu";


static RNThePublicRoadPlan *instance = nil;

+ (instancetype)shareInstance {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}

- (void)publicRoadPlan_theFutureRoadInfo {
    
    NSDictionary *dict = [NSDictionary dictionary];
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:NO forKey:publicRoadPlan_senseOfTechnologyAPP];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyVersion] forKey:publicRoadPlan_senseOfTechnologyVersion];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyDPKey] forKey:publicRoadPlan_senseOfTechnologyDPKey];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyUrl] forKey:publicRoadPlan_senseOfTechnologyUrl];
    
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyUKey] forKey:publicRoadPlan_senseOfTechnologyUKey];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyUChannel] forKey:publicRoadPlan_senseOfTechnologyUChannel];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologySenServerUrl] forKey:publicRoadPlan_senseOfTechnologySenServerUrl];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologySenProperty] forKey:publicRoadPlan_senseOfTechnologySenProperty];
  
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyRoutes] forKey:publicRoadPlan_senseOfTechnologyRoutes];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyParams] forKey:publicRoadPlan_senseOfTechnologyParams];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologyPort] forKey:publicRoadPlan_senseOfTechnologyPort];
    [ud setObject:dict[publicRoadPlan_senseOfTechnologySecu] forKey:publicRoadPlan_senseOfTechnologySecu];

    [ud synchronize];
}

- (UIInterfaceOrientationMask)publicRoadPlan_getOrientation {
  return [Orientation getOrientation];
}

- (void)publicRoadPlan_collectionTheNatureLogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:publicRoadPlan_senseOfTechnologyUKey] channel:[ud stringForKey:publicRoadPlan_senseOfTechnologyUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:publicRoadPlan_senseOfTechnologySenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:publicRoadPlan_senseOfTechnologySenProperty]];
}

- (UIViewController *)publicRoadPlan_buildModernController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self publicRoadPlan_collectionTheNatureLogicalInfo];

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
