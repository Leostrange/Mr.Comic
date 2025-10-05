package defpackage;

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import defpackage.bz;

/* renamed from: fe  reason: default package */
/* compiled from: RecyclerViewAccessibilityDelegate */
public final class fe extends al {
    final RecyclerView a;
    public final al b = new al() {
        public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
            super.onInitializeAccessibilityNodeInfo(view, bzVar);
            if (!fe.this.a() && fe.this.a.getLayoutManager() != null) {
                fe.this.a.getLayoutManager().a(view, bzVar);
            }
        }

        public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (fe.this.a() || fe.this.a.getLayoutManager() == null) {
                return false;
            }
            RecyclerView.h layoutManager = fe.this.a.getLayoutManager();
            RecyclerView.l lVar = layoutManager.r.a;
            RecyclerView.p pVar = layoutManager.r.n;
            return false;
        }
    };

    public fe(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    /* access modifiers changed from: package-private */
    public final boolean a() {
        RecyclerView recyclerView = this.a;
        return !recyclerView.f || recyclerView.g || recyclerView.b.d();
    }

    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !a()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().a(accessibilityEvent);
            }
        }
    }

    public final void onInitializeAccessibilityNodeInfo(View view, bz bzVar) {
        super.onInitializeAccessibilityNodeInfo(view, bzVar);
        bzVar.b((CharSequence) RecyclerView.class.getName());
        if (!a() && this.a.getLayoutManager() != null) {
            RecyclerView.h layoutManager = this.a.getLayoutManager();
            RecyclerView.l lVar = layoutManager.r.a;
            RecyclerView.p pVar = layoutManager.r.n;
            if (bh.b((View) layoutManager.r, -1) || bh.a((View) layoutManager.r, -1)) {
                bzVar.a((int) FragmentTransaction.TRANSIT_EXIT_MASK);
                bzVar.i(true);
            }
            if (bh.b((View) layoutManager.r, 1) || bh.a((View) layoutManager.r, 1)) {
                bzVar.a((int) FragmentTransaction.TRANSIT_ENTER_MASK);
                bzVar.i(true);
            }
            bz.a.a(bzVar.b, new bz.i(bz.a.a(layoutManager.a(lVar, pVar), layoutManager.b(lVar, pVar))).a);
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x009d, code lost:
        r3 = r0;
        r0 = 0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean performAccessibilityAction(android.view.View r8, int r9, android.os.Bundle r10) {
        /*
            r7 = this;
            r5 = -1
            r2 = 1
            r1 = 0
            boolean r0 = super.performAccessibilityAction(r8, r9, r10)
            if (r0 == 0) goto L_0x000b
            r1 = r2
        L_0x000a:
            return r1
        L_0x000b:
            boolean r0 = r7.a()
            if (r0 != 0) goto L_0x000a
            android.support.v7.widget.RecyclerView r0 = r7.a
            android.support.v7.widget.RecyclerView$h r0 = r0.getLayoutManager()
            if (r0 == 0) goto L_0x000a
            android.support.v7.widget.RecyclerView r0 = r7.a
            android.support.v7.widget.RecyclerView$h r4 = r0.getLayoutManager()
            android.support.v7.widget.RecyclerView r0 = r4.r
            android.support.v7.widget.RecyclerView$l r0 = r0.a
            android.support.v7.widget.RecyclerView r0 = r4.r
            android.support.v7.widget.RecyclerView$p r0 = r0.n
            android.support.v7.widget.RecyclerView r0 = r4.r
            if (r0 == 0) goto L_0x000a
            switch(r9) {
                case 4096: goto L_0x006d;
                case 8192: goto L_0x003b;
                default: goto L_0x002e;
            }
        L_0x002e:
            r0 = r1
            r3 = r1
        L_0x0030:
            if (r3 != 0) goto L_0x0034
            if (r0 == 0) goto L_0x000a
        L_0x0034:
            android.support.v7.widget.RecyclerView r1 = r4.r
            r1.scrollBy(r0, r3)
            r1 = r2
            goto L_0x000a
        L_0x003b:
            android.support.v7.widget.RecyclerView r0 = r4.r
            boolean r0 = defpackage.bh.b((android.view.View) r0, (int) r5)
            if (r0 == 0) goto L_0x00a2
            int r0 = r4.m()
            int r3 = r4.o()
            int r0 = r0 - r3
            int r3 = r4.q()
            int r0 = r0 - r3
            int r0 = -r0
        L_0x0052:
            android.support.v7.widget.RecyclerView r3 = r4.r
            boolean r3 = defpackage.bh.a((android.view.View) r3, (int) r5)
            if (r3 == 0) goto L_0x009d
            int r3 = r4.l()
            int r5 = r4.n()
            int r3 = r3 - r5
            int r5 = r4.p()
            int r3 = r3 - r5
            int r3 = -r3
            r6 = r3
            r3 = r0
            r0 = r6
            goto L_0x0030
        L_0x006d:
            android.support.v7.widget.RecyclerView r0 = r4.r
            boolean r0 = defpackage.bh.b((android.view.View) r0, (int) r2)
            if (r0 == 0) goto L_0x00a0
            int r0 = r4.m()
            int r3 = r4.o()
            int r0 = r0 - r3
            int r3 = r4.q()
            int r0 = r0 - r3
        L_0x0083:
            android.support.v7.widget.RecyclerView r3 = r4.r
            boolean r3 = defpackage.bh.a((android.view.View) r3, (int) r2)
            if (r3 == 0) goto L_0x009d
            int r3 = r4.l()
            int r5 = r4.n()
            int r3 = r3 - r5
            int r5 = r4.p()
            int r3 = r3 - r5
            r6 = r3
            r3 = r0
            r0 = r6
            goto L_0x0030
        L_0x009d:
            r3 = r0
            r0 = r1
            goto L_0x0030
        L_0x00a0:
            r0 = r1
            goto L_0x0083
        L_0x00a2:
            r0 = r1
            goto L_0x0052
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fe.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
    }
}
