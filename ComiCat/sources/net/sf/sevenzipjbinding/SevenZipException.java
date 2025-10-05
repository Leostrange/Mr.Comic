package net.sf.sevenzipjbinding;

public class SevenZipException extends Exception {
    private static final long serialVersionUID = 42;

    public SevenZipException() {
    }

    public SevenZipException(String str) {
        super(str);
    }

    public SevenZipException(String str, Throwable th) {
        super(str, th);
    }

    public SevenZipException(Throwable th) {
        super(th);
    }
}
