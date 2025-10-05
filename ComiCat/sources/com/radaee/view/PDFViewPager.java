package com.radaee.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class PDFViewPager extends ViewPager {
    /* access modifiers changed from: private */
    public PDFPageView[] b = null;
    private ty c;
    private ty d;
    private Handler e = new Handler(Looper.myLooper()) {
        public final void handleMessage(Message message) {
            boolean z;
            switch (message.what) {
                case 0:
                    int i = ((tu) message.obj).c;
                    PDFPageView pDFPageView = PDFViewPager.this.b[i];
                    if (pDFPageView.b == null) {
                        z = false;
                    } else {
                        tw twVar = pDFPageView.b;
                        if (twVar.a == null) {
                            z = false;
                        } else {
                            int length = twVar.a.length;
                            int length2 = twVar.a[0].length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length2) {
                                    z = true;
                                } else {
                                    int i3 = 0;
                                    while (i3 < length) {
                                        tu tuVar = twVar.a[i3][i2];
                                        if (!((!tuVar.k && tuVar.j == 0) || (tuVar.k && tuVar.j > 0))) {
                                            z = false;
                                        } else {
                                            i3++;
                                        }
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                    if (z) {
                        PDFPageView pDFPageView2 = PDFViewPager.this.b[i];
                        if (pDFPageView2.b != null) {
                            tw twVar2 = pDFPageView2.b;
                            if (twVar2.b != null) {
                                twVar2.b.recycle();
                            }
                            twVar2.b = null;
                            pDFPageView2.c = false;
                            pDFPageView2.invalidate();
                            break;
                        }
                    }
                    break;
                case 1:
                    int i4 = message.arg1;
                    break;
                case 100:
                    if (PDFViewPager.this.b != null && PDFViewPager.this.b.length > 0) {
                        PDFViewPager.this.b[PDFViewPager.this.getCurrentItem()].invalidate();
                        break;
                    }
            }
            super.handleMessage(message);
        }
    };

    public PDFViewPager(Context context) {
        super(context);
    }

    public PDFViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        if (this.b != null) {
            int length = this.b.length;
            for (int i = 0; i < length; i++) {
                if (this.b[i].a != null) {
                    this.b[i].a();
                }
            }
        }
        if (this.c != null) {
            this.c.destroy();
            this.d.destroy();
            this.c = null;
            this.d = null;
        }
        super.finalize();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception e2) {
            return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException e2) {
            return false;
        }
    }
}
