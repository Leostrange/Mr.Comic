// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class lq
    implements lt
{

    public lq()
    {
    }

    public final String a()
    {
        return "gzip";
    }

    public final void a(oj oj1, OutputStream outputstream)
    {
        outputstream = new GZIPOutputStream(new BufferedOutputStream(outputstream) {

            final lq a;

            public final void close()
            {
                try
                {
                    flush();
                    return;
                }
                catch (IOException ioexception)
                {
                    return;
                }
            }

            
            {
                a = lq.this;
                super(outputstream);
            }
        });
        oj1.a(outputstream);
        outputstream.close();
    }
}
