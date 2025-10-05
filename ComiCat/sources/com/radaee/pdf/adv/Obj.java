package com.radaee.pdf.adv;

public class Obj {
    private static native void arrayAppendItem(long j);

    private static native void arrayClear(long j);

    private static native long arrayGetItem(long j, int i);

    private static native int arrayGetItemCount(long j);

    private static native void arrayInsertItem(long j, int i);

    private static native void arrayRemoveItem(long j, int i);

    private static native long dictGetItemByIndex(long j, int i);

    private static native long dictGetItemByName(long j, String str);

    private static native int dictGetItemCount(long j);

    private static native String dictGetItemName(long j, int i);

    private static native void dictRemoveItem(long j, String str);

    private static native void dictSetItem(long j, String str);

    private static native String getAsciiString(long j);

    private static native boolean getBoolean(long j);

    private static native byte[] getHexString(long j);

    private static native int getInt(long j);

    private static native String getName(long j);

    private static native float getReal(long j);

    private static native long getReference(long j);

    private static native String getTextString(long j);

    private static native int getType(long j);

    private static native void setAsciiString(long j, String str);

    private static native void setBoolean(long j, boolean z);

    private static native void setHexString(long j, byte[] bArr);

    private static native void setInt(long j, int i);

    private static native void setName(long j, String str);

    private static native void setReal(long j, float f);

    private static native void setReference(long j, long j2);

    private static native void setTextString(long j, String str);
}
