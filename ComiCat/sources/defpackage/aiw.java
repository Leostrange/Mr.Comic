package defpackage;

import defpackage.aii;
import java.io.IOException;
import java.io.Reader;
import org.apache.http.message.TokenParser;

/* renamed from: aiw  reason: default package */
/* compiled from: ReaderBasedParser */
public final class aiw extends ais {
    protected Reader L;
    protected char[] M;
    protected aim N;
    protected final ajl O;
    protected boolean P = false;

    public aiw(ajc ajc, int i, Reader reader, aim aim, ajl ajl) {
        super(ajc, i);
        this.L = reader;
        this.M = ajc.g();
        this.N = aim;
        this.O = ajl;
    }

    private void A() {
        this.h++;
        this.i = this.e;
    }

    private final int B() {
        while (true) {
            if (this.e < this.f || p()) {
                char[] cArr = this.M;
                int i = this.e;
                this.e = i + 1;
                char c = cArr[i];
                if (c > ' ') {
                    if (c != '/') {
                        return c;
                    }
                    C();
                } else if (c != ' ') {
                    if (c == 10) {
                        A();
                    } else if (c == 13) {
                        z();
                    } else if (c != 9) {
                        a((int) c);
                    }
                }
            } else {
                throw a("Unexpected end-of-input within/between " + this.m.d() + " entries");
            }
        }
    }

