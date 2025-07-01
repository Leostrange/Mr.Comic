// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.radaee.pdf.DIB;
import com.radaee.pdf.Document;
import com.radaee.pdf.Matrix;
import com.radaee.pdf.Page;
import java.util.Timer;
import java.util.TimerTask;

public final class ty extends Thread
{

    public Handler a;
    private Handler b;
    private Timer c;
    private TimerTask d;
    private boolean e;
    private boolean f;

    static Handler a(ty ty1)
    {
        return ty1.b;
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (!e) goto _L2; else goto _L1
_L1:
        e = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception1;
        try
        {
            f = true;
            wait();
            f = false;
        }
        catch (Exception exception) { }
        finally
        {
            this;
        }
        if (true) goto _L4; else goto _L3
_L3:
        JVM INSTR monitorexit ;
        throw exception1;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        if (!f) goto _L2; else goto _L1
_L1:
        notify();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        e = true;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected final void a(tu tu1)
    {
        boolean flag = true;
        if (!tu1.k)
        {
            tu1.k = true;
            tu1.j = 0;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            a.sendMessage(a.obtainMessage(0, tu1));
        }
    }

    protected final void b(tu tu1)
    {
        boolean flag = false;
        if (tu1.k)
        {
            tu1.k = false;
            if (tu1.j <= 0)
            {
                tu1.j = -1;
            }
            if (tu1.b != null)
            {
                tu1.b.b();
            }
            flag = true;
        }
        if (flag)
        {
            a.sendMessage(a.obtainMessage(1, tu1));
        }
    }

    public final void destroy()
    {
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        try
        {
            c.cancel();
            d.cancel();
            c = null;
            d = null;
            a.sendEmptyMessage(100);
            join();
            a = null;
            b = null;
        }
        catch (InterruptedException interruptedexception) { }
        finally
        {
            this;
        }
        return;
        throw exception;
    }

    public final void run()
    {
        Looper.prepare();
        a = new Handler(Looper.myLooper()) {

            final ty a;

            public final void handleMessage(Message message)
            {
                if (message == null) goto _L2; else goto _L1
_L1:
                if (message.what != 0) goto _L4; else goto _L3
_L3:
                Object obj;
                DIB dib;
                obj = (tu)message.obj;
                dib = new DIB();
                dib.a(((tu) (obj)).g, ((tu) (obj)).h);
                if (((tu) (obj)).j >= 0) goto _L6; else goto _L5
_L5:
                dib.a();
_L14:
                ty.a(a).sendMessage(ty.a(a).obtainMessage(0, (tu)message.obj));
                message.obj = null;
                super.handleMessage(message);
_L12:
                return;
_L6:
                obj.b = ((tu) (obj)).a.a(((tu) (obj)).c);
                ((tu) (obj)).b.a(dib);
                obj.i = dib;
                if (((tu) (obj)).j >= 0)
                {
                    Matrix matrix2 = new Matrix(((tu) (obj)).d, -((tu) (obj)).d, -((tu) (obj)).e, ((tu) (obj)).a.c(((tu) (obj)).c) * ((tu) (obj)).d - (float)((tu) (obj)).f);
                    ((tu) (obj)).b.a(dib, matrix2);
                    matrix2.a();
                    if (((tu) (obj)).j >= 0)
                    {
                        obj.j = 1;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L4:
                int i;
                if (message.what == 1)
                {
                    ((tu)message.obj).b();
                    message.obj = null;
                    super.handleMessage(message);
                    return;
                }
                if (message.what != 2)
                {
                    break MISSING_BLOCK_LABEL_805;
                }
                obj = (tv)message.obj;
                i = ((tv) (obj)).h.c();
                if (((tv) (obj)).j >= 0)
                {
                    break MISSING_BLOCK_LABEL_553;
                }
_L9:
                if ((((tv) (obj)).g == null || ((tv) (obj)).e < 0) && ((tv) (obj)).d >= 0 && !((tv) (obj)).k) goto _L8; else goto _L7
_L7:
                if (((tv) (obj)).k || ((tv) (obj)).d < 0)
                {
                    if (((tv) (obj)).i != null)
                    {
                        ((tv) (obj)).i.b();
                        obj.i = null;
                    }
                    if (((tv) (obj)).g != null)
                    {
                        ((tv) (obj)).g.a();
                        obj.g = null;
                    }
                    i = 0;
                } else
                {
                    i = 1;
                }
_L10:
                ((tv) (obj)).a();
                ty.a(a).sendMessage(ty.a(a).obtainMessage(1, i, 0));
                message.obj = null;
                super.handleMessage(message);
                return;
_L8:
                if (((tv) (obj)).g == null)
                {
                    if (((tv) (obj)).d >= i)
                    {
                        obj.d = i - 1;
                    }
                    obj.g = ((tv) (obj)).h.a(((tv) (obj)).d);
                    ((tv) (obj)).g.c();
                    obj.i = ((tv) (obj)).g.a(((tv) (obj)).a, ((tv) (obj)).b, ((tv) (obj)).c);
                    if (((tv) (obj)).i == null)
                    {
                        obj.f = 0;
                    } else
                    {
                        obj.f = ((tv) (obj)).i.a();
                    }
                    obj.e = ((tv) (obj)).f - 1;
                }
                if (((tv) (obj)).e < 0)
                {
                    if (((tv) (obj)).i != null)
                    {
                        ((tv) (obj)).i.b();
                        obj.i = null;
                    }
                    ((tv) (obj)).g.a();
                    obj.g = null;
                    obj.f = 0;
                    obj.d = ((tv) (obj)).d - 1;
                }
                  goto _L9
                while ((((tv) (obj)).g == null || ((tv) (obj)).e >= ((tv) (obj)).f) && ((tv) (obj)).d < i && !((tv) (obj)).k) 
                {
                    if (((tv) (obj)).g == null)
                    {
                        if (((tv) (obj)).d < 0)
                        {
                            obj.d = 0;
                        }
                        obj.g = ((tv) (obj)).h.a(((tv) (obj)).d);
                        ((tv) (obj)).g.c();
                        obj.i = ((tv) (obj)).g.a(((tv) (obj)).a, ((tv) (obj)).b, ((tv) (obj)).c);
                        if (((tv) (obj)).i == null)
                        {
                            obj.f = 0;
                        } else
                        {
                            obj.f = ((tv) (obj)).i.a();
                        }
                        obj.e = 0;
                    }
                    if (((tv) (obj)).e >= ((tv) (obj)).f)
                    {
                        if (((tv) (obj)).i != null)
                        {
                            ((tv) (obj)).i.b();
                            obj.i = null;
                        }
                        ((tv) (obj)).g.a();
                        obj.g = null;
                        obj.f = 0;
                        obj.d = ((tv) (obj)).d + 1;
                    }
                }
                if (((tv) (obj)).k || ((tv) (obj)).d >= i)
                {
                    if (((tv) (obj)).i != null)
                    {
                        ((tv) (obj)).i.b();
                        obj.i = null;
                    }
                    if (((tv) (obj)).g != null)
                    {
                        ((tv) (obj)).g.a();
                        obj.g = null;
                    }
                    i = 0;
                } else
                {
                    i = 1;
                }
                  goto _L10
                if (message.what == 3)
                {
                    message = (tx.a)message.obj;
                    if (((tx.a) (message)).g.f == 0)
                    {
                        Matrix matrix = new Matrix(((tx.a) (message)).g.c, -((tx.a) (message)).g.c, 0.0F, ((tx.a) (message)).g.a.c(((tx.a) (message)).g.e) * ((tx.a) (message)).g.c - (float)((tx.a) (message)).b);
                        message.a(((tx.a) (message)).g.a, ((tx.a) (message)).g.e, matrix, ((tx.a) (message)).g.d, ((tx.a) (message)).c);
                        matrix.a();
                        return;
                    } else
                    {
                        Matrix matrix1 = new Matrix(((tx.a) (message)).g.c, -((tx.a) (message)).g.c, -((tx.a) (message)).a, ((tx.a) (message)).g.d);
                        message.a(((tx.a) (message)).g.a, ((tx.a) (message)).g.e, matrix1, ((tx.a) (message)).c, ((tx.a) (message)).g.d);
                        matrix1.a();
                        return;
                    }
                }
                if (message.what == 4)
                {
                    message = (tx.a)message.obj;
                    if (((tx.a) (message)).e != null)
                    {
                        ((tx.a) (message)).e.a();
                    }
                    if (((tx.a) (message)).f != null)
                    {
                        ((tx.a) (message)).f.recycle();
                    }
                    message.e = null;
                    message.f = null;
                    return;
                }
                if (message.what != 100) goto _L12; else goto _L11
_L11:
                super.handleMessage(message);
_L2:
                getLooper().quit();
                return;
                if (true) goto _L14; else goto _L13
_L13:
            }

            
            {
                a = ty.this;
                super(looper);
            }
        };
        b();
        Looper.loop();
    }

    public final void start()
    {
        super.start();
        a();
        c = new Timer();
        d = new TimerTask() {

            final ty a;

            public final void run()
            {
                ty.a(a).sendEmptyMessage(100);
            }

            
            {
                a = ty.this;
                super();
            }
        };
        c.schedule(d, 100L, 100L);
    }
}
