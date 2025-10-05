package defpackage;

import java.io.UnsupportedEncodingException;
import java.util.Date;

/* renamed from: aba  reason: default package */
/* compiled from: Trans2FindFirst2Response */
final class aba extends aah {
    boolean S;
    int T;
    int U;
    int V;
    int a;
    String aA;
    int aB;

    /* renamed from: aba$a */
    /* compiled from: Trans2FindFirst2Response */
    class a implements za {
        int a;
        int b;
        long c;
        long d;
        long e;
        long f;
        long g;
        long h;
        int i;
        int j;
        int k;
        int l;
        String m;
        String n;

        a() {
        }

        public final String a() {
            return this.n;
        }

        public final int b() {
            return 1;
        }

        public final int c() {
            return this.i;
        }

        public final long d() {
            return this.c;
        }

        public final long e() {
            return this.e;
        }

        public final long f() {
            return this.g;
        }

        public final String toString() {
            return new String("SmbFindFileBothDirectoryInfo[nextEntryOffset=" + this.a + ",fileIndex=" + this.b + ",creationTime=" + new Date(this.c) + ",lastAccessTime=" + new Date(this.d) + ",lastWriteTime=" + new Date(this.e) + ",changeTime=" + new Date(this.f) + ",endOfFile=" + this.g + ",allocationSize=" + this.h + ",extFileAttributes=" + this.i + ",fileNameLength=" + this.j + ",eaSize=" + this.k + ",shortNameLength=" + this.l + ",shortName=" + this.m + ",filename=" + this.n + "]");
        }
    }

    aba() {
        this.g = 50;
        this.L = 1;
    }

    private String b(byte[] bArr, int i, int i2) {
        try {
            if (this.t) {
                return new String(bArr, i, i2, "UTF-16LE");
            }
            if (i2 > 0 && bArr[(i + i2) - 1] == 0) {
                i2--;
            }
            return new String(bArr, i, i2, zm.am);
        } catch (UnsupportedEncodingException e) {
            if (abx.a > 1) {
                e.printStackTrace(e);
            }
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i) {
        int i2;
        if (this.L == 1) {
            this.a = d(bArr, i);
            i2 = i + 2;
        } else {
            i2 = i;
        }
        this.Q = d(bArr, i2);
        int i3 = i2 + 2;
        this.S = (bArr[i3] & 1) == 1;
        int i4 = i3 + 2;
        this.T = d(bArr, i4);
        int i5 = i4 + 2;
        this.U = d(bArr, i5);
        return (i5 + 2) - i;
    }

    /* access modifiers changed from: package-private */
    public final int a(byte[] bArr, int i, int i2) {
        this.V = this.U + i;
        this.R = new a[this.Q];
        for (int i3 = 0; i3 < this.Q; i3++) {
            za[] zaVarArr = this.R;
            a aVar = new a();
            zaVarArr[i3] = aVar;
            aVar.a = e(bArr, i);
            aVar.b = e(bArr, i + 4);
            aVar.c = g(bArr, i + 8);
            aVar.e = g(bArr, i + 24);
            aVar.g = f(bArr, i + 40);
            aVar.i = e(bArr, i + 56);
            aVar.j = e(bArr, i + 60);
            aVar.n = b(bArr, i + 94, aVar.j);
            if (this.V >= i && (aVar.a == 0 || this.V < aVar.a + i)) {
                this.aA = aVar.n;
                this.aB = aVar.b;
            }
            i += aVar.a;
        }
        return this.K;
    }

    public final String toString() {
        return new String((this.L == 1 ? "Trans2FindFirst2Response[" : "Trans2FindNext2Response[") + super.toString() + ",sid=" + this.a + ",searchCount=" + this.Q + ",isEndOfSearch=" + this.S + ",eaErrorOffset=" + this.T + ",lastNameOffset=" + this.U + ",lastName=" + this.aA + "]");
    }
}
