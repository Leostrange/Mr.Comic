package defpackage;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.WeakHashMap;

/* renamed from: bh  reason: default package */
/* compiled from: ViewCompat */
public final class bh {
    static final j a;

    /* renamed from: bh$a */
    /* compiled from: ViewCompat */
    static class a implements j {
        WeakHashMap<View, bp> a = null;

        a() {
        }

        public void A(View view) {
        }

        public boolean B(View view) {
            return false;
        }

        public void C(View view) {
            if (view instanceof ay) {
                ((ay) view).stopNestedScroll();
            }
        }

        public boolean D(View view) {
            return view.getWidth() > 0 && view.getHeight() > 0;
        }

        public float E(View view) {
            return x(view) + w(view);
        }

        public boolean F(View view) {
            return view.getWindowToken() != null;
        }

        public int a(int i, int i2) {
            return i | i2;
        }

        public int a(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        public int a(View view) {
            return 2;
        }

        /* access modifiers changed from: package-private */
        public long a() {
            return 10;
        }

        public bw a(View view, bw bwVar) {
            return bwVar;
        }

        public void a(View view, float f) {
        }

        public void a(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        public void a(View view, int i, Paint paint) {
        }

        public void a(View view, al alVar) {
        }

        public void a(View view, Paint paint) {
        }

        public void a(View view, bc bcVar) {
        }

        public void a(View view, Runnable runnable) {
            view.postDelayed(runnable, a());
        }

        public void a(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, a() + j);
        }

        public void a(View view, boolean z) {
        }

        public void a(ViewGroup viewGroup) {
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(android.view.View r6, int r7) {
            /*
                r5 = this;
                r0 = 1
                r1 = 0
                boolean r2 = r6 instanceof defpackage.bf
                if (r2 == 0) goto L_0x0029
                bf r6 = (defpackage.bf) r6
                int r2 = r6.computeHorizontalScrollOffset()
                int r3 = r6.computeHorizontalScrollRange()
                int r4 = r6.computeHorizontalScrollExtent()
                int r3 = r3 - r4
                if (r3 == 0) goto L_0x0027
                if (r7 >= 0) goto L_0x0021
                if (r2 <= 0) goto L_0x001f
                r2 = r0
            L_0x001c:
                if (r2 == 0) goto L_0x0029
            L_0x001e:
                return r0
            L_0x001f:
                r2 = r1
                goto L_0x001c
            L_0x0021:
                int r3 = r3 + -1
                if (r2 >= r3) goto L_0x0027
                r2 = r0
                goto L_0x001c
            L_0x0027:
                r2 = r1
                goto L_0x001c
            L_0x0029:
                r0 = r1
                goto L_0x001e
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.bh.a.a(android.view.View, int):boolean");
        }

        public bw b(View view, bw bwVar) {
            return bwVar;
        }

        public void b(View view, float f) {
        }

        public void b(View view, int i, int i2, int i3, int i4) {
            view.setPadding(i, i2, i3, i4);
        }

        public void b(View view, boolean z) {
        }

        public boolean b(View view) {
            return false;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean b(android.view.View r6, int r7) {
            /*
                r5 = this;
                r0 = 1
                r1 = 0
                boolean r2 = r6 instanceof defpackage.bf
                if (r2 == 0) goto L_0x0029
                bf r6 = (defpackage.bf) r6
                int r2 = r6.computeVerticalScrollOffset()
                int r3 = r6.computeVerticalScrollRange()
                int r4 = r6.computeVerticalScrollExtent()
                int r3 = r3 - r4
                if (r3 == 0) goto L_0x0027
                if (r7 >= 0) goto L_0x0021
                if (r2 <= 0) goto L_0x001f
                r2 = r0
            L_0x001c:
                if (r2 == 0) goto L_0x0029
            L_0x001e:
                return r0
            L_0x001f:
                r2 = r1
                goto L_0x001c
            L_0x0021:
                int r3 = r3 + -1
                if (r2 >= r3) goto L_0x0027
                r2 = r0
                goto L_0x001c
            L_0x0027:
                r2 = r1
                goto L_0x001c
            L_0x0029:
                r0 = r1
                goto L_0x001e
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.bh.a.b(android.view.View, int):boolean");
        }

        public void c(View view, float f) {
        }

        public void c(View view, int i) {
        }

        public boolean c(View view) {
            return false;
        }

        public void d(View view) {
            view.invalidate();
        }

        public void d(View view, float f) {
        }

        public int e(View view) {
            return 0;
        }

        public void e(View view, float f) {
        }

        public float f(View view) {
            return 1.0f;
        }

        public void f(View view, float f) {
        }

        public int g(View view) {
            return 0;
        }

        public int h(View view) {
            return 0;
        }

        public ViewParent i(View view) {
            return view.getParent();
        }

        public boolean j(View view) {
            Drawable background = view.getBackground();
            return background != null && background.getOpacity() == -1;
        }

        public int k(View view) {
            return view.getMeasuredWidth();
        }

        public int l(View view) {
            return 0;
        }

        public int m(View view) {
            return view.getPaddingLeft();
        }

        public int n(View view) {
            return view.getPaddingRight();
        }

        public float o(View view) {
            return 0.0f;
        }

        public float p(View view) {
            return 0.0f;
        }

        public float q(View view) {
            return 0.0f;
        }

        public int r(View view) {
            return bi.a(view);
        }

        public int s(View view) {
            return bi.b(view);
        }

        public bp t(View view) {
            return new bp(view);
        }

        public int u(View view) {
            return 0;
        }

        public void v(View view) {
        }

        public float w(View view) {
            return 0.0f;
        }

        public float x(View view) {
            return 0.0f;
        }

        public boolean y(View view) {
            return false;
        }

        public void z(View view) {
        }
    }

    /* renamed from: bh$b */
    /* compiled from: ViewCompat */
    static class b extends a {
        b() {
        }

        public final void a(ViewGroup viewGroup) {
            if (bj.a == null) {
                Class<ViewGroup> cls = ViewGroup.class;
                try {
                    bj.a = cls.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (NoSuchMethodException e) {
                    Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", e);
                }
                bj.a.setAccessible(true);
            }
            try {
                bj.a.invoke(viewGroup, new Object[]{true});
            } catch (IllegalAccessException e2) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e2);
            } catch (IllegalArgumentException e3) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e3);
            } catch (InvocationTargetException e4) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e4);
            }
        }

