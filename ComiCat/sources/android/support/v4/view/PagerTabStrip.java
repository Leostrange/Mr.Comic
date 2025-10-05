package android.support.v4.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

public class PagerTabStrip extends PagerTitleStrip {
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private final Paint l;
    private final Rect m;
    private int n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;
    private float s;
    private float t;
    private int u;

    public PagerTabStrip(Context context) {
        this(context, (AttributeSet) null);
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = new Paint();
        this.m = new Rect();
        this.n = 255;
        this.o = false;
        this.p = false;
        this.f = this.e;
        this.l.setColor(this.f);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.g = (int) ((3.0f * f2) + 0.5f);
        this.h = (int) ((6.0f * f2) + 0.5f);
        this.i = (int) (64.0f * f2);
        this.k = (int) ((16.0f * f2) + 0.5f);
        this.q = (int) ((1.0f * f2) + 0.5f);
        this.j = (int) ((f2 * 32.0f) + 0.5f);
        this.u = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.b.setFocusable(true);
        this.b.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                PagerTabStrip.this.a.setCurrentItem(PagerTabStrip.this.a.getCurrentItem() - 1);
            }
        });
        this.d.setFocusable(true);
        this.d.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                PagerTabStrip.this.a.setCurrentItem(PagerTabStrip.this.a.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.o = true;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, float f2, boolean z) {
        Rect rect = this.m;
        int height = getHeight();
        int left = this.c.getLeft() - this.k;
        int right = this.c.getRight() + this.k;
        int i3 = height - this.g;
        rect.set(left, i3, right, height);
        super.a(i2, f2, z);
        this.n = (int) (Math.abs(f2 - 0.5f) * 2.0f * 255.0f);
        rect.union(this.c.getLeft() - this.k, i3, this.c.getRight() + this.k, height);
        invalidate(rect);
    }

    public boolean getDrawFullUnderline() {
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public int getMinHeight() {
        return Math.max(super.getMinHeight(), this.j);
    }

    public int getTabIndicatorColor() {
        return this.f;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.c.getLeft() - this.k;
        int right = this.c.getRight() + this.k;
        int i2 = height - this.g;
        this.l.setColor((this.n << 24) | (this.f & 16777215));
        canvas.drawRect((float) left, (float) i2, (float) right, (float) height, this.l);
        if (this.o) {
            this.l.setColor(-16777216 | (this.f & 16777215));
            canvas.drawRect((float) getPaddingLeft(), (float) (height - this.q), (float) (getWidth() - getPaddingRight()), (float) height, this.l);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.r) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (action) {
            case 0:
                this.s = x;
                this.t = y;
                this.r = false;
                break;
            case 1:
                if (x >= ((float) (this.c.getLeft() - this.k))) {
                    if (x > ((float) (this.c.getRight() + this.k))) {
                        this.a.setCurrentItem(this.a.getCurrentItem() + 1);
                        break;
                    }
                } else {
                    this.a.setCurrentItem(this.a.getCurrentItem() - 1);
                    break;
                }
                break;
            case 2:
                if (Math.abs(x - this.s) > ((float) this.u) || Math.abs(y - this.t) > ((float) this.u)) {
                    this.r = true;
                    break;
                }
        }
        return true;
    }

    public void setBackgroundColor(int i2) {
        super.setBackgroundColor(i2);
        if (!this.p) {
            this.o = (-16777216 & i2) == 0;
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (!this.p) {
            this.o = drawable == null;
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        if (!this.p) {
            this.o = i2 == 0;
        }
    }

    public void setDrawFullUnderline(boolean z) {
        this.o = z;
        this.p = true;
        invalidate();
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        if (i5 < this.h) {
            i5 = this.h;
        }
        super.setPadding(i2, i3, i4, i5);
    }

    public void setTabIndicatorColor(int i2) {
        this.f = i2;
        this.l.setColor(this.f);
        invalidate();
    }

    public void setTabIndicatorColorResource(int i2) {
        setTabIndicatorColor(getContext().getResources().getColor(i2));
    }

    public void setTextSpacing(int i2) {
        if (i2 < this.i) {
            i2 = this.i;
        }
        super.setTextSpacing(i2);
    }
}
