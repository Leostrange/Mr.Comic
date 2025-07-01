// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class to
    implements tm
{
    public static final class a
    {

        static final boolean e;
        String a;
        int b;
        String c;
        String d;
        private final String f;
        private final tj.e g;

        static String a(a a1)
        {
            return a1.f;
        }

        static String b(a a1)
        {
            return a1.a;
        }

        static tj.e c(a a1)
        {
            return a1.g;
        }

        static String d(a a1)
        {
            return a1.c;
        }

        static int e(a a1)
        {
            return a1.b;
        }

        static String f(a a1)
        {
            return a1.d;
        }

        public final to a()
        {
            return new to(this, (byte)0);
        }

        static 
        {
            boolean flag;
            if (!to.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            e = flag;
        }

        public a(String s, tj.e e1)
        {
            b = -1;
            if (!e && s == null)
            {
                throw new AssertionError();
            }
            if (!e && TextUtils.isEmpty(s))
            {
                throw new AssertionError();
            }
            if (!e && e1 == null)
            {
                throw new AssertionError();
            } else
            {
                f = s;
                g = e1;
                return;
            }
        }
    }


    static final boolean g;
    final String a;
    final String b;
    final int c;
    final String d;
    final String e;
    final tj.e f;

    private to(a a1)
    {
        a = a.a(a1);
        b = a.b(a1);
        f = a.c(a1);
        d = a.d(a1);
        c = a.e(a1);
        e = a.f(a1);
    }

    to(a a1, byte byte0)
    {
        this(a1);
    }

    public static to a(Map map)
    {
        Object obj = (String)map.get("access_token");
        Object obj1 = (String)map.get("token_type");
        if (!g && obj == null)
        {
            throw new AssertionError();
        }
        if (!g && obj1 == null)
        {
            throw new AssertionError();
        }
        try
        {
            obj1 = tj.e.valueOf(((String) (obj1)).toUpperCase());
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", map);
        }
        obj = new a(((String) (obj)), ((tj.e) (obj1)));
        obj1 = (String)map.get("authentication_token");
        if (obj1 != null)
        {
            obj.a = ((String) (obj1));
        }
        obj1 = (String)map.get("expires_in");
        if (obj1 != null)
        {
            int i;
            try
            {
                i = Integer.parseInt(((String) (obj1)));
            }
            // Misplaced declaration of an exception variable
            catch (Map map)
            {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", map);
            }
            obj.b = i;
        }
        map = (String)map.get("scope");
        if (map != null)
        {
            obj.d = map;
        }
        return ((a) (obj)).a();
    }

    public static to a(JSONObject jsonobject)
    {
        if (!g && !b(jsonobject))
        {
            throw new AssertionError();
        }
        Object obj;
        Object obj1;
        try
        {
            obj = jsonobject.getString("access_token");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", jsonobject);
        }
        try
        {
            obj1 = jsonobject.getString("token_type");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", jsonobject);
        }
        try
        {
            obj1 = tj.e.valueOf(((String) (obj1)).toUpperCase());
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", jsonobject);
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", jsonobject);
        }
        obj = new a(((String) (obj)), ((tj.e) (obj1)));
        if (jsonobject.has("authentication_token"))
        {
            String s;
            int i;
            try
            {
                s = jsonobject.getString("authentication_token");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.a = s;
        }
        if (jsonobject.has("refresh_token"))
        {
            try
            {
                s = jsonobject.getString("refresh_token");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.c = s;
        }
        if (jsonobject.has("expires_in"))
        {
            try
            {
                i = jsonobject.getInt("expires_in");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.b = i;
        }
        if (jsonobject.has("scope"))
        {
            try
            {
                jsonobject = jsonobject.getString("scope");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.d = jsonobject;
        }
        return ((a) (obj)).a();
    }

    public static boolean b(JSONObject jsonobject)
    {
        return jsonobject.has("access_token") && jsonobject.has("token_type");
    }

    public final void a(tn tn1)
    {
        tn1.a(this);
    }

    public String toString()
    {
        return String.format("OAuthSuccessfulResponse [accessToken=%s, authenticationToken=%s, tokenType=%s, refreshToken=%s, expiresIn=%s, scope=%s]", new Object[] {
            a, b, f, d, Integer.valueOf(c), e
        });
    }

    static 
    {
        boolean flag;
        if (!to.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }
}
