package android.support.design.widget;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;
import defpackage.a;

final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final Paint DEBUG_DRAW_PAINT = null;
    private static final boolean USE_SCALING_TEXTURE = (Build.VERSION.SDK_INT < 18);
    private final Rect mCollapsedBounds;
    private int mCollapsedTextColor;
    private float mCollapsedTextSize;
    private int mCollapsedTextVerticalGravity = 16;
    private float mCollapsedTop;
    private float mCurrentLeft;
    private float mCurrentRight;
    private float mCurrentTextSize;
    private float mCurrentTop;
    private final Rect mExpandedBounds;
    private float mExpandedFraction;
    private int mExpandedTextColor;
    private float mExpandedTextSize;
    private int mExpandedTextVerticalGravity = 16;
    private Bitmap mExpandedTitleTexture;
    private float mExpandedTop;
    private boolean mIsRtl;
    private Interpolator mPositionInterpolator;
    private float mScale;
    private CharSequence mText;
    private final TextPaint mTextPaint;
    private Interpolator mTextSizeInterpolator;
    private CharSequence mTextToDraw;
    private float mTextWidth;
    private float mTextureAscent;
    private float mTextureDescent;
    private Paint mTexturePaint;
    private boolean mUseTexture;
    private final View mView;

    public CollapsingTextHelper(View view) {
        this.mView = view;
        this.mTextPaint = new TextPaint();
        this.mTextPaint.setAntiAlias(true);
        this.mCollapsedBounds = new Rect();
        this.mExpandedBounds = new Rect();
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((((float) Color.alpha(i)) * f2) + (((float) Color.alpha(i2)) * f)), (int) ((((float) Color.red(i)) * f2) + (((float) Color.red(i2)) * f)), (int) ((((float) Color.green(i)) * f2) + (((float) Color.green(i2)) * f)), (int) ((f2 * ((float) Color.blue(i))) + (((float) Color.blue(i2)) * f)));
    }

    private void calculateBaselines() {
        this.mTextPaint.setTextSize(this.mCollapsedTextSize);
        switch (this.mCollapsedTextVerticalGravity) {
            case 48:
                this.mCollapsedTop = ((float) this.mCollapsedBounds.top) - this.mTextPaint.ascent();
                break;
            case 80:
                this.mCollapsedTop = (float) this.mCollapsedBounds.bottom;
                break;
            default:
                this.mCollapsedTop = (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent()) + ((float) this.mCollapsedBounds.centerY());
                break;
        }
        this.mTextPaint.setTextSize(this.mExpandedTextSize);
        switch (this.mExpandedTextVerticalGravity) {
            case 48:
                this.mExpandedTop = ((float) this.mExpandedBounds.top) - this.mTextPaint.ascent();
                break;
            case 80:
                this.mExpandedTop = (float) this.mExpandedBounds.bottom;
                break;
            default:
                this.mExpandedTop = (((this.mTextPaint.descent() - this.mTextPaint.ascent()) / 2.0f) - this.mTextPaint.descent()) + ((float) this.mExpandedBounds.centerY());
                break;
        }
        this.mTextureAscent = this.mTextPaint.ascent();
        this.mTextureDescent = this.mTextPaint.descent();
        clearTexture();
    }

    private boolean calculateIsRtl(CharSequence charSequence) {
        boolean z = true;
        if (bh.h(this.mView) != 1) {
            z = false;
        }
        return (z ? z.d : z.c).a(charSequence, charSequence.length());
    }

    private void calculateOffsets() {
        float f = this.mExpandedFraction;
        this.mCurrentLeft = interpolate((float) this.mExpandedBounds.left, (float) this.mCollapsedBounds.left, f, this.mPositionInterpolator);
        this.mCurrentTop = interpolate(this.mExpandedTop, this.mCollapsedTop, f, this.mPositionInterpolator);
        this.mCurrentRight = interpolate((float) this.mExpandedBounds.right, (float) this.mCollapsedBounds.right, f, this.mPositionInterpolator);
        setInterpolatedTextSize(interpolate(this.mExpandedTextSize, this.mCollapsedTextSize, f, this.mTextSizeInterpolator));
        if (this.mCollapsedTextColor != this.mExpandedTextColor) {
            this.mTextPaint.setColor(blendColors(this.mExpandedTextColor, this.mCollapsedTextColor, f));
        } else {
            this.mTextPaint.setColor(this.mCollapsedTextColor);
        }
        bh.d(this.mView);
    }

    private void clearTexture() {
        if (this.mExpandedTitleTexture != null) {
            this.mExpandedTitleTexture.recycle();
            this.mExpandedTitleTexture = null;
        }
    }

    private void ensureExpandedTexture() {
        if (this.mExpandedTitleTexture == null && !this.mExpandedBounds.isEmpty() && !TextUtils.isEmpty(this.mTextToDraw)) {
            this.mTextPaint.setTextSize(this.mExpandedTextSize);
            this.mTextPaint.setColor(this.mExpandedTextColor);
            int round = Math.round(this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length()));
            int round2 = Math.round(this.mTextPaint.descent() - this.mTextPaint.ascent());
            this.mTextWidth = (float) round;
            if (round > 0 || round2 > 0) {
                this.mExpandedTitleTexture = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
                new Canvas(this.mExpandedTitleTexture).drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), 0.0f, ((float) round2) - this.mTextPaint.descent(), this.mTextPaint);
                if (this.mTexturePaint == null) {
                    this.mTexturePaint = new Paint();
                    this.mTexturePaint.setAntiAlias(true);
                    this.mTexturePaint.setFilterBitmap(true);
                }
            }
        }
    }

    private static float interpolate(float f, float f2, float f3, Interpolator interpolator) {
        if (interpolator != null) {
            f3 = interpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f3);
    }

    private static boolean isClose(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    private void setInterpolatedTextSize(float f) {
        float f2;
        float f3;
        boolean z;
        boolean z2 = true;
        if (this.mText != null) {
            if (isClose(f, this.mCollapsedTextSize)) {
                float width = (float) this.mCollapsedBounds.width();
                float f4 = this.mCollapsedTextSize;
                this.mScale = 1.0f;
                f2 = width;
                f3 = f4;
            } else {
                float width2 = (float) this.mExpandedBounds.width();
                float f5 = this.mExpandedTextSize;
                if (isClose(f, this.mExpandedTextSize)) {
                    this.mScale = 1.0f;
                    f2 = width2;
                    f3 = f5;
                } else {
                    this.mScale = f / this.mExpandedTextSize;
                    f2 = width2;
                    f3 = f5;
                }
            }
            if (f2 > 0.0f) {
                z = this.mCurrentTextSize != f3;
                this.mCurrentTextSize = f3;
            } else {
                z = false;
            }
            if (this.mTextToDraw == null || z) {
                this.mTextPaint.setTextSize(this.mCurrentTextSize);
                CharSequence ellipsize = TextUtils.ellipsize(this.mText, this.mTextPaint, f2, TextUtils.TruncateAt.END);
                if (this.mTextToDraw == null || !this.mTextToDraw.equals(ellipsize)) {
                    this.mTextToDraw = ellipsize;
                }
                this.mIsRtl = calculateIsRtl(this.mTextToDraw);
                this.mTextWidth = this.mTextPaint.measureText(this.mTextToDraw, 0, this.mTextToDraw.length());
            }
            if (!USE_SCALING_TEXTURE || this.mScale == 1.0f) {
                z2 = false;
            }
            this.mUseTexture = z2;
            if (this.mUseTexture) {
                ensureExpandedTexture();
            }
            bh.d(this.mView);
        }
    }

    public final void draw(Canvas canvas) {
        float f;
        int save = canvas.save();
        if (this.mTextToDraw != null) {
            boolean z = this.mIsRtl;
            float f2 = z ? this.mCurrentRight : this.mCurrentLeft;
            float f3 = this.mCurrentTop;
            boolean z2 = this.mUseTexture && this.mExpandedTitleTexture != null;
            this.mTextPaint.setTextSize(this.mCurrentTextSize);
            if (z2) {
                f = this.mTextureAscent * this.mScale;
            } else {
                this.mTextPaint.ascent();
                f = 0.0f;
                this.mTextPaint.descent();
            }
            if (z2) {
                f3 += f;
            }
            if (this.mScale != 1.0f) {
                canvas.scale(this.mScale, this.mScale, f2, f3);
            }
            float f4 = z ? f2 - this.mTextWidth : f2;
            if (z2) {
                canvas.drawBitmap(this.mExpandedTitleTexture, f4, f3, this.mTexturePaint);
            } else {
                canvas.drawText(this.mTextToDraw, 0, this.mTextToDraw.length(), f4, f3, this.mTextPaint);
            }
        }
        canvas.restoreToCount(save);
    }

    /* access modifiers changed from: package-private */
    public final int getCollapsedTextColor() {
        return this.mCollapsedTextColor;
    }

    /* access modifiers changed from: package-private */
    public final float getCollapsedTextSize() {
        return this.mCollapsedTextSize;
    }

    /* access modifiers changed from: package-private */
    public final int getExpandedTextColor() {
        return this.mExpandedTextColor;
    }

    /* access modifiers changed from: package-private */
    public final float getExpandedTextSize() {
        return this.mExpandedTextSize;
    }

    /* access modifiers changed from: package-private */
    public final float getExpansionFraction() {
        return this.mExpandedFraction;
    }

    /* access modifiers changed from: package-private */
    public final CharSequence getText() {
        return this.mText;
    }

    public final void recalculate() {
        if (this.mView.getHeight() > 0 && this.mView.getWidth() > 0) {
            calculateBaselines();
            calculateOffsets();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setCollapsedBounds(int i, int i2, int i3, int i4) {
        this.mCollapsedBounds.set(i, i2, i3, i4);
    }

    /* access modifiers changed from: package-private */
    public final void setCollapsedTextAppearance(int i) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(i, a.h.TextAppearance);
        if (obtainStyledAttributes.hasValue(a.h.TextAppearance_android_textColor)) {
            this.mCollapsedTextColor = obtainStyledAttributes.getColor(a.h.TextAppearance_android_textColor, 0);
        }
        if (obtainStyledAttributes.hasValue(a.h.TextAppearance_android_textSize)) {
            this.mCollapsedTextSize = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.TextAppearance_android_textSize, 0);
        }
        obtainStyledAttributes.recycle();
        recalculate();
    }

    /* access modifiers changed from: package-private */
    public final void setCollapsedTextColor(int i) {
        if (this.mCollapsedTextColor != i) {
            this.mCollapsedTextColor = i;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setCollapsedTextSize(float f) {
        if (this.mCollapsedTextSize != f) {
            this.mCollapsedTextSize = f;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setCollapsedTextVerticalGravity(int i) {
        int i2 = i & 112;
        if (this.mCollapsedTextVerticalGravity != i2) {
            this.mCollapsedTextVerticalGravity = i2;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setExpandedBounds(int i, int i2, int i3, int i4) {
        this.mExpandedBounds.set(i, i2, i3, i4);
    }

    /* access modifiers changed from: package-private */
    public final void setExpandedTextAppearance(int i) {
        TypedArray obtainStyledAttributes = this.mView.getContext().obtainStyledAttributes(i, a.h.TextAppearance);
        if (obtainStyledAttributes.hasValue(a.h.TextAppearance_android_textColor)) {
            this.mExpandedTextColor = obtainStyledAttributes.getColor(a.h.TextAppearance_android_textColor, 0);
        }
        if (obtainStyledAttributes.hasValue(a.h.TextAppearance_android_textSize)) {
            this.mExpandedTextSize = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.TextAppearance_android_textSize, 0);
        }
        obtainStyledAttributes.recycle();
        recalculate();
    }

    /* access modifiers changed from: package-private */
    public final void setExpandedTextColor(int i) {
        if (this.mExpandedTextColor != i) {
            this.mExpandedTextColor = i;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setExpandedTextSize(float f) {
        if (this.mExpandedTextSize != f) {
            this.mExpandedTextSize = f;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setExpandedTextVerticalGravity(int i) {
        int i2 = i & 112;
        if (this.mExpandedTextVerticalGravity != i2) {
            this.mExpandedTextVerticalGravity = i2;
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setExpansionFraction(float f) {
        float constrain = MathUtils.constrain(f, 0.0f, 1.0f);
        if (constrain != this.mExpandedFraction) {
            this.mExpandedFraction = constrain;
            calculateOffsets();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setPositionInterpolator(Interpolator interpolator) {
        this.mPositionInterpolator = interpolator;
        recalculate();
    }

    /* access modifiers changed from: package-private */
    public final void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.mText)) {
            this.mText = charSequence;
            this.mTextToDraw = null;
            clearTexture();
            recalculate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setTextSizeInterpolator(Interpolator interpolator) {
        this.mTextSizeInterpolator = interpolator;
        recalculate();
    }
}
