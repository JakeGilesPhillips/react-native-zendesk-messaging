
#import "RNZendeskMessaging.h"

#import <ZendeskSDK/ZendeskSDK.h>
#import <ZendeskSDKMessaging/ZendeskSDKMessaging.h>

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
  if (zendeskController != NULL) {
    dispatch_sync(dispatch_get_main_queue(), ^{
      UIViewController *reactController = RCTPresentedViewController();
      [reactController presentViewController:zendeskController animated:YES completion:nil];
    })
  }
}

@end
  