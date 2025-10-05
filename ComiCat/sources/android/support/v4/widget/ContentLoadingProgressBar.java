package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar extends ProgressBar {
    /* access modifiers changed from: private */
    public long a;
    /* access modifiers changed from: private */
    public boolean b;
    /* access modifiers changed from: private */
    public boolean c;
    /* access modifiers changed from: private */
    public boolean d;
    private final Runnable e;
    private final Runnable f;

    public ContentLoadingProgressBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.a = -1;
        this.b = false;
        this.c = false;
        this.d = false;
        this.e = new Runnable() {
            public final void run() {
                boolean unused = ContentLoadingProgressBar.this.b = false;
                long unused2 = ContentLoadingProgressBar.this.a = -1;
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.f = new Runnable() {
            public final void run() {
                boolean unused = ContentLoadingProgressBar.this.c = false;
                if (!ContentLoadingProgressBar.this.d) {
                    long unused2 = ContentLoadingProgressBar.this.a = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    private void a() {
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }
}
