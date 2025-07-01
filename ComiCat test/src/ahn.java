// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public final class ahn
{

    public static final char a;
    public static final String b;

    public static transient void a(Closeable acloseable[])
    {
        int i = 0;
        while (i < 4) 
        {
            Closeable closeable = acloseable[i];
            if (closeable != null)
            {
                try
                {
                    closeable.close();
                }
                catch (IOException ioexception) { }
            }
            i++;
        }
    }

    static 
    {
        a = File.separatorChar;
        ahz ahz1 = new ahz((byte)0);
        PrintWriter printwriter = new PrintWriter(ahz1);
        printwriter.println();
        b = ahz1.toString();
        printwriter.close();
    }
}
