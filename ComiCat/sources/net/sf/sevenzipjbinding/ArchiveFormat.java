package net.sf.sevenzipjbinding;

public enum ArchiveFormat {
    ZIP("Zip"),
    TAR("Tar"),
    SPLIT("Split"),
    RAR("Rar"),
    LZMA("Lzma"),
    ISO("Iso"),
    HFS("HFS"),
    GZIP("GZip"),
    CPIO("Cpio"),
    BZIP2("BZIP2"),
    SEVEN_ZIP("7z"),
    Z("Z"),
    ARJ("Arj"),
    CAB("Cab"),
    LZH("Lzh"),
    CHM("Chm"),
    NSIS("Nsis"),
    DEB("Deb"),
    RPM("Rpm"),
    UDF("Udf"),
    XAR("Xar");
    
    private String methodName;

    private ArchiveFormat(String str) {
        this.methodName = str;
    }

    public final String getMethodName() {
        return this.methodName;
    }

    public final String toString() {
        return this.methodName;
    }
}
