// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.radaee.pdf.Document;
import com.radaee.pdf.Matrix;
import com.radaee.pdf.Page;

public final class tx
{
    public final class a
    {

        int a;
        int b;
        int c;
        public int d;
        public Page e;
        Bitmap f;
        final tx g;

        final void a(Document document, int i, Matrix matrix, int j, int k)
        {
            e = document.a(i);
            document = Bitmap.createBitmap(j, k, g.g);
            document.eraseColor(-1);
            e.a(document, matrix);
            if (d != -1)
            {
                d = 2;
                f = document;
                return;
            } else
            {
                document.recycle();
                f = null;
                return;
            }
        }

        protected final boolean a(Canvas canvas, Rect rect, Rect rect1)
        {
            if (f != null)
            {
                canvas.drawBitmap(f, rect, rect1, null);
            } else
            if (d != 0)
            {
                return false;
            }
            return true;
        }

        protected final void finalize()
        {
            if (e != null)
            {
                e.a();
            }
            if (f != null)
            {
                f.recycle();
            }
            super.finalize();
        }

        public a(a a1)
        {
            g = tx.this;
            super();
            if (tx.h == null)
            {
                tx1 = new Paint();
                tx.h = tx.this;
                setStyle(android.graphics.Paint.Style.FILL);
                tx.h.setColor(-1);
            }
            a = a1.a;
            b = a1.b;
            c = a1.c;
        }
    }


    static Paint h;
    Document a;
    public a b[];
    float c;
    int d;
    int e;
    int f;
    android.graphics.Bitmap.Config g;

    private int a(float f1, float f2)
    {
        int i;
        int j;
        if (f == 0)
        {
            j = (int)((a.c(e) - f2) * c) / d;
        } else
        {
            j = (int)(c * f1) / d;
        }
        i = j;
        if (j < 0)
        {
            i = 0;
        }
        j = i;
        if (i >= b.length)
        {
            j = b.length - 1;
        }
        return j;
    }

    protected final boolean a(Canvas canvas, float f1, float f2, float f3, float f4, int i, int j, 
            float f5)
    {
        int k = a(f1, f2);
        int l = a(f3, f4);
        Rect rect = new Rect();
        Rect rect1 = new Rect();
        float f6 = f5 / c;
        if (f == 0)
        {
            rect.left = (int)(c * f1);
            rect.right = (int)(c * f3);
            rect1.left = i;
            rect1.right = rect1.left + (int)((f3 - f1) * f5);
            do
            {
                if (k >= l)
                {
                    a a1 = b[k];
                    rect.top = (int)((a.c(e) - f2) * c) - a1.b;
                    rect.bottom = a1.c;
                    rect1.top = j;
                    rect1.bottom = rect1.top + (int)(f6 * (float)rect.height());
                    return a1.a(canvas, rect, rect1);
                }
                a a2 = b[k];
                rect.top = (int)((a.c(e) - f2) * c) - a2.b;
                rect.bottom = a2.c;
                rect1.top = j;
                rect1.bottom = rect1.top + (int)((float)rect.height() * f6);
                if (!a2.a(canvas, rect, rect1))
                {
                    return false;
                }
                f1 = a.c(e);
                i = a2.b;
                f2 = f1 - (float)(a2.c + i) / c;
                j = rect1.bottom;
                k++;
            } while (true);
        }
        rect.top = (int)((a.c(e) - f2) * c);
        rect.bottom = (int)((a.c(e) - f4) * c);
        rect1.top = j;
        rect1.bottom = rect1.top + (int)((f2 - f4) * f5);
        do
        {
            if (k >= l)
            {
                a a3 = b[k];
                rect.left = (int)(c * f1) - a3.a;
                rect.right = a3.c;
                rect1.left = i;
                rect1.right = rect1.left + (int)(f6 * (float)rect.width());
                return a3.a(canvas, rect, rect1);
            }
            a a4 = b[k];
            rect.left = (int)(c * f1) - a4.a;
            rect.right = a4.c;
            rect1.left = i;
            rect1.right = rect1.left + (int)((float)rect.width() * f6);
            if (!a4.a(canvas, rect, rect1))
            {
                return false;
            }
            i = a4.a;
            f1 = (float)(a4.c + i) / c;
            i = rect1.right;
            k++;
        } while (true);
    }
}
