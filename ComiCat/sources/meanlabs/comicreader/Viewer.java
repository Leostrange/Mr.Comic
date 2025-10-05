package meanlabs.comicreader;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.WallpaperManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.NotificationCompat;
import android.support.v4.widget.DrawerLayout;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.box.androidsdk.content.BoxConstants;
import defpackage.aco;
import defpackage.age;
import defpackage.agf;
import defpackage.agg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ui.GestureListenerActivity;
import meanlabs.comicreader.ui.PageChooserView;
import meanlabs.comicreader.ui.TwoDScrollView;
import meanlabs.comicreader.utils.ComicImageView;

public final class Viewer extends GestureListenerActivity implements aco.a, age.b, agf.c, agg.b, TwoDScrollView.a {
    private static final int Q = Color.argb(NotificationCompat.FLAG_HIGH_PRIORITY, 0, 0, 0);
    /* access modifiers changed from: private */
    public static final String R = ComicReaderApp.a().getString(R.string.openNextFromRL);
    /* access modifiers changed from: private */
    public static final String S = ComicReaderApp.a().getString(R.string.openNextUnread);
    /* access modifiers changed from: private */
    public static final String T = ComicReaderApp.a().getString(R.string.goToCatalog);
    private boolean A = true;
    private boolean B = true;
    private boolean C = true;
    private boolean D = false;
    private boolean E = false;
    private boolean F = true;
    private boolean G = false;
    private boolean H = true;
    private boolean I = true;
    private boolean J = true;
    private boolean K = true;
    private boolean L = true;
    private int M = 0;
    private afl N;
    private afk O;
    private int P = -1;
    /* access modifiers changed from: private */
    public Bitmap U;
    PageChooserView a;
    public int b = b.a;
    /* access modifiers changed from: private */
    public TwoDScrollView j;
    /* access modifiers changed from: private */
    public ComicImageView k;
    private TextView l;
    private TextView m;
    private LinearLayout q;
    private Toast r = null;
    /* access modifiers changed from: private */
    public DrawerLayout s;
    /* access modifiers changed from: private */
    public a t;
    private Bitmap u;
    private boolean v = false;
    private boolean w = false;
    private boolean x = false;
    private boolean y = false;
    private boolean z = true;

