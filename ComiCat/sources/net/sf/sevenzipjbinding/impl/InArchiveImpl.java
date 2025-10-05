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

public class InArchiveImpl implements ISevenZipInArchive {
    private ArchiveFormat archiveFormat;
    private int numberOfItems = -1;
    private long sevenZipArchiveInStreamInstance;
    private long sevenZipArchiveInstance;

    public static class ExtractSlowCallback implements IArchiveExtractCallback {
        private ExtractOperationResult extractOperationResult;
        ISequentialOutStream sequentialOutStreamParam;

        public ExtractSlowCallback(ISequentialOutStream iSequentialOutStream) {
            this.sequentialOutStreamParam = iSequentialOutStream;
        }

        public ExtractOperationResult getExtractOperationResult() {
            return this.extractOperationResult;
        }

        public ISequentialOutStream getStream(int i, ExtractAskMode extractAskMode) {
            if (extractAskMode.equals(ExtractAskMode.EXTRACT)) {
                return this.sequentialOutStreamParam;
            }
            return null;
        }

        public void prepareOperation(ExtractAskMode extractAskMode) {
        }

        public void setCompleted(long j) {
        }

        public void setOperationResult(ExtractOperationResult extractOperationResult2) {
            this.extractOperationResult = extractOperationResult2;
        }

        public void setTotal(long j) {
        }
    }

    static final class ExtractSlowCryptoCallback extends ExtractSlowCallback implements ICryptoGetTextPassword {
        private String password;

        public ExtractSlowCryptoCallback(ISequentialOutStream iSequentialOutStream, String str) {
            super(iSequentialOutStream);
            this.password = str;
        }

        public final String cryptoGetTextPassword() {
            return this.password;
        }
    }

    private native void nativeClose();

    private native void nativeExtract(int[] iArr, boolean z, IArchiveExtractCallback iArchiveExtractCallback);

    private native Object nativeGetArchiveProperty(int i);

    private native PropertyInfo nativeGetArchivePropertyInfo(int i);

    private native int nativeGetNumberOfArchiveProperties();

    private native int nativeGetNumberOfItems();

    private native int nativeGetNumberOfProperties();

    private native Object nativeGetProperty(int i, int i2);

    private native PropertyInfo nativeGetPropertyInfo(int i);

    private native String nativeGetStringArchiveProperty(int i);

    private native String nativeGetStringProperty(int i, int i2);

    private void setArchiveFormat(String str) {
        for (ArchiveFormat archiveFormat2 : ArchiveFormat.values()) {
            if (archiveFormat2.getMethodName().equalsIgnoreCase(str)) {
                this.archiveFormat = archiveFormat2;
                return;
            }
        }
    }

    public void close() {
        nativeClose();
    }

    public void extract(int[] iArr, boolean z, IArchiveExtractCallback iArchiveExtractCallback) {
        nativeExtract(iArr, z, iArchiveExtractCallback);
    }

    public ExtractOperationResult extractSlow(int i, ISequentialOutStream iSequentialOutStream) {
        ExtractSlowCallback extractSlowCallback = new ExtractSlowCallback(iSequentialOutStream);
        nativeExtract(new int[]{i}, false, extractSlowCallback);
        return extractSlowCallback.getExtractOperationResult();
    }

    public ExtractOperationResult extractSlow(int i, ISequentialOutStream iSequentialOutStream, String str) {
        ExtractSlowCryptoCallback extractSlowCryptoCallback = new ExtractSlowCryptoCallback(iSequentialOutStream, str);
        nativeExtract(new int[]{i}, false, extractSlowCryptoCallback);
        return extractSlowCryptoCallback.getExtractOperationResult();
    }

    public ArchiveFormat getArchiveFormat() {
        return this.archiveFormat;
    }

    public Object getArchiveProperty(PropID propID) {
        return nativeGetArchiveProperty(propID.getPropIDIndex());
    }

    public PropertyInfo getArchivePropertyInfo(PropID propID) {
        return nativeGetArchivePropertyInfo(propID.getPropIDIndex());
    }

    public int getNumberOfArchiveProperties() {
        return nativeGetNumberOfArchiveProperties();
    }

    public int getNumberOfItems() {
        if (this.numberOfItems == -1) {
            this.numberOfItems = nativeGetNumberOfItems();
        }
        return this.numberOfItems;
    }

    public int getNumberOfProperties() {
        return nativeGetNumberOfProperties();
    }

    public Object getProperty(int i, PropID propID) {
        if (i < 0 || i >= getNumberOfItems()) {
            throw new SevenZipException("Index out of range. Index: " + i + ", NumberOfItems: " + getNumberOfItems());
        }
        Object nativeGetProperty = nativeGetProperty(i, propID.getPropIDIndex());
        switch (propID) {
            case SIZE:
            case PACKED_SIZE:
                if (nativeGetProperty instanceof Integer) {
                    return Long.valueOf(((Integer) nativeGetProperty).longValue());
                }
                if (nativeGetProperty == null && this.archiveFormat != null && this.archiveFormat == ArchiveFormat.NSIS) {
                    return 0L;
                }
                return nativeGetProperty;
            case IS_FOLDER:
                if (nativeGetProperty == null) {
                    return Boolean.FALSE;
                }
                break;
            case ENCRYPTED:
                break;
            default:
                return nativeGetProperty;
        }
        return nativeGetProperty == null ? Boolean.FALSE : nativeGetProperty;
    }

    public PropertyInfo getPropertyInfo(PropID propID) {
        return nativeGetPropertyInfo(propID.getPropIDIndex());
    }

    public ISimpleInArchive getSimpleInterface() {
        return new SimpleInArchiveImpl(this);
    }

    public String getStringArchiveProperty(PropID propID) {
        return nativeGetStringArchiveProperty(propID.getPropIDIndex());
    }

    public String getStringProperty(int i, PropID propID) {
        if (i >= 0 && i < getNumberOfItems()) {
            return nativeGetStringProperty(i, propID.getPropIDIndex());
        }
        throw new SevenZipException("Index out of range. Index: " + i + ", NumberOfItems: " + getNumberOfItems());
    }
}
