// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;

final class adw
{

    ov a;
    aev b;

    public adw(aev aev1)
    {
        a = null;
        b = aev1;
        aev1 = new ov.b(new ms(), new nc());
        aev1.g(ComicReaderApp.a().getString(0x7f060051));
        aev1.a(new ox() {

            final adw a;

            public final void a(ow ow1)
            {
                ow1.a(Boolean.valueOf(true));
                ow1.b("917345885065.apps.googleusercontent.com");
                ads.a(a.b);
                ow1.a(a.b.h);
            }

            
            {
                a = adw.this;
                super();
            }
        });
        a = new ov(aev1);
    }

    private boolean b()
    {
        return a != null;
    }

    public final List a(oz oz1)
    {
        Object obj1;
        Object obj2;
        obj1 = null;
        obj2 = null;
        if (!b()) goto _L2; else goto _L1
_L1:
        Object obj;
        String s1;
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append((new StringBuilder("('")).append(oz1.id).append("' in parents and trashed = false)").toString());
        ((StringBuilder) (obj)).append(" and (mimeType = 'application/vnd.google-apps.folder'");
        obj1 = afa.l();
        int k = obj1.length;
        for (int i = 0; i < k; i++)
        {
            String s = obj1[i];
            ((StringBuilder) (obj)).append(" or title contains '.");
            ((StringBuilder) (obj)).append(s);
            ((StringBuilder) (obj)).append("'");
        }

        ((StringBuilder) (obj)).append(')');
        s1 = ((StringBuilder) (obj)).toString();
        obj = null;
        obj1 = obj2;
_L13:
        obj2 = a.d().a();
        obj2.q = s1;
        obj2.maxResults = Integer.valueOf(500);
        obj2.spaces = "drive";
        obj2 = ((ov.c.b) (obj2)).d("items(fileSize,id,md5Checksum,mimeType,title),nextPageToken");
        obj2.pageToken = ((String) (obj1));
        obj1 = (pa)((ov.c.b) (obj2)).c();
        obj2 = ((pa) (obj1)).nextPageToken;
        if (obj != null) goto _L4; else goto _L3
_L3:
        if (obj2 == null) goto _L6; else goto _L5
_L5:
        if (((String) (obj2)).length() != 0) goto _L7; else goto _L6
_L6:
        obj1 = ((pa) (obj1)).items;
        obj = obj1;
_L10:
        obj1 = obj;
        if (obj2 == null) goto _L2; else goto _L8
_L8:
        int j = ((String) (obj2)).length();
        if (j > 0)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = obj;
_L2:
        return ((List) (obj1));
_L7:
        obj1 = new ArrayList(((pa) (obj1)).items);
        obj = obj1;
        continue; /* Loop/switch isn't completed */
_L4:
        ((List) (obj)).addAll(((pa) (obj1)).items);
        if (true) goto _L10; else goto _L9
        obj1;
_L11:
        (new StringBuilder("Failed to get listing for: ")).append(oz1.id);
        ((Exception) (obj1)).printStackTrace();
        return ((List) (obj));
        obj1;
        if (true) goto _L11; else goto _L9
_L9:
        obj1 = obj2;
        if (true) goto _L13; else goto _L12
_L12:
    }

    public final oy a()
    {
        oy oy1;
        try
        {
            oy1 = (oy)(new ov.a(a)).a().c();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        return oy1;
    }

    public final oz a(String s)
    {
        if (!b())
        {
            break MISSING_BLOCK_LABEL_32;
        }
        s = (oz)a.d().a(s).c();
        return s;
        s;
        s.printStackTrace();
        return null;
    }

    public final boolean a(String s, String s1, acy acy1)
    {
        if (!b()) goto _L2; else goto _L1
_L1:
        if (s == null) goto _L4; else goto _L3
_L3:
        if (s.length() <= 0) goto _L4; else goto _L5
_L5:
        s = new lr(s);
        s = ((le) (a)).b.a("GET", s, null);
        ads.a(b);
        ((lz) (s)).b.a((new StringBuilder("Bearer ")).append(b.h).toString());
        s = s.a();
        if (s == null) goto _L4; else goto _L6
_L6:
        if (!s.a()) goto _L4; else goto _L7
_L7:
        s1 = agz.b(s1);
        if (s1 == null) goto _L4; else goto _L8
_L8:
        boolean flag;
        try
        {
            flag = aha.a(s.b(), s1, acy1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            acy1.a(acw.c, agv.a(s));
            return false;
        }
_L10:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s = acy.a.b;
_L9:
        acy1.a(s);
        return flag;
        s = acy.a.c;
          goto _L9
_L4:
        flag = false;
        if (true) goto _L10; else goto _L2
_L2:
        return false;
    }
}
