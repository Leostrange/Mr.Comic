// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import meanlabs.comicreader.ThumbnailService;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public final class acj extends AsyncTask
{

    Queue a;
    Queue b;
    boolean c;
    int d;

    public acj()
    {
        c = false;
        d = 0;
        c = true;
    }

    private transient Void a()
    {
        if (c)
        {
            a = new LinkedList();
            b = new LinkedList();
            boolean flag3 = aei.a().d.c("create-thumbnails-in-background");
            boolean flag4 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-cloud-thumbnails"));
            boolean flag5 = "prefCreateThumbsInBackground".equals(aei.a().d.b("create-smb-sthumbnails"));
            boolean flag;
            boolean flag1;
            if (flag4 || flag5)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (act.b().c.size() != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag3 || flag && flag1)
            {
                Iterator iterator = aei.a().b.f().iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    aeq aeq1 = (aeq)iterator.next();
                    (new StringBuilder("Checking Comic: ")).append(aeq1.d);
                    boolean flag6 = aeq1.d();
                    boolean flag2;
                    if (flag6 && flag)
                    {
                        if (act.b().a(aeq1.g).b() == "smb")
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        if (flag1 && flag5 || !flag1 && flag4)
                        {
                            flag2 = true;
                        } else
                        {
                            flag2 = false;
                        }
                    } else
                    {
                        flag2 = flag3;
                    }
                    if (flag2 && !aeq1.h.c(8192) && !ahd.c(aeq1.a))
                    {
                        (new StringBuilder("Adding Comic to processing list: ")).append(aeq1.d);
                        if (flag6)
                        {
                            b.add(Integer.valueOf(aeq1.a));
                        } else
                        {
                            a.add(Integer.valueOf(aeq1.a));
                        }
                    }
                } while (true);
            }
        }
_L7:
        Object obj;
        java.io.File file;
        afa afa1;
        aek aek2;
        int i;
        try
        {
            i = b();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_639;
        }
        obj = aei.a().b.a(i);
        if (obj == null) goto _L2; else goto _L1
_L1:
        (new StringBuilder("Processing Comic: ")).append(i).append(", ").append(((aeq) (obj)).d);
        if (ahd.c(i)) goto _L2; else goto _L3
_L3:
        if (isCancelled())
        {
            break MISSING_BLOCK_LABEL_639;
        }
        file = agp.a(((aeq) (obj)), true, null);
        if (file != null) goto _L5; else goto _L4
_L4:
        (new StringBuilder("Could not get file ref for: ")).append(((aeq) (obj)).d).append(", skipping.");
_L2:
        if (!isCancelled()) goto _L7; else goto _L6
_L6:
        return null;
_L5:
        afa1 = new afa(file, true);
        if (!afa1.c()) goto _L9; else goto _L8
_L8:
        (new StringBuilder("Got the comic: ")).append(((aeq) (obj)).d).append(", creating thumbnail.");
        obj.b = afa1.d();
        aek2 = aei.a().b;
        aek.f(((aeq) (obj)));
        if (!agm.a(afa1, i)) goto _L11; else goto _L10
_L10:
        obj = ael.b(((aeq) (obj)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_552;
        }
        agm.a(((aem) (obj)), 0, 0);
        d = d + 1;
        publishProgress(new Void[] {
            null
        });
_L11:
        agz.a(file);
          goto _L2
_L9:
        aek aek1;
        char c1;
        if (((aeq) (obj)).h.c(4096))
        {
            c1 = '\u2000';
        } else
        {
            c1 = '\u1000';
        }
        ((aeq) (obj)).h.a(c1);
        aek1 = aei.a().b;
        aek.b(((aeq) (obj)));
          goto _L11
        return null;
    }

    private int b()
    {
        Integer integer;
        Integer integer1;
        Integer integer2;
        integer2 = Integer.valueOf(-1);
        integer = integer2;
        integer1 = integer2;
        if (a.isEmpty())
        {
            break MISSING_BLOCK_LABEL_36;
        }
        integer1 = integer2;
        integer = (Integer)a.remove();
        integer1 = integer;
        if (integer.intValue() != -1)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        integer1 = integer;
        if (b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        integer1 = integer;
        if (ConnectivityReceiver.a().c() == meanlabs.comicreader.utils.ConnectivityReceiver.a.a)
        {
            integer1 = integer;
            try
            {
                integer = (Integer)b.remove();
            }
            catch (Exception exception)
            {
                integer = integer1;
                exception.printStackTrace();
            }
        }
        return integer.intValue();
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        agm.a(false);
        obj = ThumbnailService.a();
        boolean flag = isCancelled();
        ((ThumbnailService) (obj)).b.lock();
        if (this == ((ThumbnailService) (obj)).a)
        {
            obj.a = null;
            if (flag)
            {
                ((ThumbnailService) (obj)).a(false);
            }
        }
        ((ThumbnailService) (obj)).b.unlock();
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        if ((d & 1) == 0)
        {
            agm.a(false);
        }
    }
}
