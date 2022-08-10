
#import "RNZendeskMessaging.h"

@implementation RNZendeskMessaging

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(initialise: (NSString *): key) {
  [Zendesk initializeWithChannelKey:key
    messagingFactory:[[ZDKDefaultMessagingFactory alloc] init]
    completionHandler:^(Zendesk * _Nullable zendesk, NSError * _Nullable error) {
      if (error != nil) {
        NSLog(@"Zendesk did not initialize.\nError: %@", error.localizedDescription);
      }
    }];
}

RCT_EXPORT_METHOD(showMessaging) {
  UIViewController *viewController = [Zendesk.instance.messaging messagingViewController];
  if (viewController != NULL) {
    [self.navigationController showViewController:viewController sender:self];
  }
}

@end
  