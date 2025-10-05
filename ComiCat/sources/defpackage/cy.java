package defpackage;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.util.Arrays;
import java.util.List;

/* renamed from: cy  reason: default package */
/* compiled from: Palette */
public final class cy {
    public final b a;
    private final List<c> b;

    /* renamed from: cy$a */
    /* compiled from: Palette */
    public static final class a {
        public List<c> a;
        public Bitmap b;
        public int c = 16;
        public int d = 192;
        public b e;

        public a(Bitmap bitmap) {
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            this.b = bitmap;
        }
    }

    /* renamed from: cy$b */
    /* compiled from: Palette */
    public static abstract class b {
        b() {
        }

        public c a() {
            return null;
        }

        public abstract void a(List<c> list);
    }

    /* renamed from: cy$c */
    /* compiled from: Palette */
    public static final class c {
        public final int a;
        final int b;
        private final int c;
        private final int d;
        private final int e;
        private boolean f;
        private int g;
        private int h;
        private float[] i;

        public c(int i2, int i3) {
            this.c = Color.red(i2);
            this.d = Color.green(i2);
            this.e = Color.blue(i2);
            this.a = i2;
            this.b = i3;
        }

        private void b() {
            if (!this.f) {
                int a2 = h.a(-1, this.a, 4.5f);
                int a3 = h.a(-1, this.a, 3.0f);
                if (a2 == -1 || a3 == -1) {
                    int a4 = h.a(-16777216, this.a, 4.5f);
                    int a5 = h.a(-16777216, this.a, 3.0f);
                    if (a4 == -1 || a4 == -1) {
                        this.h = a2 != -1 ? h.b(-1, a2) : h.b(-16777216, a4);
                        this.g = a3 != -1 ? h.b(-1, a3) : h.b(-16777216, a5);
                        this.f = true;
                        return;
                    }
                    this.h = h.b(-16777216, a4);
                    this.g = h.b(-16777216, a5);
                    this.f = true;
                    return;
                }
                this.h = h.b(-1, a2);
                this.g = h.b(-1, a3);
                this.f = true;
            }
        }

        public final float[] a() {
            if (this.i == null) {
                this.i = new float[3];
                h.a(this.c, this.d, this.e, this.i);
            }
            return this.i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.b == cVar.b && this.a == cVar.a;
        }

        public final int hashCode() {
            return (this.a * 31) + this.b;
        }

        public final String toString() {
            StringBuilder append = new StringBuilder(getClass().getSimpleName()).append(" [RGB: #").append(Integer.toHexString(this.a)).append(']').append(" [HSL: ").append(Arrays.toString(a())).append(']').append(" [Population: ").append(this.b).append(']').append(" [Title Text: #");
            b();
            StringBuilder append2 = append.append(Integer.toHexString(this.g)).append(']').append(" [Body Text: #");
            b();
            return append2.append(Integer.toHexString(this.h)).append(']').toString();
        }
    }

    private cy(List<c> list, b bVar) {
        this.b = list;
        this.a = bVar;
    }

    public /* synthetic */ cy(List list, b bVar, byte b2) {
        this(list, bVar);
    }
}
