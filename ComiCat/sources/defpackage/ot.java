package defpackage;

/* renamed from: ot  reason: default package */
/* compiled from: UnicodeEscaper */
public abstract class ot extends oq {
    private static char[] a(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }

    /* access modifiers changed from: protected */
    public abstract int a(CharSequence charSequence, int i, int i2);

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v25, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v26, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v27, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v28, resolved type: char} */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(java.lang.String r12, int r13) {
        /*
            r11 = this;
            r4 = 0
            int r5 = r12.length()
            char[] r3 = defpackage.os.a()
            r2 = r4
            r0 = r4
        L_0x000b:
            if (r13 >= r5) goto L_0x00d8
            if (r13 >= r5) goto L_0x0095
            int r6 = r13 + 1
            char r1 = r12.charAt(r13)
            r7 = 55296(0xd800, float:7.7486E-41)
            if (r1 < r7) goto L_0x001f
            r7 = 57343(0xdfff, float:8.0355E-41)
            if (r1 <= r7) goto L_0x0029
        L_0x001f:
            if (r1 >= 0) goto L_0x009d
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Trailing high surrogate at end of input"
            r0.<init>(r1)
            throw r0
        L_0x0029:
            r7 = 56319(0xdbff, float:7.892E-41)
            if (r1 > r7) goto L_0x006a
            if (r6 != r5) goto L_0x0032
            int r1 = -r1
            goto L_0x001f
        L_0x0032:
            char r7 = r12.charAt(r6)
            boolean r8 = java.lang.Character.isLowSurrogate(r7)
            if (r8 == 0) goto L_0x0041
            int r1 = java.lang.Character.toCodePoint(r1, r7)
            goto L_0x001f
        L_0x0041:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected low surrogate but got char '"
            r1.<init>(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r2 = "' with value "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r2 = " at index "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r6)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x006a:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Unexpected low surrogate character '"
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r1)
            java.lang.String r3 = "' with value "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r1 = r2.append(r1)
            java.lang.String r2 = " at index "
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r6 + -1
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0095:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            java.lang.String r1 = "Index exceeds specified range"
            r0.<init>(r1)
            throw r0
        L_0x009d:
            char[] r6 = r11.a(r1)
            boolean r1 = java.lang.Character.isSupplementaryCodePoint(r1)
            if (r1 == 0) goto L_0x00d6
            r1 = 2
        L_0x00a8:
            int r1 = r1 + r13
            if (r6 == 0) goto L_0x00ee
            int r7 = r13 - r2
            int r8 = r0 + r7
            int r9 = r6.length
            int r8 = r8 + r9
            int r9 = r3.length
            if (r9 >= r8) goto L_0x00bc
            int r8 = r8 + r5
            int r8 = r8 - r13
            int r8 = r8 + 32
            char[] r3 = a((char[]) r3, (int) r0, (int) r8)
        L_0x00bc:
            if (r7 <= 0) goto L_0x00c2
            r12.getChars(r2, r13, r3, r0)
            int r0 = r0 + r7
        L_0x00c2:
            int r2 = r6.length
            if (r2 <= 0) goto L_0x00cb
            int r2 = r6.length
            java.lang.System.arraycopy(r6, r4, r3, r0, r2)
            int r2 = r6.length
            int r0 = r0 + r2
        L_0x00cb:
            r2 = r0
            r0 = r1
        L_0x00cd:
            int r13 = r11.a((java.lang.CharSequence) r12, (int) r1, (int) r5)
            r10 = r0
            r0 = r2
            r2 = r10
            goto L_0x000b
        L_0x00d6:
            r1 = 1
            goto L_0x00a8
        L_0x00d8:
            int r1 = r5 - r2
            if (r1 <= 0) goto L_0x00e8
            int r1 = r1 + r0
            int r6 = r3.length
            if (r6 >= r1) goto L_0x00e4
            char[] r3 = a((char[]) r3, (int) r0, (int) r1)
        L_0x00e4:
            r12.getChars(r2, r5, r3, r0)
            r0 = r1
        L_0x00e8:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r3, r4, r0)
            return r1
        L_0x00ee:
            r10 = r2
            r2 = r0
            r0 = r10
            goto L_0x00cd
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ot.a(java.lang.String, int):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public abstract char[] a(int i);
}
