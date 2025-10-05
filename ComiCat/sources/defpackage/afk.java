package defpackage;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.Window;
import meanlabs.comicat.R;
import meanlabs.comicreader.ReaderActivity;

/* renamed from: afk  reason: default package */
/* compiled from: ActionBarHandler */
public abstract class afk implements ActionBar.OnMenuVisibilityListener {
    Runnable a = new Runnable() {
        public final void run() {
            afk.this.c();
        }
    };
    protected ReaderActivity b;
    protected ActionBar c;
    protected View d;
    protected int e;

    @TargetApi(19)
    /* renamed from: afk$a */
    /* compiled from: ActionBarHandler */
    static class a extends afk {
        a(ReaderActivity readerActivity) {
            super(readerActivity);
        }

        /* access modifiers changed from: protected */
        public final void a() {
        }

        /* access modifiers changed from: protected */
        public final void a(boolean z) {
            afk.super.a(z);
            this.d.setSystemUiVisibility(this.d.getSystemUiVisibility() & -3);
        }

        /* access modifiers changed from: protected */
        public final int b() {
            return R.drawable.almost_transparent;
        }

        /* access modifiers changed from: protected */
        public final void c() {
            afk.super.c();
            this.d.setSystemUiVisibility(4098);
        }
    }

    @TargetApi(11)
    /* renamed from: afk$b */
    /* compiled from: ActionBarHandler */
    static class b extends afk implements View.OnSystemUiVisibilityChangeListener {
        b(ReaderActivity readerActivity) {
            super(readerActivity);
        }

        /* access modifiers changed from: protected */
        public final void a() {
            this.d.setOnSystemUiVisibilityChangeListener(this);
        }

        /* access modifiers changed from: protected */
        public final int b() {
            return R.drawable.almost_transparent;
        }

        /* access modifiers changed from: protected */
        public final void c() {
            afk.super.c();
            this.d.setSystemUiVisibility(1);
        }

        public final void onSystemUiVisibilityChange(int i) {
            this.e = i;
            if (((this.e ^ i) & 1) != 0 && (i & 1) == 0) {
                a(false);
                a(5000);
            }
        }
    }

    /* renamed from: afk$c */
    /* compiled from: ActionBarHandler */
    static class c extends afk {
        c(ReaderActivity readerActivity) {
            super(readerActivity);
        }

        /* access modifiers changed from: protected */
        public final void a() {
            this.c.addOnMenuVisibilityListener(this);
        }

        /* access modifiers changed from: protected */
        public final int b() {
            return R.drawable.viewer_actionbar_background;
        }
    }

    afk(ReaderActivity readerActivity) {
        this.b = readerActivity;
        try {
            Window window = this.b.getWindow();
            if (window != null) {
                int i = agv.i() ? 134218752 : 1024;
                window.setFlags(i, i);
                this.c = this.b.getSupportActionBar();
                this.d = window.getDecorView();
                if (this.c != null) {
                    this.c.setBackgroundDrawable(this.b.getResources().getDrawable(b()));
                    this.c.setDisplayShowTitleEnabled(false);
                    if (Build.VERSION.SDK_INT >= 14) {
                        this.c.setIcon(this.b.getResources().getDrawable(R.drawable.transparent));
                    }
                    a(2000);
                }
                a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodError e3) {
            e3.printStackTrace();
        }
    }

    public static afk a(ReaderActivity readerActivity) {
        return agv.i() ? new a(readerActivity) : agv.h() ? new b(readerActivity) : new c(readerActivity);
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    /* access modifiers changed from: protected */
    public final void a(int i) {
        this.d.postDelayed(this.a, (long) i);
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        this.c.show();
    }

    /* access modifiers changed from: protected */
    public abstract int b();

    /* access modifiers changed from: protected */
    public void c() {
        this.c.hide();
    }

    public final void d() {
        if (this.c != null && !this.c.isShowing()) {
            a(true);
            a(5000);
        }
    }

    public final void e() {
        c();
    }

    public void onMenuVisibilityChanged(boolean z) {
        if (z) {
            a(false);
        } else {
            c();
        }
    }
}
