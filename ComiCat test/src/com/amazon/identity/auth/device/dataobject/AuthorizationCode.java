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
import ge;
import gz;

public class AuthorizationCode extends fy
    implements Parcelable
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a f[];
        public final int e;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/amazon/identity/auth/device/dataobject/AuthorizationCode$a, s);
        }

        public static a[] values()
        {
            return (a[])f.clone();
        }

        static 
        {
            a = new a("ROW_ID", 0, 0);
            b = new a("CODE", 1, 1);
            c = new a("APP_FAMILY_ID", 2, 2);
            d = new a("AUTHORIZATION_TOKEN_ID", 3, 3);
            f = (new a[] {
                a, b, c, d
            });
        }

        private a(String s, int i, int j)
        {
            super(s, i);
            e = j;
        }
    }


    public static final String e[] = {
        "Id", "Code", "AppId", "AuthorizationTokenId"
    };
    private static final String f = com/amazon/identity/auth/device/dataobject/AuthorizationCode.getName();
    public String b;
    public String c;
    public long d;

    public AuthorizationCode()
    {
    }

    private AuthorizationCode(long l, String s, String s1, long l1)
    {
        this(s, s1, l1);
        super.a = l;
    }

    private AuthorizationCode(String s, String s1, long l)
    {
        b = s;
        c = s1;
        d = l;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(e[a.b.e], b);
        contentvalues.put(e[a.c.e], c);
        contentvalues.put(e[a.d.e], Long.valueOf(d));
        return contentvalues;
    }

    public final gc c(Context context)
    {
        return ge.a(context);
    }

    public Object clone()
    {
        return new AuthorizationCode(super.a, b, c, d);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (!(obj instanceof AuthorizationCode))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        long l;
        long l1;
        try
        {
            obj = (AuthorizationCode)obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            gz.b(f, (new StringBuilder()).append(((NullPointerException) (obj)).toString()).toString());
            return false;
        }
        flag = flag1;
        if (!b.equals(((AuthorizationCode) (obj)).b))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        flag = flag1;
        if (!c.equals(((AuthorizationCode) (obj)).c))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        l = d;
        l1 = ((AuthorizationCode) (obj)).d;
        flag = flag1;
        if (l == l1)
        {
            flag = true;
        }
        return flag;
    }

    public String toString()
    {
        return (new StringBuilder("{ rowId=")).append(super.a).append(", code=").append(b).append(", appId=").append(c).append(", tokenId=").append(d).append(" }").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(super.a);
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeLong(d);
    }

}