    /* renamed from: meanlabs.comicreader.Viewer$5  reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] a = new int[b.a().length];

        static {
            try {
                a[b.a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[b.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[b.c - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[b.d - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[b.e - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    class a {
        public afa a = null;
        public aeq b;
        public boolean c = false;
        public c d = new c(Viewer.this, (byte) 0);
        public boolean e = false;
        public aco f = null;
        public aem g;
        public long h = ahc.b();
        public boolean i = false;

        public a() {
        }
    }

    public enum b {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = new int[]{a, b, c, d, e};
        }

        public static int[] a() {
            return (int[]) f.clone();
        }
    }

    class c {
        float a;
        float b;
        float c;

        private c() {
        }

        /* synthetic */ c(Viewer viewer, byte b2) {
            this();
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x018f A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:101:0x0192 A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0036 A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003b A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x003e A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0041 A[ADDED_TO_REGION, Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0045 A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x004c A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x005b A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x011e A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x0148 A[SYNTHETIC, Splitter:B:84:0x0148] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x016c A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0186 A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0189 A[Catch:{ Exception -> 0x0142 }] */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x018c A[Catch:{ Exception -> 0x0142 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r10, int r11) {
        /*
            r9 = this;
            r8 = -1
            r7 = 1
            r6 = 0
            r0 = 0
            meanlabs.comicreader.utils.ComicImageView r1 = r9.k
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x0012
            meanlabs.comicreader.utils.ComicImageView r1 = r9.k
            r1.a()
            r11 = r6
        L_0x0012:
            r9.o()
            boolean r1 = r9.L     // Catch:{ Exception -> 0x0142 }
            if (r1 == 0) goto L_0x00c8
            boolean r1 = defpackage.ahf.a()     // Catch:{ Exception -> 0x0142 }
            if (r1 == 0) goto L_0x00c8
            r2 = r7
        L_0x0020:
            switch(r10) {
                case -1: goto L_0x00cb;
                case 0: goto L_0x00eb;
                case 1: goto L_0x0114;
                default: goto L_0x0023;
            }     // Catch:{ Exception -> 0x0142 }
        L_0x0023:
            r1 = r0
        L_0x0024:
            if (r1 == 0) goto L_0x0031
            if (r2 == 0) goto L_0x0031
            boolean r2 = r1.g()     // Catch:{ Exception -> 0x0142 }
            if (r2 != 0) goto L_0x0031
            switch(r10) {
                case -1: goto L_0x011e;
                case 0: goto L_0x0148;
                case 1: goto L_0x016c;
                default: goto L_0x0031;
            }     // Catch:{ Exception -> 0x0142 }
        L_0x0031:
            r2 = r0
        L_0x0032:
            meanlabs.comicreader.Viewer$a r4 = r9.t     // Catch:{ Exception -> 0x0142 }
            if (r2 == 0) goto L_0x0186
            r3 = r7
        L_0x0037:
            r4.i = r3     // Catch:{ Exception -> 0x0142 }
            if (r10 != r8) goto L_0x0189
            r4 = r2
        L_0x003c:
            if (r10 != r8) goto L_0x018c
            r3 = r1
        L_0x003f:
            if (r4 != 0) goto L_0x0043
            if (r3 == 0) goto L_0x01d9
        L_0x0043:
            if (r4 == 0) goto L_0x018f
            android.graphics.Bitmap r1 = r4.a()     // Catch:{ Exception -> 0x0142 }
            r2 = r1
        L_0x004a:
            if (r3 == 0) goto L_0x0192
            android.graphics.Bitmap r1 = r3.a()     // Catch:{ Exception -> 0x0142 }
        L_0x0050:
            if (r2 != 0) goto L_0x0054
            if (r1 == 0) goto L_0x0058
        L_0x0054:
            android.graphics.Bitmap r0 = defpackage.agl.a(r2, r1)     // Catch:{ Exception -> 0x0142 }
        L_0x0058:
            r2 = r0
        L_0x0059:
            if (r2 == 0) goto L_0x00be
            meanlabs.comicreader.utils.ComicImageView r0 = r9.k     // Catch:{ Exception -> 0x0142 }
            r0.setImageBitmap(r2)     // Catch:{ Exception -> 0x0142 }
            meanlabs.comicreader.utils.ComicImageView r0 = r9.k     // Catch:{ Exception -> 0x0142 }
            r9.a((android.widget.ImageView) r0, (android.graphics.Bitmap) r2)     // Catch:{ Exception -> 0x0142 }
            android.graphics.Bitmap r0 = r9.U     // Catch:{ Exception -> 0x0142 }
            r9.u = r0     // Catch:{ Exception -> 0x0142 }
            r9.U = r2     // Catch:{ Exception -> 0x0142 }
            boolean r0 = r9.K     // Catch:{ Exception -> 0x0142 }
            if (r0 == 0) goto L_0x0195
            r0 = r11
        L_0x0070:
            if (r0 != 0) goto L_0x0198
            r9.v()     // Catch:{ Exception -> 0x0142 }
        L_0x0075:
            meanlabs.comicreader.Viewer$a r0 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r0 = r0.a     // Catch:{ Exception -> 0x0142 }
            afb r0 = r0.e()     // Catch:{ Exception -> 0x0142 }
            int r0 = r0.f()     // Catch:{ Exception -> 0x0142 }
            if (r0 <= r7) goto L_0x009c
            aei r0 = defpackage.aei.a()     // Catch:{ Exception -> 0x0142 }
            aeu r0 = r0.d     // Catch:{ Exception -> 0x0142 }
            java.lang.String r1 = "app-state-flags"
            r2 = 2
            boolean r0 = r0.a((java.lang.String) r1, (int) r2)     // Catch:{ Exception -> 0x0142 }
            if (r0 != 0) goto L_0x009c
            aei r0 = defpackage.aei.a()     // Catch:{ Exception -> 0x0142 }
            aeu r0 = r0.d     // Catch:{ Exception -> 0x0142 }
            r1 = 2
            r0.a((int) r1)     // Catch:{ Exception -> 0x0142 }
        L_0x009c:
            meanlabs.comicreader.Viewer$a r0 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r0 = r0.a     // Catch:{ Exception -> 0x0142 }
            afa$b r1 = r0.j     // Catch:{ Exception -> 0x0142 }
            afb r0 = r1.c     // Catch:{ Exception -> 0x0142 }
            if (r0 == 0) goto L_0x00b4
            afb r2 = r1.c     // Catch:{ Exception -> 0x0142 }
            boolean r0 = r1.e     // Catch:{ Exception -> 0x0142 }
            if (r0 == 0) goto L_0x01d6
            boolean r0 = meanlabs.comicreader.ReaderActivity.p     // Catch:{ Exception -> 0x0142 }
            if (r0 != 0) goto L_0x01d6
            r0 = r7
        L_0x00b1:
            r2.a((boolean) r0)     // Catch:{ Exception -> 0x0142 }
        L_0x00b4:
            afb r0 = r1.d     // Catch:{ Exception -> 0x0142 }
            if (r0 == 0) goto L_0x00be
            afb r0 = r1.d     // Catch:{ Exception -> 0x0142 }
            r1 = 0
            r0.a((boolean) r1)     // Catch:{ Exception -> 0x0142 }
        L_0x00be:
            if (r11 == 0) goto L_0x00c1
            r6 = r7
        L_0x00c1:
            r9.e((boolean) r6)
            r9.w()
            return
        L_0x00c8:
            r2 = r6
            goto L_0x0020
        L_0x00cb:
            if (r2 == 0) goto L_0x00e1
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            r1.e()     // Catch:{ Exception -> 0x0142 }
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            boolean r1 = r1.i     // Catch:{ Exception -> 0x0142 }
            if (r1 == 0) goto L_0x00e1
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            r1.h()     // Catch:{ Exception -> 0x0142 }
        L_0x00e1:
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            afb r1 = r1.h()     // Catch:{ Exception -> 0x0142 }
            goto L_0x0024
        L_0x00eb:
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            boolean r1 = r1.i     // Catch:{ Exception -> 0x0142 }
            if (r1 == 0) goto L_0x010a
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            r1.h()     // Catch:{ Exception -> 0x0142 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0142 }
            java.lang.String r3 = "Moving back to: "
            r1.<init>(r3)     // Catch:{ Exception -> 0x0142 }
            meanlabs.comicreader.Viewer$a r3 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r3 = r3.a     // Catch:{ Exception -> 0x0142 }
            afa$b r3 = r3.j     // Catch:{ Exception -> 0x0142 }
            int r3 = r3.a     // Catch:{ Exception -> 0x0142 }
            r1.append(r3)     // Catch:{ Exception -> 0x0142 }
        L_0x010a:
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            afb r1 = r1.e()     // Catch:{ Exception -> 0x0142 }
            goto L_0x0024
        L_0x0114:
            meanlabs.comicreader.Viewer$a r1 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r1 = r1.a     // Catch:{ Exception -> 0x0142 }
            afb r1 = r1.i()     // Catch:{ Exception -> 0x0142 }
            goto L_0x0024
        L_0x011e:
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            afa$b r2 = r2.j     // Catch:{ Exception -> 0x0142 }
            int r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            if (r2 == r7) goto L_0x0031
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            afb r2 = r2.h()     // Catch:{ Exception -> 0x0142 }
            if (r2 == 0) goto L_0x0032
            boolean r3 = r2.g()     // Catch:{ Exception -> 0x0142 }
            if (r3 == 0) goto L_0x0139
            r2 = r0
        L_0x0139:
            meanlabs.comicreader.Viewer$a r3 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r3 = r3.a     // Catch:{ Exception -> 0x0142 }
            r3.i()     // Catch:{ Exception -> 0x0142 }
            goto L_0x0032
        L_0x0142:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x00be
        L_0x0148:
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            afa$b r2 = r2.j     // Catch:{ Exception -> 0x0142 }
            int r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            if (r2 == 0) goto L_0x0031
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            afb r2 = r2.i()     // Catch:{ Exception -> 0x0142 }
            if (r2 == 0) goto L_0x0032
            boolean r3 = r2.g()     // Catch:{ Exception -> 0x0142 }
            if (r3 == 0) goto L_0x0032
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            r2.h()     // Catch:{ Exception -> 0x0142 }
            r2 = r0
            goto L_0x0032
        L_0x016c:
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            afb r2 = r2.i()     // Catch:{ Exception -> 0x0142 }
            if (r2 == 0) goto L_0x0032
            boolean r3 = r2.g()     // Catch:{ Exception -> 0x0142 }
            if (r3 == 0) goto L_0x0032
            meanlabs.comicreader.Viewer$a r2 = r9.t     // Catch:{ Exception -> 0x0142 }
            afa r2 = r2.a     // Catch:{ Exception -> 0x0142 }
            r2.h()     // Catch:{ Exception -> 0x0142 }
            r2 = r0
            goto L_0x0032
        L_0x0186:
            r3 = r6
            goto L_0x0037
        L_0x0189:
            r4 = r1
            goto L_0x003c
        L_0x018c:
            r3 = r2
            goto L_0x003f
        L_0x018f:
            r2 = r0
            goto L_0x004a
        L_0x0192:
            r1 = r0
            goto L_0x0050
        L_0x0195:
            r0 = r6
            goto L_0x0070
        L_0x0198:
            android.graphics.Bitmap r1 = r9.u     // Catch:{ Exception -> 0x0142 }
            if (r1 == 0) goto L_0x0075
            if (r2 == 0) goto L_0x0075
            meanlabs.comicreader.utils.ComicImageView r1 = r9.k     // Catch:{ Exception -> 0x0142 }
            r9.a((android.widget.ImageView) r1, (android.graphics.Bitmap) r2)     // Catch:{ Exception -> 0x0142 }
            meanlabs.comicreader.utils.ComicImageView r5 = r9.k     // Catch:{ Exception -> 0x0142 }
            android.graphics.Bitmap r1 = r9.u     // Catch:{ Exception -> 0x0142 }
            int r3 = r9.b     // Catch:{ Exception -> 0x0142 }
            if (r0 != r8) goto L_0x01c1
            r4 = r7
        L_0x01ac:
            agg r0 = r5.getCurrentAnimation()     // Catch:{ Exception -> 0x0142 }
            r5.a = r0     // Catch:{ Exception -> 0x0142 }
            agg r0 = r5.a     // Catch:{ Exception -> 0x0142 }
            if (r0 == 0) goto L_0x01c6
            agg r0 = r5.a     // Catch:{ Exception -> 0x0142 }
            if (r4 == 0) goto L_0x01c3
            int r4 = defpackage.agg.a.a     // Catch:{ Exception -> 0x0142 }
        L_0x01bc:
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Exception -> 0x0142 }
            goto L_0x0075
        L_0x01c1:
            r4 = r6
            goto L_0x01ac
        L_0x01c3:
            int r4 = defpackage.agg.a.b     // Catch:{ Exception -> 0x0142 }
            goto L_0x01bc
        L_0x01c6:
            agg$b r1 = r5.b     // Catch:{ Exception -> 0x0142 }
            r2 = 0
            if (r4 == 0) goto L_0x01d3
            int r0 = defpackage.agg.a.a     // Catch:{ Exception -> 0x0142 }
        L_0x01cd:
            r3 = 0
            r1.a(r2, r0, r3)     // Catch:{ Exception -> 0x0142 }
            goto L_0x0075
        L_0x01d3:
            int r0 = defpackage.agg.a.b     // Catch:{ Exception -> 0x0142 }
            goto L_0x01cd
        L_0x01d6:
            r0 = r6
            goto L_0x00b1
        L_0x01d9:
            r2 = r0
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.Viewer.a(int, int):void");
    }

    /* access modifiers changed from: private */
    public void a(aeq aeq) {
        a(false);
        this.t.b = aeq;
        a(this.t.b, false);
    }

    @SuppressLint({"NewApi"})
    private void a(aeq aeq, boolean z2) {
        if (this.t.a != null) {
            return;
        }
        if (this.t.f == null) {
            this.t.f = new aco(this, aeq, z2, this);
            if (agv.h()) {
                this.t.f.executeOnExecutor(aco.THREAD_POOL_EXECUTOR, new Void[]{null});
                return;
            }
            this.t.f.execute(new Void[]{null});
            return;
        }
        this.t.f.a((Activity) this, (aco.a) this);
    }

    private void a(ImageView imageView, Bitmap bitmap) {
        final int width;
        int i = 0;
        switch (AnonymousClass5.a[this.b - 1]) {
            case 1:
            case 2:
                width = this.j.getWidth();
                i = this.j.getHeight();
                break;
            case 3:
                width = this.j.getWidth();
                i = Math.max(this.j.getHeight(), (bitmap.getHeight() * this.j.getWidth()) / bitmap.getWidth());
                break;
            case 4:
                width = Math.max(this.j.getWidth(), (bitmap.getWidth() * this.j.getHeight()) / bitmap.getHeight());
                i = this.j.getHeight();
                break;
            case 5:
                width = bitmap.getWidth();
                i = bitmap.getHeight();
                break;
            default:
                width = 0;
                break;
        }
        if (this.t.c) {
            width = (int) (((float) width) * this.t.d.a);
            i = (int) (((float) i) * this.t.d.a);
            b(this.t.d.a);
        }
        imageView.setScaleType(this.b == b.b ? ImageView.ScaleType.FIT_XY : ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(width, i));
        this.j.post(new Runnable() {
            public final void run() {
                Viewer.this.j.scrollTo(0, 0);
                Viewer.this.j.a(33, true);
                Viewer.this.j.a(33, false);
            }
        });
        if (this.t.c) {
            this.j.post(new Runnable() {
                public final void run() {
                    Viewer.this.j.scrollBy((int) Viewer.this.t.d.b, (int) Viewer.this.t.d.c);
                }
            });
        } else if (this.x && this.j.getWidth() < width) {
            this.j.post(new Runnable() {
                public final void run() {
                    Viewer.this.j.scrollBy(width - Viewer.this.j.getWidth(), 0);
                }
            });
        }
    }

    private void a(String str, int i, int i2) {
        int i3 = 0;
        try {
            if (this.r != null) {
                this.r.cancel();
            }
            if (this.r == null || agv.h()) {
                this.r = Toast.makeText(this, str, i);
                View view = this.r.getView();
                if (view != null) {
                    view.setBackgroundColor(Q);
                }
            }
            Toast toast = this.r;
            int i4 = i2 != 0 ? i2 : 81;
            if (i2 == 0) {
                i3 = 75;
            }
            toast.setGravity(i4, 0, i3);
            this.r.setDuration(i);
            this.r.setText(str);
            this.r.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(boolean z2) {
        if (this.t.a != null) {
            if (!z2) {
                this.t.a.a();
                this.t.a = null;
            }
            this.k.setImageBitmap((Bitmap) null);
            if (this.U != null) {
                this.U.recycle();
                this.U = null;
            }
            v();
            System.gc();
        }
    }

    private boolean a(aem aem, boolean z2) {
        int i = aem.g;
        List<aeq> a2 = ael.a(aem, false);
        if (a2 == null || a2.size() == 0) {
            return false;
        }
        if (aem.f()) {
            ael.a(a2, "prefSortByFilePathEx");
        } else {
            ael.a(a2, "prefSortAlphabetically");
        }
        Iterator<aeq> it = a2.iterator();
        int i2 = 0;
        while (it.hasNext() && it.next().a != i) {
            i2++;
        }
        boolean z3 = this.t.b == null;
        int i3 = i2 == a2.size() ? 0 : i2;
        if (!z3) {
            i3 = z2 ? i3 - 1 : i3 + 1;
        }
        if (i3 < 0 || i3 >= a2.size()) {
            return false;
        }
        this.t.b = a2.get(i3);
        aem.g = this.t.b.a;
        aen aen = aei.a().c;
        aen.c(aem);
        if (z3) {
            a(this.t.b, false);
        } else {
            a(this.t.b);
        }
        return true;
    }

    /* access modifiers changed from: private */
    public boolean b(boolean z2) {
        int i = 1;
        if (this.t.a == null) {
            return true;
        }
        boolean f = this.w ? this.t.a.f() : this.t.a.g();
        if (f) {
            int i2 = this.w ? -1 : 1;
            if (!z2) {
                i = 0;
            }
            a(i2, i);
            return f;
        }
        ahf.a((Context) this, this.w ? R.string.firstPage : R.string.lastPage);
        if (!this.w) {
            q();
        }
        return f;
    }

    /* access modifiers changed from: private */
    public boolean c(boolean z2) {
        int i = 1;
        int i2 = -1;
        if (this.t.a == null) {
            return true;
        }
        boolean g = this.w ? this.t.a.g() : this.t.a.f();
        if (g) {
            if (!this.w) {
                i = -1;
            }
            if (!z2) {
                i2 = 0;
            }
            a(i, i2);
            return g;
        }
        ahf.a((Context) this, this.w ? R.string.lastPage : R.string.firstPage);
        if (!this.w) {
            return false;
        }
        q();
        return false;
    }

    private void d(boolean z2) {
        this.q.setVisibility(z2 ? 8 : 0);
    }

    private boolean d(int i) {
        boolean z2 = false;
        switch (i) {
            case 16908332:
                if (this.s.b()) {
                    this.s.c(8388611);
                    return true;
                }
                this.s.b(8388611);
                return true;
            case R.id.bookmark /*2131493185*/:
                if (this.t.b == null) {
                    return true;
                }
                this.t.b.i = this.t.a.j.a + 1;
                aek aek = aei.a().b;
                aek.c(this.t.b);
                ahf.a((Context) this, getString(R.string.bookmarkPlaced, new Object[]{Integer.valueOf(this.t.b.i)}));
                return true;
            case R.id.viewerSettings /*2131493189*/:
                this.s.b(8388611);
                return true;
            case R.id.gotoPage /*2131493190*/:
                if (r()) {
                    this.a.a();
                    return true;
                } else if (this.t.a == null) {
                    return true;
                } else {
                    this.a.a(this.t.a, new AdapterView.OnItemClickListener() {
                        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                            Viewer.this.a.a();
                            Viewer.this.t.a.b((int) j);
                            Viewer.this.a(0, 0);
                        }
                    });
                    return true;
                }
            case R.id.setFrame /*2131493191*/:
                a aVar = this.t;
                if (!this.t.c) {
                    z2 = true;
                }
                aVar.c = z2;
                if (this.t.c) {
                    this.t.d.a = this.h;
                    this.t.d.b = (float) this.j.getScrollX();
                    this.t.d.c = (float) this.j.getScrollY();
                    e((int) R.string.setFrameMessage);
                } else {
                    b(this.t.d.a);
                    e((int) R.string.resetFrameMessage);
                }
                this.j.post(new Runnable() {
                    public final void run() {
                        ActivityCompat.invalidateOptionsMenu(Viewer.this);
                    }
                });
                return true;
            case R.id.touchOptions /*2131493192*/:
                s();
                return true;
            case R.id.fullscreen /*2131493193*/:
                a aVar2 = this.t;
                if (!this.t.e) {
                    z2 = true;
                }
                aVar2.e = z2;
                d(this.t.e);
                e(true);
                return true;
            case R.id.share /*2131493194*/:
                Bitmap a2 = agl.a(this.U, 1024, 1024);
                if (a2 == null) {
                    return true;
                }
                try {
                    Uri parse = Uri.parse(MediaStore.Images.Media.insertImage(getContentResolver(), a2, getString(R.string.share), (String) null));
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("image/*");
                    intent.putExtra("android.intent.extra.STREAM", parse);
                    startActivity(Intent.createChooser(intent, getString(R.string.share)));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                a2.recycle();
                return true;
            case R.id.save /*2131493195*/:
                String str = (this.t.a.j.a + 1) + this.t.a.e().e();
                if (agx.a(this, this.U, this.t.b.c + '_' + str, getString(R.string.imageDescription, new Object[]{str, this.t.b.c})) != null) {
                    ahf.a((Context) this, (int) R.string.pageSavedMessage);
                    return true;
                }
                ahf.a((Context) this, (int) R.string.errPageSaveMessage);
                return true;
            case R.id.makeWallpaper /*2131493196*/:
                new Handler().post(new Runnable() {
                    public final void run() {
                        try {
                            WallpaperManager.getInstance(Viewer.this.getApplicationContext()).setBitmap(Viewer.this.U);
                            ahf.a(ComicReaderApp.a(), (int) R.string.wallpaperChanged);
                        } catch (Exception e) {
                            ahf.a(ComicReaderApp.a(), (int) R.string.errorChangingWallpaper);
                        }
                    }
                });
                return true;
            case R.id.restart /*2131493197*/:
                new Handler().post(new Runnable() {
                    public final void run() {
                        Viewer.this.t.a.b(0);
                        Viewer.this.a(0, 0);
                    }
                });
                return true;
            case R.id.openNext /*2131493198*/:
                f(false);
                return true;
            case R.id.openPrevious /*2131493199*/:
                f(true);
                return true;
            case R.id.exit /*2131493200*/:
                finish();
                return true;
            default:
                return false;
        }
    }

    private void e(int i) {
        a(getString(i), 0, 0);
    }

    private void e(boolean z2) {
        int i = this.t.a.j.a + 1;
        String str = i + (this.t.a.e() != null ? this.t.a.e().e() : "") + "/" + this.t.a.d();
        if (this.t.i) {
            str = String.valueOf(i - 1) + '-' + str;
        }
        if (!this.t.e) {
            this.m.setText(str);
        } else if (z2 && this.J) {
            a(str, 0, 85);
        }
    }

    private boolean f(boolean z2) {
        int i;
        aeq aeq;
        boolean z3 = this.t.g != null && a(this.t.g, z2);
        if (!z3) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i2 = -1;
            List<aeq> f = aei.a().b.f();
            if (f == null || f.size() <= 0) {
                i = 0;
            } else {
                ael.a(f, "prefSortByFilePathEx");
                boolean a2 = agw.a();
                int i3 = -1;
                int i4 = 0;
                for (aeq next : f) {
                    if (this.t.b == next) {
                        i4 = arrayList.size();
                        if (next.h.c(2)) {
                            i3 = arrayList2.size();
                        }
                    } else if (!a2 || !agw.a(next)) {
                        arrayList.add(next);
                        if (next.h.c(2)) {
                            arrayList2.add(next);
                        }
                    }
                    i4 = i4;
                    i3 = i3;
                }
                i2 = i3;
                i = i4;
            }
            if (z2) {
                i2--;
                i--;
            }
            if (((int) aei.a().d.a("catalog-folder", 0)) != -3 || i2 < 0) {
                aeq = null;
            } else if (arrayList2.size() > 0) {
                if (arrayList2.size() <= i2) {
                    i2 = 0;
                }
                aeq = (aeq) arrayList2.get(i2);
            } else {
                aeq = null;
            }
            if (aeq == null && i >= 0) {
                if (arrayList.size() > 0) {
                    if (arrayList.size() <= i) {
                        i = 0;
                    }
                    aeq = (aeq) arrayList.get(i);
                } else {
                    aeq = null;
                }
            }
            if (aeq != null) {
                a(aeq);
                return true;
            }
        }
        return z3;
    }

    private void p() {
        aeu aeu = aei.a().d;
        this.K = !aei.a().d.b("transition-mode").equals("prefNoTransition");
        boolean c2 = aeu.c("right-to-left");
        this.w = c2 && aeu.c("page-navigation-rtl");
        this.x = c2 && aeu.c("start-from-tr");
        String b2 = aeu.b("orientation");
        if ("prefPortrait".equals(b2)) {
            setRequestedOrientation(1);
        } else if ("prefLandscape".equals(b2)) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(4);
        }
        t();
        this.J = aeu.c("show-page-numbering");
        this.L = aeu.c("show-2-pages-in-landscape");
        this.t.e = this.P != -1 ? this.P == 0 : aeu.c("always-hide-title-bar");
        d(this.t.e);
        String b3 = aeu.b("limit-touchzone");
        this.M = 0;
        if (b3.equals("prefTop25")) {
            this.M = -1;
        } else if (b3.equals("prefBottom25")) {
            this.M = 1;
        }
        super.m();
    }

    private void q() {
        boolean z2 = true;
        aei.a().d.a("comic-since-prompt", String.valueOf(aei.a().d.a("comic-since-prompt", 0) + 1));
        if (this.t.g != null) {
            this.t.b.b(true);
            boolean a2 = a(this.t.g, false);
            if (!a2) {
                this.t.g.h();
                this.t.g = null;
            }
            if (a2) {
                z2 = false;
            }
        }
        if (z2) {
            removeDialog(123);
            showDialog(123);
        }
    }

    private boolean r() {
        return this.a.getVisibility() == 0;
    }

    private void s() {
        new afs(this).a(new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                Viewer.this.c();
            }
        });
    }

    private void t() {
        this.b = b.a;
        String b2 = aei.a().d.b("view-mode");
        if ("prefFitVisible".equals(b2)) {
            this.b = b.a;
        } else if ("prefFillVisible".equals(b2)) {
            this.b = b.b;
        } else if ("prefFitWidth".equals(b2)) {
            this.b = b.c;
        } else if ("prefFitHeight".equals(b2)) {
            this.b = b.d;
        } else {
            this.b = b.e;
        }
        if (getResources().getConfiguration().orientation == 2 && aei.a().d.c("fit-width-on-rotate")) {
            this.b = b.c;
        }
    }

    private void u() {
        if (this.t.g != null) {
            if (!this.t.g.o() && !x()) {
                return;
            }
            if (this.t.g.p()) {
                aei.a().d.a("prefLastIncompleteComic", "");
            } else {
                aei.a().d.a("prefLastIncompleteComic", "fldr_" + this.t.g.a);
            }
        } else if (this.t.b != null && this.t.a != null) {
            if (!this.t.b.a() && !x()) {
                return;
            }
            if (this.t.a.j.a < this.t.a.d() - 1 || this.t.g != null) {
                aei.a().d.a("prefLastIncompleteComic", "cmc_" + this.t.b.a);
            } else {
                aei.a().d.a("prefLastIncompleteComic", "");
            }
        }
    }

    private void v() {
        if (this.u != null) {
            ComicImageView comicImageView = this.k;
            Bitmap bitmap = this.u;
            BitmapDrawable bitmapDrawable = (BitmapDrawable) comicImageView.getDrawable();
            if (!(bitmapDrawable != null ? bitmap == bitmapDrawable.getBitmap() : false)) {
                this.u.recycle();
                this.u = null;
                return;
            }
            Log.w("Viewer", "disposePreviousBitmap: Trying to recycle in use bitmap.");
            try {
                throw new Exception("Deleting Used Bitmap");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void w() {
        if (this.t.a != null && this.t.b != null) {
            if (this.t.b.a() || x()) {
                int i = this.t.a.j.a;
                if (this.t.b.a != 0 && this.t.b.j != i) {
                    this.t.b.j = i;
                    aek aek = aei.a().b;
                    aeq aeq = this.t.b;
                    aeq.l = ahc.b();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("readtill", Integer.valueOf(aeq.j));
                    contentValues.put("lastread", Long.valueOf(aeq.l));
                    aek.a(aeq, contentValues);
                }
            }
        }
    }

    private boolean x() {
        return ahc.b() - this.t.h >= 10000;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        int i2 = 0;
        if (i == -1 || i == R.id.settings_drawer) {
            this.s.setDrawerLockMode(this.F ? 0 : 1, 8388611);
        }
        if (i == -1 || i == R.id.tools_drawer) {
            DrawerLayout drawerLayout = this.s;
            if (!this.G) {
                i2 = 1;
            }
            drawerLayout.setDrawerLockMode(i2, 8388613);
        }
    }

    public final void a(afa afa, String str, boolean z2) {
        int i = 8;
        this.t.a = afa;
        this.t.f = null;
        if (this.t.a == null || !this.t.a.c()) {
            if (this.t.a != null) {
                this.t.a.a();
                this.t.a = null;
            }
            ahf.a(getApplicationContext(), getString(R.string.errorOpeningFile, new Object[]{str}));
            finish();
            return;
        }
        this.l.setText(this.t.b.c);
        this.t.a.b(0);
        if (this.t.b != null) {
            String b2 = aei.a().d.b("open-position");
            if (z2 || "prefBookmark".equals(b2)) {
                if (this.t.b.i > 0) {
                    this.t.a.b(this.t.b.i - 1);
                }
            } else if ("prefLastReadPage".equals(b2) && this.t.b.j > 0) {
                this.t.a.b(this.t.b.j);
            }
            if (this.t.e) {
                this.q.setVisibility(this.t.e ? 8 : 0);
                a(this.t.b.c, 1, 0);
            }
        }
        if (this.t.e) {
            LinearLayout linearLayout = this.q;
            if (!this.t.e) {
                i = 0;
            }
            linearLayout.setVisibility(i);
            a(this.t.b.c, 1, 0);
        }
        a(0, 0);
        u();
    }

    public final void a(agg agg, int i, boolean z2) {
        v();
    }

    public final boolean a(float f) {
        int width;
        int height;
        double d = (double) f;
        switch (AnonymousClass5.a[this.b - 1]) {
            case 1:
            case 2:
                width = this.j.getWidth();
                height = this.j.getHeight();
                break;
            case 3:
                width = this.j.getWidth();
                height = Math.max(this.j.getHeight(), (this.U.getHeight() * this.j.getWidth()) / this.U.getWidth());
                break;
            case 4:
                width = Math.max(this.j.getWidth(), (this.U.getWidth() * this.j.getHeight()) / this.U.getHeight());
                height = this.j.getHeight();
                break;
            case 5:
                width = this.U.getWidth();
                height = this.U.getHeight();
                break;
            default:
                height = 0;
                width = 0;
                break;
        }
        int round = (int) Math.round(((double) width) * d);
        int round2 = (int) Math.round(d * ((double) height));
        this.j.scrollBy((round - this.k.getWidth()) / 2, (round2 - this.k.getHeight()) / 2);
        this.k.setLayoutParams(new FrameLayout.LayoutParams(round, round2));
        return false;
    }

    public final boolean a(MotionEvent motionEvent) {
        super.a(motionEvent);
        if (r()) {
            this.a.a();
        } else if (this.A && c(motionEvent) && !n() && this.t != null && this.t.a != null) {
            if (((double) motionEvent.getX()) < ((double) this.j.getWidth()) * 0.5d) {
                c(true);
            } else {
                b(true);
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0038  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(int r10) {
        /*
            r9 = this;
            r8 = -1
            r2 = 0
            r1 = 1
            boolean r0 = r9.z
            if (r0 != 0) goto L_0x0008
        L_0x0007:
            return r2
        L_0x0008:
            boolean r0 = r9.n()
            if (r0 != 0) goto L_0x0066
            boolean r0 = r9.y
            if (r0 == 0) goto L_0x001e
            float r0 = r9.g
            double r4 = (double) r0
            r6 = 4607632778762754458(0x3ff199999999999a, double:1.1)
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 > 0) goto L_0x0066
        L_0x001e:
            meanlabs.comicreader.ui.TwoDScrollView r0 = r9.j
            boolean r3 = r0.a
            if (r3 != 0) goto L_0x0070
            int r3 = r0.getScrollX()
            if (r10 != r8) goto L_0x0041
            int r0 = r0.getPaddingLeft()
            int r0 = r0 + 5
            if (r3 <= r0) goto L_0x003f
            r0 = r1
        L_0x0033:
            if (r0 != 0) goto L_0x0066
            r0 = r1
        L_0x0036:
            if (r0 == 0) goto L_0x006e
            if (r10 != r1) goto L_0x0068
            r9.b((boolean) r1)
        L_0x003d:
            r2 = r1
            goto L_0x0007
        L_0x003f:
            r0 = r2
            goto L_0x0033
        L_0x0041:
            int r4 = r0.getWidth()
            int r5 = r0.getPaddingRight()
            int r4 = r4 - r5
            int r5 = r0.getPaddingLeft()
            int r4 = r4 - r5
            android.view.View r5 = r0.getChildAt(r2)
            int r5 = r5.getWidth()
            int r3 = r3 + r4
            int r0 = r0.getPaddingRight()
            int r0 = r0 + 5
            int r0 = r5 - r0
            if (r3 >= r0) goto L_0x0064
            r0 = r1
            goto L_0x0033
        L_0x0064:
            r0 = r2
            goto L_0x0033
        L_0x0066:
            r0 = r2
            goto L_0x0036
        L_0x0068:
            if (r10 != r8) goto L_0x006e
            r9.c((boolean) r1)
            goto L_0x003d
        L_0x006e:
            r1 = r2
            goto L_0x003d
        L_0x0070:
            r0 = r2
            goto L_0x0033
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.Viewer.b(int):boolean");
    }

    public final boolean b(MotionEvent motionEvent) {
        super.b(motionEvent);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        aeu aeu = aei.a().d;
        this.y = aeu.c("no-swipe-on-zoom");
        this.C = aeu.c("doubletap-for-page-fitting");
        this.z = aeu.c("swipe-for-page-turn");
        this.A = aeu.c("tap-for-page-turn");
        this.B = aeu.c("press-and-hold-for-seek");
        this.D = aeu.c("press-and-hold-for-menu");
        this.F = aeu.c("left-edge-swipe-for-settings");
        this.G = aeu.c("right-edge-swipe-for-tools");
        this.H = aeu.c("left-press-and-hold-for-prefs");
        this.I = aeu.c("right-press-and-hold-for-tools");
        this.E = aeu.c("use-volume-controls");
        a(-1);
    }

    public final void c(int i) {
        this.s.c(8388613);
        d(i);
    }

    public final void d() {
        if (!(this.t.a == null || this.t.a == null)) {
            this.k.post(new Runnable() {
                public final void run() {
                    Viewer.this.a(0, 0);
                }
            });
        }
        this.j.setOnLayoutListener((TwoDScrollView.a) null);
        if (!aei.a().d.a("app-state-flags", 1)) {
            s();
            aei.a().d.a(1);
        }
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.E) {
            int action = keyEvent.getAction();
            switch (keyEvent.getKeyCode()) {
                case 24:
                    if (action != 0) {
                        return true;
                    }
                    if (this.w) {
                        b(true);
                        return true;
                    }
                    c(true);
                    return true;
                case 25:
                    if (action != 0) {
                        return true;
                    }
                    if (this.w) {
                        c(true);
                        return true;
                    }
                    b(true);
                    return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void e() {
        if (this.t.a != null) {
            this.t.a.a();
            this.t.a = null;
        }
        finish();
    }

    /* access modifiers changed from: protected */
    public final Point f() {
        Point point = new Point(this.j.getTop(), this.j.getBottom());
        if (this.M == -1) {
            point.y /= 4;
        } else if (this.M == 1) {
            point.x = point.y - (point.y / 4);
        }
        return point;
    }

    public final void g() {
        p();
        a(0, 0);
    }

    public final boolean h() {
        return this.t.c;
    }

    public final void i() {
        c();
    }

    /* access modifiers changed from: protected */
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            g();
        }
    }

    public final void onBackPressed() {
        if (r()) {
            this.a.a();
        } else {
            super.onBackPressed();
        }
    }

    public final boolean onContextItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.bookmark /*2131493185*/:
                if (this.t.b == null) {
                    return true;
                }
                this.t.b.i = this.t.a.j.a + 1;
                aek aek = aei.a().b;
                aek.c(this.t.b);
                return true;
            case R.id.setAsWallpaper /*2131493186*/:
                try {
                    WallpaperManager.getInstance(getApplicationContext()).setBitmap(this.U);
                    ahf.a(ComicReaderApp.a(), (int) R.string.wallpaperChanged);
                    return true;
                } catch (Exception e) {
                    ahf.a(ComicReaderApp.a(), (int) R.string.errorChangingWallpaper);
                    return true;
                }
            default:
                return super.onContextItemSelected(menuItem);
        }
    }

    public final void onCreate(Bundle bundle) {
        boolean z2 = false;
        super.onCreate(bundle);
        this.O = afk.a((ReaderActivity) this);
        setContentView((int) R.layout.viewer);
        this.k = (ComicImageView) findViewById(R.id.pageImage);
        this.k.b = this;
        this.j = (TwoDScrollView) findViewById(R.id.pageView);
        this.l = (TextView) findViewById(R.id.title);
        this.m = (TextView) findViewById(R.id.page);
        this.q = (LinearLayout) findViewById(R.id.infoBar);
        this.a = (PageChooserView) findViewById(R.id.pageChooser);
        this.s = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.s.setDrawerShadow((int) R.drawable.drawer_shadow, 8388611);
        this.s.setDrawerShadow((int) R.drawable.drawer_shadow, 8388613);
        this.s.setDrawerTitle(8388613, getString(R.string.tools));
        final age age = new age(this, (ListView) this.s.findViewById(R.id.settings), this);
        final agf agf = new agf(this, (ListView) this.s.findViewById(R.id.tools), this);
        this.s.setDrawerListener(new DrawerLayout.g() {
            public final void onDrawerClosed(View view) {
                int i = R.id.settings_drawer;
                Viewer viewer = Viewer.this;
                if (view != Viewer.this.s.findViewById(R.id.settings_drawer)) {
                    i = R.id.tools_drawer;
                }
                viewer.a(i);
            }

            public final void onDrawerOpened(View view) {
                if (Viewer.this.s.b()) {
                    agw.a((AdapterView<?>) age.b);
                } else {
                    agf.a();
                }
                Viewer.this.s.setDrawerLockMode(0, view);
            }
        });
        this.j.setOnTouchListener(this);
        this.j.setOnLayoutListener(this);
        this.N = new afl(this);
        this.t = (a) getLastCustomNonConfigurationInstance();
        if (this.t == null || (this.t.a == null && this.t.f == null)) {
            this.t = new a();
            this.t.h = ahc.b();
            this.t.e = aei.a().d.c("always-hide-title-bar");
            Intent intent = getIntent();
            int intExtra = intent.getIntExtra("comicid", -1);
            int intExtra2 = intent.getIntExtra("seriesid", -1);
            String stringExtra = intent.getStringExtra("comicpath");
            boolean booleanExtra = intent.getBooleanExtra("prefBookmark", false);
            if (intExtra > 0) {
                this.t.b = aei.a().b.a(intExtra);
                if (this.t.b != null) {
                    a(this.t.b, booleanExtra);
                    z2 = true;
                }
            } else if (intExtra2 != -1) {
                this.t.g = aei.a().c.a(intExtra2);
                if (this.t.g != null) {
                    z2 = a(this.t.g, false);
                }
            } else if (stringExtra != null) {
                this.t.g = aei.a().c.a(stringExtra);
                if (this.t.g != null) {
                    z2 = a(this.t.g, false);
                } else {
                    this.t.b = aei.a().b.b(stringExtra);
                    if (this.t.b != null) {
                        a(this.t.b, booleanExtra);
                        z2 = true;
                    }
                }
            }
            if (!z2) {
                ahf.a(ComicReaderApp.a(), (int) R.string.errorOpeningComic);
                finish();
            }
        } else {
            this.O.e();
            if (this.t.f != null) {
                this.t.f.a((Activity) this, (aco.a) this);
            } else {
                this.l.setText(this.t.b.c);
                this.P = this.t.e != aei.a().d.c("always-hide-title-bar") ? this.t.e ? 0 : 1 : -1;
            }
        }
        t();
    }

    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getMenuInflater().inflate(R.menu.pagecontextmenu, contextMenu);
        contextMenu.setHeaderTitle(R.string.pageOptions);
        contextMenu.findItem(R.id.setAsWallpaper).setVisible(agv.a());
        contextMenu.findItem(R.id.bookmark).setVisible(this.t.b != null);
    }

    /* access modifiers changed from: protected */
    public final Dialog onCreateDialog(int i) {
        int i2;
        int i3;
        final aeq aeq;
        final aeq aeq2;
        switch (i) {
            case 123:
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                List<aeq> f = aei.a().b.f();
                if (f == null || f.size() <= 0) {
                    i3 = 0;
                    i2 = 0;
                } else {
                    ael.a(f, "prefSortByFilePathEx");
                    boolean a2 = agw.a();
                    i3 = 0;
                    i2 = 0;
                    for (aeq next : f) {
                        if (this.t.b == next) {
                            i2 = arrayList.size();
                            i3 = arrayList2.size();
                        } else if (!a2 || !agw.a(next)) {
                            if (!next.h.c(1)) {
                                arrayList.add(next);
                            }
                            if (next.h.c(2)) {
                                arrayList2.add(next);
                            }
                        }
                        i2 = i2;
                        i3 = i3;
                    }
                }
                if (arrayList2.size() > 0) {
                    if (arrayList2.size() <= i3) {
                        i3 = 0;
                    }
                    aeq = (aeq) arrayList2.get(i3);
                } else {
                    aeq = null;
                }
                if (arrayList.size() > 0) {
                    if (arrayList.size() <= i2) {
                        i2 = 0;
                    }
                    aeq2 = (aeq) arrayList.get(i2);
                } else {
                    aeq2 = null;
                }
                if (aeq == null && aeq2 == null) {
                    return null;
                }
                final ArrayList arrayList3 = new ArrayList();
                if (aeq != null) {
                    arrayList3.add(R + "\n> " + aeq.c);
                }
                if (aeq2 != null) {
                    arrayList3.add(S + "\n> " + aeq2.c);
                }
                arrayList3.add(T);
                final CheckBox checkBox = new CheckBox(this);
                checkBox.setText(R.string.markComicRead);
                checkBox.setChecked(true);
                return new AlertDialog.Builder(this).setTitle(R.string.lastPageDialogPrompt).setView(checkBox).setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new CharSequence[1]), -1, new DialogInterface.OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.dismiss();
                        if (checkBox.isChecked() && Viewer.this.t.b != null) {
                            Viewer.this.t.b.b(true);
                            ahf.a((Context) Viewer.this, Viewer.this.getString(R.string.comicMarkedRead, new Object[]{Viewer.this.t.b.c}));
                        }
                        String charSequence = ((CharSequence) arrayList3.get(i)).toString();
                        if (charSequence.equals(Viewer.T)) {
                            if (ComicReaderApp.d() != null) {
                                Viewer.this.k.postDelayed(new Runnable() {
                                    public final void run() {
                                        Catalog d = ComicReaderApp.d();
                                        if (!agv.g()) {
                                            if (!(!agv.a())) {
                                                return;
                                            }
                                        }
                                        if (aei.a().d.c("should-prompt-again") && aei.a().d.a("comic-since-prompt", 0) > 15) {
                                            aei.a().d.a("comic-since-prompt", BoxConstants.ROOT_FOLDER_ID);
                                            AlertDialog.Builder builder = new AlertDialog.Builder(d);
                                            builder.setTitle(R.string.ratingPromptTitle).setMessage(d.getString(R.string.ratingPrompt)).setCancelable(true).setPositiveButton(17039379, new DialogInterface.OnClickListener(d) {
                                                final /* synthetic */ Context a;

                                                public final void onClick(
/*
Method generation error in method: afw.4.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                                                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: afw.4.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
                                                	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:278)
                                                	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:314)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:298)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:64)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
                                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
                                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                                                
*/
                                            }).setNeutralButton(R.string.later, new DialogInterface.OnClickListener() {
                                                public final void onClick(
/*
Method generation error in method: afw.3.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                                                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: afw.3.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
                                                	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:278)
                                                	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:314)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:298)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:64)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
                                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
                                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                                                
*/
                                            }).setNegativeButton(R.string.never, new DialogInterface.OnClickListener() {
                                                public final void onClick(
/*
Method generation error in method: afw.2.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                                                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: afw.2.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
                                                	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:278)
                                                	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                                                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                                                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                                                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:314)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                                                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:298)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:64)
                                                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                                                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                                                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                                                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                                                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                                                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                                                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                                                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                                                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                                                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                                                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
                                                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
                                                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                                                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                                                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                                                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                                                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                                                
*/
                                            });
                                            builder.create().show();
                                        }
                                    }
                                }, 50);
                            }
                            Viewer.this.finish();
                        } else if (charSequence.startsWith(Viewer.R)) {
                            Viewer.this.a(aeq);
                        } else if (charSequence.startsWith(Viewer.S)) {
                            Viewer.this.a(aeq2);
                        }
                    }
                }).create();
            default:
                return null;
        }
    }

    public final boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.vieweroptionsmenu, menu);
        return true;
    }

    /* access modifiers changed from: protected */
    public final void onDestroy() {
        if (this.t.f != null) {
            this.t.f.a((Activity) null, (aco.a) null);
        }
        this.N.a();
        ComicImageView comicImageView = this.k;
        comicImageView.removeCallbacks(comicImageView);
        a(this.v);
        super.onDestroy();
    }

    public final boolean onDoubleTap(MotionEvent motionEvent) {
        if (r()) {
            this.a.a();
            return false;
        } else if (!this.C) {
            return false;
        } else {
            if (!c(motionEvent)) {
                return false;
            }
            this.b = b.a()[((this.b - 1) + 1) % 5];
            String str = "prefFitVisible";
            switch (AnonymousClass5.a[this.b - 1]) {
                case 1:
                    str = "prefFitVisible";
                    break;
                case 2:
                    str = "prefFillVisible";
                    break;
                case 3:
                    str = "prefFitWidth";
                    break;
                case 4:
                    str = "prefFitHeight";
                    break;
                case 5:
                    str = "prefOriginalSize";
                    break;
            }
            aei.a().d.a("view-mode", str);
            a(0, 0);
            a(agw.a((CharSequence) aei.a().d.b("view-mode")), 0, 0);
            return true;
        }
    }

    public final void onLongPress(MotionEvent motionEvent) {
        if (r()) {
            this.a.a();
        } else if (!n()) {
            super.onLongPress(motionEvent);
            if (motionEvent.getY() >= ((float) (this.j.getHeight() - Math.max(100, this.j.getHeight() / 7)))) {
                if (this.B) {
                    final int i = ((double) motionEvent.getX()) < ((double) this.j.getWidth()) * 0.5d ? -1 : 1;
                    final Handler handler = new Handler();
                    handler.post(new Runnable() {
                        public final void run() {
                            if (!(i == 1 ? Viewer.this.b(false) : Viewer.this.c(false)) || !Viewer.this.f) {
                                handler.removeMessages(0, this);
                            } else {
                                handler.postDelayed(this, 50);
                            }
                        }
                    });
                }
            } else if (((double) motionEvent.getX()) < ((double) this.j.getWidth()) * 0.25d && this.H) {
                this.s.b(8388611);
            } else if (((double) motionEvent.getX()) > ((double) this.j.getWidth()) * 0.75d && this.I) {
                this.s.b(8388613);
            } else if (this.D && this.O != null) {
                this.O.d();
            }
        }
    }

    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean d = d(menuItem.getItemId());
        return !d ? super.onOptionsItemSelected(menuItem) : d;
    }

