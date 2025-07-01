// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.models.BoxSimpleMessage;

// Referenced classes of package com.box.androidsdk.content.utils:
//            RealTimeServerConnection

public static interface 
{

    public abstract void onChange(BoxSimpleMessage boxsimplemessage, RealTimeServerConnection realtimeserverconnection);

    public abstract void onException(Exception exception, RealTimeServerConnection realtimeserverconnection);
}
