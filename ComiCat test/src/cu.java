// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class cu
{
    public static abstract class a
    {

        public int clampViewPositionHorizontal(View view, int i1, int j1)
        {
            return 0;
        }

        public int clampViewPositionVertical(View view, int i1, int j1)
        {
            return 0;
        }

        public int getOrderedChildIndex(int i1)
        {
            return i1;
        }

        public int getViewHorizontalDragRange(View view)
        {
            return 0;
        }

        public int getViewVerticalDragRange(View view)
        {
            return 0;
        }

        public void onEdgeDragStarted(int i1, int j1)
        {
        }

        public boolean onEdgeLock(int i1)
        {
            return false;
        }

        public void onEdgeTouched(int i1, int j1)
        {
        }

        public void onViewCaptured(View view, int i1)
        {
        }

        public void onViewDragStateChanged(int i1)
        {
        }

        public void onViewPositionChanged(View view, int i1, int j1, int k1, int l1)
        {
        }

        public void onViewReleased(View view, float f1, float f2)
        {
        }

        public abstract boolean tryCaptureView(View view, int i1);

        public a()
        {
        }
    }


    private static final Interpolator v = new Interpolator() {

        public final float getInterpolation(float f1)
        {
            f1--;
            return f1 * (f1 * f1 * f1 * f1) + 1.0F;
        }

    };
    public int a;
    public int b;
    public float c[];
    public float d[];
    public float e[];
    public float f[];
    public int g;
    public float h;
    public int i;
    public int j;
    public View k;
    private int l;
    private int m[];
    private int n[];
    private int o[];
    private VelocityTracker p;
    private float q;
    private cs r;
    private final a s;
    private boolean t;
    private final ViewGroup u;
    private final Runnable w = new Runnable() {

        final cu a;

        public final void run()
        {
            a.a(0);
        }

            
            {
                a = cu.this;
                super();
            }
    };

    private cu(Context context, ViewGroup viewgroup, a a1)
    {
        l = -1;
        if (viewgroup == null)
        {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (a1 == null)
        {
            throw new IllegalArgumentException("Callback may not be null");
        } else
        {
            u = viewgroup;
            s = a1;
            viewgroup = ViewConfiguration.get(context);
            i = (int)(context.getResources().getDisplayMetrics().density * 20F + 0.5F);
            b = viewgroup.getScaledTouchSlop();
            q = viewgroup.getScaledMaximumFlingVelocity();
            h = viewgroup.getScaledMinimumFlingVelocity();
            r = cs.a(context, v);
            return;
        }
    }

    private static float a(float f1, float f2, float f3)
    {
        float f4 = Math.abs(f1);
        if (f4 < f2)
        {
            f2 = 0.0F;
        } else
        if (f4 > f3)
        {
            f2 = f3;
            if (f1 <= 0.0F)
            {
                return -f3;
            }
        } else
        {
            return f1;
        }
        return f2;
    }

    private int a(int i1, int j1, int k1)
    {
        if (i1 == 0)
        {
            return 0;
        }
        int l1 = u.getWidth();
        int i2 = l1 / 2;
        float f3 = Math.min(1.0F, (float)Math.abs(i1) / (float)l1);
        float f1 = i2;
        float f2 = i2;
        f3 = (float)Math.sin((float)((double)(f3 - 0.5F) * 0.4712389167638204D));
        j1 = Math.abs(j1);
        if (j1 > 0)
        {
            i1 = Math.round(Math.abs((f3 * f2 + f1) / (float)j1) * 1000F) * 4;
        } else
        {
            i1 = (int)(((float)Math.abs(i1) / (float)k1 + 1.0F) * 256F);
        }
        return Math.min(i1, 600);
    }

    public static cu a(ViewGroup viewgroup, float f1, a a1)
    {
        viewgroup = a(viewgroup, a1);
        viewgroup.b = (int)((float)((cu) (viewgroup)).b * (1.0F / f1));
        return viewgroup;
    }

    public static cu a(ViewGroup viewgroup, a a1)
    {
        return new cu(viewgroup.getContext(), viewgroup, a1);
    }

    private void a(float f1, float f2)
    {
        t = true;
        s.onViewReleased(k, f1, f2);
        t = false;
        if (a == 1)
        {
            a(0);
        }
    }

    private void a(float f1, float f2, int i1)
    {
        int k1 = 0;
        if (c == null || c.length <= i1)
        {
            float af[] = new float[i1 + 1];
            float af2[] = new float[i1 + 1];
            float af3[] = new float[i1 + 1];
            float af4[] = new float[i1 + 1];
            int ai[] = new int[i1 + 1];
            int ai1[] = new int[i1 + 1];
            int ai2[] = new int[i1 + 1];
            if (c != null)
            {
                System.arraycopy(c, 0, af, 0, c.length);
                System.arraycopy(d, 0, af2, 0, d.length);
                System.arraycopy(e, 0, af3, 0, e.length);
                System.arraycopy(f, 0, af4, 0, f.length);
                System.arraycopy(m, 0, ai, 0, m.length);
                System.arraycopy(n, 0, ai1, 0, n.length);
                System.arraycopy(o, 0, ai2, 0, o.length);
            }
            c = af;
            d = af2;
            e = af3;
            f = af4;
            m = ai;
            n = ai1;
            o = ai2;
        }
        float af1[] = c;
        e[i1] = f1;
        af1[i1] = f1;
        af1 = d;
        f[i1] = f2;
        af1[i1] = f2;
        af1 = m;
        int i2 = (int)f1;
        int l1 = (int)f2;
        if (i2 < u.getLeft() + i)
        {
            k1 = 1;
        }
        int j1 = k1;
        if (l1 < u.getTop() + i)
        {
            j1 = k1 | 4;
        }
        k1 = j1;
        if (i2 > u.getRight() - i)
        {
            k1 = j1 | 2;
        }
        j1 = k1;
        if (l1 > u.getBottom() - i)
        {
            j1 = k1 | 8;
        }
        af1[i1] = j1;
        g = g | 1 << i1;
    }

    private boolean a(float f1, float f2, int i1, int j1)
    {
        f1 = Math.abs(f1);
        f2 = Math.abs(f2);
        if ((m[i1] & j1) == j1 && (j & j1) != 0 && (o[i1] & j1) != j1 && (n[i1] & j1) != j1 && (f1 > (float)b || f2 > (float)b))
        {
            if (f1 < f2 * 0.5F && s.onEdgeLock(j1))
            {
                int ai[] = o;
                ai[i1] = ai[i1] | j1;
                return false;
            }
            if ((n[i1] & j1) == 0 && f1 > (float)b)
            {
                return true;
            }
        }
        return false;
    }

    private boolean a(int i1, int j1, int k1, int l1)
    {
        int i2 = k.getLeft();
        int j2 = k.getTop();
        i1 -= i2;
        j1 -= j2;
        if (i1 == 0 && j1 == 0)
        {
            r.h();
            a(0);
            return false;
        }
        View view = k;
        k1 = b(k1, (int)h, (int)q);
        l1 = b(l1, (int)h, (int)q);
        int k2 = Math.abs(i1);
        int l2 = Math.abs(j1);
        int i3 = Math.abs(k1);
        int j3 = Math.abs(l1);
        int k3 = i3 + j3;
        int l3 = k2 + l2;
        float f1;
        float f2;
        float f3;
        if (k1 != 0)
        {
            f1 = (float)i3 / (float)k3;
        } else
        {
            f1 = (float)k2 / (float)l3;
        }
        if (l1 != 0)
        {
            f2 = (float)j3 / (float)k3;
        } else
        {
            f2 = (float)l2 / (float)l3;
        }
        k1 = a(i1, k1, s.getViewHorizontalDragRange(view));
        l1 = a(j1, l1, s.getViewVerticalDragRange(view));
        f3 = k1;
        k1 = (int)(f2 * (float)l1 + f1 * f3);
        r.a(i2, j2, i1, j1, k1);
        a(2);
        return true;
    }

    private boolean a(View view, float f1, float f2)
    {
        if (view != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        boolean flag;
        boolean flag1;
        if (s.getViewHorizontalDragRange(view) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (s.getViewVerticalDragRange(view) > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag || !flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (f1 * f1 + f2 * f2 > (float)(b * b))
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (Math.abs(f1) <= (float)b) goto _L1; else goto _L4
_L4:
        return true;
        if (!flag1 || Math.abs(f2) <= (float)b) goto _L1; else goto _L5
_L5:
        return true;
    }

    private static int b(int i1, int j1, int k1)
    {
        int l1 = Math.abs(i1);
        if (l1 < j1)
        {
            j1 = 0;
        } else
        if (l1 > k1)
        {
            j1 = k1;
            if (i1 <= 0)
            {
                return -k1;
            }
        } else
        {
            return i1;
        }
        return j1;
    }

    private void b(float f1, float f2, int i1)
    {
        int k1 = 1;
        int j1;
        if (!a(f1, f2, i1, 1))
        {
            k1 = 0;
        }
        j1 = k1;
        if (a(f2, f1, i1, 4))
        {
            j1 = k1 | 4;
        }
        k1 = j1;
        if (a(f1, f2, i1, 2))
        {
            k1 = j1 | 2;
        }
        j1 = k1;
        if (a(f2, f1, i1, 8))
        {
            j1 = k1 | 8;
        }
        if (j1 != 0)
        {
            int ai[] = n;
            ai[i1] = ai[i1] | j1;
            s.onEdgeDragStarted(j1, i1);
        }
    }

    private void b(int i1)
    {
        if (c == null)
        {
            return;
        } else
        {
            c[i1] = 0.0F;
            d[i1] = 0.0F;
            e[i1] = 0.0F;
            f[i1] = 0.0F;
            m[i1] = 0;
            n[i1] = 0;
            o[i1] = 0;
            g = g & ~(1 << i1);
            return;
        }
    }

    private boolean b(View view, int i1)
    {
        if (view == k && l == i1)
        {
            return true;
        }
        if (view != null && s.tryCaptureView(view, i1))
        {
            l = i1;
            a(view, i1);
            return true;
        } else
        {
            return false;
        }
    }

    public static boolean b(View view, int i1, int j1)
    {
        while (view == null || i1 < view.getLeft() || i1 >= view.getRight() || j1 < view.getTop() || j1 >= view.getBottom()) 
        {
            return false;
        }
        return true;
    }

    private void c(MotionEvent motionevent)
    {
        int j1 = ax.c(motionevent);
        for (int i1 = 0; i1 < j1; i1++)
        {
            int k1 = ax.b(motionevent, i1);
            float f1 = ax.c(motionevent, i1);
            float f2 = ax.d(motionevent, i1);
            e[k1] = f1;
            f[k1] = f2;
        }

    }

    private void d()
    {
        p.computeCurrentVelocity(1000, q);
        a(a(bg.a(p, l), h, q), a(bg.b(p, l), h, q));
    }

    public final void a()
    {
        l = -1;
        if (c != null)
        {
            Arrays.fill(c, 0.0F);
            Arrays.fill(d, 0.0F);
            Arrays.fill(e, 0.0F);
            Arrays.fill(f, 0.0F);
            Arrays.fill(m, 0);
            Arrays.fill(n, 0);
            Arrays.fill(o, 0);
            g = 0;
        }
        if (p != null)
        {
            p.recycle();
            p = null;
        }
    }

    final void a(int i1)
    {
        u.removeCallbacks(w);
        if (a != i1)
        {
            a = i1;
            s.onViewDragStateChanged(i1);
            if (a == 0)
            {
                k = null;
            }
        }
    }

    public final void a(View view, int i1)
    {
        if (view.getParent() != u)
        {
            throw new IllegalArgumentException((new StringBuilder("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (")).append(u).append(")").toString());
        } else
        {
            k = view;
            l = i1;
            s.onViewCaptured(view, i1);
            a(1);
            return;
        }
    }

    public final boolean a(int i1, int j1)
    {
        if (!t)
        {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        } else
        {
            return a(i1, j1, (int)bg.a(p, l), (int)bg.b(p, l));
        }
    }

    public final boolean a(MotionEvent motionevent)
    {
        int i1;
        int j1;
        j1 = ax.a(motionevent);
        i1 = ax.b(motionevent);
        if (j1 == 0)
        {
            a();
        }
        if (p == null)
        {
            p = VelocityTracker.obtain();
        }
        p.addMovement(motionevent);
        j1;
        JVM INSTR tableswitch 0 6: default 88
    //                   0 98
    //                   1 603
    //                   2 305
    //                   3 603
    //                   4 88
    //                   5 194
    //                   6 590;
           goto _L1 _L2 _L3 _L4 _L3 _L1 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_603;
_L7:
        float f1;
        float f4;
        return a == 1;
_L2:
        f1 = motionevent.getX();
        f4 = motionevent.getY();
        i1 = ax.b(motionevent, 0);
        a(f1, f4, i1);
        motionevent = b((int)f1, (int)f4);
        if (motionevent == k && a == 2)
        {
            b(motionevent, i1);
        }
        j1 = m[i1];
        if ((j & j1) != 0)
        {
            s.onEdgeTouched(j1 & j, i1);
        }
          goto _L7
_L5:
        int k1 = ax.b(motionevent, i1);
        float f2 = ax.c(motionevent, i1);
        float f5 = ax.d(motionevent, i1);
        a(f2, f5, k1);
        if (a == 0)
        {
            i1 = m[k1];
            if ((j & i1) != 0)
            {
                s.onEdgeTouched(i1 & j, k1);
            }
        } else
        if (a == 2)
        {
            motionevent = b((int)f2, (int)f5);
            if (motionevent == k)
            {
                b(motionevent, k1);
            }
        }
          goto _L7
_L4:
        if (c != null && d != null)
        {
            int l1 = ax.c(motionevent);
            i1 = 0;
            do
            {
                if (i1 >= l1)
                {
                    break;
                }
                int i2 = ax.b(motionevent, i1);
                float f3 = ax.c(motionevent, i1);
                float f6 = ax.d(motionevent, i1);
                float f7 = f3 - c[i2];
                float f8 = f6 - d[i2];
                View view = b((int)f3, (int)f6);
                boolean flag;
                if (view != null && a(view, f7, f8))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    int j2 = view.getLeft();
                    int k2 = (int)f7;
                    k2 = s.clampViewPositionHorizontal(view, k2 + j2, (int)f7);
                    int l2 = view.getTop();
                    int i3 = (int)f8;
                    i3 = s.clampViewPositionVertical(view, i3 + l2, (int)f8);
                    int j3 = s.getViewHorizontalDragRange(view);
                    int k3 = s.getViewVerticalDragRange(view);
                    if ((j3 == 0 || j3 > 0 && k2 == j2) && (k3 == 0 || k3 > 0 && i3 == l2))
                    {
                        break;
                    }
                }
                b(f7, f8, i2);
                if (a == 1 || flag && b(view, i2))
                {
                    break;
                }
                i1++;
            } while (true);
            c(motionevent);
        }
          goto _L7
_L6:
        b(ax.b(motionevent, i1));
          goto _L7
        a();
          goto _L7
    }

    public final boolean a(View view, int i1, int j1)
    {
        k = view;
        l = -1;
        boolean flag = a(i1, j1, 0, 0);
        if (!flag && a == 0 && k != null)
        {
            k = null;
        }
        return flag;
    }

    public final View b(int i1, int j1)
    {
        for (int k1 = u.getChildCount() - 1; k1 >= 0; k1--)
        {
            View view = u.getChildAt(s.getOrderedChildIndex(k1));
            if (i1 >= view.getLeft() && i1 < view.getRight() && j1 >= view.getTop() && j1 < view.getBottom())
            {
                return view;
            }
        }

        return null;
    }

    public final void b()
    {
        a();
        if (a == 2)
        {
            int i1 = r.b();
            int j1 = r.c();
            r.h();
            int k1 = r.b();
            int l1 = r.c();
            s.onViewPositionChanged(k, k1, l1, k1 - i1, l1 - j1);
        }
        a(0);
    }

    public final void b(MotionEvent motionevent)
    {
        int i1;
        int j1;
        int k1;
        int l1;
        i1 = 0;
        j1 = 0;
        l1 = ax.a(motionevent);
        k1 = ax.b(motionevent);
        if (l1 == 0)
        {
            a();
        }
        if (p == null)
        {
            p = VelocityTracker.obtain();
        }
        p.addMovement(motionevent);
        l1;
        JVM INSTR tableswitch 0 6: default 92
    //                   0 93
    //                   1 769
    //                   2 293
    //                   3 786
    //                   4 92
    //                   5 171
    //                   6 640;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        return;
_L2:
        float f1 = motionevent.getX();
        float f3 = motionevent.getY();
        i1 = ax.b(motionevent, 0);
        motionevent = b((int)f1, (int)f3);
        a(f1, f3, i1);
        b(((View) (motionevent)), i1);
        j1 = m[i1];
        if ((j & j1) != 0)
        {
            s.onEdgeTouched(j1 & j, i1);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        float f2;
        float f4;
        i1 = ax.b(motionevent, k1);
        f2 = ax.c(motionevent, k1);
        f4 = ax.d(motionevent, k1);
        a(f2, f4, i1);
        if (a != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b(b((int)f2, (int)f4), i1);
        j1 = m[i1];
        if ((j & j1) != 0)
        {
            s.onEdgeTouched(j1 & j, i1);
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
        j1 = (int)f2;
        k1 = (int)f4;
        if (b(k, j1, k1))
        {
            b(k, i1);
            return;
        }
          goto _L1
_L4:
        if (a == 1)
        {
            i1 = ax.a(motionevent, l);
            f2 = ax.c(motionevent, i1);
            f4 = ax.d(motionevent, i1);
            l1 = (int)(f2 - e[l]);
            int i2 = (int)(f4 - f[l]);
            j1 = k.getLeft() + l1;
            k1 = k.getTop() + i2;
            int j2 = k.getLeft();
            int k2 = k.getTop();
            i1 = j1;
            if (l1 != 0)
            {
                i1 = s.clampViewPositionHorizontal(k, j1, l1);
                k.offsetLeftAndRight(i1 - j2);
            }
            j1 = k1;
            if (i2 != 0)
            {
                j1 = s.clampViewPositionVertical(k, k1, i2);
                k.offsetTopAndBottom(j1 - k2);
            }
            if (l1 != 0 || i2 != 0)
            {
                s.onViewPositionChanged(k, i1, j1, i1 - j2, j1 - k2);
            }
            c(motionevent);
            return;
        }
        k1 = ax.c(motionevent);
        i1 = j1;
        do
        {
            if (i1 >= k1)
            {
                break;
            }
            j1 = ax.b(motionevent, i1);
            f2 = ax.c(motionevent, i1);
            f4 = ax.d(motionevent, i1);
            float f5 = f2 - c[j1];
            float f6 = f4 - d[j1];
            b(f5, f6, j1);
            if (a == 1)
            {
                break;
            }
            View view = b((int)f2, (int)f4);
            if (a(view, f5, f6) && b(view, j1))
            {
                break;
            }
            i1++;
        } while (true);
        c(motionevent);
        return;
_L7:
        j1 = ax.b(motionevent, k1);
        if (a != 1 || j1 != l) goto _L10; else goto _L9
_L9:
        k1 = ax.c(motionevent);
_L16:
        if (i1 >= k1) goto _L12; else goto _L11
_L11:
        l1 = ax.b(motionevent, i1);
        if (l1 == l) goto _L14; else goto _L13
_L13:
        f2 = ax.c(motionevent, i1);
        f4 = ax.d(motionevent, i1);
        if (b((int)f2, (int)f4) != k || !b(k, l1)) goto _L14; else goto _L15
_L15:
        i1 = l;
_L17:
        if (i1 == -1)
        {
            d();
        }
_L10:
        b(j1);
        return;
_L14:
        i1++;
          goto _L16
_L3:
        if (a == 1)
        {
            d();
        }
        a();
        return;
_L5:
        if (a == 1)
        {
            a(0.0F, 0.0F);
        }
        a();
        return;
_L12:
        i1 = -1;
          goto _L17
    }

    public final boolean c()
    {
        if (a == 2)
        {
            boolean flag = r.g();
            int i1 = r.b();
            int j1 = r.c();
            int k1 = i1 - k.getLeft();
            int l1 = j1 - k.getTop();
            if (k1 != 0)
            {
                k.offsetLeftAndRight(k1);
            }
            if (l1 != 0)
            {
                k.offsetTopAndBottom(l1);
            }
            if (k1 != 0 || l1 != 0)
            {
                s.onViewPositionChanged(k, i1, j1, k1, l1);
            }
            if (flag && i1 == r.d() && j1 == r.e())
            {
                r.h();
                flag = false;
            }
            if (!flag)
            {
                u.post(w);
            }
        }
        return a == 2;
    }

}
