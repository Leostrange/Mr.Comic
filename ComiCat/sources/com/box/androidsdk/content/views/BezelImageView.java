package com.box.androidsdk.content.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.hc;

public class BezelImageView extends ImageView {
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

    public BezelImageView(Context context) {
        this(context, (AttributeSet) null);
    }

    public BezelImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BezelImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDesaturateOnPress = false;
        this.mCacheValid = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, hc.f.BezelImageView, i, 0);
        this.mMaskDrawable = obtainStyledAttributes.getDrawable(hc.f.BezelImageView_maskDrawable);
        if (this.mMaskDrawable != null) {
            this.mMaskDrawable.setCallback(this);
        }
        this.mBorderDrawable = obtainStyledAttributes.getDrawable(hc.f.BezelImageView_borderDrawable);
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setCallback(this);
        }
        this.mDesaturateOnPress = obtainStyledAttributes.getBoolean(hc.f.BezelImageView_desaturateOnPress, this.mDesaturateOnPress);
        obtainStyledAttributes.recycle();
        this.mBlackPaint = new Paint();
        this.mBlackPaint.setColor(-16777216);
        this.mMaskedPaint = new Paint();
        this.mMaskedPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.mCacheBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        if (this.mDesaturateOnPress) {
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            this.mDesaturateColorFilter = new ColorMatrixColorFilter(colorMatrix);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mBorderDrawable != null && this.mBorderDrawable.isStateful()) {
            this.mBorderDrawable.setState(getDrawableState());
        }
        if (this.mMaskDrawable != null && this.mMaskDrawable.isStateful()) {
            this.mMaskDrawable.setState(getDrawableState());
        }
        if (!isDuplicateParentStateEnabled()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.mBorderDrawable || drawable == this.mMaskDrawable) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (this.mBounds != null) {
            int width = this.mBounds.width();
            int height = this.mBounds.height();
            if (width != 0 && height != 0) {
                if (!(this.mCacheValid && width == this.mCachedWidth && height == this.mCachedHeight)) {
                    if (width == this.mCachedWidth && height == this.mCachedHeight) {
                        this.mCacheBitmap.eraseColor(0);
                    } else {
                        this.mCacheBitmap.recycle();
                        this.mCacheBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                        this.mCachedWidth = width;
                        this.mCachedHeight = height;
                    }
                    Canvas canvas2 = new Canvas(this.mCacheBitmap);
                    if (this.mMaskDrawable != null) {
                        int save = canvas2.save();
                        this.mMaskDrawable.draw(canvas2);
                        this.mMaskedPaint.setColorFilter((!this.mDesaturateOnPress || !isPressed()) ? null : this.mDesaturateColorFilter);
                        canvas2.saveLayer(this.mBoundsF, this.mMaskedPaint, 12);
                        super.onDraw(canvas2);
                        canvas2.restoreToCount(save);
                    } else if (!this.mDesaturateOnPress || !isPressed()) {
                        super.onDraw(canvas2);
                    } else {
                        int save2 = canvas2.save();
                        canvas2.drawRect(0.0f, 0.0f, (float) this.mCachedWidth, (float) this.mCachedHeight, this.mBlackPaint);
                        this.mMaskedPaint.setColorFilter(this.mDesaturateColorFilter);
                        canvas2.saveLayer(this.mBoundsF, this.mMaskedPaint, 12);
                        super.onDraw(canvas2);
                        canvas2.restoreToCount(save2);
                    }
                    if (this.mBorderDrawable != null) {
                        this.mBorderDrawable.draw(canvas2);
                    }
                }
                canvas.drawBitmap(this.mCacheBitmap, (float) this.mBounds.left, (float) this.mBounds.top, (Paint) null);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        this.mBounds = new Rect(0, 0, i3 - i, i4 - i2);
        this.mBoundsF = new RectF(this.mBounds);
        if (this.mBorderDrawable != null) {
            this.mBorderDrawable.setBounds(this.mBounds);
        }
        if (this.mMaskDrawable != null) {
            this.mMaskDrawable.setBounds(this.mBounds);
        }
        if (frame) {
            this.mCacheValid = false;
        }
        return frame;
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mBorderDrawable || drawable == this.mMaskDrawable || super.verifyDrawable(drawable);
    }
}
