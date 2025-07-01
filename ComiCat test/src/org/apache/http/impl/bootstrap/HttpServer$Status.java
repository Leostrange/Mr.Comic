// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.bootstrap;


// Referenced classes of package org.apache.http.impl.bootstrap:
//            HttpServer

static final class  extends Enum
{

    private static final STOPPING $VALUES[];
    public static final STOPPING ACTIVE;
    public static final STOPPING READY;
    public static final STOPPING STOPPING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/apache/http/impl/bootstrap/HttpServer$Status, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        READY = new <init>("READY", 0);
        ACTIVE = new <init>("ACTIVE", 1);
        STOPPING = new <init>("STOPPING", 2);
        $VALUES = (new .VALUES[] {
            READY, ACTIVE, STOPPING
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
