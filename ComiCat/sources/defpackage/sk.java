package defpackage;

import android.util.Log;
import net.sf.sevenzipjbinding.ArchiveFormat;
import net.sf.sevenzipjbinding.IArchiveOpenCallback;
import net.sf.sevenzipjbinding.ICryptoGetTextPassword;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.ISevenZipInArchive;
import net.sf.sevenzipjbinding.SevenZip;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.SevenZipNativeInitializationException;

/* renamed from: sk  reason: default package */
/* compiled from: GenericArchive */
public final class sk {
    private static sk a = null;

    /* renamed from: sk$a */
    /* compiled from: GenericArchive */
    static class a implements IArchiveOpenCallback, ICryptoGetTextPassword {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        public final String cryptoGetTextPassword() {
            throw new SevenZipException("No password was provided for opening protected archive.");
        }

        public final void setCompleted(Long l, Long l2) {
        }

        public final void setTotal(Long l, Long l2) {
        }
    }

    private static ISevenZipInArchive a(String str, IInStream iInStream, IArchiveOpenCallback iArchiveOpenCallback) {
        if (iInStream != null) {
            return SevenZip.nativeOpenArchive(str, iInStream, iArchiveOpenCallback);
        }
        throw new NullPointerException("SevenZip.callNativeOpenArchive(...): inStream parameter is null");
    }

    public static ISevenZipInArchive a(ArchiveFormat archiveFormat, IInStream iInStream) {
        return archiveFormat != null ? a(archiveFormat.getMethodName(), iInStream, new a((byte) 0)) : a((String) null, iInStream, new a((byte) 0));
    }

    public static sk a() {
        if (a == null) {
            try {
                System.loadLibrary("7zip");
                Throwable[] thArr = new Throwable[1];
                String[] strArr = {SevenZip.nativeInitSevenZipLibrary()};
                if (strArr[0] == null && thArr[0] == null) {
                    a = new sk();
                } else {
                    String str = strArr[0];
                    if (str == null) {
                        str = "No message";
                    }
                    throw new SevenZipNativeInitializationException("Error initializing 7-Zip-JBinding: " + str, thArr[0]);
                }
            } catch (Exception e) {
                Log.e("Generic Archive", "Failed to initialize 7Zip Library", e);
            }
        }
        return a;
    }
}
