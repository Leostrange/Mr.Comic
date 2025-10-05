package meanlabs.comicreader.ui;

import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import defpackage.afy;
import meanlabs.comicreader.ReaderActivity;
import org.apache.http.HttpStatus;

public class GestureListenerActivity extends ReaderActivity implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener, View.OnTouchListener {
    private Handler a = null;
    private int b;
    b c = new b();
    protected GestureDetector d;
    protected afy e;
    /* access modifiers changed from: protected */
    public boolean f = false;
    protected float g = 1.0f;
    protected float h = 1.0f;
    protected long i = 0;
    private int j;
    private int k;
    private int l;

    class a extends afy.b {
        private a() {
        }

        /* synthetic */ a(GestureListenerActivity gestureListenerActivity, byte b) {
            this();
        }

        public final boolean a() {
            GestureListenerActivity.this.h = GestureListenerActivity.this.g;
            return true;
        }

        public final boolean a(afy afy) {
            GestureListenerActivity.this.h *= afy.b();
            GestureListenerActivity.this.h = Math.max(1.0f, Math.min(GestureListenerActivity.this.h, 4.0f));
            GestureListenerActivity.this.a(GestureListenerActivity.this.h);
            return true;
        }

        public final void b() {
            GestureListenerActivity.this.g = GestureListenerActivity.this.h;
            GestureListenerActivity.this.i = System.currentTimeMillis();
        }
    }

    class b implements Runnable {
        public MotionEvent a;

        b() {
        }

        public final void run() {
            GestureListenerActivity.this.a(this.a);
        }
    }

    private boolean c() {
        return System.currentTimeMillis() - this.i < 50;
    }

    public boolean a(float f2) {
        return false;
    }

    public boolean a(MotionEvent motionEvent) {
        return false;
    }

    public final void b(float f2) {
        this.g = f2;
        this.h = f2;
    }

    public boolean b(int i2) {
        return false;
    }

    public boolean b(MotionEvent motionEvent) {
        this.f = false;
        return true;
    }

    /* access modifiers changed from: protected */
    public final boolean c(MotionEvent motionEvent) {
        Point f2 = f();
        int y = (int) motionEvent.getY();
        return y >= f2.x && y <= f2.y;
    }

    /* access modifiers changed from: protected */
    public Point f() {
        return null;
    }

    /* access modifiers changed from: protected */
    public final void m() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int i2 = 100;
        String b2 = aei.a().d.b("swipe-senstivity");
        if ("prefHigh".equals(b2)) {
            i2 = 50;
        } else if ("prefLow".equals(b2)) {
            i2 = HttpStatus.SC_OK;
        }
        this.b = (int) (((float) (i2 * displayMetrics.densityDpi)) / 160.0f);
        this.j = (int) (((float) (displayMetrics.densityDpi * HttpStatus.SC_OK)) / 160.0f);
        this.k = (int) (((float) (displayMetrics.densityDpi * HttpStatus.SC_INTERNAL_SERVER_ERROR)) / 160.0f);
        this.l = (int) (((float) (displayMetrics.densityDpi * 2000)) / 160.0f);
        new StringBuilder("Configured min distance is:").append(this.b);
    }

    public final boolean n() {
        return this.e.a();
    }

    public final void o() {
        this.g = 1.0f;
        this.h = 1.0f;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = new GestureDetector(this, this);
        this.d.setOnDoubleTapListener(this);
        a aVar = new a(this, (byte) 0);
        this.e = Build.VERSION.SDK_INT < 8 ? new afp(this, aVar) : new afx(this, aVar);
        m();
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        if (this.e.a() || motionEvent == null || motionEvent2 == null || !c(motionEvent) || c()) {
            return false;
        }
        new StringBuilder("X Velocity is: ").append(f2).append(" and distance is ").append(String.valueOf(motionEvent.getX() - motionEvent2.getX()));
        if (motionEvent.getX() - motionEvent2.getX() > ((float) this.b) && Math.abs(f2) > ((float) this.k)) {
            Math.abs(f2);
            motionEvent2.getPointerCount();
            return b(1);
        } else if (motionEvent2.getX() - motionEvent.getX() > ((float) this.b) && Math.abs(f2) > ((float) this.k)) {
            Math.abs(f2);
            motionEvent2.getPointerCount();
            return b(-1);
        } else if (motionEvent.getY() - motionEvent2.getY() > ((float) this.j) && Math.abs(f3) > ((float) this.k)) {
            Math.abs(f3);
            motionEvent2.getPointerCount();
            return b(2);
        } else if (motionEvent2.getY() - motionEvent.getY() <= ((float) this.j) || Math.abs(f3) <= ((float) this.k)) {
            return false;
        } else {
            Math.abs(f3);
            motionEvent2.getPointerCount();
            return b(-2);
        }
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.f = true;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return false;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (!c()) {
            this.c.a = motionEvent;
            this.a = new Handler();
            this.a.postDelayed(this.c, 150);
        }
        return false;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean onDown;
        this.e.a(motionEvent);
        if (this.a != null) {
            this.a.removeMessages(0);
            this.a = null;
        }
        switch (motionEvent.getAction()) {
            case 0:
            case 1:
                if (motionEvent.getAction() != 1) {
                    onDown = onDown(motionEvent);
                    break;
                } else {
                    onDown = b(motionEvent);
                    break;
                }
            default:
                onDown = false;
                break;
        }
        return (onDown || !this.e.a()) && this.d.onTouchEvent(motionEvent);
    }
}
