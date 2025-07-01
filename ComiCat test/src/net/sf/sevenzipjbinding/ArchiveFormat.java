// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding;


public final class ArchiveFormat extends Enum
{

    private static final ArchiveFormat $VALUES[];
    public static final ArchiveFormat ARJ;
    public static final ArchiveFormat BZIP2;
    public static final ArchiveFormat CAB;
    public static final ArchiveFormat CHM;
    public static final ArchiveFormat CPIO;
    public static final ArchiveFormat DEB;
    public static final ArchiveFormat GZIP;
    public static final ArchiveFormat HFS;
    public static final ArchiveFormat ISO;
    public static final ArchiveFormat LZH;
    public static final ArchiveFormat LZMA;
    public static final ArchiveFormat NSIS;
    public static final ArchiveFormat RAR;
    public static final ArchiveFormat RPM;
    public static final ArchiveFormat SEVEN_ZIP;
    public static final ArchiveFormat SPLIT;
    public static final ArchiveFormat TAR;
    public static final ArchiveFormat UDF;
    public static final ArchiveFormat XAR;
    public static final ArchiveFormat Z;
    public static final ArchiveFormat ZIP;
    private String methodName;

    private ArchiveFormat(String s, int i, String s1)
    {
        super(s, i);
        methodName = s1;
    }

    public static ArchiveFormat valueOf(String s)
    {
        return (ArchiveFormat)Enum.valueOf(net/sf/sevenzipjbinding/ArchiveFormat, s);
    }

    public static ArchiveFormat[] values()
    {
        return (ArchiveFormat[])$VALUES.clone();
    }

    public final String getMethodName()
    {
        return methodName;
    }

    public final String toString()
    {
        return methodName;
    }

    static 
    {
        ZIP = new ArchiveFormat("ZIP", 0, "Zip");
        TAR = new ArchiveFormat("TAR", 1, "Tar");
        SPLIT = new ArchiveFormat("SPLIT", 2, "Split");
        RAR = new ArchiveFormat("RAR", 3, "Rar");
        LZMA = new ArchiveFormat("LZMA", 4, "Lzma");
        ISO = new ArchiveFormat("ISO", 5, "Iso");
        HFS = new ArchiveFormat("HFS", 6, "HFS");
        GZIP = new ArchiveFormat("GZIP", 7, "GZip");
        CPIO = new ArchiveFormat("CPIO", 8, "Cpio");
        BZIP2 = new ArchiveFormat("BZIP2", 9, "BZIP2");
        SEVEN_ZIP = new ArchiveFormat("SEVEN_ZIP", 10, "7z");
        Z = new ArchiveFormat("Z", 11, "Z");
        ARJ = new ArchiveFormat("ARJ", 12, "Arj");
        CAB = new ArchiveFormat("CAB", 13, "Cab");
        LZH = new ArchiveFormat("LZH", 14, "Lzh");
        CHM = new ArchiveFormat("CHM", 15, "Chm");
        NSIS = new ArchiveFormat("NSIS", 16, "Nsis");
        DEB = new ArchiveFormat("DEB", 17, "Deb");
        RPM = new ArchiveFormat("RPM", 18, "Rpm");
        UDF = new ArchiveFormat("UDF", 19, "Udf");
        XAR = new ArchiveFormat("XAR", 20, "Xar");
        $VALUES = (new ArchiveFormat[] {
            ZIP, TAR, SPLIT, RAR, LZMA, ISO, HFS, GZIP, CPIO, BZIP2, 
            SEVEN_ZIP, Z, ARJ, CAB, LZH, CHM, NSIS, DEB, RPM, UDF, 
            XAR
        });
    }
}
