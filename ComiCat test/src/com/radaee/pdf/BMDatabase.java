// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf;


public class BMDatabase
{

    private long a;

    public BMDatabase()
    {
        a = 0L;
    }

    private static native void close(long l);

    private static native long openAndCreate(String s);

    private static native void recClose(long l);

    private static native int recGetCount(long l);

    private static native String recItemGetName(long l, int i);

    private static native int recItemGetPage(long l, int i);

    private static native boolean recItemInsert(long l, String s, int i);

    private static native boolean recItemRemove(long l, int i);

    private static native long recOpen(long l, String s);

    protected void finalize()
    {
        close(a);
        a = 0L;
        super.finalize();
    }
}
