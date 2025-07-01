// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.ui.ThumbnailItemView;

public final class agb extends afm
{

    private static final int A = (int)ComicReaderApp.a().getResources().getDimension(0x7f070092);
    private static final int B = (int)ComicReaderApp.a().getResources().getDimension(0x7f070094);
    private static final int q = (int)ComicReaderApp.a().getResources().getDimension(0x7f07008f);
    private static final int r = (int)ComicReaderApp.a().getResources().getDimension(0x7f07000e);
    private static final int s = (int)ComicReaderApp.a().getResources().getDimension(0x7f07000f);
    private static final int t = (int)ComicReaderApp.a().getResources().getDimension(0x7f070090);
    private static final int u = (int)ComicReaderApp.a().getResources().getDimension(0x7f070092);
    private static final int v = (int)ComicReaderApp.a().getResources().getDimension(0x7f070094);
    private static final int w = (int)ComicReaderApp.a().getResources().getDimension(0x7f070091);
    private static final int x = (int)ComicReaderApp.a().getResources().getDimension(0x7f070093);
    private static final int y = (int)ComicReaderApp.a().getResources().getDimension(0x7f070093);
    private static final int z = (int)ComicReaderApp.a().getResources().getDimension(0x7f070090);
    private GridView d;
    private String e;
    private boolean f;
    private BitmapDrawable g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private Drawable l;
    private int m;
    private int n;
    private int o;
    private int p;

    public agb(Context context, Activity activity, List list, GridView gridview, Drawable drawable)
    {
        super(context, activity, list);
        j = false;
        k = false;
        m = 0x7f02009a;
        n = 0x7f0200a0;
        d = gridview;
        l = drawable;
        a();
    }

    private int b()
    {
        if (k)
        {
            if (f)
            {
                return z;
            } else
            {
                return w;
            }
        }
        if (f)
        {
            return t;
        } else
        {
            return q;
        }
    }

