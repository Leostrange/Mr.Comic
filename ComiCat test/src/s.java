// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Parcel;

public final class s
{
    public static final class a
        implements android.os.Parcelable.Creator
    {

        final t a;

        public final Object createFromParcel(Parcel parcel)
        {
            return a.a(parcel, null);
        }

        public final Object[] newArray(int i)
        {
            return a.a(i);
        }

        public a(t t1)
        {
            a = t1;
        }
    }

}
