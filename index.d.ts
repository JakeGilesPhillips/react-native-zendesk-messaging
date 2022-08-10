declare module 'react-native-zendesk-messaging' {
  /**
   * Initialises the Zendesk SDK 
   * @param channelKey The channel key configured in Zendesk Admin Centre
   */
  export function initialise(channelKey: string): void;

  /**
   * Shows the Zendesk Messaging window
   */
  export function showMessaging(): void;
}