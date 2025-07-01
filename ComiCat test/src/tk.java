// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

class tk
    implements tm
{
    public static final class a
    {

        static final boolean c;
        String a;
        String b;
        private final tj.b d;

        static tj.b a(a a1)
        {
            return a1.d;
        }

        static String b(a a1)
        {
            return a1.a;
        }

        static String c(a a1)
        {
            return a1.b;
        }

        static 
        {
            boolean flag;
            if (!tk.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c = flag;
        }

        public a(tj.b b1)
        {
            if (!c && b1 == null)
            {
                throw new AssertionError();
            } else
            {
                d = b1;
                return;
            }
        }
    }


    final tj.b a;
    final String b;
    final String c;

    private tk(a a1)
    {
        a = a.a(a1);
        b = a.b(a1);
        c = a.c(a1);
    }

    private tk(a a1, byte byte0)
    {
        this(a1);
    }

    public static tk a(JSONObject jsonobject)
    {
        Object obj;
        try
        {
            obj = jsonobject.getString("error");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", jsonobject);
        }
        try
        {
            obj = tj.b.valueOf(((String) (obj)).toUpperCase());
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
        obj = new a(((tj.b) (obj)));
        if (jsonobject.has("error_description"))
        {
            String s;
            try
            {
                s = jsonobject.getString("error_description");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.a = s;
        }
        if (jsonobject.has("error_uri"))
        {
            try
            {
                jsonobject = jsonobject.getString("error_uri");
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                throw new sx("An error occured on the client during the operation.", jsonobject);
            }
            obj.b = jsonobject;
        }
        return new tk(((a) (obj)), (byte)0);
    }

    public static boolean b(JSONObject jsonobject)
    {
        return jsonobject.has("error");
    }

    public final void a(tn tn1)
    {
        tn1.a(this);
    }

    public String toString()
    {
        return String.format("OAuthErrorResponse [error=%s, errorDescription=%s, errorUri=%s]", new Object[] {
            a.toString().toLowerCase(Locale.US), b, c
        });
    }
}
