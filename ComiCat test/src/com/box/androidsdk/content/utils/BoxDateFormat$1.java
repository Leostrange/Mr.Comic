// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

// Referenced classes of package com.box.androidsdk.content.utils:
//            BoxDateFormat

static final class  extends ThreadLocal
{

    protected final volatile Object initialValue()
    {
        return initialValue();
    }

    protected final DateFormat initialValue()
    {
        return new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
    }

    ()
    {
    }
}
