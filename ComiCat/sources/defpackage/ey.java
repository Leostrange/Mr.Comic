package defpackage;

import android.support.v7.widget.RecyclerView;
import defpackage.ai;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ey  reason: default package */
/* compiled from: AdapterHelper */
public final class ey implements fc.a {
    final ArrayList<b> a;
    final ArrayList<b> b;
    final a c;
    Runnable d;
    final boolean e;
    final fc f;
    private ai.a<b> g;

    /* renamed from: ey$a */
    /* compiled from: AdapterHelper */
    public interface a {
        RecyclerView.s a(int i);

        void a(int i, int i2);

        void a(b bVar);

        void b(int i, int i2);

        void b(b bVar);

        void c(int i, int i2);

        void d(int i, int i2);

        void e(int i, int i2);
    }

    /* renamed from: ey$b */
    /* compiled from: AdapterHelper */
    public static class b {
        public int a;
        public int b;
        public int c;

        b(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            if (this.a != bVar.a) {
                return false;
            }
            if (this.a == 3 && Math.abs(this.c - this.b) == 1 && this.c == bVar.b && this.b == bVar.c) {
                return true;
            }
            if (this.c != bVar.c) {
                return false;
            }
            return this.b == bVar.b;
        }

        public final int hashCode() {
            return (((this.a * 31) + this.b) * 31) + this.c;
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            switch (this.a) {
                case 0:
                    str = "add";
                    break;
                case 1:
                    str = "rm";
                    break;
                case 2:
                    str = "up";
                    break;
                case 3:
                    str = "mv";
                    break;
                default:
                    str = "??";
                    break;
            }
            return sb.append(str).append(",s:").append(this.b).append("c:").append(this.c).append("]").toString();
        }
    }

    public ey(a aVar) {
        this(aVar, (byte) 0);
    }

    private ey(a aVar, byte b2) {
        this.g = new ai.b();
        this.a = new ArrayList<>();
        this.b = new ArrayList<>();
        this.c = aVar;
        this.e = false;
        this.f = new fc(this);
    }

