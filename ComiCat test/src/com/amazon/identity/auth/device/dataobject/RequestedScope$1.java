// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.dataobject;

import android.os.Parcel;

// Referenced classes of package com.amazon.identity.auth.device.dataobject:
//            RequestedScope

static final class A
    implements android.os.r
{

    public final Object createFromParcel(Parcel parcel)
    {
        return new RequestedScope(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new RequestedScope[i];
    }

    A()
    {
    }
}
