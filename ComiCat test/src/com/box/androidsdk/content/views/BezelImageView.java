// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class BezelImageView extends ImageView
{

    private Paint mBlackPaint;
    private Drawable mBorderDrawable;
    private Rect mBounds;
    private RectF mBoundsF;
    private Bitmap mCacheBitmap;
    private boolean mCacheValid;
    private int mCachedHeight;
    private int mCachedWidth;
    private ColorMatrixColorFilter mDesaturateColorFilter;
    private boolean mDesaturateOnPress;
    private Drawable mMaskDrawable;
    private Paint mMaskedPaint;

    public BezelImageView(Context context)
    {
        this(context, null);
    }

    public BezelImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public BezelImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mDesaturateOnPress = false;
        mCacheValid = false;
        context = context.obtainStyledAttributes(attributeset, hc.f.BezelImageView, i, 0);
        mMaskDrawable = context.getDrawable(hc.f.BezelImageView_maskDrawable);
        if (mMaskDrawable != null)
        {
            mMaskDrawable.setCallback(this);
        }
        mBorderDrawable = context.getDrawable(hc.f.BezelImageView_borderDrawable);
        if (mBorderDrawable != null)
        {
            mBorderDrawable.setCallback(this);
        }
        mDesaturateOnPress = context.getBoolean(hc.f.BezelImageView_desaturateOnPress, mDesaturateOnPress);
        context.recycle();
        mBlackPaint = new Paint();
        mBlackPaint.setColor(0xff000000);
        mMaskedPaint = new Paint();
        mMaskedPaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        mCacheBitmap = Bitmap.createBitmap(1, 1, android.graphics.Bitmap.Config.ARGB_8888);
        if (mDesaturateOnPress)
        {
            context = new ColorMatrix();
            context.setSaturation(0.0F);
            mDesaturateColorFilter = new ColorMatrixColorFilter(context);
        }
    }

    protected void drawableStateChanged()
    {
label0:
        {
            super.drawableStateChanged();
            if (mBorderDrawable != null && mBorderDrawable.isStateful())
            {
                mBorderDrawable.setState(getDrawableState());
            }
            if (mMaskDrawable != null && mMaskDrawable.isStateful())
            {
                mMaskDrawable.setState(getDrawableState());
            }
            if (isDuplicateParentStateEnabled())
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    break label0;
                }
                postInvalidateOnAnimation();
            }
            return;
        }
        invalidate();
    }

    public void invalidateDrawable(Drawable drawable)
    {
        if (drawable == mBorderDrawable || drawable == mMaskDrawable)
        {
            invalidate();
            return;
        } else
        {
            super.invalidateDrawable(drawable);
            return;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        if (mBounds != null)
        {
            int i = mBounds.width();
            int k = mBounds.height();
            if (i != 0 && k != 0)
            {
                if (!mCacheValid || i != mCachedWidth || k != mCachedHeight)
                {
                    Canvas canvas1;
                    if (i == mCachedWidth && k == mCachedHeight)
                    {
                        mCacheBitmap.eraseColor(0);
                    } else
                    {
                        mCacheBitmap.recycle();
                        mCacheBitmap = Bitmap.createBitmap(i, k, android.graphics.Bitmap.Config.ARGB_8888);
                        mCachedWidth = i;
                        mCachedHeight = k;
                    }
                    canvas1 = new Canvas(mCacheBitmap);
                    if (mMaskDrawable != null)
                    {
                        i = canvas1.save();
                        mMaskDrawable.draw(canvas1);
                        Paint paint = mMaskedPaint;
                        ColorMatrixColorFilter colormatrixcolorfilter;
                        if (mDesaturateOnPress && isPressed())
                        {
                            colormatrixcolorfilter = mDesaturateColorFilter;
                        } else
                        {
                            colormatrixcolorfilter = null;
                        }
                        paint.setColorFilter(colormatrixcolorfilter);
                        canvas1.saveLayer(mBoundsF, mMaskedPaint, 12);
                        super.onDraw(canvas1);
                        canvas1.restoreToCount(i);
                    } else
                    if (mDesaturateOnPress && isPressed())
                    {
                        int j = canvas1.save();
                        canvas1.drawRect(0.0F, 0.0F, mCachedWidth, mCachedHeight, mBlackPaint);
                        mMaskedPaint.setColorFilter(mDesaturateColorFilter);
                        canvas1.saveLayer(mBoundsF, mMaskedPaint, 12);
                        super.onDraw(canvas1);
                        canvas1.restoreToCount(j);
                    } else
                    {
                        super.onDraw(canvas1);
                    }
                    if (mBorderDrawable != null)
                    {
                        mBorderDrawable.draw(canvas1);
                    }
                }
                canvas.drawBitmap(mCacheBitmap, mBounds.left, mBounds.top, null);
                return;
            }
        }
    }

    protected boolean setFrame(int i, int j, int k, int l)
    {
        boolean flag = super.setFrame(i, j, k, l);
        mBounds = new Rect(0, 0, k - i, l - j);
        mBoundsF = new RectF(mBounds);
        if (mBorderDrawable != null)
        {
            mBorderDrawable.setBounds(mBounds);
        }
        if (mMaskDrawable != null)
        {
            mMaskDrawable.setBounds(mBounds);
        }
        if (flag)
        {
            mCacheValid = false;
        }
        return flag;
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return drawable == mBorderDrawable || drawable == mMaskDrawable || super.verifyDrawable(drawable);
    }
}
