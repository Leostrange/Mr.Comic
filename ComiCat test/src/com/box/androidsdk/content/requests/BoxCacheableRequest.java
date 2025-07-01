// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxObject;

public interface BoxCacheableRequest
{

    public abstract BoxObject sendForCachedResult();

    public abstract BoxFutureTask toTaskForCachedResult();
}
