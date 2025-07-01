// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.authorization;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import fv;
import gz;

public class PackageIntentReceiver extends BroadcastReceiver
{

    private static final String a = com/amazon/identity/auth/device/authorization/PackageIntentReceiver.getName();

    public PackageIntentReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        gz.c(a, (new StringBuilder("Package Intent Received. Clearing Service Data. action=")).append(intent.getAction()).toString());
        fv.a(context);
    }

}
