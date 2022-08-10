import { NativeModules } from 'react-native';

const { RNZendeskMessaging } = NativeModules;

/** Initialises the Zendesk Messaging SDK with the specified channel key */
export function initialise(channelKey: string) {
  RNZendeskMessaging.initialise(channelKey);
}

/** Opens the Zendesk Messaging window */
export function showMessaging() {
  RNZendeskMessaging.showMessaging();
}