        public final boolean j(View view) {
            return view.isOpaque();
        }
    }

    /* renamed from: bh$c */
    /* compiled from: ViewCompat */
    static class c extends b {
        c() {
        }

        public final int a(View view) {
            return view.getOverScrollMode();
        }
    }

    /* renamed from: bh$d */
    /* compiled from: ViewCompat */
    static class d extends c {
        d() {
        }

        public final void A(View view) {
            view.setSaveFromParentEnabled(false);
        }

        public final int a(int i, int i2) {
            return View.combineMeasuredStates(i, i2);
        }

        public final int a(int i, int i2, int i3) {
            return View.resolveSizeAndState(i, i2, i3);
        }

        /* access modifiers changed from: package-private */
        public final long a() {
            return ValueAnimator.getFrameDelay();
        }

        public final void a(View view, float f) {
            view.setTranslationX(f);
        }

        public final void a(View view, int i, Paint paint) {
            view.setLayerType(i, paint);
        }

        public void a(View view, Paint paint) {
            view.setLayerType(view.getLayerType(), paint);
            view.invalidate();
        }

        public final void b(View view, float f) {
            view.setTranslationY(f);
        }

        public final void b(View view, boolean z) {
            view.setActivated(z);
        }

        public final void c(View view, float f) {
            view.setAlpha(f);
        }

        public final void d(View view, float f) {
            view.setScaleX(f);
        }

        public final void e(View view, float f) {
            view.setScaleY(f);
        }

        public final float f(View view) {
            return view.getAlpha();
        }

        public final int g(View view) {
            return view.getLayerType();
        }

        public final int k(View view) {
            return view.getMeasuredWidthAndState();
        }

        public final int l(View view) {
            return view.getMeasuredState();
        }

        public final float o(View view) {
            return view.getTranslationX();
        }

        public final float p(View view) {
            return view.getTranslationY();
        }

        public final float q(View view) {
            return view.getScaleX();
        }

        public final void z(View view) {
            view.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: bh$e */
    /* compiled from: ViewCompat */
    static class e extends d {
        static Field b;
        static boolean c = false;

        e() {
        }

        public final void a(View view, al alVar) {
            view.setAccessibilityDelegate((View.AccessibilityDelegate) (alVar == null ? null : alVar.getBridge()));
        }

        public final void a(View view, boolean z) {
            view.setFitsSystemWindows(z);
        }

        public final boolean a(View view, int i) {
            return view.canScrollHorizontally(i);
        }

        public final boolean b(View view) {
            if (c) {
                return false;
            }
            if (b == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    b = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable th) {
                    c = true;
                    return false;
                }
            }
            try {
                return b.get(view) != null;
            } catch (Throwable th2) {
                c = true;
                return false;
            }
        }

        public final boolean b(View view, int i) {
            return view.canScrollVertically(i);
        }

        public final bp t(View view) {
            if (this.a == null) {
                this.a = new WeakHashMap();
            }
            bp bpVar = (bp) this.a.get(view);
            if (bpVar != null) {
                return bpVar;
            }
            bp bpVar2 = new bp(view);
            this.a.put(view, bpVar2);
            return bpVar2;
        }
    }

    /* renamed from: bh$f */
    /* compiled from: ViewCompat */
    static class f extends e {
        f() {
        }

        public final void a(View view, int i, int i2, int i3, int i4) {
            view.postInvalidate(i, i2, i3, i4);
        }

        public final void a(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public final void a(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        public void c(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            view.setImportantForAccessibility(i);
        }

        public final boolean c(View view) {
            return view.hasTransientState();
        }

        public final void d(View view) {
            view.postInvalidateOnAnimation();
        }

        public final int e(View view) {
            return view.getImportantForAccessibility();
        }

        public final ViewParent i(View view) {
            return view.getParentForAccessibility();
        }

        public final int r(View view) {
            return view.getMinimumWidth();
        }

        public final int s(View view) {
            return view.getMinimumHeight();
        }

        public void v(View view) {
            view.requestFitSystemWindows();
        }

        public final boolean y(View view) {
            return view.getFitsSystemWindows();
        }
    }

    /* renamed from: bh$g */
    /* compiled from: ViewCompat */
    static class g extends f {
        g() {
        }

        public final boolean B(View view) {
            return view.isPaddingRelative();
        }

        public final void a(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        public final void b(View view, int i, int i2, int i3, int i4) {
            view.setPaddingRelative(i, i2, i3, i4);
        }

        public final int h(View view) {
            return view.getLayoutDirection();
        }

        public final int m(View view) {
            return view.getPaddingStart();
        }

        public final int n(View view) {
            return view.getPaddingEnd();
        }

        public final int u(View view) {
            return view.getWindowSystemUiVisibility();
        }
    }

    /* renamed from: bh$h */
    /* compiled from: ViewCompat */
    static class h extends g {
        h() {
        }

        public final boolean D(View view) {
            return view.isLaidOut();
        }

        public final boolean F(View view) {
            return view.isAttachedToWindow();
        }

        public final void c(View view, int i) {
            view.setImportantForAccessibility(i);
        }
    }

    /* renamed from: bh$i */
    /* compiled from: ViewCompat */
    static class i extends h {
        i() {
        }

        public final void C(View view) {
            view.stopNestedScroll();
        }

        public final float E(View view) {
            return view.getZ();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
            r0 = ((defpackage.bx) r4).a;
            r1 = r3.onApplyWindowInsets(r0);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final defpackage.bw a(android.view.View r3, defpackage.bw r4) {
            /*
                r2 = this;
                boolean r0 = r4 instanceof defpackage.bx
                if (r0 == 0) goto L_0x0014
                r0 = r4
                bx r0 = (defpackage.bx) r0
                android.view.WindowInsets r0 = r0.a
                android.view.WindowInsets r1 = r3.onApplyWindowInsets(r0)
                if (r1 == r0) goto L_0x0014
                bx r4 = new bx
                r4.<init>(r1)
            L_0x0014:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.bh.i.a(android.view.View, bw):bw");
        }

        public final void a(View view, bc bcVar) {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(bcVar) {
                final /* synthetic */ bc a;

                public final android.view.WindowInsets onApplyWindowInsets(
/*
Method generation error in method: bk.1.onApplyWindowInsets(android.view.View, android.view.WindowInsets):android.view.WindowInsets, dex: classes.dex
                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: bk.1.onApplyWindowInsets(android.view.View, android.view.WindowInsets):android.view.WindowInsets, class status: UNLOADED
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
                	at jadx.core.codegen.ClassGen.addInnerClass(ClassGen.java:249)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:238)
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
        }

        /* JADX WARNING: Code restructure failed: missing block: B:2:0x0004, code lost:
            r0 = ((defpackage.bx) r4).a;
            r1 = r3.dispatchApplyWindowInsets(r0);
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final defpackage.bw b(android.view.View r3, defpackage.bw r4) {
            /*
                r2 = this;
                boolean r0 = r4 instanceof defpackage.bx
                if (r0 == 0) goto L_0x0014
                r0 = r4
                bx r0 = (defpackage.bx) r0
                android.view.WindowInsets r0 = r0.a
                android.view.WindowInsets r1 = r3.dispatchApplyWindowInsets(r0)
                if (r1 == r0) goto L_0x0014
                bx r4 = new bx
                r4.<init>(r1)
            L_0x0014:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.bh.i.b(android.view.View, bw):bw");
        }

        public final void f(View view, float f) {
            view.setElevation(f);
        }

        public final void v(View view) {
            view.requestApplyInsets();
        }

        public final float w(View view) {
            return view.getElevation();
        }

        public final float x(View view) {
            return view.getTranslationZ();
        }
    }

    /* renamed from: bh$j */
    /* compiled from: ViewCompat */
    interface j {
        void A(View view);

        boolean B(View view);

        void C(View view);

        boolean D(View view);

        float E(View view);

        boolean F(View view);

        int a(int i, int i2);

        int a(int i, int i2, int i3);

        int a(View view);

        bw a(View view, bw bwVar);

        void a(View view, float f);

        void a(View view, int i, int i2, int i3, int i4);

        void a(View view, int i, Paint paint);

        void a(View view, al alVar);

        void a(View view, Paint paint);

        void a(View view, bc bcVar);

        void a(View view, Runnable runnable);

        void a(View view, Runnable runnable, long j);

        void a(View view, boolean z);

        void a(ViewGroup viewGroup);

        boolean a(View view, int i);

        bw b(View view, bw bwVar);

        void b(View view, float f);

        void b(View view, int i, int i2, int i3, int i4);

        void b(View view, boolean z);

        boolean b(View view);

        boolean b(View view, int i);

        void c(View view, float f);

        void c(View view, int i);

        boolean c(View view);

        void d(View view);

        void d(View view, float f);

        int e(View view);

        void e(View view, float f);

        float f(View view);

        void f(View view, float f);

        int g(View view);

        int h(View view);

        ViewParent i(View view);

        boolean j(View view);

        int k(View view);

        int l(View view);

        int m(View view);

        int n(View view);

        float o(View view);

        float p(View view);

        float q(View view);

        int r(View view);

        int s(View view);

        bp t(View view);

        int u(View view);

        void v(View view);

        float w(View view);

        boolean y(View view);

        void z(View view);
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            a = new i();
        } else if (i2 >= 19) {
            a = new h();
        } else if (i2 >= 17) {
            a = new g();
        } else if (i2 >= 16) {
            a = new f();
        } else if (i2 >= 14) {
            a = new e();
        } else if (i2 >= 11) {
            a = new d();
        } else if (i2 >= 9) {
            a = new c();
        } else if (i2 >= 7) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static boolean A(View view) {
        return a.B(view);
    }

    public static void B(View view) {
        a.C(view);
    }

    public static boolean C(View view) {
        return a.D(view);
    }

    public static float D(View view) {
        return a.E(view);
    }

    public static boolean E(View view) {
        return a.F(view);
    }

    public static int a(int i2, int i3) {
        return a.a(i2, i3);
    }

    public static int a(int i2, int i3, int i4) {
        return a.a(i2, i3, i4);
    }

    public static int a(View view) {
        return a.a(view);
    }

    public static bw a(View view, bw bwVar) {
        return a.a(view, bwVar);
    }

    public static void a(View view, float f2) {
        a.a(view, f2);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        a.a(view, i2, i3, i4, i5);
    }

    public static void a(View view, int i2, Paint paint) {
        a.a(view, i2, paint);
    }

    public static void a(View view, al alVar) {
        a.a(view, alVar);
    }

    public static void a(View view, Paint paint) {
        a.a(view, paint);
    }

    public static void a(View view, bc bcVar) {
        a.a(view, bcVar);
    }

    public static void a(View view, Runnable runnable) {
        a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long j2) {
        a.a(view, runnable, j2);
    }

    public static void a(View view, boolean z) {
        a.a(view, z);
    }

    public static void a(ViewGroup viewGroup) {
        a.a(viewGroup);
    }

    public static boolean a(View view, int i2) {
        return a.a(view, i2);
    }

    public static bw b(View view, bw bwVar) {
        return a.b(view, bwVar);
    }

    public static void b(View view, float f2) {
        a.b(view, f2);
    }

    public static void b(View view, int i2, int i3, int i4, int i5) {
        a.b(view, i2, i3, i4, i5);
    }

    public static void b(View view, boolean z) {
        a.b(view, z);
    }

    public static boolean b(View view) {
        return a.b(view);
    }

    public static boolean b(View view, int i2) {
        return a.b(view, i2);
    }

    public static void c(View view, float f2) {
        a.c(view, f2);
    }

    public static void c(View view, int i2) {
        a.c(view, i2);
    }

    public static boolean c(View view) {
        return a.c(view);
    }

    public static void d(View view) {
        a.d(view);
    }

    public static void d(View view, float f2) {
        a.d(view, f2);
    }

    public static void d(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (i2 != 0 && Build.VERSION.SDK_INT < 11) {
            view.invalidate();
        }
    }

    public static int e(View view) {
        return a.e(view);
    }

    public static void e(View view, float f2) {
        a.e(view, f2);
    }

    public static void e(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (i2 != 0 && Build.VERSION.SDK_INT < 11) {
            view.invalidate();
        }
    }

    public static float f(View view) {
        return a.f(view);
    }

    public static void f(View view, float f2) {
        a.f(view, f2);
    }

    public static int g(View view) {
        return a.g(view);
    }

    public static int h(View view) {
        return a.h(view);
    }

    public static ViewParent i(View view) {
        return a.i(view);
    }

    public static boolean j(View view) {
        return a.j(view);
    }

    public static int k(View view) {
        return a.k(view);
    }

    public static int l(View view) {
        return a.l(view);
    }

    public static int m(View view) {
        return a.m(view);
    }

    public static int n(View view) {
        return a.n(view);
    }

    public static float o(View view) {
        return a.o(view);
    }

    public static float p(View view) {
        return a.p(view);
    }

    public static int q(View view) {
        return a.r(view);
    }

    public static int r(View view) {
        return a.s(view);
    }

    public static bp s(View view) {
        return a.t(view);
    }

    public static float t(View view) {
        return a.q(view);
    }

    public static float u(View view) {
        return a.w(view);
    }

    public static int v(View view) {
        return a.u(view);
    }

    public static void w(View view) {
        a.v(view);
    }

    public static boolean x(View view) {
        return a.y(view);
    }

    public static void y(View view) {
        a.z(view);
    }

    public static void z(View view) {
        a.A(view);
    }
}
