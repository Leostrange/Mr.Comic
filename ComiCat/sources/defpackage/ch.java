package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;

/* renamed from: ch  reason: default package */
/* compiled from: CircleImageView */
public final class ch extends ImageView {
    public Animation.AnimationListener a;
    /* access modifiers changed from: private */
    public int b;

    /* renamed from: ch$a */
    /* compiled from: CircleImageView */
    class a extends OvalShape {
        private RadialGradient b;
        private Paint c = new Paint();
        private int d;

        public a(int i, int i2) {
            int unused = ch.this.b = i;
            this.d = i2;
            this.b = new RadialGradient((float) (this.d / 2), (float) (this.d / 2), (float) ch.this.b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.c.setShader(this.b);
        }

        public final void draw(Canvas canvas, Paint paint) {
            int width = ch.this.getWidth();
            int height = ch.this.getHeight();
            canvas.drawCircle((float) (width / 2), (float) (height / 2), (float) ((this.d / 2) + ch.this.b), this.c);
            canvas.drawCircle((float) (width / 2), (float) (height / 2), (float) (this.d / 2), paint);
        }
    }

    public ch(Context context) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int) (20.0f * f * 2.0f);
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.b = (int) (3.5f * f);
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            bh.f(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new a(this.b, i));
            bh.a((View) this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer((float) this.b, (float) i3, (float) i2, 503316480);
            int i4 = this.b;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(-328966);
        setBackgroundDrawable(shapeDrawable);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public final void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.a != null) {
            this.a.onAnimationEnd(getAnimation());
        }
    }

    public final void onAnimationStart() {
        super.onAnimationStart();
        if (this.a != null) {
            this.a.onAnimationStart(getAnimation());
        }
    }

    /* access modifiers changed from: protected */
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.b * 2), getMeasuredHeight() + (this.b * 2));
        }
    }

    public final void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
