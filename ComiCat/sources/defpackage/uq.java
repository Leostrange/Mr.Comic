package defpackage;

/* renamed from: uq  reason: default package */
/* compiled from: HostSystem */
public enum uq {
    msdos((byte) 0),
    os2((byte) 1),
    win32((byte) 2),
    unix((byte) 3),
    macos((byte) 4),
    beos((byte) 5);
    
    private byte g;

    private uq(byte b) {
        this.g = b;
    }

    public static uq a(byte b) {
        if (msdos.b(b)) {
            return msdos;
        }
        if (os2.b(b)) {
            return os2;
        }
        if (win32.b(b)) {
            return win32;
        }
        if (unix.b(b)) {
            return unix;
        }
        if (macos.b(b)) {
            return macos;
        }
        if (beos.b(b)) {
            return beos;
        }
        return null;
    }

    private boolean b(byte b) {
        return this.g == b;
    }
}
