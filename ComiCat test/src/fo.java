// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import java.io.IOException;
import java.util.Arrays;

public class fo
{

    private static final String a = fo.getName();
    private gq b;

    public fo()
    {
        b = new gq();
    }

    static String a()
    {
        return a;
    }

    static void a(Context context, String s, String s1, String s2, String as[], fw fw1)
    {
        String s3;
        if (gt.a())
        {
            gz.b(a, "code for token exchange started on main thread");
            throw new IllegalStateException("authorize started on main thread");
        }
        gz.c(a, "Inside getToken AsyncTask - Attempting endpoint");
        s3 = (new fm()).a(context.getPackageName(), context).d;
        if (gq.b)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (as == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        if (as.length > 0)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        throw new AssertionError();
        try
        {
            gz.c(gq.a, "Vending new tokens from Code");
            s1 = go.a(s2, s, s1, s3, as, context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            fw1.a(new AuthError("Failed to exchange code for token", context, com.amazon.identity.auth.device.AuthError.b.i));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            gz.b(a, (new StringBuilder("Failed doing code for token exchange ")).append(context.getMessage()).toString());
            fw1.a(context);
            return;
        }
        if (s1 != null) goto _L2; else goto _L1
_L1:
        context = new Bundle(AuthError.a(new AuthError("No tokens returned", com.amazon.identity.auth.device.AuthError.b.n)));
_L3:
        fw1.a(context);
        return;
_L2:
        s = (gv)s1[0];
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        context = new Bundle(AuthError.a(new AuthError("Access Atz token was null form ServerCommunication", com.amazon.identity.auth.device.AuthError.b.n)));
          goto _L3
label0:
        {
            if (s.a(context) != -1L)
            {
                break label0;
            }
            context = new Bundle(AuthError.a(new AuthError("Unable to insert access atz token into db", com.amazon.identity.auth.device.AuthError.b.o)));
        }
          goto _L3
        s1 = (gx)s1[1];
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_308;
        }
        context = new Bundle(AuthError.a(new AuthError("access token was null form ServerCommunication", com.amazon.identity.auth.device.AuthError.b.n)));
          goto _L3
label1:
        {
            if (s1.a(context) != -1L)
            {
                break label1;
            }
            context = new Bundle(AuthError.a(new AuthError("Unable to insert refresh token into db", com.amazon.identity.auth.device.AuthError.b.o)));
        }
          goto _L3
        gq.a(s3, as, context, s, s1);
        context = new Bundle();
        context.putString(fx.a.h.o, "authorized");
          goto _L3
    }


    // Unreferenced inner class fo$1

/* anonymous class */
    public final class _cls1
        implements Runnable
    {

        final Bundle a;
        final Context b;
        final fw c;
        final fo d;

        public final void run()
        {
            if (a != null)
            {
                String s = a.getString("code");
                if (!TextUtils.isEmpty(s))
                {
                    String s1 = a.getString("clientId");
                    String s2 = a.getString("redirectUri");
                    String as[] = a.getStringArray("scope");
                    gz.a(fo.a(), "Params extracted from OAuth2 response", (new StringBuilder("code=")).append(s).append("clientId=").append(s1).append(" redirectUri=").append(s2).append(" scopes=").append(Arrays.toString(as)).toString());
                    fo.a(b, s1, s2, s, as, c);
                    return;
                }
                c.a(new AuthError("Response bundle from Authorization was empty", com.amazon.identity.auth.device.AuthError.b.n));
            }
            c.a(new AuthError("Response bundle from Authorization was null", com.amazon.identity.auth.device.AuthError.b.n));
        }

            public 
            {
                d = fo.this;
                a = bundle;
                b = context;
                c = fw1;
                super();
            }
    }

}
