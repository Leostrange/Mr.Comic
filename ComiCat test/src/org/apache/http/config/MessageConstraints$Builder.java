// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;


// Referenced classes of package org.apache.http.config:
//            MessageConstraints

public static class maxHeaderCount
{

    private int maxHeaderCount;
    private int maxLineLength;

    public MessageConstraints build()
    {
        return new MessageConstraints(maxLineLength, maxHeaderCount);
    }

    public maxHeaderCount setMaxHeaderCount(int i)
    {
        maxHeaderCount = i;
        return this;
    }

    public maxHeaderCount setMaxLineLength(int i)
    {
        maxLineLength = i;
        return this;
    }

    ()
    {
        maxLineLength = -1;
        maxHeaderCount = -1;
    }
}
