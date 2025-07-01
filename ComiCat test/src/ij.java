// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;

public final class ij
{
    public static final class a extends b
    {

        public a(IOException ioexception)
        {
            super(ioexception);
        }
    }

    public static abstract class b extends IOException
    {

        public volatile Throwable getCause()
        {
            return (IOException)super.getCause();
        }

        public String getMessage()
        {
            String s1 = super.getCause().getMessage();
            String s = s1;
            if (s1 == null)
            {
                s = "";
            }
            return s;
        }

        public b(IOException ioexception)
        {
            super(ioexception);
        }
    }

    public static final class c extends b
    {

        public c(IOException ioexception)
        {
            super(ioexception);
        }
    }


    public static final InputStream a = new InputStream() {

        public final int read()
        {
            return -1;
        }

        public final int read(byte abyte0[])
        {
            return -1;
        }

        public final int read(byte abyte0[], int i, int j)
        {
            return -1;
        }

    };
    public static final OutputStream b = new OutputStream() {

        public final void write(int i)
        {
        }

        public final void write(byte abyte0[])
        {
        }

        public final void write(byte abyte0[], int i, int j)
        {
        }

    };

    public static Reader a(InputStream inputstream)
    {
        return new InputStreamReader(inputstream, il.a.newDecoder());
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    private static void a(InputStream inputstream, OutputStream outputstream, byte abyte0[])
    {
        do
        {
            int i;
            try
            {
                i = inputstream.read(abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (InputStream inputstream)
            {
                throw new a(inputstream);
            }
            if (i != -1)
            {
                try
                {
                    outputstream.write(abyte0, 0, i);
                }
                // Misplaced declaration of an exception variable
                catch (InputStream inputstream)
                {
                    throw new c(inputstream);
                }
            } else
            {
                return;
            }
        } while (true);
    }

    public static byte[] b(InputStream inputstream)
    {
        byte abyte0[] = new byte[16384];
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        a(inputstream, bytearrayoutputstream, abyte0);
        return bytearrayoutputstream.toByteArray();
    }

    public static void c(InputStream inputstream)
    {
        try
        {
            inputstream.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            return;
        }
    }

}
