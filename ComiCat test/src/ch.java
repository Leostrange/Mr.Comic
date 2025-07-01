// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.DisplayMetrics;
import android.widget.ImageView;

public final class ch extends ImageView
{
    final class a extends OvalShape
    {

        final ch a;
        private RadialGradient b;
        private Paint c;
        private int d;

        public final void draw(Canvas canvas, Paint paint)
        {
            int i = a.getWidth();
            int j = a.getHeight();
            canvas.drawCircle(i / 2, j / 2, d / 2 + ch.a(a), c);
            canvas.drawCircle(i / 2, j / 2, d / 2, paint);
        }

        public a(int i, int j)
        {
            a = ch.this;
            super();
            c = new Paint();
            ch.a(ch.this, i);
            d = j;
            float f = d / 2;
            float f1 = d / 2;
            float f2 = ch.a(ch.this);
            ch1 = android.graphics.Shader.TileMode.CLAMP;
            b = new RadialGradient(f, f1, f2, new int[] {
                0x3d000000, 0
            }, null, ch.this);
            c.setShader(b);
        }
    }


    public android.view.animation.Animation.AnimationListener a;
    private int b;

    public ch(Context context)
    {
        super(context);
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int)(20F * f * 2.0F);
        int j = (int)(1.75F * f);
        int k = (int)(0.0F * f);
        b = (int)(3.5F * f);
        if (a())
        {
            context = new ShapeDrawable(new OvalShape());
            bh.f(this, f * 4F);
        } else
        {
            context = new ShapeDrawable(new a(b, i));
            bh.a(this, 1, context.getPaint());
            context.getPaint().setShadowLayer(b, k, j, 0x1e000000);
            i = b;
            setPadding(i, i, i, i);
        }
        context.getPaint().setColor(0xfffafafa);
        setBackgroundDrawable(context);
    }

    static int a(ch ch1)
    {
        return ch1.b;
    }

    static int a(ch ch1, int i)
    {
        ch1.b = i;
        return i;
    }

    private static boolean a()
    {
        return android.os.Build.VERSION.SDK_INT >= 21;
    }

    public final void onAnimationEnd()
    {
        super.onAnimationEnd();
        if (a != null)
        {
            a.onAnimationEnd(getAnimation());
        }
    }

    public final void onAnimationStart()
    {
        super.onAnimationStart();
        if (a != null)
        {
            a.onAnimationStart(getAnimation());
        }
    }

    protected final void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (!a())
        {
            setMeasuredDimension(getMeasuredWidth() + b * 2, getMeasuredHeight() + b * 2);
        }
    }

    public final void setBackgroundColor(int i)
    {
        if (getBackground() instanceof ShapeDrawable)
        {
            ((ShapeDrawable)getBackground()).getPaint().setColor(i);
        }
    }
}
