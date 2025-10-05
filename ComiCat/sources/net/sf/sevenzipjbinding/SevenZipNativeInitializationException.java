package net.sf.sevenzipjbinding;

public class SevenZipNativeInitializationException extends Exception {
    private static final long serialVersionUID = 42;

    public SevenZipNativeInitializationException() {
    }

    public SevenZipNativeInitializationException(String str) {
        super(str);
    }

    public SevenZipNativeInitializationException(String str, Throwable th) {
        super(str, th);
    }

    public SevenZipNativeInitializationException(Throwable th) {
        super(th);
    }
}
