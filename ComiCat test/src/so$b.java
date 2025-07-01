// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;
import java.util.Comparator;

static final class lang.String extends Enum
    implements Comparator
{

    public static final a a;
    static final boolean b;
    private static final a c[];

    public static int a(Uri uri, Uri uri1)
    {
        String s = uri.getScheme();
        String s1 = uri.getAuthority();
        uri = uri.getPath();
        String s2 = uri1.getScheme();
        String s3 = uri1.getAuthority();
        uri1 = uri1.getPath();
        for (int i = 0; i < 3; i++)
        {
            int j = (new String[] {
                s, s1, uri
            })[i].compareTo((new String[] {
                s2, s3, uri1
            })[i]);
            if (j != 0)
            {
                return j;
            }
        }

        return 0;
    }

    public static lang.String valueOf(String s)
    {
        return (Of)Enum.valueOf(so$b, s);
    }

    public static lang.String[] values()
    {
        return (s[])c.clone();
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((Uri)obj, (Uri)obj1);
    }

    static 
    {
        boolean flag;
        if (!so.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        a = new <init>("INSTANCE");
        c = (new c[] {
            a
        });
    }

    private >(String s)
    {
        super(s, 0);
    }
}