    /* access modifiers changed from: protected */
    public final void onPause() {
        if (this.r != null) {
            this.r.cancel();
            this.r = null;
        }
        this.k.a();
        this.P = this.t.e != aei.a().d.c("always-hide-title-bar") ? this.t.e ? 0 : 1 : -1;
        w();
        u();
        if (this.t.g != null) {
            this.t.g.g = this.t.b.a;
            aen aen = aei.a().c;
            aen.c(this.t.g);
        }
        System.gc();
        this.N.a();
        ComicImageView comicImageView = this.k;
        comicImageView.removeCallbacks(comicImageView);
        super.onPause();
    }

    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.fullscreen).setTitle(this.t.e ? R.string.showTitle : R.string.hideTitle);
        menu.findItem(R.id.makeWallpaper).setVisible(agv.a());
        if (this.t.b == null) {
            menu.findItem(R.id.bookmark).setVisible(false);
        }
        MenuItem findItem = menu.findItem(R.id.setFrame);
        findItem.setTitle(this.t.c ? R.string.resetFrame : R.string.setFrame);
        findItem.setIcon(this.t.c ? R.drawable.a9_av_full_screen : R.drawable.a9_av_return_from_full_screen);
        return true;
    }

    /* access modifiers changed from: protected */
    public final void onResume() {
        int parseInt;
        super.onResume();
        c();
        p();
        afl afl = this.N;
        if (!afl.b && (parseInt = Integer.parseInt(aei.a().d.b("brightness-level"))) > 0) {
            afl.b();
            afl.a(afl.a, parseInt);
            afl.b = true;
        }
        ComicImageView comicImageView = this.k;
        comicImageView.c = ahc.b();
        comicImageView.setKeepScreenOn(true);
        comicImageView.postDelayed(comicImageView, 60000);
        this.O.e();
    }

    public final Object onRetainCustomNonConfigurationInstance() {
        this.v = true;
        return this.t;
    }

    public final void onWindowFocusChanged(boolean z2) {
        if (z2) {
            this.O.e();
        }
        super.onWindowFocusChanged(z2);
    }
}
