package meanlabs.comicreader.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import defpackage.agg;

public final class ComicImageView extends ImageView implements agg.b, Runnable {
    public agg a;
    public agg.b b;
    public long c;

    public ComicImageView(Context context) {
        super(context);
    }

    public ComicImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ComicImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public final void a() {
        if (this.a != null && this.a.n) {
            this.a.n = false;
        }
    }

    public final void a(agg agg, int i, boolean z) {
        this.a = null;
        this.b.a(agg, i, z);
    }

    public final boolean b() {
        return this.a != null && this.a.n;
    }

    public final agg getCurrentAnimation() {
        int i = 150;
        aeu aeu = aei.a().d;
        String b2 = aeu.b("transition-mode");
        boolean equals = "prefFast".equals(aeu.b("animation-speed"));
        if ("prefTransitionCurl".equals(b2)) {
            if (equals) {
                i = 100;
            }
            return new agh(this, i);
        } else if ("prefTransitionShift".equals(b2)) {
            if (!equals) {
                i = 250;
            }
            return new agi(this, i);
        } else {
            if (!equals) {
                i = 250;
            }
            return new agj(this, i);
        }
    }

    /* access modifiers changed from: protected */
    public final void onDraw(Canvas canvas) {
        Bitmap bitmap;
        if (!b()) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) getDrawable();
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled()) {
                super.onDraw(canvas);
                return;
            }
            return;
        }
        this.a.a(canvas);
    }

    public final void run() {
        if (ahc.b() - this.c >= 240000) {
            setKeepScreenOn(false);
        }
        postDelayed(this, 60000);
    }

    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.c = ahc.b();
        if (!getKeepScreenOn()) {
            setKeepScreenOn(true);
        }
        if (bitmap != null && bitmap.isRecycled()) {
            super.setImageBitmap((Bitmap) null);
        }
    }
}
