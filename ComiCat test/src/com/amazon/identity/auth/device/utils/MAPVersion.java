// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.utils;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import gz;

public final class MAPVersion
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public final Object createFromParcel(Parcel parcel)
        {
            return new MAPVersion(parcel);
        }

        public final volatile Object[] newArray(int i)
        {
            return new MAPVersion[i];
        }

    };
    public static final MAPVersion a = new MAPVersion("0.0.0");
    private static final String b = com/amazon/identity/auth/device/utils/MAPVersion.getName();
    private final int c[];

    public MAPVersion(Parcel parcel)
    {
        c = new int[parcel.readInt()];
        parcel.readIntArray(c);
        gz.c(b, (new StringBuilder("MAPVersion Created from PARCEL: ")).append(toString()).toString());
    }

    private MAPVersion(String s)
    {
        gz.c(b, (new StringBuilder("MAPVersion from String : ")).append(s).toString());
        s = TextUtils.split(s, "\\.");
        c = new int[s.length];
        int k = s.length;
        int i = 0;
        int j = 0;
        while (i < k) 
        {
            String s1 = s[i];
            try
            {
                c[j] = Integer.parseInt(s1);
            }
            catch (NumberFormatException numberformatexception)
            {
                c[j] = 0;
            }
            j++;
            i++;
        }
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String toString()
    {
        int ai[] = c;
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < ai.length; i++)
        {
            stringbuffer.append(ai[i]);
            stringbuffer.append('.');
        }

        return stringbuffer.substring(0, stringbuffer.length() - 1);
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        gz.c(b, (new StringBuilder("MAPVersion writing ")).append(c.length).append(" ints to parcel").toString());
        parcel.writeInt(c.length);
        parcel.writeIntArray(c);
    }

}
