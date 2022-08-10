
package com.droplessjake.zendeskmessaging;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import android.util.Log;
import java.lang.String;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactMethod;

import zendesk.android.Zendesk;
import zendesk.messaging.android.DefaultMessagingFactory;

public class RNZendeskMessaging extends ReactContextBaseJavaModule {
    private ReactContext appContext;

    public RNZendeskMessaging(ReactApplicationContext reactContext) {
        super(reactContext);
        appContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNZendeskMessaging";
    }

    @ReactMethod
    public void initialise(String key) {
        Zendesk.initialize(
                appContext,
                key,
                zendesk -> Log.i("IntegrationApplication", "Initialization successful"),
                error -> Log.e("IntegrationApplication", "Messaging failed to initialize", error),
                new DefaultMessagingFactory());
    }

    @ReactMethod
    public void showMessaging() {
        Zendesk.getInstance().getMessaging().showMessaging(appContext, Intent.FLAG_ACTIVITY_NEW_TASK);
    }
}
