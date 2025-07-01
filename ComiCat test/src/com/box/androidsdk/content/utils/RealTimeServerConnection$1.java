// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.models.BoxSimpleMessage;
import java.util.concurrent.Callable;

// Referenced classes of package com.box.androidsdk.content.utils:
//            RealTimeServerConnection

class this._cls0
    implements Callable
{

    final RealTimeServerConnection this$0;

    public BoxSimpleMessage call()
    {
        return connect();
    }

    public volatile Object call()
    {
        return call();
    }

    A()
    {
        this$0 = RealTimeServerConnection.this;
        super();
    }
}
