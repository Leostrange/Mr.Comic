// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import meanlabs.comicreader.ComicReaderApp;

public final class agc
{

    static final String k = ComicReaderApp.a().getString(0x7f060108);
    static final String l = ComicReaderApp.a().getString(0x7f060106);
    static final String m = ComicReaderApp.a().getString(0x7f060089);
    static final String n = ComicReaderApp.a().getString(0x7f060090);
    protected aft a;
    protected View b;
    protected TextView c;
    protected ImageView d;
    protected ImageView e;
    protected ImageView f;
    protected ImageView g;
    protected ImageView h;
    protected ImageView i;
    protected TextView j;
    private int o;
    private int p;
    private boolean q;
    private boolean r;

    public agc()
    {
    }

    public agc(View view, int i1, int j1, boolean flag, boolean flag1)
    {
        o = i1;
        p = j1;
        q = flag;
        r = flag1;
        b = view.findViewById(0x7f0c00f6);
        c = (TextView)view.findViewById(0x7f0c00d8);
        d = (ImageView)view.findViewById(0x7f0c00d7);
        e = (ImageView)view.findViewById(0x7f0c00f0);
        f = (ImageView)view.findViewById(0x7f0c00f3);
        g = (ImageView)view.findViewById(0x7f0c00f4);
        h = (ImageView)view.findViewById(0x7f0c00f1);
        i = (ImageView)view.findViewById(0x7f0c00f2);
        j = (TextView)view.findViewById(0x7f0c00f5);
        if (j != null)
        {
            j.setBackgroundResource(p);
        }
    }

    public final aft a()
    {
        return a;
    }

