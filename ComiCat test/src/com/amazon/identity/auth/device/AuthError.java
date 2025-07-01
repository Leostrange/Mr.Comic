// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.identity.auth.device;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public class AuthError extends Exception
    implements Parcelable
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        private static final a f[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/amazon/identity/auth/device/AuthError$a, s);
        }

        public static a[] values()
        {
            return (a[])f.clone();
        }

        static 
        {
            a = new a("ACTION", 0);
            b = new a("BAD_REQUEST", 1);
            c = new a("NETWORK", 2);
            d = new a("INTERNAL", 3);
            e = new a("UNKNOWN", 4);
            f = (new a[] {
                a, b, c, d, e
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class b extends Enum
    {

        private static final b B[];
        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        public static final b g;
        public static final b h;
        public static final b i;
        public static final b j;
        public static final b k;
        public static final b l;
        public static final b m;
        public static final b n;
        public static final b o;
        public static final b p;
        public static final b q;
        public static final b r;
        public static final b s;
        public static final b t;
        public static final b u;
        public static final b v;
        public static final b w;
        public static final b x;
        public static final b y;
        public static final b z;
        final a A;

        public static b valueOf(String s1)
        {
            return (b)Enum.valueOf(com/amazon/identity/auth/device/AuthError$b, s1);
        }

        public static b[] values()
        {
            return (b[])B.clone();
        }

        static 
        {
            a = new b("ERROR_INVALID_TOKEN", 0, a.a);
            b = new b("ERROR_INVALID_GRANT", 1, a.a);
            c = new b("ERROR_INVALID_CLIENT", 2, a.a);
            d = new b("ERROR_INVALID_SCOPE", 3, a.a);
            e = new b("ERROR_UNAUTHORIZED_CLIENT", 4, a.a);
            f = new b("ERROR_WEBVIEW_SSL", 5, a.a);
            g = new b("ERROR_ACCESS_DENIED", 6, a.a);
            h = new b("ERROR_COM", 7, a.c);
            i = new b("ERROR_IO", 8, a.c);
            j = new b("ERROR_UNKNOWN", 9, a.e);
            k = new b("ERROR_BAD_PARAM", 10, a.d);
            l = new b("ERROR_JSON", 11, a.d);
            m = new b("ERROR_PARSE", 12, a.d);
            n = new b("ERROR_SERVER_REPSONSE", 13, a.d);
            o = new b("ERROR_DATA_STORAGE", 14, a.d);
            p = new b("ERROR_THREAD", 15, a.d);
            q = new b("ERROR_DCP_DMS", 16, a.a);
            r = new b("ERROR_FORCE_UPDATE", 17, a.a);
            s = new b("ERROR_REVOKE_AUTH", 18, a.d);
            t = new b("ERROR_AUTH_DIALOG", 19, a.d);
            u = new b("ERROR_BAD_API_PARAM", 20, a.b);
            v = new b("ERROR_INIT", 21, a.b);
            w = new b("ERROR_RESOURCES", 22, a.b);
            x = new b("ERROR_DIRECTED_ID_NOT_FOUND", 23, a.b);
            y = new b("ERROR_INVALID_API", 24, a.b);
            z = new b("ERROR_SECURITY", 25, a.b);
            B = (new b[] {
                a, b, c, d, e, f, g, h, i, j, 
                k, l, m, n, o, p, q, r, s, t, 
                u, v, w, x, y, z
            });
        }

        private b(String s1, int i1, a a1)
        {
            super(s1, i1);
            A = a1;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public final Object createFromParcel(Parcel parcel)
        {
            return new AuthError(parcel);
        }

        public final volatile Object[] newArray(int i)
        {
            return new AuthError[i];
        }

    };
    private static final String a = com/amazon/identity/auth/device/AuthError.getName();
    private final b b;

    public AuthError(Parcel parcel)
    {
        this(parcel.readString(), (Throwable)parcel.readValue(java/lang/Throwable.getClassLoader()), (b)parcel.readSerializable());
    }

    public AuthError(String s, b b1)
    {
        super(s);
        b = b1;
    }

    public AuthError(String s, Throwable throwable, b b1)
    {
        super(s, throwable);
        b = b1;
    }

    public static Bundle a(AuthError autherror)
    {
        Bundle bundle = new Bundle();
        bundle.putParcelable("AUTH_ERROR_EXECEPTION", autherror);
        return bundle;
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder("AuthError cat= ")).append(b.A).append(" type=").append(b).append(" - ").append(super.toString()).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(getMessage());
        if (getCause() != null)
        {
            parcel.writeValue(getCause());
        } else
        {
            parcel.writeValue(null);
        }
        parcel.writeSerializable(b);
    }

}
