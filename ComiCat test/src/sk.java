// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.IArchiveOpenCallback;
import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZip;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.SevenZipNativeInitializationException;

public final class sk
{
    static final class a
        implements IArchiveOpenCallback, ICryptoGetTextPassword
    {

        public final String cryptoGetTextPassword()
        {
            throw new SevenZipException("No password was provided for opening protected archive.");
        }

        public final void setCompleted(Long long1, Long long2)
        {
        }

        public final void setTotal(Long long1, Long long2)
        {
        }

        private a()
        {
        }

        a(byte byte0)
        {
            this();
        }
    }


    private static sk a = null;

    public sk()
    {
    }

    private static ISevenZipInArchive a(String s, IInStream iinstream, IArchiveOpenCallback iarchiveopencallback)
    {
        if (iinstream == null)
        {
            throw new NullPointerException("SevenZip.callNativeOpenArchive(...): inStream parameter is null");
        } else
        {
            return SevenZip.nativeOpenArchive(s, iinstream, iarchiveopencallback);
        }
    }

    public static ISevenZipInArchive a(ArchiveFormat archiveformat, IInStream iinstream)
    {
        if (archiveformat != null)
        {
            return a(archiveformat.getMethodName(), iinstream, ((IArchiveOpenCallback) (new a((byte)0))));
        } else
        {
            return a(null, iinstream, ((IArchiveOpenCallback) (new a((byte)0))));
        }
    }

    public static sk a()
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Throwable athrowable[];
        System.loadLibrary("7zip");
        obj = new String[1];
        athrowable = new Throwable[1];
        obj[0] = SevenZip.nativeInitSevenZipLibrary();
        if (obj[0] == null && athrowable[0] == null) goto _L4; else goto _L3
_L6:
        try
        {
            throw new SevenZipNativeInitializationException((new StringBuilder("Error initializing 7-Zip-JBinding: ")).append(((String) (obj))).toString(), athrowable[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.e("Generic Archive", "Failed to initialize 7Zip Library", ((Throwable) (obj)));
        }
_L2:
        return a;
_L4:
        a = new sk();
        if (true) goto _L2; else goto _L3
_L3:
        String s = obj[0];
        obj = s;
        if (s == null)
        {
            obj = "No message";
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

}