    public final void a(aft aft1)
    {
        byte byte0;
        boolean flag;
        int i2;
        boolean flag1;
        i2 = 0x7f020096;
        flag1 = true;
        flag = false;
        byte0 = 4;
        a = aft1;
        if (a == null) goto _L2; else goto _L1
_L1:
        d.setVisibility(0);
        c.setVisibility(0);
        c.setText(a.l());
        int i1;
        if (a.k() == aft.a.b)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            aft1 = h;
        } else
        {
            aft1 = i;
        }
        aft1.setVisibility(4);
        if (i1 != 0)
        {
            aft1 = h;
        } else
        {
            aft1 = i;
        }
        if (a.d())
        {
            aft1.setVisibility(0);
            static final class _cls1
            {

                static final int a[];

                static 
                {
                    a = new int[aft.a.a().length];
                    try
                    {
                        a[aft.a.b - 1] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[aft.a.c - 1] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[aft.a.d - 1] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            if (i1 == 0 || !a.g())
            {
                aft aft2 = a;
                int j2 = 0x7f02006e;
                int l2 = aft2.e();
                i1 = j2;
                if (l2 != -1)
                {
                    acs acs1 = act.b().a(l2);
                    i1 = j2;
                    if (acs1 != null)
                    {
                        i1 = acs1.d();
                    }
                }
            } else
            {
                i1 = 0x7f02006f;
            }
            aft1.setImageResource(i1);
        } else
        {
            aft1.setVisibility(4);
        }
        if (a.k() != aft.a.c || a.j() >= 0) goto _L4; else goto _L3
_L3:
        a.j();
        JVM INSTR tableswitch -6 -2: default 260
    //                   -6 374
    //                   -5 362
    //                   -4 338
    //                   -3 350
    //                   -2 386;
           goto _L5 _L6 _L7 _L8 _L9 _L10
_L5:
        _cls1.a[a.k() - 1];
        JVM INSTR tableswitch 1 3: default 300
    //                   1 656
    //                   2 814
    //                   3 1185;
           goto _L11 _L12 _L13 _L14
_L11:
        return;
_L8:
        d.setImageResource(0x7f020079);
        continue; /* Loop/switch isn't completed */
_L9:
        d.setImageResource(0x7f020097);
        continue; /* Loop/switch isn't completed */
_L7:
        d.setImageResource(0x7f020099);
        continue; /* Loop/switch isn't completed */
_L6:
        d.setImageResource(0x7f02007a);
        continue; /* Loop/switch isn't completed */
_L10:
        d.setImageResource(0x7f020092);
        continue; /* Loop/switch isn't completed */
_L4:
        aft1 = ahd.a(a.j(), a.k(), q);
        d.setImageBitmap(aft1);
        if (r)
        {
            Object obj = new cy.a(aft1);
            int j1;
            if (((cy.a) (obj)).b != null)
            {
                if (((cy.a) (obj)).d <= 0)
                {
                    throw new IllegalArgumentException("Minimum dimension size for resizing should should be >= 1");
                }
                aft1 = ((cy.a) (obj)).b;
                j1 = ((cy.a) (obj)).d;
                int k2 = Math.max(aft1.getWidth(), aft1.getHeight());
                cw cw1;
                if (k2 > j1)
                {
                    float f1 = (float)j1 / (float)k2;
                    aft1 = Bitmap.createScaledBitmap(aft1, Math.round((float)aft1.getWidth() * f1), Math.round(f1 * (float)aft1.getHeight()), false);
                }
                cw1 = cw.a(aft1, ((cy.a) (obj)).c);
                if (aft1 != ((cy.a) (obj)).b)
                {
                    aft1.recycle();
                }
                aft1 = cw1.c;
            } else
            {
                aft1 = ((cy.a) (obj)).a;
            }
            if (((cy.a) (obj)).e == null)
            {
                obj.e = new cx();
            }
            ((cy.a) (obj)).e.a(aft1);
            obj = new cy(aft1, ((cy.a) (obj)).e, (byte)0);
            aft1 = b;
            obj = ((cy) (obj)).a.a();
            if (obj != null)
            {
                j1 = ((cy.c) (obj)).a;
            } else
            {
                j1 = 0x7f0b0043;
            }
            aft1.setBackgroundColor(j1);
        }
        continue; /* Loop/switch isn't completed */
_L12:
        aft1 = (aeq)a;
        if (e != null)
        {
            e.setVisibility(4);
        }
        ImageView imageview;
        int k1;
        if (a.o() || a.p())
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        imageview = g;
        if (k1 != 0)
        {
            byte0 = 0;
        } else
        {
            byte0 = 4;
        }
        imageview.setVisibility(byte0);
        if (k1 != 0)
        {
            ImageView imageview1 = g;
            if (a.o())
            {
                k1 = 0x7f020096;
            } else
            {
                k1 = 0x7f02006b;
            }
            imageview1.setImageResource(k1);
        }
        j.setVisibility(4);
        imageview1 = f;
        if (aft1.b())
        {
            k1 = ((flag) ? 1 : 0);
        } else
        {
            k1 = 4;
        }
        imageview1.setVisibility(k1);
        return;
_L13:
        if (e != null)
        {
            e.setVisibility(0);
            e.setImageResource(o);
        }
        boolean flag2 = agw.f();
        aem aem1 = (aem)a;
        int l1;
        if (flag2 && aem1.e > 0)
        {
            Object obj1 = (new StringBuilder()).append(String.valueOf(aem1.e)).append(" ");
            if (aem1.e == 1)
            {
                aft1 = k;
            } else
            {
                aft1 = l;
            }
            obj1 = ((StringBuilder) (obj1)).append(aft1).toString();
            aft1 = ((aft) (obj1));
            if (aem1.d > 0)
            {
                aft1 = (new StringBuilder()).append(((String) (obj1))).append(", ").toString();
                obj1 = (new StringBuilder()).append(aft1).append(String.valueOf(aem1.d)).append(" ");
                if (aem1.d == 1)
                {
                    aft1 = m;
                } else
                {
                    aft1 = n;
                }
                aft1 = ((StringBuilder) (obj1)).append(aft1).toString();
            }
        } else
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("").append(String.valueOf(aem1.d)).append(" ");
            if (aem1.d > 1)
            {
                aft1 = n;
            } else
            {
                aft1 = m;
            }
            aft1 = stringbuilder.append(aft1).toString();
        }
        l1 = ((flag1) ? 1 : 0);
        if (!a.o())
        {
            if (aem1.a(flag2))
            {
                l1 = ((flag1) ? 1 : 0);
            } else
            {
                l1 = 0;
            }
        }
        obj1 = g;
        if (l1 != 0)
        {
            byte0 = 0;
        }
        ((ImageView) (obj1)).setVisibility(byte0);
        if (l1 != 0)
        {
            obj1 = g;
            if (a.o())
            {
                l1 = i2;
            } else
            {
                l1 = 0x7f02006b;
            }
            ((ImageView) (obj1)).setImageResource(l1);
        }
        j.setVisibility(0);
        j.setText(aft1);
        return;
_L14:
        if (e == null) goto _L11; else goto _L15
_L15:
        e.setVisibility(0);
        return;
_L2:
        c.setVisibility(4);
        d.setVisibility(4);
        f.setVisibility(4);
        g.setVisibility(4);
        h.setVisibility(4);
        i.setVisibility(4);
        j.setVisibility(4);
        if (e == null) goto _L11; else goto _L16
_L16:
        e.setVisibility(4);
        return;
        if (true) goto _L5; else goto _L17
_L17:
    }

}
