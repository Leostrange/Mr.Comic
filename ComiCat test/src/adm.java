// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.box.androidsdk.content.BoxApiFile;
import com.box.androidsdk.content.BoxApiFolder;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

public final class adm extends acs
    implements com.box.androidsdk.content.auth.BoxAuthentication.AuthListener
{
    final class a
        implements ProgressListener
    {

        long a;
        acy b;
        final adm c;

        public final void onProgressChanged(long l1, long l2)
        {
            b.a((int)(l1 - a), 0);
            a = l1;
        }

        public a(acy acy1)
        {
            c = adm.this;
            super();
            a = 0L;
            b = acy1;
        }
    }


    private BoxSession b;
    private BoxApiFolder c;
    private BoxApiFile d;

    public adm(aev aev1)
    {
        super(aev1);
        if (aev1 != null && aev1.g != null && aev1.g.length() > 0)
        {
            o();
        }
    }

    private boolean a(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (boxauthenticationinfo.getUser() != null)
        {
            boxauthenticationinfo = boxauthenticationinfo.getUser().getLogin();
        } else
        {
            boxauthenticationinfo = "";
        }
        return boxauthenticationinfo.compareToIgnoreCase(a.f) == 0;
    }

    private void o()
    {
        com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo = new com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo();
        boxauthenticationinfo.setAccessToken(a.h);
        boxauthenticationinfo.setRefreshToken(a.g);
        boxauthenticationinfo.setRefreshTime(Long.valueOf(a.i));
        boxauthenticationinfo.setClientId("hlwu9uterchhjxtxivzrbri7qffefrrm");
        if (a.e.startsWith("uid:"))
        {
            String s = a.e.substring(4);
            if (s.length() != 0)
            {
                boxauthenticationinfo.setUser(BoxUser.createFromId(s));
            }
        }
        b = new BoxSession(ComicReaderApp.a(), boxauthenticationinfo, null);
        b.setSessionAuthListener(this);
        c = new BoxApiFolder(b);
        d = new BoxApiFile(b);
    }

    public final List a(adc adc1)
    {
        Object obj = null;
        if (!adc1.e()) goto _L2; else goto _L1
_L1:
        adl adl1;
        adl1 = (adl)adc1;
        adc1 = adl1.c;
        obj = adc1;
        if (adc1 != null) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L8:
        if (!flag) goto _L5; else goto _L4
_L4:
        adc1 = c.getItemsRequest(adl1.a.getId());
        adc1.setOffset(0);
        adc1.setLimit(1000);
        adc1.setFields(new String[] {
            "name", "size", "type", "id", "sha1"
        });
        adc1 = (BoxIteratorItems)adc1.send();
        boolean flag1;
        if (adc1.size() == 1000)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag = flag1;
        if (adc1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            if (adl1.c == null)
            {
                adl1.c = new ArrayList();
            }
            adc1 = adc1.iterator();
        }
        // Misplaced declaration of an exception variable
        catch (adc adc1)
        {
            adc1.printStackTrace();
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        flag = flag1;
        if (!adc1.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (BoxItem)adc1.next();
        if (obj instanceof BoxFolder)
        {
            adl1.c.add(new adl((BoxFolder)obj, adl1.b()));
            continue; /* Loop/switch isn't completed */
        }
        if (obj instanceof BoxFile)
        {
            adl1.c.add(new adk((BoxFile)obj, adl1.b()));
        }
        if (true) goto _L6; else goto _L5
_L5:
        obj = adl1.c;
_L2:
        return ((List) (obj));
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        boolean flag = false;
        if (f())
        {
            try
            {
                a a1 = new a(acy1);
                s1 = agz.b(s1);
                s = d.getDownloadRequest(s1, s);
                s.setProgressListener(a1);
                s.send();
                acy1.a(acy.a.b);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                acy1.a(acw.f, agv.a(s));
                return false;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                acy1.a(acw.c, agv.a(s));
                return false;
            }
            flag = true;
        }
        return flag;
    }

    public final String b()
    {
        return "box";
    }

    public final String c()
    {
        return ComicReaderApp.a().getString(0x7f060274);
    }

    public final int d()
    {
        return 0x7f020060;
    }

    public final String e()
    {
        Context context = ComicReaderApp.a();
        return (new StringBuilder()).append(context.getString(0x7f06007d, new Object[] {
            c()
        })).append("\n\n").append(context.getString(0x7f06007e)).append("\n\n").append(context.getString(0x7f06007f)).append("\n\n").append(context.getString(0x7f060080)).append("\n\n").append(context.getString(0x7f060081)).append("\n\n").append(context.getString(0x7f060082)).append("\n").toString();
    }

    public final boolean f()
    {
        return b != null;
    }

    public final String g()
    {
        return "box";
    }

    public final void i()
    {
        b.logout();
        super.i();
    }

    public final adc j()
    {
        Object obj = null;
        if (!f()) goto _L2; else goto _L1
_L1:
        try
        {
            obj = (BoxFolder)(new BoxApiFolder(b)).getInfoRequest("0").send();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            return null;
        }
        if (obj == null) goto _L4; else goto _L3
_L3:
        obj = new adl(((BoxFolder) (obj)), "");
_L2:
        return ((adc) (obj));
_L4:
        obj = null;
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final boolean l()
    {
        return true;
    }

    public final void onAuthCreated(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (!a(boxauthenticationinfo))
        {
            o();
        }
    }

    public final void onAuthFailure(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        if (!a(boxauthenticationinfo))
        {
            o();
        }
    }

    public final void onLoggedOut(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo, Exception exception)
    {
        if (!a(boxauthenticationinfo))
        {
            o();
        }
    }

    public final void onRefreshed(com.box.androidsdk.content.auth.BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        a.h = boxauthenticationinfo.accessToken();
        a.g = boxauthenticationinfo.refreshToken();
        a.i = boxauthenticationinfo.getRefreshTime().longValue();
        boxauthenticationinfo = aei.a().g;
        aew.c(a);
    }
}
