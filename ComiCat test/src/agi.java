// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public final class agi extends agg
{

    public agi(ImageView imageview, int i)
    {
        super(imageview, 60, i);
    }

    private static void a(String s, Rect rect)
    {
        (new StringBuilder()).append(s).append(" is: ").append(rect.left).append(", ").append(rect.top).append(", ").append(rect.right).append(", ").append(rect.bottom);
    }

    public final void a(Canvas canvas)
    {
        if (c == agg.a.b)
        {
            (new StringBuilder("Current frame is: ")).append(g);
            double d = (double)g / (double)this.d;
            double d2 = 1.0D - d;
            Rect rect = new Rect((int)Math.round((double)j * d), 0, j, k);
            Rect rect2 = new Rect(0, 0, (int)Math.round(d * (double)l), m);
            Rect rect4 = new Rect(h.d, h.c, (int)Math.round((double)h.a * d2) + h.d, h.b + h.c);
            Rect rect6 = new Rect((int)Math.round(d2 * (double)i.a) + i.d, i.c, i.a + i.d, i.b + i.c);
            canvas.drawBitmap((Bitmap)a.get(), rect, rect4, null);
            a("Source Rect", rect);
            a("Source Viewport Rect", rect4);
            canvas.drawBitmap((Bitmap)b.get(), rect2, rect6, null);
            return;
        } else
        {
            (new StringBuilder("Current frame is: ")).append(g);
            double d1 = (double)g / (double)this.d;
            double d3 = 1.0D - d1;
            Rect rect1 = new Rect(0, 0, (int)Math.round((double)j * d3), k);
            Rect rect3 = new Rect((int)Math.round(d3 * (double)l), 0, l, m);
            Rect rect5 = new Rect((int)Math.round((double)h.a * d1) + h.d, h.c, h.a + h.d, h.b + h.c);
            Rect rect7 = new Rect(i.d, i.c, (int)Math.round(d1 * (double)i.a) + i.d, i.b + i.c);
            a("Source Rect", rect1);
            a("Source Viewport Rect", rect5);
            canvas.drawBitmap((Bitmap)a.get(), rect1, rect5, null);
            canvas.drawBitmap((Bitmap)b.get(), rect3, rect7, null);
            return;
        }
    }
}
