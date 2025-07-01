// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxRealTimeServer

static final class rver
    implements EntityCreator
{

    public final BoxEntity createEntity()
    {
        return new BoxRealTimeServer();
    }

    rver()
    {
    }
}
