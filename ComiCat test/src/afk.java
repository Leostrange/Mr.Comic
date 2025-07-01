// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.res.Resources;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.Window;
import meanlabs.comicreader.ReaderActivity;

public abstract class afk
    implements android.support.v7.app.ActionBar.OnMenuVisibilityListener
{
    static final class a extends afk
    {

        protected final void a()
        {
        }

        protected final void a(boolean flag)
        {
            a(flag);
            int i = d.getSystemUiVisibility();
            d.setSystemUiVisibility(i & -3);
        }

        protected final int b()
        {
            return 0x7f020058;
        }

        protected final void c()
        {
            c();
            d.setSystemUiVisibility(4098);
        }

        a(ReaderActivity readeractivity)
        {
            super(readeractivity);
        }
    }

    static final class b extends afk
        implements android.view.View.OnSystemUiVisibilityChangeListener
    {

        protected final void a()
        {
            d.setOnSystemUiVisibilityChangeListener(this);
        }

        protected final int b()
        {
            return 0x7f020058;
        }

        protected final void c()
        {
            c();
            d.setSystemUiVisibility(1);
        }

        public final void onSystemUiVisibilityChange(int i)
        {
            int j = e;
            e = i;
            if (((j ^ i) & 1) != 0 && (i & 1) == 0)
            {
                a(false);
                a(5000);
            }
        }

        b(ReaderActivity readeractivity)
        {
            super(readeractivity);
        }
    }

    static final class c extends afk
    {

        protected final void a()
        {
            c.addOnMenuVisibilityListener(this);
        }

        protected final int b()
        {
            return 0x7f0200b3;
        }

        c(ReaderActivity readeractivity)
        {
            super(readeractivity);
        }
    }


    Runnable a;
    protected ReaderActivity b;
    protected ActionBar c;
    protected View d;
    protected int e;

    afk(ReaderActivity readeractivity)
    {
        a = new Runnable() {

            final afk a;

            public final void run()
            {
                a.c();
            }

            
            {
                a = afk.this;
                super();
            }
        };
        b = readeractivity;
        int i;
        try
        {
            readeractivity = b.getWindow();
        }
        // Misplaced declaration of an exception variable
        catch (ReaderActivity readeractivity)
        {
            readeractivity.printStackTrace();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ReaderActivity readeractivity)
        {
            readeractivity.printStackTrace();
            return;
        }
        if (readeractivity == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        i = 1024;
        if (agv.i())
        {
            i = 0x8000400;
        }
        readeractivity.setFlags(i, i);
        c = b.getSupportActionBar();
        d = readeractivity.getDecorView();
        if (c != null)
        {
            c.setBackgroundDrawable(b.getResources().getDrawable(b()));
            c.setDisplayShowTitleEnabled(false);
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                c.setIcon(b.getResources().getDrawable(0x7f0200b1));
            }
            a(2000);
        }
        a();
    }

    public static afk a(ReaderActivity readeractivity)
    {
        if (agv.i())
        {
            return new a(readeractivity);
        }
        if (agv.h())
        {
            return new b(readeractivity);
        } else
        {
            return new c(readeractivity);
        }
    }

    protected abstract void a();

    protected final void a(int i)
    {
        d.postDelayed(a, i);
    }

    protected void a(boolean flag)
    {
        c.show();
    }

    protected abstract int b();

    protected void c()
    {
        c.hide();
    }

    public final void d()
    {
        if (c != null && !c.isShowing())
        {
            a(true);
            a(5000);
        }
    }

    public final void e()
    {
        c();
    }

    public void onMenuVisibilityChanged(boolean flag)
    {
        if (flag)
        {
            a(false);
            return;
        } else
        {
            c();
            return;
        }
    }
}
