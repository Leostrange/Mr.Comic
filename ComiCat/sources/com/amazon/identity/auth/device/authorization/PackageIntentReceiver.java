package com.amazon.identity.auth.device.authorization;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PackageIntentReceiver extends BroadcastReceiver {
    private static final String a = PackageIntentReceiver.class.getName();

    public void onReceive(Context context, Intent intent) {
        gz.c(a, "Package Intent Received. Clearing Service Data. action=" + intent.getAction());
        fv.a(context);
    }
}
