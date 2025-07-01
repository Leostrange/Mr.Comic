// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device.dataobject;

import android.content.ContentValues;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import fy;
import gc;
import gh;
import gz;

public class RequestedScope extends fy
    implements Parcelable
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        private static final a h[];
        public final int g;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/amazon/identity/auth/device/dataobject/RequestedScope$a, s);
        }

        public static a[] values()
        {
            return (a[])h.clone();
        }

        static 
        {
            a = new a("ROW_ID", 0, 0);
            b = new a("SCOPE", 1, 1);
            c = new a("APP_FAMILY_ID", 2, 2);
            d = new a("DIRECTED_ID", 3, 3);
            e = new a("AUTHORIZATION_ACCESS_TOKEN_ID", 4, 4);
            f = new a("AUTHORIZATION_REFRESH_TOKEN_ID", 5, 5);
            h = (new a[] {
                a, b, c, d, e, f
            });
        }

        private a(String s, int i, int j)
        {
            super(s, i);
            g = j;
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        private static final b e[];
        public final long d;

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(com/amazon/identity/auth/device/dataobject/RequestedScope$b, s);
        }

        public static b[] values()
        {
            return (b[])e.clone();
        }

        static 
        {
            a = new b("UNKNOWN", 0, -2L);
            b = new b("REJECTED", 1, -1L);
            c = new b("GRANTED_LOCALLY", 2, 0L);
            e = (new b[] {
                a, b, c
            });
        }

        private b(String s, int i, long l)
        {
            super(s, i);
            d = l;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public final Object createFromParcel(Parcel parcel)
        {
            return new RequestedScope(parcel);
        }

        public final volatile Object[] newArray(int i)
        {
            return new RequestedScope[i];
        }

    };
    public static final String b[] = {
        "rowid", "Scope", "AppId", "DirectedId", "AtzAccessTokenId", "AtzRefreshTokenId"
    };
    private static final String h = com/amazon/identity/auth/device/dataobject/RequestedScope.getName();
    public String c;
    public String d;
    public String e;
    public long f;
    public long g;

    public RequestedScope()
    {
        f = b.b.d;
        g = b.b.d;
    }

    private RequestedScope(long l, String s, String s1, String s2, long l1, 
            long l2)
    {
        this(s, s1, s2, l1, l2);
        super.a = l;
    }

    public RequestedScope(Parcel parcel)
    {
        f = b.b.d;
        g = b.b.d;
        super.a = parcel.readLong();
        c = parcel.readString();
        d = parcel.readString();
        e = parcel.readString();
        f = parcel.readLong();
        g = parcel.readLong();
    }

    public RequestedScope(String s, String s1, String s2)
    {
        f = b.b.d;
        g = b.b.d;
        c = s;
        d = s1;
        e = s2;
    }

    private RequestedScope(String s, String s1, String s2, long l, long l1)
    {
        this(s, s1, s2);
        f = l;
        g = l1;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(b[a.b.g], c);
        contentvalues.put(b[a.c.g], d);
        contentvalues.put(b[a.d.g], e);
        contentvalues.put(b[a.e.g], Long.valueOf(f));
        contentvalues.put(b[a.f.g], Long.valueOf(g));
        return contentvalues;
    }

    public final gc c(Context context)
    {
        return gh.a(context);
    }

    public Object clone()
    {
        return new RequestedScope(super.a, c, d, e, f, g);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (!(obj instanceof RequestedScope))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        long l;
        long l1;
        try
        {
            obj = (RequestedScope)obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.b(h, (new StringBuilder()).append(((NullPointerException) (obj)).toString()).toString());
            return false;
        }
        flag = flag1;
        if (!c.equals(((RequestedScope) (obj)).c))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        flag = flag1;
        if (!d.equals(((RequestedScope) (obj)).d))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        flag = flag1;
        if (!e.equals(((RequestedScope) (obj)).e))
        {
            break MISSING_BLOCK_LABEL_114;
        }
        flag = flag1;
        if (f != ((RequestedScope) (obj)).f)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        l = g;
        l1 = ((RequestedScope) (obj)).g;
        flag = flag1;
        if (l == l1)
        {
            flag = true;
        }
        return flag;
    }

    public String toString()
    {
        return (new StringBuilder("{ rowid=")).append(super.a).append(", scope=").append(c).append(", appFamilyId=").append(d).append(", directedId=<obscured>, atzAccessTokenId=").append(f).append(", atzRefreshTokenId=").append(g).append(" }").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(super.a);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeLong(f);
        parcel.writeLong(g);
    }

}
