package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: fa  reason: default package */
/* compiled from: DefaultItemAnimator */
public final class fa extends RecyclerView.e {
    ArrayList<ArrayList<RecyclerView.s>> a = new ArrayList<>();
    ArrayList<ArrayList<b>> b = new ArrayList<>();
    ArrayList<ArrayList<a>> c = new ArrayList<>();
    ArrayList<RecyclerView.s> d = new ArrayList<>();
    ArrayList<RecyclerView.s> e = new ArrayList<>();
    ArrayList<RecyclerView.s> f = new ArrayList<>();
    ArrayList<RecyclerView.s> g = new ArrayList<>();
    private ArrayList<RecyclerView.s> n = new ArrayList<>();
    private ArrayList<RecyclerView.s> o = new ArrayList<>();
    private ArrayList<b> p = new ArrayList<>();
    private ArrayList<a> q = new ArrayList<>();

    /* renamed from: fa$a */
    /* compiled from: DefaultItemAnimator */
    static class a {
        public RecyclerView.s a;
        public RecyclerView.s b;
        public int c;
        public int d;
        public int e;
        public int f;

        private a(RecyclerView.s sVar, RecyclerView.s sVar2) {
            this.a = sVar;
            this.b = sVar2;
        }

        private a(RecyclerView.s sVar, RecyclerView.s sVar2, int i, int i2, int i3, int i4) {
            this(sVar, sVar2);
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
        }

        /* synthetic */ a(RecyclerView.s sVar, RecyclerView.s sVar2, int i, int i2, int i3, int i4, byte b2) {
            this(sVar, sVar2, i, i2, i3, i4);
        }

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    /* renamed from: fa$b */
    /* compiled from: DefaultItemAnimator */
    static class b {
        public RecyclerView.s a;
        public int b;
        public int c;
        public int d;
        public int e;

        private b(RecyclerView.s sVar, int i, int i2, int i3, int i4) {
            this.a = sVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        /* synthetic */ b(RecyclerView.s sVar, int i, int i2, int i3, int i4, byte b2) {
            this(sVar, i, i2, i3, i4);
        }
    }

    /* renamed from: fa$c */
    /* compiled from: DefaultItemAnimator */
    static class c implements bt {
        private c() {
        }

        /* synthetic */ c(byte b) {
            this();
        }

        public void onAnimationCancel(View view) {
        }

        public void onAnimationEnd(View view) {
        }

        public void onAnimationStart(View view) {
        }
    }

    private void a(a aVar) {
        if (aVar.a != null) {
            a(aVar, aVar.a);
        }
        if (aVar.b != null) {
            a(aVar, aVar.b);
        }
    }

    private static void a(List<RecyclerView.s> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            bh.s(list.get(size).a).a();
        }
    }

    private void a(List<a> list, RecyclerView.s sVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            a aVar = list.get(size);
            if (a(aVar, sVar) && aVar.a == null && aVar.b == null) {
                list.remove(aVar);
            }
        }
    }

    private boolean a(a aVar, RecyclerView.s sVar) {
        if (aVar.b == sVar) {
            aVar.b = null;
        } else if (aVar.a != sVar) {
            return false;
        } else {
            aVar.a = null;
        }
        bh.c(sVar.a, 1.0f);
        bh.a(sVar.a, 0.0f);
        bh.b(sVar.a, 0.0f);
        g(sVar);
        return true;
    }

