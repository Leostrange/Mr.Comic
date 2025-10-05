package com.radaee.pdf;

public class BMDatabase {
    private long a = 0;

    private static native void close(long j);

    private static native long openAndCreate(String str);

    private static native void recClose(long j);

    private static native int recGetCount(long j);

    private static native String recItemGetName(long j, int i);

    private static native int recItemGetPage(long j, int i);

    private static native boolean recItemInsert(long j, String str, int i);

    private static native boolean recItemRemove(long j, int i);

    private static native long recOpen(long j, String str);

    /* access modifiers changed from: protected */
    public void finalize() {
        close(this.a);
        this.a = 0;
        super.finalize();
    }
}
