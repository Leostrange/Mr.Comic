// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;

public final class hx extends SecureRandom
{
    static final class a extends Provider
    {

        public a()
        {
            super("LinuxPRNG", 1.0D, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", hx$b.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    public static class b extends SecureRandomSpi
    {

        private static final File a = new File("/dev/urandom");
        private static final Object b = new Object();
        private static DataInputStream c;
        private static OutputStream d;
        private boolean e;

        private static DataInputStream a()
        {
            Object obj = b;
            obj;
            JVM INSTR monitorenter ;
            DataInputStream datainputstream = c;
            if (datainputstream != null)
            {
                break MISSING_BLOCK_LABEL_34;
            }
            c = new DataInputStream(new FileInputStream(a));
            datainputstream = c;
            obj;
            JVM INSTR monitorexit ;
            return datainputstream;
            Object obj1;
            obj1;
            throw new SecurityException((new StringBuilder("Failed to open ")).append(a).append(" for reading").toString(), ((Throwable) (obj1)));
            obj1;
            obj;
            JVM INSTR monitorexit ;
            throw obj1;
        }

        private static OutputStream b()
        {
            OutputStream outputstream;
            synchronized (b)
            {
                if (d == null)
                {
                    d = new FileOutputStream(a);
                }
                outputstream = d;
            }
            return outputstream;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        protected byte[] engineGenerateSeed(int i)
        {
            byte abyte0[] = new byte[i];
            engineNextBytes(abyte0);
            return abyte0;
        }

        protected void engineNextBytes(byte abyte0[])
        {
            if (!e)
            {
                engineSetSeed(hx.b());
            }
            DataInputStream datainputstream;
            synchronized (b)
            {
                datainputstream = a();
            }
            datainputstream;
            JVM INSTR monitorenter ;
            datainputstream.readFully(abyte0);
            datainputstream;
            JVM INSTR monitorexit ;
            return;
            abyte0;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw abyte0;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new SecurityException((new StringBuilder("Failed to read from ")).append(a).toString(), abyte0);
            }
            abyte0;
            datainputstream;
            JVM INSTR monitorexit ;
            throw abyte0;
        }

        protected void engineSetSeed(byte abyte0[])
        {
            OutputStream outputstream;
            synchronized (b)
            {
                outputstream = b();
            }
            outputstream.write(abyte0);
            outputstream.flush();
            e = true;
            return;
            abyte0;
            obj;
            JVM INSTR monitorexit ;
            try
            {
                throw abyte0;
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[]) { }
            finally
            {
                e = true;
            }
            Log.w(hx$b.getSimpleName(), (new StringBuilder("Failed to mix seed into ")).append(a).toString());
            e = true;
            return;
        }


        public b()
        {
        }
    }


    private static final byte a[] = e();

    private hx()
    {
        super(new b(), new a());
    }

    public static SecureRandom a()
    {
        if (android.os.Build.VERSION.SDK_INT > 18)
        {
            return new SecureRandom();
        } else
        {
            return new hx();
        }
    }

    static byte[] b()
    {
        return c();
    }

    private static byte[] c()
    {
        byte abyte0[];
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
            dataoutputstream.writeLong(System.currentTimeMillis());
            dataoutputstream.writeLong(System.nanoTime());
            dataoutputstream.writeInt(Process.myPid());
            dataoutputstream.writeInt(Process.myUid());
            dataoutputstream.write(a);
            dataoutputstream.close();
            abyte0 = bytearrayoutputstream.toByteArray();
        }
        catch (IOException ioexception)
        {
            throw new SecurityException("Failed to generate seed", ioexception);
        }
        return abyte0;
    }

    private static String d()
    {
        String s;
        try
        {
            s = (String)android/os/Build.getField("SERIAL").get(null);
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    private static byte[] e()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = Build.FINGERPRINT;
        if (s != null)
        {
            stringbuilder.append(s);
        }
        s = d();
        if (s != null)
        {
            stringbuilder.append(s);
        }
        byte abyte0[];
        try
        {
            abyte0 = stringbuilder.toString().getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
        return abyte0;
    }

}
