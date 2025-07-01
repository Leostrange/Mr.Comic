// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;
import net.sf.sevenzipjbinding.IArchiveOpenVolumeCallback;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.PropID;
import net.sf.sevenzipjbinding.SevenZipException;

public class VolumedArchiveInStream
    implements IInStream
{

    private static final String SEVEN_ZIP_FIRST_VOLUME_POSTFIX = ".7z.001";
    private long absoluteLength;
    private long absoluteOffset;
    private final IArchiveOpenVolumeCallback archiveOpenVolumeCallback;
    private IInStream currentInStream;
    private int currentIndex;
    private long currentVolumeLength;
    private long currentVolumeOffset;
    private String cuttedVolumeFilename;
    private List volumePositions;

    public VolumedArchiveInStream(String s, IArchiveOpenVolumeCallback iarchiveopenvolumecallback)
    {
        absoluteLength = -1L;
        currentIndex = -1;
        volumePositions = new ArrayList();
        archiveOpenVolumeCallback = iarchiveopenvolumecallback;
        volumePositions.add(Long.valueOf(0L));
        if (!s.endsWith(".7z.001"))
        {
            throw new SevenZipException((new StringBuilder("The first 7z volume filename '")).append(s).append("' don't ends with the postfix: '.7z.001'. Can't proceed").toString());
        } else
        {
            cuttedVolumeFilename = s.substring(0, s.length() - 3);
            openVolume(1, true);
            return;
        }
    }

    public VolumedArchiveInStream(IArchiveOpenVolumeCallback iarchiveopenvolumecallback)
    {
        this((String)iarchiveopenvolumecallback.getProperty(PropID.NAME), iarchiveopenvolumecallback);
    }

    private void openVolume(int i, boolean flag)
    {
        if (currentIndex != i)
        {
            for (int j = volumePositions.size(); j < i && absoluteLength == -1L; j++)
            {
                openVolume(j, false);
            }

            if (absoluteLength == -1L || volumePositions.size() > i)
            {
                Object obj = (new StringBuilder()).append(cuttedVolumeFilename).append(MessageFormat.format("{0,number,000}", new Object[] {
                    Integer.valueOf(i)
                })).toString();
                obj = archiveOpenVolumeCallback.getStream(((String) (obj)));
                if (obj == null)
                {
                    absoluteLength = ((Long)volumePositions.get(volumePositions.size() - 1)).longValue();
                    return;
                }
                currentInStream = ((IInStream) (obj));
                if (volumePositions.size() == i)
                {
                    currentVolumeLength = currentInStream.seek(0L, 2);
                    if (currentVolumeLength == 0L)
                    {
                        throw new RuntimeException((new StringBuilder("Volume ")).append(i).append(" is empty").toString());
                    }
                    volumePositions.add(Long.valueOf(((Long)volumePositions.get(i - 1)).longValue() + currentVolumeLength));
                    if (flag)
                    {
                        currentInStream.seek(0L, 0);
                    }
                } else
                {
                    currentVolumeLength = ((Long)volumePositions.get(i)).longValue() - ((Long)volumePositions.get(i - 1)).longValue();
                }
                if (flag)
                {
                    currentVolumeOffset = 0L;
                    absoluteOffset = ((Long)volumePositions.get(i - 1)).longValue();
                }
                currentIndex = i;
                return;
            }
        }
    }

    private void openVolumeToAbsoluteOffset()
    {
        int i;
        i = volumePositions.size();
        if (absoluteLength == -1L || absoluteOffset < absoluteLength)
        {
            break MISSING_BLOCK_LABEL_151;
        }
_L2:
        return;
        i--;
        for (; ((Long)volumePositions.get(i)).longValue() > absoluteOffset; i--) { }
        j = i;
        if (i < volumePositions.size() - 1)
        {
            openVolume(i + 1, false);
            return;
        }
        i = j + 1;
        openVolume(i, false);
        if (absoluteLength == -1L || absoluteOffset < absoluteLength)
        {
            j = i;
            if (((Long)volumePositions.get(i)).longValue() > absoluteOffset)
            {
                return;
            }
            break MISSING_BLOCK_LABEL_91;
        }
        break MISSING_BLOCK_LABEL_151;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void close()
    {
    }

    public int read(byte abyte0[])
    {
        int i;
        if (absoluteLength != -1L && absoluteOffset >= absoluteLength)
        {
            i = 0;
        } else
        {
            int j = currentInStream.read(abyte0);
            absoluteOffset = absoluteOffset + (long)j;
            currentVolumeOffset = currentVolumeOffset + (long)j;
            i = j;
            if (currentVolumeOffset >= currentVolumeLength)
            {
                openVolume(currentIndex + 1, true);
                return j;
            }
        }
        return i;
    }

    public long seek(long l, int i)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 52
    //                   1 69
    //                   2 81;
           goto _L1 _L2 _L3 _L4
_L1:
        throw new RuntimeException((new StringBuilder("Seek: unknown origin: ")).append(i).toString());
_L2:
        i = 0;
_L7:
        if (l == absoluteOffset && i == 0)
        {
            return l;
        }
          goto _L5
_L3:
        l += absoluteOffset;
        i = 0;
          goto _L6
_L4:
        if (absoluteLength == -1L)
        {
            openVolume(0x7fffffff, false);
            i = 1;
        } else
        {
            i = 0;
        }
        l += absoluteLength;
_L6:
        if (true) goto _L7; else goto _L5
_L5:
        absoluteOffset = l;
        openVolumeToAbsoluteOffset();
        if (absoluteLength != -1L && absoluteLength <= absoluteOffset)
        {
            absoluteOffset = absoluteLength;
            return absoluteLength;
        } else
        {
            currentVolumeOffset = absoluteOffset - ((Long)volumePositions.get(currentIndex - 1)).longValue();
            currentInStream.seek(currentVolumeOffset, 0);
            return l;
        }
    }
}
