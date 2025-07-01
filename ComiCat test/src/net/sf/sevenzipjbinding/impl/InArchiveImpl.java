// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.ExtractAskMode;
import net.sf.sevenzipjbinding.ExtractOperationResult;
import net.sf.sevenzipjbinding.IArchiveExtractCallback;
import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.PropertyInfo;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;
import net.sf.sevenzipjbinding.simple.impl.SimpleInArchiveImpl;

public class InArchiveImpl
    implements ISevenZipInArchive
{
    public static class ExtractSlowCallback
        implements IArchiveExtractCallback
    {

        private ExtractOperationResult extractOperationResult;
        ISequentialOutStream sequentialOutStreamParam;

        public ExtractOperationResult getExtractOperationResult()
        {
            return extractOperationResult;
        }

        public ISequentialOutStream getStream(int i, ExtractAskMode extractaskmode)
        {
            if (extractaskmode.equals(ExtractAskMode.EXTRACT))
            {
                return sequentialOutStreamParam;
            } else
            {
                return null;
            }
        }

        public void prepareOperation(ExtractAskMode extractaskmode)
        {
        }

        public void setCompleted(long l)
        {
        }

        public void setOperationResult(ExtractOperationResult extractoperationresult)
        {
            extractOperationResult = extractoperationresult;
        }

        public void setTotal(long l)
        {
        }

        public ExtractSlowCallback(ISequentialOutStream isequentialoutstream)
        {
            sequentialOutStreamParam = isequentialoutstream;
        }
    }

    static final class ExtractSlowCryptoCallback extends ExtractSlowCallback
        implements ICryptoGetTextPassword
    {

        private String password;

        public final String cryptoGetTextPassword()
        {
            return password;
        }

        public ExtractSlowCryptoCallback(ISequentialOutStream isequentialoutstream, String s)
        {
            super(isequentialoutstream);
            password = s;
        }
    }


    private ArchiveFormat archiveFormat;
    private int numberOfItems;
    private long sevenZipArchiveInStreamInstance;
    private long sevenZipArchiveInstance;

    public InArchiveImpl()
    {
        numberOfItems = -1;
    }

    private native void nativeClose();

    private native void nativeExtract(int ai[], boolean flag, IArchiveExtractCallback iarchiveextractcallback);

    private native Object nativeGetArchiveProperty(int i);

    private native PropertyInfo nativeGetArchivePropertyInfo(int i);

    private native int nativeGetNumberOfArchiveProperties();

    private native int nativeGetNumberOfItems();

    private native int nativeGetNumberOfProperties();

    private native Object nativeGetProperty(int i, int j);

    private native PropertyInfo nativeGetPropertyInfo(int i);

    private native String nativeGetStringArchiveProperty(int i);

    private native String nativeGetStringProperty(int i, int j);

    private void setArchiveFormat(String s)
    {
        ArchiveFormat aarchiveformat[] = ArchiveFormat.values();
        int j = aarchiveformat.length;
        int i = 0;
        do
        {
label0:
            {
                if (i < j)
                {
                    ArchiveFormat archiveformat = aarchiveformat[i];
                    if (!archiveformat.getMethodName().equalsIgnoreCase(s))
                    {
                        break label0;
                    }
                    archiveFormat = archiveformat;
                }
                return;
            }
            i++;
        } while (true);
    }

    public void close()
    {
        nativeClose();
    }

    public void extract(int ai[], boolean flag, IArchiveExtractCallback iarchiveextractcallback)
    {
        nativeExtract(ai, flag, iarchiveextractcallback);
    }

    public ExtractOperationResult extractSlow(int i, ISequentialOutStream isequentialoutstream)
    {
        isequentialoutstream = new ExtractSlowCallback(isequentialoutstream);
        nativeExtract(new int[] {
            i
        }, false, isequentialoutstream);
        return isequentialoutstream.getExtractOperationResult();
    }

    public ExtractOperationResult extractSlow(int i, ISequentialOutStream isequentialoutstream, String s)
    {
        isequentialoutstream = new ExtractSlowCryptoCallback(isequentialoutstream, s);
        nativeExtract(new int[] {
            i
        }, false, isequentialoutstream);
        return isequentialoutstream.getExtractOperationResult();
    }

    public ArchiveFormat getArchiveFormat()
    {
        return archiveFormat;
    }

    public Object getArchiveProperty(PropID propid)
    {
        return nativeGetArchiveProperty(propid.getPropIDIndex());
    }

    public PropertyInfo getArchivePropertyInfo(PropID propid)
    {
        return nativeGetArchivePropertyInfo(propid.getPropIDIndex());
    }

    public int getNumberOfArchiveProperties()
    {
        return nativeGetNumberOfArchiveProperties();
    }

    public int getNumberOfItems()
    {
        if (numberOfItems == -1)
        {
            numberOfItems = nativeGetNumberOfItems();
        }
        return numberOfItems;
    }

    public int getNumberOfProperties()
    {
        return nativeGetNumberOfProperties();
    }

    public Object getProperty(int i, PropID propid)
    {
        Object obj;
        if (i < 0 || i >= getNumberOfItems())
        {
            throw new SevenZipException((new StringBuilder("Index out of range. Index: ")).append(i).append(", NumberOfItems: ").append(getNumberOfItems()).toString());
        }
        obj = nativeGetProperty(i, propid.getPropIDIndex());
        static class _cls1
        {

            static final int $SwitchMap$net$sf$sevenzipjbinding$PropID[];

            static 
            {
                $SwitchMap$net$sf$sevenzipjbinding$PropID = new int[PropID.values().length];
                try
                {
                    $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.SIZE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.PACKED_SIZE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.IS_FOLDER.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$net$sf$sevenzipjbinding$PropID[PropID.ENCRYPTED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.net.sf.sevenzipjbinding.PropID[propid.ordinal()];
        JVM INSTR tableswitch 1 4: default 96
    //                   1 98
    //                   2 98
    //                   3 142
    //                   4 150;
           goto _L1 _L2 _L2 _L3 _L4
_L1:
        return obj;
_L2:
        if (obj instanceof Integer)
        {
            return Long.valueOf(((Integer)obj).longValue());
        }
        if (obj == null && archiveFormat != null && archiveFormat == ArchiveFormat.NSIS)
        {
            return Long.valueOf(0L);
        }
          goto _L1
_L3:
        if (obj == null)
        {
            return Boolean.FALSE;
        }
_L4:
        if (obj != null) goto _L1; else goto _L5
_L5:
        return Boolean.FALSE;
    }

    public PropertyInfo getPropertyInfo(PropID propid)
    {
        return nativeGetPropertyInfo(propid.getPropIDIndex());
    }

    public ISimpleInArchive getSimpleInterface()
    {
        return new SimpleInArchiveImpl(this);
    }

    public String getStringArchiveProperty(PropID propid)
    {
        return nativeGetStringArchiveProperty(propid.getPropIDIndex());
    }

    public String getStringProperty(int i, PropID propid)
    {
        if (i < 0 || i >= getNumberOfItems())
        {
            throw new SevenZipException((new StringBuilder("Index out of range. Index: ")).append(i).append(", NumberOfItems: ").append(getNumberOfItems()).toString());
        } else
        {
            return nativeGetStringProperty(i, propid.getPropIDIndex());
        }
    }
}
