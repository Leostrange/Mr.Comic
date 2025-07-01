// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileOutputStream;

public final class agz
{
    static interface a
    {

        public abstract boolean a(File file);

        public abstract boolean a(String s);

        public abstract FileOutputStream b(String s);
    }

    static final class b
        implements a
    {

        public final boolean a(File file)
        {
            boolean flag;
            if (!file.exists() || file.delete())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag && !file.exists();
        }

        public final boolean a(String s)
        {
            return a(new File(s));
        }

        public final FileOutputStream b(String s)
        {
            return new FileOutputStream(new File(s));
        }

        private b()
        {
        }

        b(byte byte0)
        {
            this();
        }
    }


    static a a;

    private static a a()
    {
        if (a == null)
        {
            a = new b((byte)0);
        }
        return a;
    }

    public static boolean a(File file)
    {
        return a().a(file);
    }

    public static boolean a(String s)
    {
        return a().a(s);
    }

    public static FileOutputStream b(String s)
    {
        return a().b(s);
    }
}
