
#import "RNZendeskMessaging.h"
#import <React/RCTUtils.h>
#import <ZendeskSDKMessaging/ZendeskSDKMessaging.h>
#import <ZendeskSDK/ZendeskSDK.h>

@implementation RNZendeskMessaging

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(initialise: (NSString *)key) {
  [Zendesk initializeWithChannelKey:key
    messagingFactory:[[ZDKDefaultMessagingFactory alloc] init]
    completionHandler:^(Zendesk * _Nullable zendesk, NSError * _Nullable error) {
      if (error != nil) {
        NSLog(@"Zendesk did not initialize.\nError: %@", error.localizedDescription);
      }
    }];
}

RCT_EXPORT_METHOD(showMessaging) {
  UIViewController *zendeskController = [Zendesk.instance.messaging messagingViewController];
  UIViewController *viewController = RCTPresentedViewController();
  if (zendeskController != NULL && viewController != NULL) {
    [viewController present:viewController true];
  }
}

@end
  