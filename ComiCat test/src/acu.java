// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.cloud.DownloaderService;

public final class acu extends adj
{
    final class a
    {

        adc a;
        adg b;
        int c;
        final acu d;

        public a(adc adc1)
        {
            d = acu.this;
            super();
            c = 0;
            a = adc1;
            b = new adg(adc1);
        }
    }


    boolean a;
    boolean b;
    boolean c;
    boolean d;
    boolean e;
    acs f;
    String g;
    int h;
    List i;
    List j;
    List k;
    String l;
    ArrayList m;

    public acu(acs acs1)
    {
        boolean flag = false;
        super();
        h = 0;
        i = new ArrayList();
        j = new ArrayList();
        k = new ArrayList();
        m = new ArrayList();
        f = acs1;
        g = acs1.h();
        acs1 = aei.a().d;
        l = acs1.b("limit-cloud-scan-to");
        e = acs1.c("remove-local-copies");
        acs1 = acs1.b("cloud-include-secondry-formats");
        a = acs1.equals("prefConditionallyInclude");
        b = acs1.equals("prefAlwaysInclude");
        if (l.length() > 0)
        {
            flag = true;
        }
        d = flag;
        if (d)
        {
            l = (new StringBuilder()).append(File.separator).append(l).toString();
        }
        if (a && (!f.l() || d))
        {
            b = true;
        }
        c = f.n();
    }

    private void a(adc adc1, boolean flag)
    {
        List list = f.a(adc1);
        if (list == null || list.size() <= 0) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L3:
        boolean flag1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        adc adc2 = (adc)iterator.next();
        if (adc2.e() && (!flag || aib.a(adc2.b(), l)))
        {
            a(adc2, false);
            continue; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!adc2.d())
        {
            break MISSING_BLOCK_LABEL_439;
        }
        String s = adc2.b();
        Object obj = new File((new StringBuilder()).append(g).append(s).toString());
        if (((File) (obj)).exists() && ((File) (obj)).length() != adc2.f())
        {
            agz.a(((File) (obj)));
        }
        String s1 = agv.a(adc2.a().toLowerCase());
        if (b)
        {
            obj = afa.l();
        } else
        {
            obj = afa.j();
        }
        if (agv.a(((String []) (obj)), s1) != -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1 || !b && a && aib.a(s, "comic") && agv.a(afa.k(), s1) != -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_439;
        }
        i.add(new a(adc2));
        flag1 = true;
_L4:
        if (flag1 && (m.size() == 0 || !((aem)m.get(m.size() - 1)).j.equals(adc1.b())))
        {
            obj = aem.a(adc1.b());
            if (((aem) (obj)).b.length() == 0)
            {
                obj.b = adc1.a().trim();
                if (((aem) (obj)).b.length() == 0)
                {
                    obj.b = f.c();
                }
            }
            ((aem) (obj)).f.a(2, true);
            obj.c = f.a();
            m.add(obj);
        }
        if (true) goto _L3; else goto _L2
_L2:
        return;
        flag1 = false;
          goto _L4
    }

