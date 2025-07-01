// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.radaee.pdf.adv;


public class Obj
{

    private static native void arrayAppendItem(long l);

    private static native void arrayClear(long l);

    private static native long arrayGetItem(long l, int i);

    private static native int arrayGetItemCount(long l);

    private static native void arrayInsertItem(long l, int i);

    private static native void arrayRemoveItem(long l, int i);

    private static native long dictGetItemByIndex(long l, int i);

    private static native long dictGetItemByName(long l, String s);

    private static native int dictGetItemCount(long l);

    private static native String dictGetItemName(long l, int i);

    private static native void dictRemoveItem(long l, String s);

    private static native void dictSetItem(long l, String s);

    private static native String getAsciiString(long l);

    private static native boolean getBoolean(long l);

    private static native byte[] getHexString(long l);

    private static native int getInt(long l);

    private static native String getName(long l);

    private static native float getReal(long l);

    private static native long getReference(long l);

    private static native String getTextString(long l);

    private static native int getType(long l);

    private static native void setAsciiString(long l, String s);

    private static native void setBoolean(long l, boolean flag);

    private static native void setHexString(long l, byte abyte0[]);

    private static native void setInt(long l, int i);

    private static native void setName(long l, String s);

    private static native void setReal(long l, float f);

    private static native void setReference(long l, long l1);

    private static native void setTextString(long l, String s);
}