    private final void C() {
        if (!a(aii.a.ALLOW_COMMENTS)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.e >= this.f && !p()) {
            c(" in a comment");
        }
        char[] cArr = this.M;
        int i = this.e;
        this.e = i + 1;
        char c = cArr[i];
        if (c == '/') {
            while (true) {
                if (this.e < this.f || p()) {
                    char[] cArr2 = this.M;
                    int i2 = this.e;
                    this.e = i2 + 1;
                    char c2 = cArr2[i2];
                    if (c2 < ' ') {
                        if (c2 == 10) {
                            A();
                            return;
                        } else if (c2 == 13) {
                            z();
                            return;
                        } else if (c2 != 9) {
                            a((int) c2);
                        }
                    }
                } else {
                    return;
                }
            }
        } else if (c == '*') {
            while (true) {
                if (this.e >= this.f && !p()) {
                    break;
                }
                char[] cArr3 = this.M;
                int i3 = this.e;
                this.e = i3 + 1;
                char c3 = cArr3[i3];
                if (c3 <= '*') {
                    if (c3 == '*') {
                        if (this.e >= this.f && !p()) {
                            break;
                        } else if (this.M[this.e] == '/') {
                            this.e++;
                            return;
                        }
                    } else if (c3 < ' ') {
                        if (c3 == 10) {
                            A();
                        } else if (c3 == 13) {
                            z();
                        } else if (c3 != 9) {
                            a((int) c3);
                        }
                    }
                }
            }
            c(" in a comment");
        } else {
            b(c, "was expecting either '*' or '/' for a comment");
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ?, r9v1 ?, r9v2 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    private defpackage.ail a(
/*
Method generation error in method: aiw.a(int, boolean):ail, dex: classes.dex
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

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0088  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String a(int r7, int r8, int r9) {
        /*
            r6 = this;
            r5 = 92
            ajw r0 = r6.o
            char[] r1 = r6.M
            int r2 = r6.e
            int r2 = r2 - r7
            r0.a(r1, r7, r2)
            ajw r0 = r6.o
            char[] r1 = r0.h()
            ajw r0 = r6.o
            int r0 = r0.i
        L_0x0016:
            int r2 = r6.e
            int r3 = r6.f
            if (r2 < r3) goto L_0x003b
            boolean r2 = r6.p()
            if (r2 != 0) goto L_0x003b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = ": was expecting closing '"
            r2.<init>(r3)
            char r3 = (char) r9
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = "' for name"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r6.c(r2)
        L_0x003b:
            char[] r2 = r6.M
            int r3 = r6.e
            int r4 = r3 + 1
            r6.e = r4
            char r3 = r2[r3]
            if (r3 > r5) goto L_0x006d
            if (r3 != r5) goto L_0x0060
            char r2 = r6.u()
        L_0x004d:
            int r4 = r8 * 31
            int r8 = r4 + r3
            int r3 = r0 + 1
            r1[r0] = r2
            int r0 = r1.length
            if (r3 < r0) goto L_0x0088
            ajw r0 = r6.o
            char[] r1 = r0.j()
            r0 = 0
            goto L_0x0016
        L_0x0060:
            if (r3 > r9) goto L_0x006d
            if (r3 == r9) goto L_0x006f
            r2 = 32
            if (r3 >= r2) goto L_0x006d
            java.lang.String r2 = "name"
            r6.c(r3, r2)
        L_0x006d:
            r2 = r3
            goto L_0x004d
        L_0x006f:
            ajw r1 = r6.o
            r1.i = r0
            ajw r0 = r6.o
            char[] r1 = r0.e()
            int r2 = r0.d()
            int r0 = r0.c()
            ajl r3 = r6.O
            java.lang.String r0 = r3.a(r1, r2, r0, r8)
            return r0
        L_0x0088:
            r0 = r3
            goto L_0x0016
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiw.a(int, int, int):java.lang.String");
    }

    private void a(String str, int i) {
        char c;
        int length = str.length();
        do {
            if (this.e >= this.f && !p()) {
                w();
            }
            if (this.M[this.e] != str.charAt(i)) {
                f(str.substring(0, i));
            }
            this.e++;
            i++;
        } while (i < length);
        if ((this.e < this.f || p()) && (c = this.M[this.e]) >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c)) {
            f(str.substring(0, i));
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r12v0 ?, r12v1 ?, r12v2 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    private defpackage.ail c(
/*
Method generation error in method: aiw.c(int):ail, dex: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r12v0 ?
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

    private String d(int i) {
        int i2;
        int i3;
        int i4 = 0;
        if (i == 34) {
            int i5 = this.e;
            int i6 = this.f;
            if (i5 < i6) {
                int[] a = ajt.a();
                int length = a.length;
                while (true) {
                    char c = this.M[i5];
                    if (c >= length || a[c] == 0) {
                        i4 = (i4 * 31) + c;
                        i5++;
                        if (i5 >= i6) {
                            break;
                        }
                    } else if (c == '\"') {
                        int i7 = this.e;
                        this.e = i5 + 1;
                        return this.O.a(this.M, i7, i5 - i7, i4);
                    }
                }
            }
            int i8 = this.e;
            this.e = i5;
            return a(i8, i4, 34);
        } else if (i != 39 || !a(aii.a.ALLOW_SINGLE_QUOTES)) {
            if (!a(aii.a.ALLOW_UNQUOTED_FIELD_NAMES)) {
                b(i, "was expecting double-quote to start field name");
            }
            int[] c2 = ajt.c();
            int length2 = c2.length;
            if (!(i < length2 ? c2[i] == 0 && (i < 48 || i > 57) : Character.isJavaIdentifierPart((char) i))) {
                b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
            }
            int i9 = this.e;
            int i10 = this.f;
            if (i9 < i10) {
                i2 = i9;
                i3 = 0;
                do {
                    char c3 = this.M[i2];
                    if (c3 < length2) {
                        if (c2[c3] != 0) {
                            int i11 = this.e - 1;
                            this.e = i2;
                            return this.O.a(this.M, i11, i2 - i11, i3);
                        }
                    } else if (!Character.isJavaIdentifierPart((char) c3)) {
                        int i12 = this.e - 1;
                        this.e = i2;
                        return this.O.a(this.M, i12, i2 - i12, i3);
                    }
                    i3 = (i3 * 31) + c3;
                    i2++;
                } while (i2 < i10);
            } else {
                i2 = i9;
                i3 = 0;
            }
            int i13 = this.e - 1;
            this.e = i2;
            this.o.a(this.M, i13, this.e - i13);
            char[] h = this.o.h();
            int i14 = this.o.i;
            int length3 = c2.length;
            int i15 = i14;
            char[] cArr = h;
            int i16 = i3;
            int i17 = i15;
            while (true) {
                if (this.e >= this.f && !p()) {
                    break;
                }
                char c4 = this.M[this.e];
                if (c4 > length3) {
                    if (!Character.isJavaIdentifierPart(c4)) {
                        break;
                    }
                } else if (c2[c4] != 0) {
                    break;
                }
                this.e++;
                i16 = (i16 * 31) + c4;
                int i18 = i17 + 1;
                cArr[i17] = c4;
                if (i18 >= cArr.length) {
                    cArr = this.o.j();
                    i17 = 0;
                } else {
                    i17 = i18;
                }
            }
            this.o.i = i17;
            ajw ajw = this.o;
            return this.O.a(ajw.e(), ajw.d(), ajw.c(), i16);
        } else {
            int i19 = this.e;
            int i20 = this.f;
            if (i19 < i20) {
                int[] a2 = ajt.a();
                int length4 = a2.length;
                do {
                    char c5 = this.M[i19];
                    if (c5 != '\'') {
                        if (c5 < length4 && a2[c5] != 0) {
                            break;
                        }
                        i4 = (i4 * 31) + c5;
                        i19++;
                    } else {
                        int i21 = this.e;
                        this.e = i19 + 1;
                        return this.O.a(this.M, i21, i19 - i21, i4);
                    }
                } while (i19 < i20);
            }
            int i22 = this.e;
            this.e = i19;
            return a(i22, i4, 39);
        }
    }

    private char e(String str) {
        if (this.e >= this.f && !p()) {
            c(str);
        }
        char[] cArr = this.M;
        int i = this.e;
        this.e = i + 1;
        return cArr[i];
    }

    private void f(String str) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.e >= this.f && !p()) {
                break;
            }
            char c = this.M[this.e];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this.e++;
            sb.append(c);
        }
        d("Unrecognized token '" + sb.toString() + "': was expecting ");
    }

    private ail y() {
        char[] i = this.o.i();
        int i2 = this.o.i;
        while (true) {
            if (this.e >= this.f && !p()) {
                c(": was expecting closing quote for a string value");
            }
            char[] cArr = this.M;
            int i3 = this.e;
            this.e = i3 + 1;
            char c = cArr[i3];
            if (c <= '\\') {
                if (c == '\\') {
                    c = u();
                } else if (c <= '\'') {
                    if (c == '\'') {
                        this.o.i = i2;
                        return ail.VALUE_STRING;
                    } else if (c < ' ') {
                        c(c, "string value");
                    }
                }
            }
            if (i2 >= i.length) {
                i = this.o.j();
                i2 = 0;
            }
            int i4 = i2;
            i2 = i4 + 1;
            i[i4] = c;
        }
    }

    private void z() {
        if ((this.e < this.f || p()) && this.M[this.e] == 10) {
            this.e++;
        }
        this.h++;
        this.i = this.e;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v4, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v58, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v59, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v60, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v61, resolved type: char} */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.ail a() {
        /*
            r10 = this;
            r7 = 34
            r6 = 32
            r2 = 0
            r9 = 0
            r8 = 1
            r10.B = r9
            ail r0 = r10.b
            ail r1 = defpackage.ail.FIELD_NAME
            if (r0 != r1) goto L_0x0039
            r10.q = r9
            ail r0 = r10.n
            r10.n = r2
            ail r1 = defpackage.ail.START_ARRAY
            if (r0 != r1) goto L_0x0028
            aiu r1 = r10.m
            int r2 = r10.k
            int r3 = r10.l
            aiu r1 = r1.a(r2, r3)
            r10.m = r1
        L_0x0025:
            r10.b = r0
        L_0x0027:
            return r0
        L_0x0028:
            ail r1 = defpackage.ail.START_OBJECT
            if (r0 != r1) goto L_0x0025
            aiu r1 = r10.m
            int r2 = r10.k
            int r3 = r10.l
            aiu r1 = r1.b(r2, r3)
            r10.m = r1
            goto L_0x0025
        L_0x0039:
            boolean r0 = r10.P
            if (r0 == 0) goto L_0x0074
            r10.P = r9
            int r0 = r10.e
            int r1 = r10.f
            char[] r4 = r10.M
        L_0x0045:
            if (r0 < r1) goto L_0x0058
            r10.e = r0
            boolean r0 = r10.p()
            if (r0 != 0) goto L_0x0054
            java.lang.String r0 = ": was expecting closing quote for a string value"
            r10.c(r0)
        L_0x0054:
            int r0 = r10.e
            int r1 = r10.f
        L_0x0058:
            int r3 = r0 + 1
            char r0 = r4[r0]
            r5 = 92
            if (r0 > r5) goto L_0x009d
            r5 = 92
            if (r0 != r5) goto L_0x006e
            r10.e = r3
            r10.u()
            int r0 = r10.e
            int r1 = r10.f
            goto L_0x0045
        L_0x006e:
            if (r0 > r7) goto L_0x009d
            if (r0 != r7) goto L_0x0094
            r10.e = r3
        L_0x0074:
            int r0 = r10.e
            int r1 = r10.f
            if (r0 < r1) goto L_0x0080
            boolean r0 = r10.p()
            if (r0 == 0) goto L_0x00b9
        L_0x0080:
            char[] r0 = r10.M
            int r1 = r10.e
            int r3 = r1 + 1
            r10.e = r3
            char r0 = r0[r1]
            if (r0 <= r6) goto L_0x009f
            r1 = 47
            if (r0 != r1) goto L_0x00bd
            r10.C()
            goto L_0x0074
        L_0x0094:
            if (r0 >= r6) goto L_0x009d
            r10.e = r3
            java.lang.String r5 = "string value"
            r10.c(r0, r5)
        L_0x009d:
            r0 = r3
            goto L_0x0045
        L_0x009f:
            if (r0 == r6) goto L_0x0074
            r1 = 10
            if (r0 != r1) goto L_0x00a9
            r10.A()
            goto L_0x0074
        L_0x00a9:
            r1 = 13
            if (r0 != r1) goto L_0x00b1
            r10.z()
            goto L_0x0074
        L_0x00b1:
            r1 = 9
            if (r0 == r1) goto L_0x0074
            r10.a((int) r0)
            goto L_0x0074
        L_0x00b9:
            r10.t()
            r0 = -1
        L_0x00bd:
            if (r0 >= 0) goto L_0x00c7
            r10.close()
            r10.b = r2
            r0 = r2
            goto L_0x0027
        L_0x00c7:
            long r4 = r10.g
            int r1 = r10.e
            long r6 = (long) r1
            long r4 = r4 + r6
            r6 = 1
            long r4 = r4 - r6
            r10.j = r4
            int r1 = r10.h
            r10.k = r1
            int r1 = r10.e
            int r3 = r10.i
            int r1 = r1 - r3
            int r1 = r1 + -1
            r10.l = r1
            r10.s = r2
            r1 = 93
            if (r0 != r1) goto L_0x0100
            aiu r1 = r10.m
            boolean r1 = r1.a()
            if (r1 != 0) goto L_0x00f2
            r1 = 125(0x7d, float:1.75E-43)
            r10.a((int) r0, (char) r1)
        L_0x00f2:
            aiu r0 = r10.m
            aiu r0 = r0.h()
            r10.m = r0
            ail r0 = defpackage.ail.END_ARRAY
            r10.b = r0
            goto L_0x0027
        L_0x0100:
            r1 = 125(0x7d, float:1.75E-43)
            if (r0 != r1) goto L_0x011f
            aiu r1 = r10.m
            boolean r1 = r1.c()
            if (r1 != 0) goto L_0x0111
            r1 = 93
            r10.a((int) r0, (char) r1)
        L_0x0111:
            aiu r0 = r10.m
            aiu r0 = r0.h()
            r10.m = r0
            ail r0 = defpackage.ail.END_OBJECT
            r10.b = r0
            goto L_0x0027
        L_0x011f:
            aiu r1 = r10.m
            boolean r1 = r1.i()
            if (r1 == 0) goto L_0x014d
            r1 = 44
            if (r0 == r1) goto L_0x0149
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "was expecting comma to separate "
            r1.<init>(r3)
            aiu r3 = r10.m
            java.lang.String r3 = r3.d()
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r3 = " entries"
            java.lang.StringBuilder r1 = r1.append(r3)
            java.lang.String r1 = r1.toString()
            r10.b(r0, r1)
        L_0x0149:
            int r0 = r10.B()
        L_0x014d:
            aiu r1 = r10.m
            boolean r1 = r1.c()
            if (r1 == 0) goto L_0x0173
            java.lang.String r0 = r10.d(r0)
            aiu r3 = r10.m
            r3.a((java.lang.String) r0)
            ail r0 = defpackage.ail.FIELD_NAME
            r10.b = r0
            int r0 = r10.B()
            r3 = 58
            if (r0 == r3) goto L_0x016f
            java.lang.String r3 = "was expecting a colon to separate field name and value"
            r10.b(r0, r3)
        L_0x016f:
            int r0 = r10.B()
        L_0x0173:
            switch(r0) {
                case 34: goto L_0x0187;
                case 45: goto L_0x01cb;
                case 48: goto L_0x01cb;
                case 49: goto L_0x01cb;
                case 50: goto L_0x01cb;
                case 51: goto L_0x01cb;
                case 52: goto L_0x01cb;
                case 53: goto L_0x01cb;
                case 54: goto L_0x01cb;
                case 55: goto L_0x01cb;
                case 56: goto L_0x01cb;
                case 57: goto L_0x01cb;
                case 91: goto L_0x018c;
                case 93: goto L_0x01ae;
                case 102: goto L_0x01bb;
                case 110: goto L_0x01c3;
                case 116: goto L_0x01b3;
                case 123: goto L_0x019d;
                case 125: goto L_0x01ae;
                default: goto L_0x0176;
            }
        L_0x0176:
            switch(r0) {
                case 39: goto L_0x01d0;
                case 43: goto L_0x01f9;
                case 78: goto L_0x01dd;
                default: goto L_0x0179;
            }
        L_0x0179:
            java.lang.String r3 = "expected a valid value (number, String, array, object, 'true', 'false' or 'null')"
            r10.b(r0, r3)
            r0 = r2
        L_0x017f:
            if (r1 == 0) goto L_0x0218
            r10.n = r0
            ail r0 = r10.b
            goto L_0x0027
        L_0x0187:
            r10.P = r8
            ail r0 = defpackage.ail.VALUE_STRING
            goto L_0x017f
        L_0x018c:
            if (r1 != 0) goto L_0x019a
            aiu r0 = r10.m
            int r2 = r10.k
            int r3 = r10.l
            aiu r0 = r0.a(r2, r3)
            r10.m = r0
        L_0x019a:
            ail r0 = defpackage.ail.START_ARRAY
            goto L_0x017f
        L_0x019d:
            if (r1 != 0) goto L_0x01ab
            aiu r0 = r10.m
            int r2 = r10.k
            int r3 = r10.l
            aiu r0 = r0.b(r2, r3)
            r10.m = r0
        L_0x01ab:
            ail r0 = defpackage.ail.START_OBJECT
            goto L_0x017f
        L_0x01ae:
            java.lang.String r2 = "expected a value"
            r10.b(r0, r2)
        L_0x01b3:
            java.lang.String r0 = "true"
            r10.a((java.lang.String) r0, (int) r8)
            ail r0 = defpackage.ail.VALUE_TRUE
            goto L_0x017f
        L_0x01bb:
            java.lang.String r0 = "false"
            r10.a((java.lang.String) r0, (int) r8)
            ail r0 = defpackage.ail.VALUE_FALSE
            goto L_0x017f
        L_0x01c3:
            java.lang.String r0 = "null"
            r10.a((java.lang.String) r0, (int) r8)
            ail r0 = defpackage.ail.VALUE_NULL
            goto L_0x017f
        L_0x01cb:
            ail r0 = r10.c(r0)
            goto L_0x017f
        L_0x01d0:
            aii$a r3 = defpackage.aii.a.ALLOW_SINGLE_QUOTES
            boolean r3 = r10.a((defpackage.aii.a) r3)
            if (r3 == 0) goto L_0x0179
            ail r0 = r10.y()
            goto L_0x017f
        L_0x01dd:
            java.lang.String r3 = "NaN"
            r10.a((java.lang.String) r3, (int) r8)
            aii$a r3 = defpackage.aii.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r3 = r10.a((defpackage.aii.a) r3)
            if (r3 == 0) goto L_0x01f3
            java.lang.String r0 = "NaN"
            r2 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            ail r0 = r10.a((java.lang.String) r0, (double) r2)
            goto L_0x017f
        L_0x01f3:
            java.lang.String r3 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            r10.d(r3)
            goto L_0x0179
        L_0x01f9:
            int r0 = r10.e
            int r2 = r10.f
            if (r0 < r2) goto L_0x0208
            boolean r0 = r10.p()
            if (r0 != 0) goto L_0x0208
            r10.w()
        L_0x0208:
            char[] r0 = r10.M
            int r2 = r10.e
            int r3 = r2 + 1
            r10.e = r3
            char r0 = r0[r2]
            ail r0 = r10.a((int) r0, (boolean) r9)
            goto L_0x017f
        L_0x0218:
            r10.b = r0
            goto L_0x0027
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aiw.a():ail");
    }

    public final void close() {
        super.close();
        this.O.b();
    }

    public final String f() {
        ail ail = this.b;
        if (ail == ail.VALUE_STRING) {
            if (this.P) {
                this.P = false;
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
        if (this.L == null) {
            return false;
        }
        int read = this.L.read(this.M, 0, this.M.length);
        if (read > 0) {
            this.e = 0;
            this.f = read;
            return true;
        }
        r();
        if (read != 0) {
            return false;
        }
        throw new IOException("Reader returned 0 characters when trying to read " + this.f);
    }

    /* access modifiers changed from: protected */
    public final void q() {
        int i = this.e;
        int i2 = this.f;
        if (i < i2) {
            int[] a = ajt.a();
            int length = a.length;
            while (true) {
                char c = this.M[i];
                if (c >= length || a[c] == 0) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                } else if (c == '\"') {
                    this.o.a(this.M, this.e, i - this.e);
                    this.e = i + 1;
                    return;
                }
            }
        }
        ajw ajw = this.o;
        char[] cArr = this.M;
        int i3 = this.e;
        int i4 = i - this.e;
        ajw.c = null;
        ajw.d = -1;
        ajw.e = 0;
        ajw.j = null;
        ajw.k = null;
        if (ajw.f) {
            ajw.b();
        } else if (ajw.h == null) {
            ajw.h = ajw.a(i4);
        }
        ajw.g = 0;
        ajw.i = 0;
        if (ajw.d >= 0) {
            ajw.b(i4);
        }
        ajw.j = null;
        ajw.k = null;
        char[] cArr2 = ajw.h;
        int length2 = cArr2.length - ajw.i;
        if (length2 >= i4) {
            System.arraycopy(cArr, i3, cArr2, ajw.i, i4);
            ajw.i = i4 + ajw.i;
        } else {
            if (length2 > 0) {
                System.arraycopy(cArr, i3, cArr2, ajw.i, length2);
                i3 += length2;
                i4 -= length2;
            }
            do {
                ajw.c(i4);
                int min = Math.min(ajw.h.length, i4);
                System.arraycopy(cArr, i3, ajw.h, 0, min);
                ajw.i += min;
                i3 += min;
                i4 -= min;
            } while (i4 > 0);
        }
        this.e = i;
        char[] h = this.o.h();
        int i5 = this.o.i;
        while (true) {
            if (this.e >= this.f && !p()) {
                c(": was expecting closing quote for a string value");
            }
            char[] cArr3 = this.M;
            int i6 = this.e;
            this.e = i6 + 1;
            char c2 = cArr3[i6];
            if (c2 <= '\\') {
                if (c2 == '\\') {
                    c2 = u();
                } else if (c2 <= '\"') {
                    if (c2 == '\"') {
                        this.o.i = i5;
                        return;
                    } else if (c2 < ' ') {
                        c(c2, "string value");
                    }
                }
            }
            if (i5 >= h.length) {
                h = this.o.j();
                i5 = 0;
            }
            h[i5] = c2;
            i5++;
        }
    }

    /* access modifiers changed from: protected */
    public final void r() {
        if (this.L != null) {
            if (this.c.c() || a(aii.a.AUTO_CLOSE_SOURCE)) {
                this.L.close();
            }
            this.L = null;
        }
    }

    /* access modifiers changed from: protected */
    public final void s() {
        super.s();
        char[] cArr = this.M;
        if (cArr != null) {
            this.M = null;
            this.c.a(cArr);
        }
    }

    /* access modifiers changed from: protected */
    public final char u() {
        int i = 0;
        if (this.e >= this.f && !p()) {
            c(" in character escape sequence");
        }
        char[] cArr = this.M;
        int i2 = this.e;
        this.e = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\"':
            case '/':
            case '\\':
                return c;
            case 'b':
                return 8;
            case 'f':
                return 12;
            case 'n':
                return 10;
            case 'r':
                return TokenParser.CR;
            case 't':
                return 9;
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.e >= this.f && !p()) {
                        c(" in character escape sequence");
                    }
                    char[] cArr2 = this.M;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    char c2 = cArr2[i4];
                    int a = ajt.a(c2);
                    if (a < 0) {
                        b(c2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | a;
                }
                return (char) i;
            default:
                return a(c);
        }
    }
}
