package defpackage;

import defpackage.aii;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.message.TokenParser;

/* renamed from: aiy  reason: default package */
/* compiled from: Utf8StreamParser */
public final class aiy extends ais {
    private static final int[] S = ajt.b();
    private static final int[] T = ajt.a();
    protected aim L;
    protected final ajk M;
    protected int[] N = new int[16];
    protected boolean O = false;
    protected InputStream P;
    protected byte[] Q;
    protected boolean R;
    private int U;

    public aiy(ajc ajc, int i, InputStream inputStream, aim aim, ajk ajk, byte[] bArr, int i2, int i3, boolean z) {
        super(ajc, i);
        this.P = inputStream;
        this.L = aim;
        this.M = ajk;
        this.Q = bArr;
        this.e = i2;
        this.f = i3;
        this.R = z;
        if (!aii.a.CANONICALIZE_FIELD_NAMES.a(i)) {
            x();
        }
    }

    private final void A() {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
    }

    private final void B() {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr2 = this.Q;
        int i2 = this.e;
        this.e = i2 + 1;
        byte b2 = bArr2[i2];
        if ((b2 & 192) != 128) {
            b(b2 & 255, this.e);
        }
    }

    private final void C() {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr2 = this.Q;
        int i2 = this.e;
        this.e = i2 + 1;
        byte b2 = bArr2[i2];
        if ((b2 & 192) != 128) {
            b(b2 & 255, this.e);
        }
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr3 = this.Q;
        int i3 = this.e;
        this.e = i3 + 1;
        byte b3 = bArr3[i3];
        if ((b3 & 192) != 128) {
            b(b3 & 255, this.e);
        }
    }

    private void D() {
        if ((this.e < this.f || p()) && this.Q[this.e] == 10) {
            this.e++;
        }
        this.h++;
        this.i = this.e;
    }

    private void E() {
        this.h++;
        this.i = this.e;
    }