    public final void a() {
        boolean z = !this.n.isEmpty();
        boolean z2 = !this.p.isEmpty();
        boolean z3 = !this.q.isEmpty();
        boolean z4 = !this.o.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.s> it = this.n.iterator();
            while (it.hasNext()) {
                final RecyclerView.s next = it.next();
                final bp s = bh.s(next.a);
                this.f.add(next);
                s.a(this.j).a(0.0f).a((bt) new c() {
                    public final void onAnimationEnd(View view) {
                        s.a((bt) null);
                        bh.c(view, 1.0f);
                        fa.this.d(next);
                        fa.this.f.remove(next);
                        fa.this.c();
                    }

                    public final void onAnimationStart(View view) {
                    }
                }).b();
            }
            this.n.clear();
            if (z2) {
                final ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.p);
                this.b.add(arrayList);
                this.p.clear();
                AnonymousClass1 r8 = new Runnable() {
                    public final void run() {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            b bVar = (b) it.next();
                            fa faVar = fa.this;
                            RecyclerView.s sVar = bVar.a;
                            int i = bVar.b;
                            int i2 = bVar.c;
                            int i3 = bVar.d;
                            int i4 = bVar.e;
                            View view = sVar.a;
                            int i5 = i3 - i;
                            int i6 = i4 - i2;
                            if (i5 != 0) {
                                bh.s(view).b(0.0f);
                            }
                            if (i6 != 0) {
                                bh.s(view).c(0.0f);
                            }
                            bp s = bh.s(view);
                            faVar.e.add(sVar);
                            s.a(faVar.k).a((bt) new c(sVar, i5, i6, s) {
                                final /* synthetic */ RecyclerView.s a;
                                final /* synthetic */ int b;
                                final /* synthetic */ int c;
                                final /* synthetic */ bp d;

                                {
                                    this.a = r3;
                                    this.b = r4;
                                    this.c = r5;
                                    this.d = r6;
                                }

                                public final void onAnimationCancel(View view) {
                                    if (this.b != 0) {
                                        bh.a(view, 0.0f);
                                    }
                                    if (this.c != 0) {
                                        bh.b(view, 0.0f);
                                    }
                                }

                                public final void onAnimationEnd(View view) {
                                    this.d.a((bt) null);
                                    fa.this.e(this.a);
                                    fa.this.e.remove(this.a);
                                    fa.this.c();
                                }

                                public final void onAnimationStart(View view) {
                                }
                            }).b();
                        }
                        arrayList.clear();
                        fa.this.b.remove(arrayList);
                    }
                };
                if (z) {
                    bh.a(((b) arrayList.get(0)).a.a, (Runnable) r8, this.j);
                } else {
                    r8.run();
                }
            }
            if (z3) {
                final ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(this.q);
                this.c.add(arrayList2);
                this.q.clear();
                AnonymousClass2 r82 = new Runnable() {
                    public final void run() {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            a aVar = (a) it.next();
                            fa faVar = fa.this;
                            RecyclerView.s sVar = aVar.a;
                            View view = sVar == null ? null : sVar.a;
                            RecyclerView.s sVar2 = aVar.b;
                            View view2 = sVar2 != null ? sVar2.a : null;
                            if (view != null) {
                                bp a2 = bh.s(view).a(faVar.l);
                                faVar.g.add(aVar.a);
                                a2.b((float) (aVar.e - aVar.c));
                                a2.c((float) (aVar.f - aVar.d));
                                a2.a(0.0f).a((bt) new c(aVar, a2) {
                                    final /* synthetic */ a a;
                                    final /* synthetic */ bp b;

                                    {
                                        this.a = r3;
                                        this.b = r4;
                                    }

                                    public final void onAnimationEnd(View view) {
                                        this.b.a((bt) null);
                                        bh.c(view, 1.0f);
                                        bh.a(view, 0.0f);
                                        bh.b(view, 0.0f);
                                        fa.this.g(this.a.a);
                                        fa.this.g.remove(this.a.a);
                                        fa.this.c();
                                    }

                                    public final void onAnimationStart(View view) {
                                    }
                                }).b();
                            }
                            if (view2 != null) {
                                bp s = bh.s(view2);
                                faVar.g.add(aVar.b);
                                s.b(0.0f).c(0.0f).a(faVar.l).a(1.0f).a((bt) new c(aVar, s, view2) {
                                    final /* synthetic */ a a;
                                    final /* synthetic */ bp b;
                                    final /* synthetic */ View c;

                                    {
                                        this.a = r3;
                                        this.b = r4;
                                        this.c = r5;
                                    }

                                    public final void onAnimationEnd(View view) {
                                        this.b.a((bt) null);
                                        bh.c(this.c, 1.0f);
                                        bh.a(this.c, 0.0f);
                                        bh.b(this.c, 0.0f);
                                        fa.this.g(this.a.b);
                                        fa.this.g.remove(this.a.b);
                                        fa.this.c();
                                    }

                                    public final void onAnimationStart(View view) {
                                    }
                                }).b();
                            }
                        }
                        arrayList2.clear();
                        fa.this.c.remove(arrayList2);
                    }
                };
                if (z) {
                    bh.a(((a) arrayList2.get(0)).a.a, (Runnable) r82, this.j);
                } else {
                    r82.run();
                }
            }
            if (z4) {
                final ArrayList arrayList3 = new ArrayList();
                arrayList3.addAll(this.o);
                this.a.add(arrayList3);
                this.o.clear();
                AnonymousClass3 r12 = new Runnable() {
                    public final void run() {
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            RecyclerView.s sVar = (RecyclerView.s) it.next();
                            fa faVar = fa.this;
                            bp s = bh.s(sVar.a);
                            faVar.d.add(sVar);
                            s.a(1.0f).a(faVar.i).a((bt) new c(sVar, s) {
                                final /* synthetic */ RecyclerView.s a;
                                final /* synthetic */ bp b;

                                {
                                    this.a = r3;
                                    this.b = r4;
                                }

                                public final void onAnimationCancel(View view) {
                                    bh.c(view, 1.0f);
                                }

                                public final void onAnimationEnd(View view) {
                                    this.b.a((bt) null);
                                    fa.this.f(this.a);
                                    fa.this.d.remove(this.a);
                                    fa.this.c();
                                }

                                public final void onAnimationStart(View view) {
                                }
                            }).b();
                        }
                        arrayList3.clear();
                        fa.this.a.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    bh.a(((RecyclerView.s) arrayList3.get(0)).a, (Runnable) r12, (z ? this.j : 0) + Math.max(z2 ? this.k : 0, z3 ? this.l : 0));
                } else {
                    r12.run();
                }
            }
        }
    }

    public final boolean a(RecyclerView.s sVar) {
        c(sVar);
        this.n.add(sVar);
        return true;
    }

    public final boolean a(RecyclerView.s sVar, int i, int i2, int i3, int i4) {
        View view = sVar.a;
        int o2 = (int) (((float) i) + bh.o(sVar.a));
        int p2 = (int) (((float) i2) + bh.p(sVar.a));
        c(sVar);
        int i5 = i3 - o2;
        int i6 = i4 - p2;
        if (i5 == 0 && i6 == 0) {
            e(sVar);
            return false;
        }
        if (i5 != 0) {
            bh.a(view, (float) (-i5));
        }
        if (i6 != 0) {
            bh.b(view, (float) (-i6));
        }
        this.p.add(new b(sVar, o2, p2, i3, i4, (byte) 0));
        return true;
    }

    public final boolean a(RecyclerView.s sVar, RecyclerView.s sVar2, int i, int i2, int i3, int i4) {
        float o2 = bh.o(sVar.a);
        float p2 = bh.p(sVar.a);
        float f2 = bh.f(sVar.a);
        c(sVar);
        int i5 = (int) (((float) (i3 - i)) - o2);
        int i6 = (int) (((float) (i4 - i2)) - p2);
        bh.a(sVar.a, o2);
        bh.b(sVar.a, p2);
        bh.c(sVar.a, f2);
        if (!(sVar2 == null || sVar2.a == null)) {
            c(sVar2);
            bh.a(sVar2.a, (float) (-i5));
            bh.b(sVar2.a, (float) (-i6));
            bh.c(sVar2.a, 0.0f);
        }
        this.q.add(new a(sVar, sVar2, i, i2, i3, i4, (byte) 0));
        return true;
    }

    public final boolean b() {
        return !this.o.isEmpty() || !this.q.isEmpty() || !this.p.isEmpty() || !this.n.isEmpty() || !this.e.isEmpty() || !this.f.isEmpty() || !this.d.isEmpty() || !this.g.isEmpty() || !this.b.isEmpty() || !this.a.isEmpty() || !this.c.isEmpty();
    }

    public final boolean b(RecyclerView.s sVar) {
        c(sVar);
        bh.c(sVar.a, 0.0f);
        this.o.add(sVar);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (!b()) {
            e();
        }
    }

    public final void c(RecyclerView.s sVar) {
        View view = sVar.a;
        bh.s(view).a();
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (this.p.get(size).a == sVar) {
                bh.b(view, 0.0f);
                bh.a(view, 0.0f);
                e(sVar);
                this.p.remove(size);
            }
        }
        a((List<a>) this.q, sVar);
        if (this.n.remove(sVar)) {
            bh.c(view, 1.0f);
            d(sVar);
        }
        if (this.o.remove(sVar)) {
            bh.c(view, 1.0f);
            f(sVar);
        }
        for (int size2 = this.c.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList = this.c.get(size2);
            a((List<a>) arrayList, sVar);
            if (arrayList.isEmpty()) {
                this.c.remove(size2);
            }
        }
        for (int size3 = this.b.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList2 = this.b.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((b) arrayList2.get(size4)).a == sVar) {
                    bh.b(view, 0.0f);
                    bh.a(view, 0.0f);
                    e(sVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.b.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.a.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList3 = this.a.get(size5);
            if (arrayList3.remove(sVar)) {
                bh.c(view, 1.0f);
                f(sVar);
                if (arrayList3.isEmpty()) {
                    this.a.remove(size5);
                }
            }
        }
        this.f.remove(sVar);
        this.d.remove(sVar);
        this.g.remove(sVar);
        this.e.remove(sVar);
        c();
    }

    public final void d() {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            b bVar = this.p.get(size);
            View view = bVar.a.a;
            bh.b(view, 0.0f);
            bh.a(view, 0.0f);
            e(bVar.a);
            this.p.remove(size);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            d(this.n.get(size2));
            this.n.remove(size2);
        }
        for (int size3 = this.o.size() - 1; size3 >= 0; size3--) {
            RecyclerView.s sVar = this.o.get(size3);
            bh.c(sVar.a, 1.0f);
            f(sVar);
            this.o.remove(size3);
        }
        for (int size4 = this.q.size() - 1; size4 >= 0; size4--) {
            a(this.q.get(size4));
        }
        this.q.clear();
        if (b()) {
            for (int size5 = this.b.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList = this.b.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    b bVar2 = (b) arrayList.get(size6);
                    View view2 = bVar2.a.a;
                    bh.b(view2, 0.0f);
                    bh.a(view2, 0.0f);
                    e(bVar2.a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.b.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.a.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList2 = this.a.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.s sVar2 = (RecyclerView.s) arrayList2.get(size8);
                    bh.c(sVar2.a, 1.0f);
                    f(sVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.a.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.c.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList3 = this.c.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    a((a) arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.c.remove(arrayList3);
                    }
                }
            }
            a((List<RecyclerView.s>) this.f);
            a((List<RecyclerView.s>) this.e);
            a((List<RecyclerView.s>) this.d);
            a((List<RecyclerView.s>) this.g);
            e();
        }
    }
}