    private void a(b bVar, int i) {
        this.c.a(bVar);
        switch (bVar.a) {
            case 1:
                this.c.a(i, bVar.c);
                return;
            case 2:
                this.c.c(i, bVar.c);
                return;
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private void a(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }

    private int b(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = this.b.size() - 1;
        int i6 = i;
        while (size >= 0) {
            b bVar = this.b.get(size);
            if (bVar.a == 3) {
                if (bVar.b < bVar.c) {
                    i4 = bVar.b;
                    i5 = bVar.c;
                } else {
                    i4 = bVar.c;
                    i5 = bVar.b;
                }
                if (i6 < i4 || i6 > i5) {
                    if (i6 < bVar.b) {
                        if (i2 == 0) {
                            bVar.b++;
                            bVar.c++;
                            i3 = i6;
                        } else if (i2 == 1) {
                            bVar.b--;
                            bVar.c--;
                        }
                    }
                    i3 = i6;
                } else if (i4 == bVar.b) {
                    if (i2 == 0) {
                        bVar.c++;
                    } else if (i2 == 1) {
                        bVar.c--;
                    }
                    i3 = i6 + 1;
                } else {
                    if (i2 == 0) {
                        bVar.b++;
                    } else if (i2 == 1) {
                        bVar.b--;
                    }
                    i3 = i6 - 1;
                }
            } else {
                if (bVar.b <= i6) {
                    if (bVar.a == 0) {
                        i3 = i6 - bVar.c;
                    } else if (bVar.a == 1) {
                        i3 = bVar.c + i6;
                    }
                } else if (i2 == 0) {
                    bVar.b++;
                    i3 = i6;
                } else if (i2 == 1) {
                    bVar.b--;
                }
                i3 = i6;
            }
            size--;
            i6 = i3;
        }
        for (int size2 = this.b.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.b.get(size2);
            if (bVar2.a == 3) {
                if (bVar2.c == bVar2.b || bVar2.c < 0) {
                    this.b.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.c <= 0) {
                this.b.remove(size2);
                a(bVar2);
            }
        }
        return i6;
    }

    private void b(b bVar) {
        int i;
        boolean z;
        if (bVar.a == 0 || bVar.a == 3) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int b2 = b(bVar.b, bVar.a);
        int i2 = bVar.b;
        switch (bVar.a) {
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            default:
                throw new IllegalArgumentException("op should be remove or update." + bVar);
        }
        int i3 = 1;
        int i4 = b2;
        int i5 = i2;
        for (int i6 = 1; i6 < bVar.c; i6++) {
            int b3 = b(bVar.b + (i * i6), bVar.a);
            switch (bVar.a) {
                case 1:
                    if (b3 != i4) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                case 2:
                    if (b3 != i4 + 1) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
                default:
                    z = false;
                    break;
            }
            if (z) {
                i3++;
            } else {
                b a2 = a(bVar.a, i4, i3);
                a(a2, i5);
                a(a2);
                if (bVar.a == 2) {
                    i5 += i3;
                }
                i3 = 1;
                i4 = b3;
            }
        }
        a(bVar);
        if (i3 > 0) {
            b a3 = a(bVar.a, i4, i3);
            a(a3, i5);
            a(a3);
        }
    }

    private boolean b(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.b.get(i2);
            if (bVar.a == 3) {
                if (a(bVar.c, i2 + 1) == i) {
                    return true;
                }
            } else if (bVar.a == 0) {
                int i3 = bVar.b + bVar.c;
                for (int i4 = bVar.b; i4 < i3; i4++) {
                    if (a(i4, i2 + 1) == i) {
                        return true;
                    }
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void c(b bVar) {
        this.b.add(bVar);
        switch (bVar.a) {
            case 0:
                this.c.d(bVar.b, bVar.c);
                return;
            case 1:
                this.c.b(bVar.b, bVar.c);
                return;
            case 2:
                this.c.c(bVar.b, bVar.c);
                return;
            case 3:
                this.c.e(bVar.b, bVar.c);
                return;
            default:
                throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public final int a(int i) {
        return a(i, 0);
    }

    public final int a(int i, int i2) {
        int size = this.b.size();
        int i3 = i;
        while (i2 < size) {
            b bVar = this.b.get(i2);
            if (bVar.a == 3) {
                if (bVar.b == i3) {
                    i3 = bVar.c;
                } else {
                    if (bVar.b < i3) {
                        i3--;
                    }
                    if (bVar.c <= i3) {
                        i3++;
                    }
                }
            } else if (bVar.b > i3) {
                continue;
            } else if (bVar.a == 1) {
                if (i3 < bVar.b + bVar.c) {
                    return -1;
                }
                i3 -= bVar.c;
            } else if (bVar.a == 0) {
                i3 += bVar.c;
            }
            i2++;
        }
        return i3;
    }

    public final b a(int i, int i2, int i3) {
        b a2 = this.g.a();
        if (a2 == null) {
            return new b(i, i2, i3);
        }
        a2.a = i;
        a2.b = i2;
        a2.c = i3;
        return a2;
    }

    public final void a() {
        a((List<b>) this.a);
        a((List<b>) this.b);
    }

    public final void a(b bVar) {
        if (!this.e) {
            this.g.a(bVar);
        }
    }

    public final void b() {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        boolean z2;
        boolean z3;
        fc fcVar = this.f;
        ArrayList<b> arrayList = this.a;
        while (true) {
            boolean z4 = false;
            int size = arrayList.size() - 1;
            while (true) {
                if (size >= 0) {
                    if (arrayList.get(size).a != 3) {
                        z3 = true;
                    } else if (z4) {
                        i = size;
                    } else {
                        z3 = z4;
                    }
                    size--;
                    z4 = z3;
                } else {
                    i = -1;
                }
            }
            if (i != -1) {
                int i5 = i + 1;
                b bVar = arrayList.get(i);
                b bVar2 = arrayList.get(i5);
                switch (bVar2.a) {
                    case 0:
                        int i6 = 0;
                        if (bVar.c < bVar2.b) {
                            i6 = -1;
                        }
                        if (bVar.b < bVar2.b) {
                            i6++;
                        }
                        if (bVar2.b <= bVar.b) {
                            bVar.b += bVar2.c;
                        }
                        if (bVar2.b <= bVar.c) {
                            bVar.c += bVar2.c;
                        }
                        bVar2.b = i6 + bVar2.b;
                        arrayList.set(i, bVar2);
                        arrayList.set(i5, bVar);
                        break;
                    case 1:
                        b bVar3 = null;
                        boolean z5 = false;
                        if (bVar.b < bVar.c) {
                            z2 = false;
                            if (bVar2.b == bVar.b && bVar2.c == bVar.c - bVar.b) {
                                z5 = true;
                            }
                        } else {
                            z2 = true;
                            if (bVar2.b == bVar.c + 1 && bVar2.c == bVar.b - bVar.c) {
                                z5 = true;
                            }
                        }
                        if (bVar.c >= bVar2.b) {
                            if (bVar.c < bVar2.b + bVar2.c) {
                                bVar2.c--;
                                bVar.a = 1;
                                bVar.c = 1;
                                if (bVar2.c != 0) {
                                    break;
                                } else {
                                    arrayList.remove(i5);
                                    fcVar.a.a(bVar2);
                                    break;
                                }
                            }
                        } else {
                            bVar2.b--;
                        }
                        if (bVar.b <= bVar2.b) {
                            bVar2.b++;
                        } else if (bVar.b < bVar2.b + bVar2.c) {
                            bVar3 = fcVar.a.a(1, bVar.b + 1, (bVar2.b + bVar2.c) - bVar.b);
                            bVar2.c = bVar.b - bVar2.b;
                        }
                        if (!z5) {
                            if (z2) {
                                if (bVar3 != null) {
                                    if (bVar.b > bVar3.b) {
                                        bVar.b -= bVar3.c;
                                    }
                                    if (bVar.c > bVar3.b) {
                                        bVar.c -= bVar3.c;
                                    }
                                }
                                if (bVar.b > bVar2.b) {
                                    bVar.b -= bVar2.c;
                                }
                                if (bVar.c > bVar2.b) {
                                    bVar.c -= bVar2.c;
                                }
                            } else {
                                if (bVar3 != null) {
                                    if (bVar.b >= bVar3.b) {
                                        bVar.b -= bVar3.c;
                                    }
                                    if (bVar.c >= bVar3.b) {
                                        bVar.c -= bVar3.c;
                                    }
                                }
                                if (bVar.b >= bVar2.b) {
                                    bVar.b -= bVar2.c;
                                }
                                if (bVar.c >= bVar2.b) {
                                    bVar.c -= bVar2.c;
                                }
                            }
                            arrayList.set(i, bVar2);
                            if (bVar.b != bVar.c) {
                                arrayList.set(i5, bVar);
                            } else {
                                arrayList.remove(i5);
                            }
                            if (bVar3 == null) {
                                break;
                            } else {
                                arrayList.add(i, bVar3);
                                break;
                            }
                        } else {
                            arrayList.set(i, bVar2);
                            arrayList.remove(i5);
                            fcVar.a.a(bVar);
                            break;
                        }
                    case 2:
                        b bVar4 = null;
                        b bVar5 = null;
                        if (bVar.c < bVar2.b) {
                            bVar2.b--;
                        } else if (bVar.c < bVar2.b + bVar2.c) {
                            bVar2.c--;
                            bVar4 = fcVar.a.a(2, bVar.b, 1);
                        }
                        if (bVar.b <= bVar2.b) {
                            bVar2.b++;
                        } else if (bVar.b < bVar2.b + bVar2.c) {
                            int i7 = (bVar2.b + bVar2.c) - bVar.b;
                            bVar5 = fcVar.a.a(2, bVar.b + 1, i7);
                            bVar2.c -= i7;
                        }
                        arrayList.set(i5, bVar);
                        if (bVar2.c > 0) {
                            arrayList.set(i, bVar2);
                        } else {
                            arrayList.remove(i);
                            fcVar.a.a(bVar2);
                        }
                        if (bVar4 != null) {
                            arrayList.add(i, bVar4);
                        }
                        if (bVar5 == null) {
                            break;
                        } else {
                            arrayList.add(i, bVar5);
                            break;
                        }
                }
            } else {
                int size2 = this.a.size();
                for (int i8 = 0; i8 < size2; i8++) {
                    b bVar6 = this.a.get(i8);
                    switch (bVar6.a) {
                        case 0:
                            c(bVar6);
                            break;
                        case 1:
                            int i9 = bVar6.b;
                            int i10 = bVar6.c + bVar6.b;
                            char c2 = 65535;
                            int i11 = bVar6.b;
                            int i12 = 0;
                            while (i11 < i10) {
                                boolean z6 = false;
                                if (this.c.a(i11) != null || b(i11)) {
                                    if (c2 == 0) {
                                        b(a(1, i9, i12));
                                        z6 = true;
                                    }
                                    c2 = 1;
                                } else {
                                    if (c2 == 1) {
                                        c(a(1, i9, i12));
                                        z6 = true;
                                    }
                                    c2 = 0;
                                }
                                if (z6) {
                                    i4 = i11 - i12;
                                    i2 = i10 - i12;
                                    i3 = 1;
                                } else {
                                    int i13 = i11;
                                    i2 = i10;
                                    i3 = i12 + 1;
                                    i4 = i13;
                                }
                                i12 = i3;
                                i10 = i2;
                                i11 = i4 + 1;
                            }
                            if (i12 != bVar6.c) {
                                a(bVar6);
                                bVar6 = a(1, i9, i12);
                            }
                            if (c2 != 0) {
                                c(bVar6);
                                break;
                            } else {
                                b(bVar6);
                                break;
                            }
                            break;
                        case 2:
                            int i14 = bVar6.b;
                            int i15 = bVar6.b + bVar6.c;
                            int i16 = bVar6.b;
                            int i17 = 0;
                            int i18 = i14;
                            boolean z7 = true;
                            while (i16 < i15) {
                                if (this.c.a(i16) != null || b(i16)) {
                                    if (!z7) {
                                        b(a(2, i18, i17));
                                        i17 = 0;
                                        i18 = i16;
                                    }
                                    z = true;
                                } else {
                                    if (z7) {
                                        c(a(2, i18, i17));
                                        i17 = 0;
                                        i18 = i16;
                                    }
                                    z = false;
                                }
                                boolean z8 = z;
                                i16++;
                                i17++;
                                i18 = i18;
                                z7 = z8;
                            }
                            if (i17 != bVar6.c) {
                                a(bVar6);
                                bVar6 = a(2, i18, i17);
                            }
                            if (z7) {
                                c(bVar6);
                                break;
                            } else {
                                b(bVar6);
                                break;
                            }
                            break;
                        case 3:
                            c(bVar6);
                            break;
                    }
                    if (this.d != null) {
                        this.d.run();
                    }
                }
                this.a.clear();
                return;
            }
        }
    }

    public final void c() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.c.b(this.b.get(i));
        }
        a((List<b>) this.b);
    }

    public final boolean d() {
        return this.a.size() > 0;
    }

    public final void e() {
        c();
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.a.get(i);
            switch (bVar.a) {
                case 0:
                    this.c.b(bVar);
                    this.c.d(bVar.b, bVar.c);
                    break;
                case 1:
                    this.c.b(bVar);
                    this.c.a(bVar.b, bVar.c);
                    break;
                case 2:
                    this.c.b(bVar);
                    this.c.c(bVar.b, bVar.c);
                    break;
                case 3:
                    this.c.b(bVar);
                    this.c.e(bVar.b, bVar.c);
                    break;
            }
            if (this.d != null) {
                this.d.run();
            }
        }
        a((List<b>) this.a);
    }
}
