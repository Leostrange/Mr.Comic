package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import defpackage.afy;

@SuppressLint({"NewApi"})
/* renamed from: afx  reason: default package */
/* compiled from: PostEclairScaleDetector */
public final class afx extends afy {
    afy.a a;
    private ScaleGestureDetector b;

    /* renamed from: afx$a */
    /* compiled from: PostEclairScaleDetector */
    class a extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private a() {
        }

        /* synthetic */ a(afx afx, byte b) {
            this();
        }

        public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            return afx.this.a.a(afx.this);
        }

        public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return afx.this.a.a();
        }

        public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            afx.this.a.b();
        }
    }

    public afx(Context context, afy.a aVar) {
        this.a = aVar;
        this.b = new ScaleGestureDetector(context, new a(this, (byte) 0));
    }

    public final boolean a() {
        return this.b.isInProgress();
    }

    public final boolean a(MotionEvent motionEvent) {
        try {
            return this.b.onTouchEvent(motionEvent);
        } catch (Exception e) {
            return false;
        }
    }

    public final float b() {
        return this.b.getScaleFactor();
    }
}
