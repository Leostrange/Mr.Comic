package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

class CircularBorderDrawable extends Drawable {
    private static final float DRAW_STROKE_WIDTH_MULTIPLE = 1.3333f;
    float mBorderWidth;
    private int mBottomInnerStrokeColor;
    private int mBottomOuterStrokeColor;
    private boolean mInvalidateShader = true;
    final Paint mPaint = new Paint(1);
    final Rect mRect = new Rect();
    final RectF mRectF = new RectF();
    private int mTintColor;
    private int mTopInnerStrokeColor;
    private int mTopOuterStrokeColor;

    public CircularBorderDrawable() {
        this.mPaint.setStyle(Paint.Style.STROKE);
    }

    private Shader createGradientShader() {
        Rect rect = this.mRect;
        copyBounds(rect);
        float height = this.mBorderWidth / ((float) rect.height());
        return new LinearGradient(0.0f, (float) rect.top, 0.0f, (float) rect.bottom, new int[]{h.a(this.mTopOuterStrokeColor, this.mTintColor), h.a(this.mTopInnerStrokeColor, this.mTintColor), h.a(h.b(this.mTopInnerStrokeColor, 0), this.mTintColor), h.a(h.b(this.mBottomInnerStrokeColor, 0), this.mTintColor), h.a(this.mBottomInnerStrokeColor, this.mTintColor), h.a(this.mBottomOuterStrokeColor, this.mTintColor)}, new float[]{0.0f, height, 0.5f, 0.5f, 1.0f - height, 1.0f}, Shader.TileMode.CLAMP);
    }

    public void draw(Canvas canvas) {
        if (this.mInvalidateShader) {
            this.mPaint.setShader(createGradientShader());
            this.mInvalidateShader = false;
        }
        float strokeWidth = this.mPaint.getStrokeWidth() / 2.0f;
        RectF rectF = this.mRectF;
        copyBounds(this.mRect);
        rectF.set(this.mRect);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.drawOval(rectF, this.mPaint);
    }

    public int getOpacity() {
        return this.mBorderWidth > 0.0f ? -3 : -2;
    }

    public boolean getPadding(Rect rect) {
        int round = Math.round(this.mBorderWidth);
        rect.set(round, round, round, round);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.mInvalidateShader = true;
    }

    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
        invalidateSelf();
    }

    /* access modifiers changed from: package-private */
    public void setBorderWidth(float f) {
        if (this.mBorderWidth != f) {
            this.mBorderWidth = f;
            this.mPaint.setStrokeWidth(DRAW_STROKE_WIDTH_MULTIPLE * f);
            this.mInvalidateShader = true;
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    /* access modifiers changed from: package-private */
    public void setGradientColors(int i, int i2, int i3, int i4) {
        this.mTopOuterStrokeColor = i;
        this.mTopInnerStrokeColor = i2;
        this.mBottomOuterStrokeColor = i3;
        this.mBottomInnerStrokeColor = i4;
    }

    /* access modifiers changed from: package-private */
    public void setTintColor(int i) {
        this.mTintColor = i;
        this.mInvalidateShader = true;
        invalidateSelf();
    }
}
