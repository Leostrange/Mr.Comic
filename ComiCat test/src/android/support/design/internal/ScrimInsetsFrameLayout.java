// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import bc;
import bh;
import bw;

public class ScrimInsetsFrameLayout extends FrameLayout
{

    private Drawable mInsetForeground;
    private Rect mInsets;
    private Rect mTempRect;

    public ScrimInsetsFrameLayout(Context context)
    {
        this(context, null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mTempRect = new Rect();
        context = context.obtainStyledAttributes(attributeset, a.h.ScrimInsetsFrameLayout, i, a.g.Widget_Design_ScrimInsetsFrameLayout);
        mInsetForeground = context.getDrawable(a.h.ScrimInsetsFrameLayout_insetForeground);
        context.recycle();
        setWillNotDraw(true);
        bh.a(this, new bc() {

            final ScrimInsetsFrameLayout this$0;

            public bw onApplyWindowInsets(View view, bw bw1)
            {
                if (mInsets == null)
                {
                    mInsets = new Rect();
                }
                mInsets.set(bw1.a(), bw1.b(), bw1.c(), bw1.d());
                view = ScrimInsetsFrameLayout.this;
                boolean flag;
                if (mInsets.isEmpty() || mInsetForeground == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                view.setWillNotDraw(flag);
                bh.d(ScrimInsetsFrameLayout.this);
                return bw1.f();
            }

            
            {
                this$0 = ScrimInsetsFrameLayout.this;
                super();
            }
        });
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int i = getWidth();
        int j = getHeight();
        if (mInsets != null && mInsetForeground != null)
        {
            int k = canvas.save();
            canvas.translate(getScrollX(), getScrollY());
            mTempRect.set(0, 0, i, mInsets.top);
            mInsetForeground.setBounds(mTempRect);
            mInsetForeground.draw(canvas);
            mTempRect.set(0, j - mInsets.bottom, i, j);
            mInsetForeground.setBounds(mTempRect);
            mInsetForeground.draw(canvas);
            mTempRect.set(0, mInsets.top, mInsets.left, j - mInsets.bottom);
            mInsetForeground.setBounds(mTempRect);
            mInsetForeground.draw(canvas);
            mTempRect.set(i - mInsets.right, mInsets.top, i, j - mInsets.bottom);
            mInsetForeground.setBounds(mTempRect);
            mInsetForeground.draw(canvas);
            canvas.restoreToCount(k);
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (mInsetForeground != null)
        {
            mInsetForeground.setCallback(this);
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (mInsetForeground != null)
        {
            mInsetForeground.setCallback(null);
        }
    }



/*
    static Rect access$002(ScrimInsetsFrameLayout scriminsetsframelayout, Rect rect)
    {
        scriminsetsframelayout.mInsets = rect;
        return rect;
    }

*/

}
