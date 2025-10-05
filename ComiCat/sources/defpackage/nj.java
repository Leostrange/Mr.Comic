package defpackage;

import defpackage.nf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* renamed from: nj  reason: default package */
/* compiled from: Splitter */
public final class nj {
    final ng a;
    final boolean b;
    final int c;
    private final b d;

    /* renamed from: nj$a */
    /* compiled from: Splitter */
    static abstract class a extends nf<String> {
        final CharSequence c;
        final ng d;
        final boolean e;
        int f = 0;
        int g;

        protected a(nj njVar, CharSequence charSequence) {
            this.d = njVar.a;
            this.e = njVar.b;
            this.g = njVar.c;
            this.c = charSequence;
        }

        /* access modifiers changed from: package-private */
        public abstract int a(int i);

        /* access modifiers changed from: protected */
        public final /* synthetic */ Object a() {
            int i;
            int i2 = this.f;
            while (this.f != -1) {
                int a = a(this.f);
                if (a == -1) {
                    a = this.c.length();
                    this.f = -1;
                } else {
                    this.f = b(a);
                }
                if (this.f == i2) {
                    this.f++;
                    if (this.f >= this.c.length()) {
                        this.f = -1;
                    }
                } else {
                    int i3 = i2;
                    while (i3 < a && this.d.a(this.c.charAt(i3))) {
                        i3++;
                    }
                    int i4 = a;
                    while (i > i3 && this.d.a(this.c.charAt(i - 1))) {
                        i4 = i - 1;
                    }
                    if (!this.e || i3 != i) {
                        if (this.g == 1) {
                            i = this.c.length();
                            this.f = -1;
                            while (i > i3 && this.d.a(this.c.charAt(i - 1))) {
                                i--;
                            }
                        } else {
                            this.g--;
                        }
                        return this.c.subSequence(i3, i).toString();
                    }
                    i2 = this.f;
                }
            }
            this.a = nf.a.c;
            return null;
        }

        /* access modifiers changed from: package-private */
        public abstract int b(int i);
    }

    /* renamed from: nj$b */
    /* compiled from: Splitter */
    interface b {
        Iterator<String> a(nj njVar, CharSequence charSequence);
    }

    public nj(b bVar) {
        this(bVar, ng.m);
    }

    private nj(b bVar, ng ngVar) {
        this.d = bVar;
        this.b = false;
        this.a = ngVar;
        this.c = Integer.MAX_VALUE;
    }

    public final List<String> a(CharSequence charSequence) {
        ni.a(charSequence);
        Iterator<String> a2 = this.d.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (a2.hasNext()) {
            arrayList.add(a2.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
