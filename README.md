React native wrapper for the Zendesk Messaging SDK. 

Supports both iOS and Android platforms.

## Getting Started

### Manual install

1. With npm:

    `npm install react-native-zendesk-messaging`

    or with yarn:

    `yarn add react-native-zendesk-messaging`

#### iOS

2. Pod Install:
   run pod install: `(cd ios; pod install)`

#### Android

3. Android Gradle
   You need to add this in your root build.gradle under allProjects -> repositories file of the project.
   `maven { url 'https://zendesk.jfrog.io/artifactory/repo' }`

## Usage

1. Import the package
    `import RNZendeskMessaging from 'react-native-zendesk-messaging'`

2. Initialise the Zendesk Messaging SDK
    Place this code at the root of your react native application:
    `RNZendeskMessaging.initialise(<channelKey>);`
    
3. Show the Messaging window
    `RNZendeskMessaging.showMessaging();`
    
## Notes

This package is built upon the [Zendesk Messaging/Web SDK](https://developer.zendesk.com/documentation/zendesk-web-widget-sdks/) and was created as there was no existing package for this SDK available. It should not be confused with the [Zendesk Classic SDK](https://developer.zendesk.com/documentation/classic-web-widget-sdks/) of which there are many good and easy to use packages available. 

The two SDK's are incompatible until Zendesk release their own react-native library.

The benefits of the Messaging SDK over the chat SDK are the ability to use the Messaging flows and configurations of Zendesk V2.

Should you require the classic Chat/Support functionality of Zendesk you are better suited using an existing package such as [this one by QSuraj](https://github.com/QSuraj/react-native-zendesk-v2) or [this one from TaskRabbit](https://github.com/taskrabbit/react-native-zendesk-chat). 

## License

React Native is MIT licensed, as found in the [LICENSE](https://github.com/dropless/react-native-zendesk-messaging.git/LICENSE) file.