    private void e()
    {
        boolean flag1 = aei.a().d.c("maintain_download_history");
        aep aep1;
        Iterator iterator;
        int i1;
        if (f.m().equals("prefAddAsPaused"))
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        aep1 = aei.a().h;
        iterator = j.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            String s = a1.a.c();
            int j1 = f.a();
            boolean flag;
            if (flag1 && aep1.c(s, j1, 1) || aep1.c(s, j1, 2))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                if (aei.a().f.a(a1.a.c()) != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    DownloaderService.a().a(s, j1, a1.a.b(), (int)a1.a.f(), a1.a.g(), a1.c, i1);
                }
            }
        } while (true);
    }

    public final boolean a()
    {
        boolean flag;
        flag = false;
        n.a(ComicReaderApp.a().getString(0x7f060098), 0);
        Object obj = f.j();
        if (obj == null) goto _L2; else goto _L1
_L1:
        n.a(ComicReaderApp.a().getString(0x7f060200), 20);
        aek aek1;
        ArrayList arraylist;
        String s;
        Object obj1;
        Iterator iterator;
        a a1;
        String s1;
        Iterator iterator1;
        aeq aeq1;
        int i1;
        if (d && f.l())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(((adc) (obj)), flag);
        n.a(ComicReaderApp.a().getString(0x7f0601c8), 80);
        aek1 = aei.a().b;
        arraylist = new ArrayList();
        obj = ael.a(f.a());
        s = f.h();
        obj1 = new ArrayList();
        iterator = i.iterator();
_L6:
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        a1 = (a)iterator.next();
        s1 = agp.b(s, a1.a.b());
        iterator1 = aek1.f().iterator();
_L8:
        if (!iterator1.hasNext()) goto _L6; else goto _L5
_L5:
        aeq1 = (aeq)iterator1.next();
        if (!s1.equalsIgnoreCase(aeq1.d)) goto _L8; else goto _L7
_L7:
        if (aeq1.g != f.a())
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        int j1;
        if (aeq1.d() && aeq1.f.length() != 0)
        {
            j1 = 0;
        } else
        {
            j1 = 1;
        }
          goto _L9
_L39:
        aeq1.g = f.a();
        aeq1.h.a(8);
        aeq1.h.a(16);
        aeq1.e = a1.a.b();
        aeq1.f = a1.b.toString();
        aek.e(aeq1);
        if (i1 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        try
        {
            ((ArrayList) (obj1)).add(a1);
            break; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            agt.a(((Exception) (obj)));
            flag = false;
        }
_L2:
        obj = n;
        Exception exception;
        Object obj2;
        Object obj3;
        Object obj4;
        String s2;
        File file;
        if (flag)
        {
            i1 = 0x7f060096;
        } else
        {
            i1 = 0x7f0600f2;
        }
        ((adj.a) (obj)).a(ComicReaderApp.a().getString(i1), 100);
        return flag;
_L4:
        i.removeAll(((java.util.Collection) (obj1)));
        obj1 = ((List) (obj)).iterator();
_L13:
        if (!((Iterator) (obj1)).hasNext()) goto _L11; else goto _L10
_L10:
        obj2 = (aeq)((Iterator) (obj1)).next();
        if (!((aeq) (obj2)).d() && !e) goto _L13; else goto _L12
_L12:
        obj3 = i.iterator();
_L17:
        if (!((Iterator) (obj3)).hasNext()) goto _L15; else goto _L14
_L14:
        if (!((a)((Iterator) (obj3)).next()).b.toString().equalsIgnoreCase(((aeq) (obj2)).f)) goto _L17; else goto _L16
_L16:
        i1 = 1;
_L38:
        if (i1 != 0) goto _L13; else goto _L18
_L18:
        k.add(obj2);
          goto _L13
_L11:
        obj1 = i.iterator();
_L30:
        if (!((Iterator) (obj1)).hasNext()) goto _L20; else goto _L19
_L19:
        obj2 = (a)((Iterator) (obj1)).next();
        obj4 = ((List) (obj)).iterator();
_L24:
        if (!((Iterator) (obj4)).hasNext()) goto _L22; else goto _L21
_L21:
        obj3 = (aeq)((Iterator) (obj4)).next();
        if (!((a) (obj2)).b.toString().equalsIgnoreCase(((aeq) (obj3)).f)) goto _L24; else goto _L23
_L23:
        if (((aeq) (obj3)).e.equalsIgnoreCase(((a) (obj2)).a.b())) goto _L26; else goto _L25
_L25:
        obj3.e = ((a) (obj2)).a.b();
        obj3.c = afa.a(((a) (obj2)).a.a());
        if (!((aeq) (obj3)).g()) goto _L28; else goto _L27
_L27:
        obj4 = new File(((aeq) (obj3)).d);
        s2 = agp.b(f.h(), ((aeq) (obj3)).e);
        file = new File(s2);
        file.getParentFile().mkdirs();
        if (((File) (obj4)).renameTo(file))
        {
            obj3.d = s2;
        }
_L31:
        aek.e(((aeq) (obj3)));
          goto _L26
_L37:
        if (i1 == 0) goto _L30; else goto _L29
_L29:
        arraylist.add(obj2);
          goto _L30
_L28:
        obj3.d = ((aeq) (obj3)).e;
          goto _L31
_L20:
        n.a(ComicReaderApp.a().getString(0x7f0601c8), 50);
        obj1 = arraylist.iterator();
        i1 = 0;
_L40:
        if (!((Iterator) (obj1)).hasNext())
        {
            break MISSING_BLOCK_LABEL_1310;
        }
        obj2 = (a)((Iterator) (obj1)).next();
        j1 = agm.c.b;
        n.a(ComicReaderApp.a().getString(0x7f060124, new Object[] {
            ((a) (obj2)).a.a()
        }), (i1 * 40) / arraylist.size() + 50);
        obj = new File(agp.b(s, ((a) (obj2)).a.b()));
        if (!((File) (obj)).exists()) goto _L33; else goto _L32
_L32:
        j1 = agm.a(((File) (obj)), ((a) (obj2)).a.a(), f.a(), ((a) (obj2)).a).a;
_L34:
        if (j1 != agm.c.a)
        {
            h = h + 1;
        }
        break MISSING_BLOCK_LABEL_1301;
_L33:
        if (!c)
        {
            break MISSING_BLOCK_LABEL_1114;
        }
        obj = ((a) (obj2)).a;
        obj3 = f.a;
        obj = adh.a(((adc) (obj)).c(), ((adc) (obj)).b(), ((adc) (obj)).f(), ((aev) (obj3)), true, null);
_L35:
        obj3 = agm.a(((File) (obj)), ((a) (obj2)).a.a(), f.a(), ((a) (obj2)).a);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1071;
        }
        agz.a(((File) (obj)));
        if (((agm.a) (obj3)).a == agm.c.a)
        {
            obj2.c = ((agm.a) (obj3)).b;
            j.add(obj2);
        }
        j1 = ((agm.a) (obj3)).a;
          goto _L34
        obj = null;
          goto _L35
        exception;
        Log.e("Sync Catalog", (new StringBuilder("Error adding comic: ")).append(((a) (obj2)).b).toString(), exception);
        break MISSING_BLOCK_LABEL_1301;
_L36:
        for (; i1 >= k.size(); i1 = 0)
        {
            break MISSING_BLOCK_LABEL_1198;
        }

        adh.a((aeq)k.get(i1), true, e, aek1);
        i1++;
          goto _L36
        aek1.d();
        exception = aei.a().c;
        exception.a(m, f.a(), false, c);
        exception.d();
        if (!f.m().equals("prefDontDownload"))
        {
            e();
        }
        flag = true;
          goto _L2
_L22:
        i1 = 1;
          goto _L37
_L15:
        i1 = 0;
          goto _L38
_L9:
        if (i1 == 0 && j1 == 0) goto _L8; else goto _L39
_L26:
        i1 = 0;
          goto _L37
        i1++;
          goto _L40
    }

    public final int b()
    {
        return j.size();
    }

    public final int c()
    {
        return h;
    }

    public final int d()
    {
        return k.size();
    }
}