    private int F() {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        return bArr[i] & 255;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, byte], vars: [r9v0 ?, r9v1 ?, r9v2 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    private defpackage.ail a(
/*
Method generation error in method: aiy.a(int, boolean):ail, dex: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ?
    	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:189)
    	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:157)
    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:129)
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
    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
    
*/

    private final ail a(char[] cArr, int i, int i2, boolean z, int i3) {
        int i4;
        char[] cArr2;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        boolean z3 = false;
        if (i2 == 46) {
            int i12 = i + 1;
            cArr[i] = (char) i2;
            while (true) {
                if (this.e >= this.f && !p()) {
                    z3 = true;
                    break;
                }
                byte[] bArr = this.Q;
                int i13 = this.e;
                this.e = i13 + 1;
                i2 = bArr[i13] & 255;
                if (i2 < 48 || i2 > 57) {
                    break;
                }
                i11++;
                if (i12 >= cArr.length) {
                    cArr = this.o.j();
                    i12 = 0;
                }
                int i14 = i12;
                i12 = i14 + 1;
                cArr[i14] = (char) i2;
            }
            if (i11 == 0) {
                a(i2, "Decimal point not followed by a digit");
            }
            i4 = i11;
            i5 = i12;
            cArr2 = cArr;
        } else {
            i4 = 0;
            cArr2 = cArr;
            i5 = i;
        }
        if (i2 == 101 || i2 == 69) {
            if (i5 >= cArr2.length) {
                cArr2 = this.o.j();
                i5 = 0;
            }
            int i15 = i5 + 1;
            cArr2[i5] = (char) i2;
            if (this.e >= this.f) {
                o();
            }
            byte[] bArr2 = this.Q;
            int i16 = this.e;
            this.e = i16 + 1;
            byte b = bArr2[i16] & 255;
            if (b == 45 || b == 43) {
                if (i15 >= cArr2.length) {
                    cArr2 = this.o.j();
                    i10 = 0;
                } else {
                    i10 = i15;
                }
                int i17 = i10 + 1;
                cArr2[i10] = (char) b;
                if (this.e >= this.f) {
                    o();
                }
                byte[] bArr3 = this.Q;
                int i18 = this.e;
                this.e = i18 + 1;
                b = bArr3[i18] & 255;
                i9 = i17;
                i8 = 0;
            } else {
                i9 = i15;
                i8 = 0;
            }
            while (true) {
                if (b <= 57 && b >= 48) {
                    i8++;
                    if (i9 >= cArr2.length) {
                        cArr2 = this.o.j();
                        i9 = 0;
                    }
                    int i19 = i9 + 1;
                    cArr2[i9] = (char) b;
                    if (this.e >= this.f && !p()) {
                        i7 = i8;
                        z2 = true;
                        i6 = i19;
                        break;
                    }
                    byte[] bArr4 = this.Q;
                    int i20 = this.e;
                    this.e = i20 + 1;
                    b = bArr4[i20] & 255;
                    i9 = i19;
                } else {
                    z2 = z3;
                    int i21 = i8;
                    i6 = i9;
                    i7 = i21;
                }
            }
            z2 = z3;
            int i212 = i8;
            i6 = i9;
            i7 = i212;
            if (i7 == 0) {
                a((int) b, "Exponent indicator not followed by a digit");
            }
        } else {
            z2 = z3;
            i6 = i5;
            i7 = 0;
        }
        if (!z2) {
            this.e--;
        }
        this.o.i = i6;
        return b(z, i3, i4, i7);
    }

    private final ajm a(int i, int i2) {
        ajm a = this.M.a(i);
        if (a != null) {
            return a;
        }
        this.N[0] = i;
        return a(this.N, 1, i2);
    }

    private final ajm a(int i, int i2, int i3) {
        return a(this.N, 0, i, i2, i3);
    }

    private final ajm a(int i, int i2, int i3, int i4) {
        this.N[0] = i;
        return a(this.N, 1, i2, i3, i4);
    }

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d1 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final defpackage.ajm a(int[] r12, int r13, int r14) {
        /*
            r11 = this;
            int r0 = r13 << 2
            int r0 = r0 + -4
            int r6 = r0 + r14
            r0 = 4
            if (r14 >= r0) goto L_0x00da
            int r0 = r13 + -1
            r0 = r12[r0]
            int r1 = r13 + -1
            int r2 = 4 - r14
            int r2 = r2 << 3
            int r2 = r0 << r2
            r12[r1] = r2
        L_0x0017:
            ajw r1 = r11.o
            char[] r1 = r1.i()
            r5 = 0
            r2 = 0
            r3 = r2
        L_0x0020:
            if (r3 >= r6) goto L_0x0100
            int r2 = r3 >> 2
            r2 = r12[r2]
            r4 = r3 & 3
            int r4 = 3 - r4
            int r4 = r4 << 3
            int r2 = r2 >> r4
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r3 + 1
            r4 = 127(0x7f, float:1.78E-43)
            if (r2 <= r4) goto L_0x0114
            r4 = r2 & 224(0xe0, float:3.14E-43)
            r7 = 192(0xc0, float:2.69E-43)
            if (r4 != r7) goto L_0x00dd
            r4 = r2 & 31
            r2 = 1
            r10 = r2
            r2 = r4
            r4 = r10
        L_0x0041:
            int r7 = r3 + r4
            if (r7 <= r6) goto L_0x004a
            java.lang.String r7 = " in field name"
            r11.c(r7)
        L_0x004a:
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x0060
            r11.n(r7)
        L_0x0060:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
            r7 = 1
            if (r4 <= r7) goto L_0x00a3
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x007e
            r11.n(r7)
        L_0x007e:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
            r7 = 2
            if (r4 <= r7) goto L_0x00a3
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x009e
            r8 = r7 & 255(0xff, float:3.57E-43)
            r11.n(r8)
        L_0x009e:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
        L_0x00a3:
            r7 = 2
            if (r4 <= r7) goto L_0x0114
            r4 = 65536(0x10000, float:9.18355E-41)
            int r2 = r2 - r4
            int r4 = r1.length
            if (r5 < r4) goto L_0x00b2
            ajw r1 = r11.o
            char[] r1 = r1.k()
        L_0x00b2:
            int r4 = r5 + 1
            r7 = 55296(0xd800, float:7.7486E-41)
            int r8 = r2 >> 10
            int r7 = r7 + r8
            char r7 = (char) r7
            r1[r5] = r7
            r5 = 56320(0xdc00, float:7.8921E-41)
            r2 = r2 & 1023(0x3ff, float:1.434E-42)
            r2 = r2 | r5
            r10 = r2
            r2 = r3
            r3 = r4
            r4 = r1
            r1 = r10
        L_0x00c8:
            int r5 = r4.length
            if (r3 < r5) goto L_0x00d1
            ajw r4 = r11.o
            char[] r4 = r4.k()
        L_0x00d1:
            int r5 = r3 + 1
            char r1 = (char) r1
            r4[r3] = r1
            r3 = r2
            r1 = r4
            goto L_0x0020
        L_0x00da:
            r0 = 0
            goto L_0x0017
        L_0x00dd:
            r4 = r2 & 240(0xf0, float:3.36E-43)
            r7 = 224(0xe0, float:3.14E-43)
            if (r4 != r7) goto L_0x00eb
            r4 = r2 & 15
            r2 = 2
            r10 = r2
            r2 = r4
            r4 = r10
            goto L_0x0041
        L_0x00eb:
            r4 = r2 & 248(0xf8, float:3.48E-43)
            r7 = 240(0xf0, float:3.36E-43)
            if (r4 != r7) goto L_0x00f9
            r4 = r2 & 7
            r2 = 3
            r10 = r2
            r2 = r4
            r4 = r10
            goto L_0x0041
        L_0x00f9:
            r11.m(r2)
            r2 = 1
            r4 = r2
            goto L_0x0041
        L_0x0100:
            java.lang.String r2 = new java.lang.String
            r3 = 0
            r2.<init>(r1, r3, r5)
            r1 = 4
            if (r14 >= r1) goto L_0x010d
            int r1 = r13 + -1
            r12[r1] = r0
        L_0x010d:
            ajk r0 = r11.M
            ajm r0 = r0.a(r2, r12, r13)
            return r0
        L_0x0114:
            r4 = r1
            r1 = r2
            r2 = r3
            r3 = r5
            goto L_0x00c8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiy.a(int[], int, int):ajm");
    }

    private final ajm a(int[] iArr, int i, int i2, int i3) {
        if (i >= iArr.length) {
            iArr = a(iArr, iArr.length);
            this.N = iArr;
        }
        int i4 = i + 1;
        iArr[i] = i2;
        ajm a = this.M.a(iArr, i4);
        return a == null ? a(iArr, i4, i3) : a;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.ajm a(int[] r10, int r11, int r12, int r13, int r14) {
        /*
            r9 = this;
            r7 = 4
            r1 = 0
            int[] r5 = T
        L_0x0004:
            r0 = r5[r13]
            if (r0 == 0) goto L_0x00d6
            r0 = 34
            if (r13 == r0) goto L_0x00ae
            r0 = 92
            if (r13 == r0) goto L_0x006b
            java.lang.String r0 = "name"
            r9.c(r13, r0)
        L_0x0015:
            r0 = 127(0x7f, float:1.78E-43)
            if (r13 <= r0) goto L_0x00d6
            if (r14 < r7) goto L_0x00d2
            int r0 = r10.length
            if (r11 < r0) goto L_0x0025
            int r0 = r10.length
            int[] r10 = a((int[]) r10, (int) r0)
            r9.N = r10
        L_0x0025:
            int r4 = r11 + 1
            r10[r11] = r12
            r14 = r1
            r12 = r1
            r0 = r10
        L_0x002c:
            r2 = 2048(0x800, float:2.87E-42)
            if (r13 >= r2) goto L_0x0070
            int r2 = r12 << 8
            int r3 = r13 >> 6
            r3 = r3 | 192(0xc0, float:2.69E-43)
            r3 = r3 | r2
            int r2 = r14 + 1
            r8 = r2
            r2 = r3
            r3 = r0
            r0 = r8
        L_0x003d:
            r6 = r13 & 63
            r12 = r6 | 128(0x80, float:1.794E-43)
            r14 = r0
            r11 = r4
            r0 = r3
            r3 = r2
        L_0x0045:
            if (r14 >= r7) goto L_0x009c
            int r14 = r14 + 1
            int r2 = r3 << 8
            r12 = r12 | r2
            r10 = r0
        L_0x004d:
            int r0 = r9.e
            int r2 = r9.f
            if (r0 < r2) goto L_0x005e
            boolean r0 = r9.p()
            if (r0 != 0) goto L_0x005e
            java.lang.String r0 = " in field name"
            r9.c(r0)
        L_0x005e:
            byte[] r0 = r9.Q
            int r2 = r9.e
            int r3 = r2 + 1
            r9.e = r3
            byte r0 = r0[r2]
            r13 = r0 & 255(0xff, float:3.57E-43)
            goto L_0x0004
        L_0x006b:
            char r13 = r9.u()
            goto L_0x0015
        L_0x0070:
            int r2 = r12 << 8
            int r3 = r13 >> 12
            r3 = r3 | 224(0xe0, float:3.14E-43)
            r3 = r3 | r2
            int r2 = r14 + 1
            if (r2 < r7) goto L_0x00cc
            int r2 = r0.length
            if (r4 < r2) goto L_0x0085
            int r2 = r0.length
            int[] r0 = a((int[]) r0, (int) r2)
            r9.N = r0
        L_0x0085:
            int r2 = r4 + 1
            r0[r4] = r3
            r3 = r2
            r4 = r0
            r0 = r1
            r2 = r1
        L_0x008d:
            int r2 = r2 << 8
            int r6 = r13 >> 6
            r6 = r6 & 63
            r6 = r6 | 128(0x80, float:1.794E-43)
            r2 = r2 | r6
            int r0 = r0 + 1
            r8 = r3
            r3 = r4
            r4 = r8
            goto L_0x003d
        L_0x009c:
            int r2 = r0.length
            if (r11 < r2) goto L_0x00a6
            int r2 = r0.length
            int[] r0 = a((int[]) r0, (int) r2)
            r9.N = r0
        L_0x00a6:
            int r2 = r11 + 1
            r0[r11] = r3
            r14 = 1
            r11 = r2
            r10 = r0
            goto L_0x004d
        L_0x00ae:
            if (r14 <= 0) goto L_0x00bf
            int r0 = r10.length
            if (r11 < r0) goto L_0x00ba
            int r0 = r10.length
            int[] r10 = a((int[]) r10, (int) r0)
            r9.N = r10
        L_0x00ba:
            int r0 = r11 + 1
            r10[r11] = r12
            r11 = r0
        L_0x00bf:
            ajk r0 = r9.M
            ajm r0 = r0.a((int[]) r10, (int) r11)
            if (r0 != 0) goto L_0x00cb
            ajm r0 = r9.a((int[]) r10, (int) r11, (int) r14)
        L_0x00cb:
            return r0
        L_0x00cc:
            r8 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r8
            goto L_0x008d
        L_0x00d2:
            r4 = r11
            r0 = r10
            goto L_0x002c
        L_0x00d6:
            r3 = r12
            r0 = r10
            r12 = r13
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiy.a(int[], int, int, int, int):ajm");
    }

    private void a(String str, int i) {
        byte b;
        int length = str.length();
        do {
            if (this.e >= this.f && !p()) {
                c(" in a value");
            }
            if (this.Q[this.e] != str.charAt(i)) {
                a(str.substring(0, i), "'null', 'true', 'false' or NaN");
            }
            this.e++;
            i++;
        } while (i < length);
        if ((this.e < this.f || p()) && (b = this.Q[this.e] & 255) >= 48 && b != 93 && b != 125 && Character.isJavaIdentifierPart((char) g(b))) {
            this.e++;
            a(str.substring(0, i), "'null', 'true', 'false' or NaN");
        }
    }

    private void a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.e >= this.f && !p()) {
                break;
            }
            byte[] bArr = this.Q;
            int i = this.e;
            this.e = i + 1;
            char g = (char) g(bArr[i]);
            if (!Character.isJavaIdentifierPart(g)) {
                break;
            }
            sb.append(g);
        }
        d("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    private static int[] a(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        int[] iArr2 = new int[(length + i)];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    private final ajm b(int i, int i2, int i3) {
        ajm a = this.M.a(i, i2);
        if (a != null) {
            return a;
        }
        this.N[0] = i;
        this.N[1] = i2;
        return a(this.N, 2, i3);
    }

    private void b(int i, int i2) {
        this.e = i2;
        n(i);
    }

    private ail c(int i) {
        int i2;
        byte b;
        byte b2;
        int i3;
        int i4 = 1;
        char[] i5 = this.o.i();
        boolean z = i == 45;
        if (z) {
            i5[0] = '-';
            if (this.e >= this.f) {
                o();
            }
            byte[] bArr = this.Q;
            int i6 = this.e;
            this.e = i6 + 1;
            b = bArr[i6] & 255;
            if (b < 48 || b > 57) {
                return a((int) b, true);
            }
            i2 = 1;
        } else {
            i2 = 0;
            b = i;
        }
        if (b == 48) {
            if (this.e < this.f || p()) {
                b = this.Q[this.e] & 255;
                if (b < 48 || b > 57) {
                    b = 48;
                } else {
                    if (!a(aii.a.ALLOW_NUMERIC_LEADING_ZEROS)) {
                        b("Leading zeroes not allowed");
                    }
                    this.e++;
                    if (b == 48) {
                        while (true) {
                            if (this.e >= this.f && !p()) {
                                break;
                            }
                            b = this.Q[this.e] & 255;
                            if (b >= 48 && b <= 57) {
                                this.e++;
                                if (b != 48) {
                                    break;
                                }
                            } else {
                                b = 48;
                            }
                        }
                    }
                }
            } else {
                b = 48;
            }
        }
        int i7 = i2 + 1;
        i5[i2] = (char) b;
        int length = this.e + i5.length;
        if (length > this.f) {
            length = this.f;
        }
        while (this.e < length) {
            byte[] bArr2 = this.Q;
            int i8 = this.e;
            this.e = i8 + 1;
            byte b3 = bArr2[i8] & 255;
            if (b3 >= 48 && b3 <= 57) {
                i4++;
                i5[i7] = (char) b3;
                i7++;
            } else if (b3 == 46 || b3 == 101 || b3 == 69) {
                return a(i5, i7, (int) b3, z, i4);
            } else {
                this.e--;
                this.o.i = i7;
                return a(z, i4);
            }
        }
        while (true) {
            if (this.e < this.f || p()) {
                byte[] bArr3 = this.Q;
                int i9 = this.e;
                this.e = i9 + 1;
                b2 = bArr3[i9] & 255;
                if (b2 <= 57 && b2 >= 48) {
                    if (i7 >= i5.length) {
                        i5 = this.o.j();
                        i3 = 0;
                    } else {
                        i3 = i7;
                    }
                    i7 = i3 + 1;
                    i5[i3] = (char) b2;
                    i4++;
                }
            } else {
                this.o.i = i7;
                return a(z, i4);
            }
        }
        if (b2 == 46 || b2 == 101 || b2 == 69) {
            return a(i5, i7, (int) b2, z, i4);
        }
        this.e--;
        this.o.i = i7;
        return a(z, i4);
    }

    private ajm d(int i) {
        int[] iArr = T;
        int i2 = 2;
        byte b = i;
        while (this.f - this.e >= 4) {
            byte[] bArr = this.Q;
            int i3 = this.e;
            this.e = i3 + 1;
            byte b2 = bArr[i3] & 255;
            if (iArr[b2] == 0) {
                byte b3 = (b << 8) | b2;
                byte[] bArr2 = this.Q;
                int i4 = this.e;
                this.e = i4 + 1;
                byte b4 = bArr2[i4] & 255;
                if (iArr[b4] == 0) {
                    byte b5 = (b3 << 8) | b4;
                    byte[] bArr3 = this.Q;
                    int i5 = this.e;
                    this.e = i5 + 1;
                    byte b6 = bArr3[i5] & 255;
                    if (iArr[b6] == 0) {
                        int i6 = (b5 << 8) | b6;
                        byte[] bArr4 = this.Q;
                        int i7 = this.e;
                        this.e = i7 + 1;
                        b = bArr4[i7] & 255;
                        if (iArr[b] == 0) {
                            if (i2 >= this.N.length) {
                                this.N = a(this.N, i2);
                            }
                            this.N[i2] = i6;
                            i2++;
                        } else if (b == 34) {
                            return a(this.N, i2, i6, 4);
                        } else {
                            return a(this.N, i2, i6, (int) b, 4);
                        }
                    } else if (b6 == 34) {
                        return a(this.N, i2, (int) b5, 3);
                    } else {
                        return a(this.N, i2, (int) b5, (int) b6, 3);
                    }
                } else if (b4 == 34) {
                    return a(this.N, i2, (int) b3, 2);
                } else {
                    return a(this.N, i2, (int) b3, (int) b4, 2);
                }
            } else if (b2 == 34) {
                return a(this.N, i2, b, 1);
            } else {
                return a(this.N, i2, b, (int) b2, 1);
            }
        }
        return a(this.N, i2, 0, b, 0);
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00de  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.ajm e(int r14) {
        /*
            r13 = this;
            r5 = 1
            r11 = 39
            r10 = 4
            r1 = 0
            if (r14 != r11) goto L_0x0113
            aii$a r0 = defpackage.aii.a.ALLOW_SINGLE_QUOTES
            boolean r0 = r13.a((defpackage.aii.a) r0)
            if (r0 == 0) goto L_0x0113
            int r0 = r13.e
            int r2 = r13.f
            if (r0 < r2) goto L_0x0020
            boolean r0 = r13.p()
            if (r0 != 0) goto L_0x0020
            java.lang.String r0 = ": was expecting closing ''' for name"
            r13.c(r0)
        L_0x0020:
            byte[] r0 = r13.Q
            int r2 = r13.e
            int r3 = r2 + 1
            r13.e = r3
            byte r0 = r0[r2]
            r6 = r0 & 255(0xff, float:3.57E-43)
            if (r6 != r11) goto L_0x0033
            ajn r0 = defpackage.ajn.b()
        L_0x0032:
            return r0
        L_0x0033:
            int[] r0 = r13.N
            int[] r7 = T
            r3 = r1
            r4 = r1
            r2 = r1
        L_0x003a:
            if (r6 == r11) goto L_0x00f2
            r8 = 34
            if (r6 == r8) goto L_0x01b1
            r8 = r7[r6]
            if (r8 == 0) goto L_0x01b1
            r8 = 92
            if (r6 == r8) goto L_0x00ad
            java.lang.String r8 = "name"
            r13.c(r6, r8)
        L_0x004d:
            r8 = 127(0x7f, float:1.78E-43)
            if (r6 <= r8) goto L_0x01b1
            if (r3 < r10) goto L_0x01ab
            int r3 = r0.length
            if (r2 < r3) goto L_0x005d
            int r3 = r0.length
            int[] r0 = a((int[]) r0, (int) r3)
            r13.N = r0
        L_0x005d:
            int r3 = r2 + 1
            r0[r2] = r4
            r2 = r1
            r4 = r3
            r3 = r1
        L_0x0064:
            r8 = 2048(0x800, float:2.87E-42)
            if (r6 >= r8) goto L_0x00b2
            int r3 = r3 << 8
            int r8 = r6 >> 6
            r8 = r8 | 192(0xc0, float:2.69E-43)
            r3 = r3 | r8
            int r2 = r2 + 1
            r12 = r2
            r2 = r3
            r3 = r0
            r0 = r12
        L_0x0075:
            r6 = r6 & 63
            r6 = r6 | 128(0x80, float:1.794E-43)
            r12 = r0
            r0 = r3
            r3 = r6
            r6 = r2
            r2 = r12
        L_0x007e:
            if (r2 >= r10) goto L_0x00de
            int r2 = r2 + 1
            int r6 = r6 << 8
            r3 = r3 | r6
            r12 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r12
        L_0x008a:
            int r6 = r13.e
            int r8 = r13.f
            if (r6 < r8) goto L_0x009b
            boolean r6 = r13.p()
            if (r6 != 0) goto L_0x009b
            java.lang.String r6 = " in field name"
            r13.c(r6)
        L_0x009b:
            byte[] r6 = r13.Q
            int r8 = r13.e
            int r9 = r8 + 1
            r13.e = r9
            byte r6 = r6[r8]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r12 = r0
            r0 = r4
            r4 = r2
            r2 = r3
            r3 = r12
            goto L_0x003a
        L_0x00ad:
            char r6 = r13.u()
            goto L_0x004d
        L_0x00b2:
            int r3 = r3 << 8
            int r8 = r6 >> 12
            r8 = r8 | 224(0xe0, float:3.14E-43)
            r3 = r3 | r8
            int r2 = r2 + 1
            if (r2 < r10) goto L_0x01a4
            int r2 = r0.length
            if (r4 < r2) goto L_0x00c7
            int r2 = r0.length
            int[] r0 = a((int[]) r0, (int) r2)
            r13.N = r0
        L_0x00c7:
            int r2 = r4 + 1
            r0[r4] = r3
            r3 = r2
            r4 = r0
            r0 = r1
            r2 = r1
        L_0x00cf:
            int r2 = r2 << 8
            int r8 = r6 >> 6
            r8 = r8 & 63
            r8 = r8 | 128(0x80, float:1.794E-43)
            r2 = r2 | r8
            int r0 = r0 + 1
            r12 = r3
            r3 = r4
            r4 = r12
            goto L_0x0075
        L_0x00de:
            int r2 = r0.length
            if (r4 < r2) goto L_0x00e8
            int r2 = r0.length
            int[] r0 = a((int[]) r0, (int) r2)
            r13.N = r0
        L_0x00e8:
            int r2 = r4 + 1
            r0[r4] = r6
            r4 = r0
            r0 = r5
            r12 = r2
            r2 = r3
            r3 = r12
            goto L_0x008a
        L_0x00f2:
            if (r3 <= 0) goto L_0x01a0
            int r1 = r0.length
            if (r2 < r1) goto L_0x00fe
            int r1 = r0.length
            int[] r0 = a((int[]) r0, (int) r1)
            r13.N = r0
        L_0x00fe:
            int r1 = r2 + 1
            r0[r2] = r4
            r12 = r1
            r1 = r0
            r0 = r12
        L_0x0105:
            ajk r2 = r13.M
            ajm r2 = r2.a((int[]) r1, (int) r0)
            if (r2 != 0) goto L_0x019d
            ajm r0 = r13.a((int[]) r1, (int) r0, (int) r3)
            goto L_0x0032
        L_0x0113:
            aii$a r0 = defpackage.aii.a.ALLOW_UNQUOTED_FIELD_NAMES
            boolean r0 = r13.a((defpackage.aii.a) r0)
            if (r0 != 0) goto L_0x0120
            java.lang.String r0 = "was expecting double-quote to start field name"
            r13.b(r14, r0)
        L_0x0120:
            int[] r6 = defpackage.ajt.d()
            r0 = r6[r14]
            if (r0 == 0) goto L_0x012d
            java.lang.String r0 = "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"
            r13.b(r14, r0)
        L_0x012d:
            int[] r0 = r13.N
            r4 = r1
            r3 = r1
            r2 = r14
        L_0x0132:
            if (r1 >= r10) goto L_0x0167
            int r1 = r1 + 1
            int r4 = r4 << 8
            r2 = r2 | r4
            r12 = r1
            r1 = r2
            r2 = r3
            r3 = r0
            r0 = r12
        L_0x013e:
            int r4 = r13.e
            int r7 = r13.f
            if (r4 < r7) goto L_0x014f
            boolean r4 = r13.p()
            if (r4 != 0) goto L_0x014f
            java.lang.String r4 = " in field name"
            r13.c(r4)
        L_0x014f:
            byte[] r4 = r13.Q
            int r7 = r13.e
            byte r4 = r4[r7]
            r14 = r4 & 255(0xff, float:3.57E-43)
            r4 = r6[r14]
            if (r4 != 0) goto L_0x017b
            int r4 = r13.e
            int r4 = r4 + 1
            r13.e = r4
            r4 = r1
            r1 = r0
            r0 = r3
            r3 = r2
            r2 = r14
            goto L_0x0132
        L_0x0167:
            int r1 = r0.length
            if (r3 < r1) goto L_0x0171
            int r1 = r0.length
            int[] r0 = a((int[]) r0, (int) r1)
            r13.N = r0
        L_0x0171:
            int r1 = r3 + 1
            r0[r3] = r4
            r3 = r0
            r0 = r5
            r12 = r1
            r1 = r2
            r2 = r12
            goto L_0x013e
        L_0x017b:
            if (r0 <= 0) goto L_0x018c
            int r4 = r3.length
            if (r2 < r4) goto L_0x0187
            int r4 = r3.length
            int[] r3 = a((int[]) r3, (int) r4)
            r13.N = r3
        L_0x0187:
            int r4 = r2 + 1
            r3[r2] = r1
            r2 = r4
        L_0x018c:
            ajk r1 = r13.M
            ajm r1 = r1.a((int[]) r3, (int) r2)
            if (r1 != 0) goto L_0x019a
            ajm r0 = r13.a((int[]) r3, (int) r2, (int) r0)
            goto L_0x0032
        L_0x019a:
            r0 = r1
            goto L_0x0032
        L_0x019d:
            r0 = r2
            goto L_0x0032
        L_0x01a0:
            r1 = r0
            r0 = r2
            goto L_0x0105
        L_0x01a4:
            r12 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r12
            goto L_0x00cf
        L_0x01ab:
            r12 = r3
            r3 = r4
            r4 = r2
            r2 = r12
            goto L_0x0064
        L_0x01b1:
            r12 = r3
            r3 = r6
            r6 = r4
            r4 = r2
            r2 = r12
            goto L_0x007e
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiy.e(int):ajm");
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private defpackage.ail f(int r11) {
        /*
            r10 = this;
            r9 = 39
            r2 = 0
            switch(r11) {
                case 39: goto L_0x000d;
                case 43: goto L_0x00e2;
                case 78: goto L_0x00c3;
                default: goto L_0x0006;
            }
        L_0x0006:
            java.lang.String r0 = "expected a valid value (number, String, array, object, 'true', 'false' or 'null')"
            r10.b(r11, r0)
            r0 = 0
        L_0x000c:
            return r0
        L_0x000d:
            aii$a r0 = defpackage.aii.a.ALLOW_SINGLE_QUOTES
            boolean r0 = r10.a((defpackage.aii.a) r0)
            if (r0 == 0) goto L_0x0006
            ajw r0 = r10.o
            char[] r0 = r0.i()
            int[] r6 = S
            byte[] r7 = r10.Q
            r1 = r2
        L_0x0020:
            int r3 = r10.e
            int r4 = r10.f
            if (r3 < r4) goto L_0x0029
            r10.o()
        L_0x0029:
            int r3 = r0.length
            if (r1 < r3) goto L_0x0033
            ajw r0 = r10.o
            char[] r0 = r0.j()
            r1 = r2
        L_0x0033:
            int r4 = r10.f
            int r3 = r10.e
            int r5 = r0.length
            int r5 = r5 - r1
            int r3 = r3 + r5
            if (r3 >= r4) goto L_0x0108
        L_0x003c:
            int r4 = r10.e
            if (r4 >= r3) goto L_0x0020
            int r4 = r10.e
            int r5 = r4 + 1
            r10.e = r5
            byte r4 = r7[r4]
            r5 = r4 & 255(0xff, float:3.57E-43)
            if (r5 == r9) goto L_0x0057
            r4 = r6[r5]
            if (r4 != 0) goto L_0x0057
            int r4 = r1 + 1
            char r5 = (char) r5
            r0[r1] = r5
            r1 = r4
            goto L_0x003c
        L_0x0057:
            if (r5 == r9) goto L_0x00bb
            r3 = r6[r5]
            switch(r3) {
                case 1: goto L_0x007b;
                case 2: goto L_0x0084;
                case 3: goto L_0x0089;
                case 4: goto L_0x009b;
                default: goto L_0x005e;
            }
        L_0x005e:
            r3 = 32
            if (r5 >= r3) goto L_0x0067
            java.lang.String r3 = "string value"
            r10.c(r5, r3)
        L_0x0067:
            r10.l(r5)
        L_0x006a:
            r3 = r5
        L_0x006b:
            int r4 = r0.length
            if (r1 < r4) goto L_0x0103
            ajw r0 = r10.o
            char[] r0 = r0.j()
            r4 = r2
        L_0x0075:
            int r1 = r4 + 1
            char r3 = (char) r3
            r0[r4] = r3
            goto L_0x0020
        L_0x007b:
            r3 = 34
            if (r5 == r3) goto L_0x006a
            char r3 = r10.u()
            goto L_0x006b
        L_0x0084:
            int r3 = r10.h(r5)
            goto L_0x006b
        L_0x0089:
            int r3 = r10.f
            int r4 = r10.e
            int r3 = r3 - r4
            r4 = 2
            if (r3 < r4) goto L_0x0096
            int r3 = r10.j(r5)
            goto L_0x006b
        L_0x0096:
            int r3 = r10.i(r5)
            goto L_0x006b
        L_0x009b:
            int r4 = r10.k(r5)
            int r3 = r1 + 1
            r5 = 55296(0xd800, float:7.7486E-41)
            int r8 = r4 >> 10
            r5 = r5 | r8
            char r5 = (char) r5
            r0[r1] = r5
            int r1 = r0.length
            if (r3 < r1) goto L_0x0106
            ajw r0 = r10.o
            char[] r0 = r0.j()
            r1 = r2
        L_0x00b4:
            r3 = 56320(0xdc00, float:7.8921E-41)
            r4 = r4 & 1023(0x3ff, float:1.434E-42)
            r3 = r3 | r4
            goto L_0x006b
        L_0x00bb:
            ajw r0 = r10.o
            r0.i = r1
            ail r0 = defpackage.ail.VALUE_STRING
            goto L_0x000c
        L_0x00c3:
            java.lang.String r0 = "NaN"
            r1 = 1
            r10.a((java.lang.String) r0, (int) r1)
            aii$a r0 = defpackage.aii.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r10.a((defpackage.aii.a) r0)
            if (r0 == 0) goto L_0x00db
            java.lang.String r0 = "NaN"
            r2 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            ail r0 = r10.a((java.lang.String) r0, (double) r2)
            goto L_0x000c
        L_0x00db:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r10.d(r0)
            goto L_0x0006
        L_0x00e2:
            int r0 = r10.e
            int r1 = r10.f
            if (r0 < r1) goto L_0x00f1
            boolean r0 = r10.p()
            if (r0 != 0) goto L_0x00f1
            r10.w()
        L_0x00f1:
            byte[] r0 = r10.Q
            int r1 = r10.e
            int r3 = r1 + 1
            r10.e = r3
            byte r0 = r0[r1]
            r0 = r0 & 255(0xff, float:3.57E-43)
            ail r0 = r10.a((int) r0, (boolean) r2)
            goto L_0x000c
        L_0x0103:
            r4 = r1
            goto L_0x0075
        L_0x0106:
            r1 = r3
            goto L_0x00b4
        L_0x0108:
            r3 = r4
            goto L_0x003c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiy.f(int):ail");
    }

    private int g(int i) {
        char c;
        if (i >= 0) {
            return i;
        }
        if ((i & 224) == 192) {
            i &= 31;
            c = 1;
        } else if ((i & 240) == 224) {
            i &= 15;
            c = 2;
        } else if ((i & 248) == 240) {
            i &= 7;
            c = 3;
        } else {
            m(i & 255);
            c = 1;
        }
        int F = F();
        if ((F & 192) != 128) {
            n(F & 255);
        }
        int i2 = (i << 6) | (F & 63);
        if (c <= 1) {
            return i2;
        }
        int F2 = F();
        if ((F2 & 192) != 128) {
            n(F2 & 255);
        }
        int i3 = (i2 << 6) | (F2 & 63);
        if (c <= 2) {
            return i3;
        }
        int F3 = F();
        if ((F3 & 192) != 128) {
            n(F3 & 255);
        }
        return (i3 << 6) | (F3 & 63);
    }

    private final int h(int i) {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i2 = this.e;
        this.e = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        return (b & 63) | ((i & 31) << 6);
    }

    private final int i(int i) {
        if (this.e >= this.f) {
            o();
        }
        int i2 = i & 15;
        byte[] bArr = this.Q;
        int i3 = this.e;
        this.e = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        byte b2 = (i2 << 6) | (b & 63);
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr2 = this.Q;
        int i4 = this.e;
        this.e = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            b(b3 & 255, this.e);
        }
        return (b2 << 6) | (b3 & 63);
    }

    private final int j(int i) {
        int i2 = i & 15;
        byte[] bArr = this.Q;
        int i3 = this.e;
        this.e = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        byte b2 = (i2 << 6) | (b & 63);
        byte[] bArr2 = this.Q;
        int i4 = this.e;
        this.e = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            b(b3 & 255, this.e);
        }
        return (b2 << 6) | (b3 & 63);
    }

    private final int k(int i) {
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr = this.Q;
        int i2 = this.e;
        this.e = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.e);
        }
        byte b2 = (b & 63) | ((i & 7) << 6);
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr2 = this.Q;
        int i3 = this.e;
        this.e = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            b(b3 & 255, this.e);
        }
        byte b4 = (b2 << 6) | (b3 & 63);
        if (this.e >= this.f) {
            o();
        }
        byte[] bArr3 = this.Q;
        int i4 = this.e;
        this.e = i4 + 1;
        byte b5 = bArr3[i4];
        if ((b5 & 192) != 128) {
            b(b5 & 255, this.e);
        }
        return ((b4 << 6) | (b5 & 63)) - 65536;
    }

    private void l(int i) {
        if (i < 32) {
            a(i);
        }
        m(i);
    }

    private void m(int i) {
        d("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    private void n(int i) {
        d("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    private final int y() {
        while (true) {
            if (this.e < this.f || p()) {
                byte[] bArr = this.Q;
                int i = this.e;
                this.e = i + 1;
                byte b = bArr[i] & 255;
                if (b > 32) {
                    if (b != 47) {
                        return b;
                    }
                    z();
                } else if (b != 32) {
                    if (b == 10) {
                        E();
                    } else if (b == 13) {
                        D();
                    } else if (b != 9) {
                        a((int) b);
                    }
                }
            } else {
                throw a("Unexpected end-of-input within/between " + this.m.d() + " entries");
            }
        }
    }

    private final void z() {
        if (!a(aii.a.ALLOW_COMMENTS)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.e >= this.f && !p()) {
            c(" in a comment");
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        byte b = bArr[i] & 255;
        if (b == 47) {
            int[] e = ajt.e();
            while (true) {
                if (this.e < this.f || p()) {
                    byte[] bArr2 = this.Q;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    byte b2 = bArr2[i2] & 255;
                    int i3 = e[b2];
                    if (i3 != 0) {
                        switch (i3) {
                            case 2:
                                A();
                                break;
                            case 3:
                                B();
                                break;
                            case 4:
                                C();
                                break;
                            case 10:
                                E();
                                return;
                            case 13:
                                D();
                                return;
                            case 42:
                                break;
                            default:
                                l(b2);
                                break;
                        }
                    }
                } else {
                    return;
                }
            }
        } else if (b == 42) {
            int[] e2 = ajt.e();
            while (true) {
                if (this.e < this.f || p()) {
                    byte[] bArr3 = this.Q;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    byte b3 = bArr3[i4] & 255;
                    int i5 = e2[b3];
                    if (i5 != 0) {
                        switch (i5) {
                            case 2:
                                A();
                                continue;
                            case 3:
                                B();
                                continue;
                            case 4:
                                C();
                                continue;
                            case 10:
                                E();
                                continue;
                            case 13:
                                D();
                                continue;
                            case 42:
                                if (this.e >= this.f && !p()) {
                                    break;
                                } else if (this.Q[this.e] == 47) {
                                    this.e++;
                                    return;
                                } else {
                                    continue;
                                }
                            default:
                                l(b3);
                                continue;
                        }
                    }
                }
            }
            c(" in a comment");
        } else {
            b(b, "was expecting either '*' or '/' for a comment");
        }
    }

    /* JADX WARNING: CFG modification limit reached, blocks count: 273 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.ail a() {
        /*
            r12 = this;
            r11 = 3
            r10 = 2
            r2 = 0
            r9 = 1
            r8 = 34
            r12.B = r2
            ail r0 = r12.b
            ail r1 = defpackage.ail.FIELD_NAME
            if (r0 != r1) goto L_0x0039
            r12.q = r2
            ail r0 = r12.n
            r1 = 0
            r12.n = r1
            ail r1 = defpackage.ail.START_ARRAY
            if (r0 != r1) goto L_0x0028
            aiu r1 = r12.m
            int r2 = r12.k
            int r3 = r12.l
            aiu r1 = r1.a(r2, r3)
            r12.m = r1
        L_0x0025:
            r12.b = r0
        L_0x0027:
            return r0
        L_0x0028:
            ail r1 = defpackage.ail.START_OBJECT
            if (r0 != r1) goto L_0x0025
            aiu r1 = r12.m
            int r2 = r12.k
            int r3 = r12.l
            aiu r1 = r1.b(r2, r3)
            r12.m = r1
            goto L_0x0025
        L_0x0039:
            boolean r0 = r12.O
            if (r0 == 0) goto L_0x0089
            r12.O = r2
            int[] r4 = S
            byte[] r5 = r12.Q
        L_0x0043:
            int r1 = r12.e
            int r0 = r12.f
            if (r1 < r0) goto L_0x0050
            r12.o()
            int r1 = r12.e
            int r0 = r12.f
        L_0x0050:
            if (r1 >= r0) goto L_0x006f
            int r3 = r1 + 1
            byte r1 = r5[r1]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r6 = r4[r1]
            if (r6 == 0) goto L_0x03a5
            r12.e = r3
            if (r1 == r8) goto L_0x0089
            r0 = r4[r1]
            switch(r0) {
                case 1: goto L_0x0072;
                case 2: goto L_0x0076;
                case 3: goto L_0x007a;
                case 4: goto L_0x007e;
                default: goto L_0x0065;
            }
        L_0x0065:
            r0 = 32
            if (r1 >= r0) goto L_0x0082
            java.lang.String r0 = "string value"
            r12.c(r1, r0)
            goto L_0x0043
        L_0x006f:
            r12.e = r1
            goto L_0x0043
        L_0x0072:
            r12.u()
            goto L_0x0043
        L_0x0076:
            r12.A()
            goto L_0x0043
        L_0x007a:
            r12.B()
            goto L_0x0043
        L_0x007e:
            r12.C()
            goto L_0x0043
        L_0x0082:
            r12.l(r1)
            goto L_0x0043
        L_0x0086:
            r12.z()
        L_0x0089:
            int r0 = r12.e
            int r1 = r12.f
            if (r0 < r1) goto L_0x0095
            boolean r0 = r12.p()
            if (r0 == 0) goto L_0x00cf
        L_0x0095:
            byte[] r0 = r12.Q
            int r1 = r12.e
            int r3 = r1 + 1
            r12.e = r3
            byte r0 = r0[r1]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 32
            if (r0 <= r1) goto L_0x00b3
            r1 = 47
            if (r0 == r1) goto L_0x0086
        L_0x00a9:
            if (r0 >= 0) goto L_0x00d4
            r12.close()
            r0 = 0
            r12.b = r0
            goto L_0x0027
        L_0x00b3:
            r1 = 32
            if (r0 == r1) goto L_0x0089
            r1 = 10
            if (r0 != r1) goto L_0x00bf
            r12.E()
            goto L_0x0089
        L_0x00bf:
            r1 = 13
            if (r0 != r1) goto L_0x00c7
            r12.D()
            goto L_0x0089
        L_0x00c7:
            r1 = 9
            if (r0 == r1) goto L_0x0089
            r12.a((int) r0)
            goto L_0x0089
        L_0x00cf:
            r12.t()
            r0 = -1
            goto L_0x00a9
        L_0x00d4:
            long r4 = r12.g
            int r1 = r12.e
            long r6 = (long) r1
            long r4 = r4 + r6
            r6 = 1
            long r4 = r4 - r6
            r12.j = r4
            int r1 = r12.h
            r12.k = r1
            int r1 = r12.e
            int r3 = r12.i
            int r1 = r1 - r3
            int r1 = r1 + -1
            r12.l = r1
            r1 = 0
            r12.s = r1
            r1 = 93
            if (r0 != r1) goto L_0x010e
            aiu r1 = r12.m
            boolean r1 = r1.a()
            if (r1 != 0) goto L_0x0100
            r1 = 125(0x7d, float:1.75E-43)
            r12.a((int) r0, (char) r1)
        L_0x0100:
            aiu r0 = r12.m
            aiu r0 = r0.h()
            r12.m = r0
            ail r0 = defpackage.ail.END_ARRAY
            r12.b = r0
            goto L_0x0027
        L_0x010e:
            r1 = 125(0x7d, float:1.75E-43)
            if (r0 != r1) goto L_0x012d
            aiu r1 = r12.m
            boolean r1 = r1.c()
            if (r1 != 0) goto L_0x011f
            r1 = 93
            r12.a((int) r0, (char) r1)
        L_0x011f:
            aiu r0 = r12.m
            aiu r0 = r0.h()
            r12.m = r0
            ail r0 = defpackage.ail.END_OBJECT
            r12.b = r0
            goto L_0x0027
        L_0x012d:
            aiu r1 = r12.m
            boolean r1 = r1.i()
            if (r1 == 0) goto L_0x015b
            r1 = 44
            if (r0 == r1) goto L_0x0157
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "was expecting comma to separate "
            r1.<init>(r3)
            aiu r3 = r12.m
            java.lang.String r3 = r3.d()
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r3 = " entries"
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r12.b(r0, r1)
        L_0x0157:
            int r0 = r12.y()
        L_0x015b:
            aiu r1 = r12.m
            boolean r1 = r1.c()
            if (r1 != 0) goto L_0x01ca
            if (r0 != r8) goto L_0x016d
            r12.O = r9
            ail r0 = defpackage.ail.VALUE_STRING
            r12.b = r0
            goto L_0x0027
        L_0x016d:
            switch(r0) {
                case 45: goto L_0x01c2;
                case 48: goto L_0x01c2;
                case 49: goto L_0x01c2;
                case 50: goto L_0x01c2;
                case 51: goto L_0x01c2;
                case 52: goto L_0x01c2;
                case 53: goto L_0x01c2;
                case 54: goto L_0x01c2;
                case 55: goto L_0x01c2;
                case 56: goto L_0x01c2;
                case 57: goto L_0x01c2;
                case 91: goto L_0x0178;
                case 93: goto L_0x019c;
                case 102: goto L_0x01ac;
                case 110: goto L_0x01b7;
                case 116: goto L_0x01a1;
                case 123: goto L_0x018a;
                case 125: goto L_0x019c;
                default: goto L_0x0170;
            }
        L_0x0170:
            ail r0 = r12.f(r0)
            r12.b = r0
            goto L_0x0027
        L_0x0178:
            aiu r0 = r12.m
            int r1 = r12.k
            int r2 = r12.l
            aiu r0 = r0.a(r1, r2)
            r12.m = r0
            ail r0 = defpackage.ail.START_ARRAY
            r12.b = r0
            goto L_0x0027
        L_0x018a:
            aiu r0 = r12.m
            int r1 = r12.k
            int r2 = r12.l
            aiu r0 = r0.b(r1, r2)
            r12.m = r0
            ail r0 = defpackage.ail.START_OBJECT
            r12.b = r0
            goto L_0x0027
        L_0x019c:
            java.lang.String r1 = "expected a value"
            r12.b(r0, r1)
        L_0x01a1:
            java.lang.String r0 = "true"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_TRUE
            r12.b = r0
            goto L_0x0027
        L_0x01ac:
            java.lang.String r0 = "false"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_FALSE
            r12.b = r0
            goto L_0x0027
        L_0x01b7:
            java.lang.String r0 = "null"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_NULL
            r12.b = r0
            goto L_0x0027
        L_0x01c2:
            ail r0 = r12.c(r0)
            r12.b = r0
            goto L_0x0027
        L_0x01ca:
            if (r0 == r8) goto L_0x01fa
            ajm r0 = r12.e(r0)
        L_0x01d0:
            aiu r1 = r12.m
            java.lang.String r0 = r0.a()
            r1.a((java.lang.String) r0)
            ail r0 = defpackage.ail.FIELD_NAME
            r12.b = r0
            int r0 = r12.y()
            r1 = 58
            if (r0 == r1) goto L_0x01ea
            java.lang.String r1 = "was expecting a colon to separate field name and value"
            r12.b(r0, r1)
        L_0x01ea:
            int r0 = r12.y()
            if (r0 != r8) goto L_0x0370
            r12.O = r9
            ail r0 = defpackage.ail.VALUE_STRING
            r12.n = r0
            ail r0 = r12.b
            goto L_0x0027
        L_0x01fa:
            int r0 = r12.e
            int r0 = r0 + 9
            int r1 = r12.f
            if (r0 <= r1) goto L_0x0230
            int r0 = r12.e
            int r1 = r12.f
            if (r0 < r1) goto L_0x0213
            boolean r0 = r12.p()
            if (r0 != 0) goto L_0x0213
            java.lang.String r0 = ": was expecting closing '\"' for name"
            r12.c(r0)
        L_0x0213:
            byte[] r0 = r12.Q
            int r1 = r12.e
            int r3 = r1 + 1
            r12.e = r3
            byte r0 = r0[r1]
            r4 = r0 & 255(0xff, float:3.57E-43)
            if (r4 != r8) goto L_0x0226
            ajn r0 = defpackage.ajn.b()
            goto L_0x01d0
        L_0x0226:
            int[] r1 = r12.N
            r0 = r12
            r3 = r2
            r5 = r2
            ajm r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x01d0
        L_0x0230:
            byte[] r0 = r12.Q
            int[] r1 = T
            int r3 = r12.e
            int r4 = r3 + 1
            r12.e = r4
            byte r3 = r0[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r4 = r1[r3]
            if (r4 != 0) goto L_0x0362
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = r1[r4]
            if (r5 != 0) goto L_0x0354
            int r3 = r3 << 8
            r3 = r3 | r4
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = r1[r4]
            if (r5 != 0) goto L_0x0346
            int r3 = r3 << 8
            r3 = r3 | r4
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = r1[r4]
            if (r5 != 0) goto L_0x0338
            int r3 = r3 << 8
            r3 = r3 | r4
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r0 = r0[r4]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r4 = r1[r0]
            if (r4 != 0) goto L_0x0328
            r12.U = r3
            byte[] r3 = r12.Q
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r4 = r1[r3]
            if (r4 == 0) goto L_0x02a7
            if (r3 != r8) goto L_0x029f
            int r1 = r12.U
            ajm r0 = r12.b(r1, r0, r9)
            goto L_0x01d0
        L_0x029f:
            int r1 = r12.U
            ajm r0 = r12.a((int) r1, (int) r0, (int) r3, (int) r9)
            goto L_0x01d0
        L_0x02a7:
            int r0 = r0 << 8
            r0 = r0 | r3
            byte[] r3 = r12.Q
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r4 = r1[r3]
            if (r4 == 0) goto L_0x02cc
            if (r3 != r8) goto L_0x02c4
            int r1 = r12.U
            ajm r0 = r12.b(r1, r0, r10)
            goto L_0x01d0
        L_0x02c4:
            int r1 = r12.U
            ajm r0 = r12.a((int) r1, (int) r0, (int) r3, (int) r10)
            goto L_0x01d0
        L_0x02cc:
            int r0 = r0 << 8
            r0 = r0 | r3
            byte[] r3 = r12.Q
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r4 = r1[r3]
            if (r4 == 0) goto L_0x02f1
            if (r3 != r8) goto L_0x02e9
            int r1 = r12.U
            ajm r0 = r12.b(r1, r0, r11)
            goto L_0x01d0
        L_0x02e9:
            int r1 = r12.U
            ajm r0 = r12.a((int) r1, (int) r0, (int) r3, (int) r11)
            goto L_0x01d0
        L_0x02f1:
            int r0 = r0 << 8
            r0 = r0 | r3
            byte[] r3 = r12.Q
            int r4 = r12.e
            int r5 = r4 + 1
            r12.e = r5
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r1 = r1[r3]
            if (r1 == 0) goto L_0x0318
            if (r3 != r8) goto L_0x030f
            int r1 = r12.U
            r2 = 4
            ajm r0 = r12.b(r1, r0, r2)
            goto L_0x01d0
        L_0x030f:
            int r1 = r12.U
            r2 = 4
            ajm r0 = r12.a((int) r1, (int) r0, (int) r3, (int) r2)
            goto L_0x01d0
        L_0x0318:
            int[] r1 = r12.N
            int r4 = r12.U
            r1[r2] = r4
            int[] r1 = r12.N
            r1[r9] = r0
            ajm r0 = r12.d(r3)
            goto L_0x01d0
        L_0x0328:
            if (r0 != r8) goto L_0x0331
            r0 = 4
            ajm r0 = r12.a((int) r3, (int) r0)
            goto L_0x01d0
        L_0x0331:
            r1 = 4
            ajm r0 = r12.a((int) r3, (int) r0, (int) r1)
            goto L_0x01d0
        L_0x0338:
            if (r4 != r8) goto L_0x0340
            ajm r0 = r12.a((int) r3, (int) r11)
            goto L_0x01d0
        L_0x0340:
            ajm r0 = r12.a((int) r3, (int) r4, (int) r11)
            goto L_0x01d0
        L_0x0346:
            if (r4 != r8) goto L_0x034e
            ajm r0 = r12.a((int) r3, (int) r10)
            goto L_0x01d0
        L_0x034e:
            ajm r0 = r12.a((int) r3, (int) r4, (int) r10)
            goto L_0x01d0
        L_0x0354:
            if (r4 != r8) goto L_0x035c
            ajm r0 = r12.a((int) r3, (int) r9)
            goto L_0x01d0
        L_0x035c:
            ajm r0 = r12.a((int) r3, (int) r4, (int) r9)
            goto L_0x01d0
        L_0x0362:
            if (r3 != r8) goto L_0x036a
            ajn r0 = defpackage.ajn.b()
            goto L_0x01d0
        L_0x036a:
            ajm r0 = r12.a((int) r2, (int) r3, (int) r2)
            goto L_0x01d0
        L_0x0370:
            switch(r0) {
                case 45: goto L_0x03a0;
                case 48: goto L_0x03a0;
                case 49: goto L_0x03a0;
                case 50: goto L_0x03a0;
                case 51: goto L_0x03a0;
                case 52: goto L_0x03a0;
                case 53: goto L_0x03a0;
                case 54: goto L_0x03a0;
                case 55: goto L_0x03a0;
                case 56: goto L_0x03a0;
                case 57: goto L_0x03a0;
                case 91: goto L_0x037d;
                case 93: goto L_0x0383;
                case 102: goto L_0x0390;
                case 110: goto L_0x0398;
                case 116: goto L_0x0388;
                case 123: goto L_0x0380;
                case 125: goto L_0x0383;
                default: goto L_0x0373;
            }
        L_0x0373:
            ail r0 = r12.f(r0)
        L_0x0377:
            r12.n = r0
            ail r0 = r12.b
            goto L_0x0027
        L_0x037d:
            ail r0 = defpackage.ail.START_ARRAY
            goto L_0x0377
        L_0x0380:
            ail r0 = defpackage.ail.START_OBJECT
            goto L_0x0377
        L_0x0383:
            java.lang.String r1 = "expected a value"
            r12.b(r0, r1)
        L_0x0388:
            java.lang.String r0 = "true"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_TRUE
            goto L_0x0377
        L_0x0390:
            java.lang.String r0 = "false"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_FALSE
            goto L_0x0377
        L_0x0398:
            java.lang.String r0 = "null"
            r12.a((java.lang.String) r0, (int) r9)
            ail r0 = defpackage.ail.VALUE_NULL
            goto L_0x0377
        L_0x03a0:
            ail r0 = r12.c(r0)
            goto L_0x0377
        L_0x03a5:
            r1 = r3
            goto L_0x0050
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiy.a():ail");
    }

    public final void close() {
        super.close();
        this.M.a();
    }

    public final String f() {
        ail ail = this.b;
        if (ail == ail.VALUE_STRING) {
            if (this.O) {
                this.O = false;
                q();
            }
            return this.o.f();
        } else if (ail == null) {
            return null;
        } else {
            switch (ail) {
                case FIELD_NAME:
                    return this.m.g();
                case VALUE_STRING:
                case VALUE_NUMBER_INT:
                case VALUE_NUMBER_FLOAT:
                    return this.o.f();
                default:
                    return ail.n;
            }
        }
    }

    /* access modifiers changed from: protected */
    public final boolean p() {
        this.g += (long) this.f;
        this.i -= this.f;
        if (this.P == null) {
            return false;
        }
        int read = this.P.read(this.Q, 0, this.Q.length);
        if (read > 0) {
            this.e = 0;
            this.f = read;
            return true;
        }
        r();
        if (read != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this.Q.length + " bytes");
    }

    /* access modifiers changed from: protected */
    public final void q() {
        int i;
        int i2;
        int i3 = this.e;
        if (i3 >= this.f) {
            o();
            i3 = this.e;
        }
        char[] i4 = this.o.i();
        int[] iArr = S;
        int min = Math.min(this.f, i4.length + i3);
        byte[] bArr = this.Q;
        int i5 = i3;
        int i6 = 0;
        while (true) {
            if (i5 >= min) {
                break;
            }
            byte b = bArr[i5] & 255;
            if (iArr[b] == 0) {
                i4[i] = (char) b;
                i6 = i + 1;
                i5++;
            } else if (b == 34) {
                this.e = i5 + 1;
                this.o.i = i;
                return;
            }
        }
        this.e = i5;
        int[] iArr2 = S;
        byte[] bArr2 = this.Q;
        while (true) {
            int i7 = this.e;
            if (i7 >= this.f) {
                o();
                i7 = this.e;
            }
            if (i >= i4.length) {
                i4 = this.o.j();
                i = 0;
            }
            int min2 = Math.min(this.f, (i4.length - i) + i7);
            while (true) {
                if (i7 < min2) {
                    int i8 = i7 + 1;
                    int i9 = bArr2[i7] & 255;
                    if (iArr2[i9] != 0) {
                        this.e = i8;
                        if (i9 != 34) {
                            switch (iArr2[i9]) {
                                case 1:
                                    i9 = u();
                                    break;
                                case 2:
                                    i9 = h(i9);
                                    break;
                                case 3:
                                    if (this.f - this.e < 2) {
                                        i9 = i(i9);
                                        break;
                                    } else {
                                        i9 = j(i9);
                                        break;
                                    }
                                case 4:
                                    int k = k(i9);
                                    int i10 = i + 1;
                                    i4[i] = (char) (55296 | (k >> 10));
                                    if (i10 >= i4.length) {
                                        i4 = this.o.j();
                                        i = 0;
                                    } else {
                                        i = i10;
                                    }
                                    i9 = 56320 | (k & 1023);
                                    break;
                                default:
                                    if (i9 >= 32) {
                                        l(i9);
                                        break;
                                    } else {
                                        c(i9, "string value");
                                        break;
                                    }
                            }
                            if (i >= i4.length) {
                                i4 = this.o.j();
                                i2 = 0;
                            } else {
                                i2 = i;
                            }
                            i = i2 + 1;
                            i4[i2] = (char) i9;
                        } else {
                            this.o.i = i;
                            return;
                        }
                    } else {
                        i4[i] = (char) i9;
                        i7 = i8;
                        i++;
                    }
                } else {
                    this.e = i7;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void r() {
        if (this.P != null) {
            if (this.c.c() || a(aii.a.AUTO_CLOSE_SOURCE)) {
                this.P.close();
            }
            this.P = null;
        }
    }

    /* access modifiers changed from: protected */
    public final void s() {
        byte[] bArr;
        super.s();
        if (this.R && (bArr = this.Q) != null) {
            this.Q = null;
            this.c.a(bArr);
        }
    }

    /* access modifiers changed from: protected */
    public final char u() {
        if (this.e >= this.f && !p()) {
            c(" in character escape sequence");
        }
        byte[] bArr = this.Q;
        int i = this.e;
        this.e = i + 1;
        byte b = bArr[i];
        switch (b) {
            case 34:
            case 47:
            case 92:
                return (char) b;
            case 98:
                return 8;
            case 102:
                return 12;
            case 110:
                return 10;
            case 114:
                return TokenParser.CR;
            case 116:
                return 9;
            case 117:
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.e >= this.f && !p()) {
                        c(" in character escape sequence");
                    }
                    byte[] bArr2 = this.Q;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    byte b2 = bArr2[i4];
                    int a = ajt.a(b2);
                    if (a < 0) {
                        b(b2, "expected a hex-digit for character escape sequence");
                    }
                    i2 = (i2 << 4) | a;
                }
                return (char) i2;
            default:
                return a((char) g(b));
        }
    }
}
