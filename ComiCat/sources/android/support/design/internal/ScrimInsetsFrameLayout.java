package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.a;

public class ScrimInsetsFrameLayout extends FrameLayout {
    /* access modifiers changed from: private */
    public Drawable mInsetForeground;
    /* access modifiers changed from: private */
    public Rect mInsets;
    private Rect mTempRect;

    public ScrimInsetsFrameLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.ScrimInsetsFrameLayout, i, a.g.Widget_Design_ScrimInsetsFrameLayout);
        this.mInsetForeground = obtainStyledAttributes.getDrawable(a.h.ScrimInsetsFrameLayout_insetForeground);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        bh.a((View) this, (bc) new bc() {
            public bw onApplyWindowInsets(View view, bw bwVar) {
                if (ScrimInsetsFrameLayout.this.mInsets == null) {
                    Rect unused = ScrimInsetsFrameLayout.this.mInsets = new Rect();
                }
                ScrimInsetsFrameLayout.this.mInsets.set(bwVar.a(), bwVar.b(), bwVar.c(), bwVar.d());
                ScrimInsetsFrameLayout.this.setWillNotDraw(ScrimInsetsFrameLayout.this.mInsets.isEmpty() || ScrimInsetsFrameLayout.this.mInsetForeground == null);
                bh.d(ScrimInsetsFrameLayout.this);
                return bwVar.f();
            }
        });
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.mInsets != null && this.mInsetForeground != null) {
            int save = canvas.save();
            canvas.translate((float) getScrollX(), (float) getScrollY());
            this.mTempRect.set(0, 0, width, this.mInsets.top);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            this.mTempRect.set(0, height - this.mInsets.bottom, width, height);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            this.mTempRect.set(0, this.mInsets.top, this.mInsets.left, height - this.mInsets.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            this.mTempRect.set(width - this.mInsets.right, this.mInsets.top, width, height - this.mInsets.bottom);
            this.mInsetForeground.setBounds(this.mTempRect);
            this.mInsetForeground.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mInsetForeground != null) {
            this.mInsetForeground.setCallback(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mInsetForeground != null) {
            this.mInsetForeground.setCallback((Drawable.Callback) null);
        }
    }
}