    public final void a()
    {
        boolean flag1 = false;
        e = aei.a().d.b("gridview-theme");
        f = aei.a().d.c("use-large-thumbnails");
        Object obj;
        int i1;
        int j1;
        int k1;
        int l1;
        boolean flag;
        if (!"prefBlack".equals(e))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        k = "prefMaterial".equals(e);
        obj = c.getResources().getDisplayMetrics();
        k1 = (int)((float)((DisplayMetrics) (obj)).widthPixels / ((DisplayMetrics) (obj)).scaledDensity) - 10;
        l1 = (int)((float)((DisplayMetrics) (obj)).heightPixels / ((DisplayMetrics) (obj)).scaledDensity);
        if (k)
        {
            i1 = A;
        } else
        {
            i1 = u;
        }
        if (k)
        {
            j1 = x;
        } else
        {
            j1 = r;
        }
        if (f)
        {
            j1 = i1;
        }
        i1 = j1;
        if (b.size() > 0)
        {
            i1 = j1;
            if (((aft)b.get(0)).k() == aft.a.c)
            {
                Object obj1;
                if (k)
                {
                    i1 = B;
                } else
                {
                    i1 = v;
                }
                if (k)
                {
                    j1 = y;
                } else
                {
                    j1 = s;
                }
                if (!f)
                {
                    i1 = j1;
                }
            }
        }
        h = (int)((float)i1 / ((DisplayMetrics) (obj)).scaledDensity);
        i = (int)((float)b() / ((DisplayMetrics) (obj)).scaledDensity);
        (new StringBuilder("Device Width is: ")).append(k1).append(", column width is: ").append(h);
        o = k1 / h;
        p = (int)Math.ceil((double)(l1 - 70) / (double)i);
        d.setNumColumns(o);
        obj = d;
        if (b.size() > o * 2 * p)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((GridView) (obj)).setFastScrollEnabled(flag);
        if (j)
        {
            if (!k)
            {
                if ("prefWoodenShelf".equals(e))
                {
                    m = 0x7f02009a;
                    n = 0x7f0200a0;
                    if (f)
                    {
                        i1 = 0x7f0200b5;
                    } else
                    {
                        i1 = 0x7f0200b4;
                    }
                } else
                if ("prefSteelMesh".equals(e))
                {
                    m = 0x7f02009d;
                    n = 0x7f0200a2;
                    if (f)
                    {
                        i1 = 0x7f0200aa;
                    } else
                    {
                        i1 = 0x7f0200a9;
                    }
                } else
                if ("prefTitanium".equals(e))
                {
                    m = 0x7f02009f;
                    n = 0x7f0200a2;
                    if (f)
                    {
                        i1 = 0x7f0200ae;
                    } else
                    {
                        i1 = 0x7f0200ad;
                    }
                } else
                if ("prefCoolBlue".equals(e))
                {
                    m = 0x7f02009b;
                    n = 0x7f0200a1;
                    if (f)
                    {
                        i1 = 0x7f020072;
                    } else
                    {
                        i1 = 0x7f020071;
                    }
                } else
                if ("prefBlackWood".equals(e))
                {
                    m = 0x7f02009e;
                    n = 0x7f0200a2;
                    if (f)
                    {
                        i1 = 0x7f02005a;
                    } else
                    {
                        i1 = 0x7f020059;
                    }
                } else
                {
                    m = 0x7f02009a;
                    n = 0x7f0200a0;
                    if (f)
                    {
                        i1 = 0x7f0200b5;
                    } else
                    {
                        i1 = 0x7f0200b4;
                    }
                }
                if (i1 != -1)
                {
                    obj = (BitmapDrawable)c.getResources().getDrawable(i1);
                    i1 = ((BitmapDrawable) (obj)).getIntrinsicHeight();
                    obj1 = new Rect(0, 0, (int)Math.round((double)c.getResources().getDisplayMetrics().widthPixels / (double)o / (double)((BitmapDrawable) (obj)).getIntrinsicWidth()) * ((BitmapDrawable) (obj)).getIntrinsicWidth(), i1);
                    ((BitmapDrawable) (obj)).setTileModeX(android.graphics.Shader.TileMode.REPEAT);
                    ((BitmapDrawable) (obj)).setBounds(((Rect) (obj1)));
                    obj1 = Bitmap.createBitmap(((Rect) (obj1)).width(), ((Rect) (obj1)).height(), ((BitmapDrawable) (obj)).getBitmap().getConfig());
                    ((BitmapDrawable) (obj)).draw(new Canvas(((Bitmap) (obj1))));
                    obj = new BitmapDrawable(((Bitmap) (obj1))) {

                        final agb a;

                        public final int getMinimumHeight()
                        {
                            return 0;
                        }

                        public final int getMinimumWidth()
                        {
                            return 0;
                        }

            
            {
                a = agb.this;
                super(bitmap);
            }
                    };
                    ((BitmapDrawable) (obj)).setGravity(119);
                } else
                {
                    obj = null;
                }
                g = ((BitmapDrawable) (obj));
                flag = flag1;
                if (g != null)
                {
                    flag = true;
                }
                j = flag;
                d.setSelector(0x7f0200a4);
                d.setDrawSelectorOnTop(true);
            }
        } else
        if (l != null)
        {
            d.setSelector(l);
            d.setDrawSelectorOnTop(false);
            return;
        }
    }

    public final boolean areAllItemsEnabled()
    {
        return false;
    }

    public final int getCount()
    {
        int j1 = 0;
        int k1 = super.getCount();
        if (j)
        {
            int i1;
            if (o > 0)
            {
                i1 = k1 % o;
            } else
            {
                i1 = 0;
            }
            if (i1 > 0)
            {
                j1 = o - i1;
            }
            return Math.max(o * p, j1 + k1);
        } else
        {
            return k1;
        }
    }

    public final View getView(int i1, View view, ViewGroup viewgroup)
    {
        int j1;
        j1 = 0x7f030056;
        viewgroup = view;
        if (view != null) goto _L2; else goto _L1
_L1:
        view = c.getLayoutInflater();
        if (!k) goto _L4; else goto _L3
_L3:
        agc agc1;
        if (!f)
        {
            j1 = 0x7f030057;
        }
        view = view.inflate(j1, null);
_L6:
        ((ThumbnailItemView)view).setHeight(b());
        view.setTag(new agc(view, m, n, f, k));
        viewgroup = view;
_L2:
        agc1 = (agc)viewgroup.getTag();
        if (i1 < super.getCount())
        {
            view = (aft)b.get(i1);
        } else
        {
            view = null;
        }
        agc1.a(view);
        return viewgroup;
_L4:
        if (!f)
        {
            j1 = 0x7f030058;
        }
        viewgroup = view.inflate(j1, null);
        view = viewgroup;
        if (j)
        {
            viewgroup.setBackgroundDrawable(g);
            view = viewgroup;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final boolean isEnabled(int i1)
    {
        return i1 < super.getCount();
    }

}
