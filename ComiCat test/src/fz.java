// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class fz extends fy
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        private static final a j[];
        public final int i;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(fz$a, s);
        }

        public static a[] values()
        {
            return (a[])j.clone();
        }

        static 
        {
            a = new a("ROW_ID", 0, 0);
            b = new a("APP_FAMILY_ID", 1, 1);
            c = new a("PACKAGE_NAME", 2, 2);
            d = new a("ALLOWED_SCOPES", 3, 3);
            e = new a("GRANTED_PERMISSIONS", 4, 4);
            f = new a("CLIENT_ID", 5, 5);
            g = new a("APP_VARIANT_ID", 6, 6);
            h = new a("PAYLOAD", 7, 7);
            j = (new a[] {
                a, b, c, d, e, f, g, h
            });
        }

        private a(String s, int k, int l)
        {
            super(s, k);
            i = l;
        }
    }


    public static final String b = fz.getName();
    public static final String c[] = {
        "rowid", "AppFamilyId", "PackageName", "AllowedScopes", "GrantedPermissions", "ClientId", "AppVariantId", "Payload"
    };
    public String d;
    public String e;
    public String f;
    public String g;
    public String h[];
    public String i[];
    public JSONObject j;

    public fz()
    {
    }

    private fz(long l, String s, String s1, String s2, String as[], String as1[], 
            String s3, JSONObject jsonobject)
    {
        this(s, s1, s2, as, as1, s3, jsonobject);
        super.a = l;
    }

    public fz(String s, String s1, String s2, String as[], String as1[], String s3, JSONObject jsonobject)
    {
        d = s;
        e = s1;
        f = s2;
        h = as;
        i = as1;
        g = s3;
        j = jsonobject;
    }

    private boolean a(fz fz1)
    {
        Iterator iterator;
        fz1 = fz1.j;
        if (j == null)
        {
            return fz1 == null;
        }
        if (fz1 == null)
        {
            return false;
        }
        iterator = j.keys();
_L2:
        String s;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_128;
        }
        s = (String)iterator.next();
        if (j.getString(s).equals(fz1.getString(s))) goto _L2; else goto _L1
_L1:
        Log.e(b, (new StringBuilder("APIKeys not equal: key ")).append(s).append(" not equal").toString());
        return false;
        fz1;
        Log.e(b, "APIKeys not equal: JSONException", fz1);
        return false;
        fz1;
        Log.e(b, "APIKeys not equal: ClassCastExceptionException", fz1);
        return false;
        return true;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put(c[a.b.i], d);
        contentvalues.put(c[a.c.i], f);
        contentvalues.put(c[a.d.i], ha.a(h, ","));
        contentvalues.put(c[a.e.i], ha.a(i, ","));
        contentvalues.put(c[a.f.i], g);
        contentvalues.put(c[a.g.i], e);
        String s1 = c[a.h.i];
        String s;
        if (j != null)
        {
            s = j.toString();
        } else
        {
            s = null;
        }
        contentvalues.put(s1, s);
        return contentvalues;
    }

    public final gc c(Context context)
    {
        return gd.a(context);
    }

    public Object clone()
    {
        return new fz(super.a, d, e, f, h, i, g, j);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (obj instanceof fz)
        {
            obj = (fz)obj;
            flag = flag1;
            if (TextUtils.equals(d, ((fz) (obj)).d))
            {
                flag = flag1;
                if (TextUtils.equals(e, ((fz) (obj)).e))
                {
                    flag = flag1;
                    if (TextUtils.equals(f, ((fz) (obj)).f))
                    {
                        flag = flag1;
                        if (Arrays.equals(h, ((fz) (obj)).h))
                        {
                            flag = flag1;
                            if (Arrays.equals(i, ((fz) (obj)).i))
                            {
                                flag = flag1;
                                if (TextUtils.equals(g, ((fz) (obj)).g))
                                {
                                    flag = flag1;
                                    if (a(((fz) (obj))))
                                    {
                                        flag = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return flag;
    }

    public String toString()
    {
        String s;
        try
        {
            s = j.toString(4);
        }
        catch (Exception exception)
        {
            return (new StringBuilder("{ rowid=")).append(super.a).append(", appFamilyId=").append(d).append(", appVariantId=").append(e).append(", packageName=").append(f).append(", allowedScopes=").append(Arrays.toString(h)).append(", grantedPermissions=").append(Arrays.toString(i)).append(", clientId=").append(g).append(" }").toString();
        }
        return s;
    }

}
