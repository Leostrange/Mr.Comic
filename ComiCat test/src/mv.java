// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class mv
{

    public mv()
    {
    }

    final String a(Object obj, boolean flag)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        Object obj1 = np.a;
        obj1 = a(((OutputStream) (bytearrayoutputstream)));
        if (flag)
        {
            ((mw) (obj1)).g();
        }
        ((mw) (obj1)).a(false, obj);
        ((mw) (obj1)).a();
        return bytearrayoutputstream.toString("UTF-8");
    }

    public abstract mw a(OutputStream outputstream);

    public abstract my a(InputStream inputstream);

    public abstract my a(String s);

    public abstract my b(InputStream inputstream);
}
