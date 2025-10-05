package com.fasterxml.jackson.core.sym;

import android.support.v4.app.FragmentTransaction;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class ByteQuadsCanonicalizer {
    protected int _count;
    protected final boolean _failOnDoS;
    protected int[] _hashArea;
    private boolean _hashShared;
    protected int _hashSize;
    protected boolean _intern;
    protected int _longNameOffset;
    protected String[] _names;
    private transient boolean _needRehash;
    protected final ByteQuadsCanonicalizer _parent;
    protected int _secondaryStart;
    private final int _seed;
    protected int _spilloverEnd;
    protected final AtomicReference<TableInfo> _tableInfo;
    protected int _tertiaryShift;
    protected int _tertiaryStart;

    static final class TableInfo {
        public final int count;
        public final int longNameOffset;
        public final int[] mainHash;
        public final String[] names;
        public final int size;
        public final int spilloverEnd;
        public final int tertiaryShift;

        public TableInfo(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
            this.size = i;
            this.count = i2;
            this.tertiaryShift = i3;
            this.mainHash = iArr;
            this.names = strArr;
            this.spilloverEnd = i4;
            this.longNameOffset = i5;
        }

        public TableInfo(ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
            this.size = byteQuadsCanonicalizer._hashSize;
            this.count = byteQuadsCanonicalizer._count;
            this.tertiaryShift = byteQuadsCanonicalizer._tertiaryShift;
            this.mainHash = byteQuadsCanonicalizer._hashArea;
            this.names = byteQuadsCanonicalizer._names;
            this.spilloverEnd = byteQuadsCanonicalizer._spilloverEnd;
            this.longNameOffset = byteQuadsCanonicalizer._longNameOffset;
        }

        public static TableInfo createInitial(int i) {
            int i2 = i << 3;
            return new TableInfo(i, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i), new int[i2], new String[(i << 1)], i2 - i, i2);
        }
    }

    private ByteQuadsCanonicalizer(int i, boolean z, int i2, boolean z2) {
        int i3 = 16;
        this._parent = null;
        this._seed = i2;
        this._intern = z;
        this._failOnDoS = z2;
        if (i < 16) {
            i = 16;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this._tableInfo = new AtomicReference<>(TableInfo.createInitial(i));
    }

    private ByteQuadsCanonicalizer(ByteQuadsCanonicalizer byteQuadsCanonicalizer, boolean z, int i, boolean z2, TableInfo tableInfo) {
        this._parent = byteQuadsCanonicalizer;
        this._seed = i;
        this._intern = z;
        this._failOnDoS = z2;
        this._tableInfo = null;
        this._count = tableInfo.count;
        this._hashSize = tableInfo.size;
        this._secondaryStart = this._hashSize << 2;
        this._tertiaryStart = this._secondaryStart + (this._secondaryStart >> 1);
        this._tertiaryShift = tableInfo.tertiaryShift;
        this._hashArea = tableInfo.mainHash;
        this._names = tableInfo.names;
        this._spilloverEnd = tableInfo.spilloverEnd;
        this._longNameOffset = tableInfo.longNameOffset;
        this._needRehash = false;
        this._hashShared = true;
    }

    private int _appendLongName(int[] iArr, int i) {
        int i2 = this._longNameOffset;
        if (i2 + i > this._hashArea.length) {
            int length = (i2 + i) - this._hashArea.length;
            int min = Math.min(FragmentTransaction.TRANSIT_ENTER_MASK, this._hashSize);
            this._hashArea = Arrays.copyOf(this._hashArea, Math.max(length, min) + this._hashArea.length);
        }
        System.arraycopy(iArr, 0, this._hashArea, i2, i);
        this._longNameOffset += i;
        return i2;
    }

    private final int _calcOffset(int i) {
        return ((this._hashSize - 1) & i) << 2;
    }

    static int _calcTertiaryShift(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        return i2 <= 1024 ? 6 : 7;
    }

    private int _findOffsetForAdd(int i) {
        int _calcOffset = _calcOffset(i);
        int[] iArr = this._hashArea;
        if (iArr[_calcOffset + 3] == 0) {
            return _calcOffset;
        }
        int i2 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        if (iArr[i2 + 3] == 0) {
            return i2;
        }
        int i3 = ((_calcOffset >> (this._tertiaryShift + 2)) << this._tertiaryShift) + this._tertiaryStart;
        int i4 = (1 << this._tertiaryShift) + i3;
        while (i3 < i4) {
            if (iArr[i3 + 3] == 0) {
                return i3;
            }
            i3 += 4;
        }
        int i5 = this._spilloverEnd;
        this._spilloverEnd += 4;
        if (this._spilloverEnd < (this._hashSize << 3)) {
            return i5;
        }
        if (this._failOnDoS) {
            _reportTooManyCollisions();
        }
        this._needRehash = true;
        return i5;
    }

    private String _findSecondary(int i, int i2) {
        int i3 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i4 = (1 << this._tertiaryShift) + i3;
        while (i3 < i4) {
            int i5 = iArr[i3 + 3];
            if (i2 == iArr[i3] && 1 == i5) {
                return this._names[i3 >> 2];
            }
            if (i5 == 0) {
                return null;
            }
            i3 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && 1 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3) {
        int i4 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i5 = (1 << this._tertiaryShift) + i4;
        while (i4 < i5) {
            int i6 = iArr[i4 + 3];
            if (i2 == iArr[i4] && i3 == iArr[i4 + 1] && 2 == i6) {
                return this._names[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && 2 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int i3, int i4) {
        int i5 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr = this._hashArea;
        int i6 = (1 << this._tertiaryShift) + i5;
        while (i5 < i6) {
            int i7 = iArr[i5 + 3];
            if (i2 == iArr[i5] && i3 == iArr[i5 + 1] && i4 == iArr[i5 + 2] && 3 == i7) {
                return this._names[i5 >> 2];
            }
            if (i7 == 0) {
                return null;
            }
            i5 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr[_spilloverStart] && i3 == iArr[_spilloverStart + 1] && i4 == iArr[_spilloverStart + 2] && 3 == iArr[_spilloverStart + 3]) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private String _findSecondary(int i, int i2, int[] iArr, int i3) {
        int i4 = this._tertiaryStart + ((i >> (this._tertiaryShift + 2)) << this._tertiaryShift);
        int[] iArr2 = this._hashArea;
        int i5 = (1 << this._tertiaryShift) + i4;
        while (i4 < i5) {
            int i6 = iArr2[i4 + 3];
            if (i2 == iArr2[i4] && i3 == i6 && _verifyLongName(iArr, i3, iArr2[i4 + 1])) {
                return this._names[i4 >> 2];
            }
            if (i6 == 0) {
                return null;
            }
            i4 += 4;
        }
        for (int _spilloverStart = _spilloverStart(); _spilloverStart < this._spilloverEnd; _spilloverStart += 4) {
            if (i2 == iArr2[_spilloverStart] && i3 == iArr2[_spilloverStart + 3] && _verifyLongName(iArr, i3, iArr2[_spilloverStart + 1])) {
                return this._names[_spilloverStart >> 2];
            }
        }
        return null;
    }

    private final int _spilloverStart() {
        int i = this._hashSize;
        return (i << 3) - i;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r5 != r4[r10]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x002c, code lost:
        r10 = r0;
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002e, code lost:
        r3 = r0 + 1;
        r5 = r8[r0];
        r0 = r10 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0036, code lost:
        if (r5 != r4[r10]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0038, code lost:
        r10 = r0;
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003a, code lost:
        r3 = r0 + 1;
        r5 = r10 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (r8[r0] != r4[r10]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0044, code lost:
        r0 = r3 + 1;
        r6 = r5 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004c, code lost:
        if (r8[r3] != r4[r5]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004e, code lost:
        r3 = r0 + 1;
        r5 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0056, code lost:
        if (r8[r0] != r4[r6]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005c, code lost:
        if (r8[r3] != r4[r5]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0016, code lost:
        r3 = r0 + 1;
        r5 = r8[r0];
        r0 = r10 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x001e, code lost:
        if (r5 != r4[r10]) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0020, code lost:
        r10 = r0;
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0022, code lost:
        r3 = r0 + 1;
        r5 = r8[r0];
        r0 = r10 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean _verifyLongName(int[] r8, int r9, int r10) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            int[] r4 = r7._hashArea
            switch(r9) {
                case 4: goto L_0x0066;
                case 5: goto L_0x0064;
                case 6: goto L_0x0062;
                case 7: goto L_0x0060;
                case 8: goto L_0x000c;
                default: goto L_0x0007;
            }
        L_0x0007:
            boolean r2 = r7._verifyLongName2(r8, r9, r10)
        L_0x000b:
            return r2
        L_0x000c:
            r3 = r8[r2]
            int r0 = r10 + 1
            r5 = r4[r10]
            if (r3 != r5) goto L_0x000b
            r10 = r0
            r0 = r1
        L_0x0016:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto L_0x000b
            r10 = r0
            r0 = r3
        L_0x0022:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto L_0x000b
            r10 = r0
            r0 = r3
        L_0x002e:
            int r3 = r0 + 1
            r5 = r8[r0]
            int r0 = r10 + 1
            r6 = r4[r10]
            if (r5 != r6) goto L_0x000b
            r10 = r0
            r0 = r3
        L_0x003a:
            int r3 = r0 + 1
            r0 = r8[r0]
            int r5 = r10 + 1
            r6 = r4[r10]
            if (r0 != r6) goto L_0x000b
            int r0 = r3 + 1
            r3 = r8[r3]
            int r6 = r5 + 1
            r5 = r4[r5]
            if (r3 != r5) goto L_0x000b
            int r3 = r0 + 1
            r0 = r8[r0]
            int r5 = r6 + 1
            r6 = r4[r6]
            if (r0 != r6) goto L_0x000b
            r0 = r8[r3]
            r3 = r4[r5]
            if (r0 != r3) goto L_0x000b
            r2 = r1
            goto L_0x000b
        L_0x0060:
            r0 = r2
            goto L_0x0016
        L_0x0062:
            r0 = r2
            goto L_0x0022
        L_0x0064:
            r0 = r2
            goto L_0x002e
        L_0x0066:
            r0 = r2
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer._verifyLongName(int[], int, int):boolean");
    }

    private boolean _verifyLongName2(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            int i6 = i2 + 1;
            if (i5 != this._hashArea[i2]) {
                return false;
            }
            if (i4 >= i) {
                return true;
            }
            i2 = i6;
            i3 = i4;
        }
    }

    private void _verifyNeedForRehash() {
        if (this._count <= (this._hashSize >> 1)) {
            return;
        }
        if (((this._spilloverEnd - _spilloverStart()) >> 2) > ((this._count + 1) >> 7) || ((double) this._count) > ((double) this._hashSize) * 0.8d) {
            this._needRehash = true;
        }
    }

    private void _verifySharing() {
        if (this._hashShared) {
            this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length);
            this._names = (String[]) Arrays.copyOf(this._names, this._names.length);
            this._hashShared = false;
            _verifyNeedForRehash();
        }
        if (this._needRehash) {
            rehash();
        }
    }

    public static ByteQuadsCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static ByteQuadsCanonicalizer createRoot(int i) {
        return new ByteQuadsCanonicalizer(64, true, i, true);
    }

    private void mergeChild(TableInfo tableInfo) {
        int i = tableInfo.count;
        TableInfo tableInfo2 = this._tableInfo.get();
        if (i != tableInfo2.count) {
            if (i > 6000) {
                tableInfo = TableInfo.createInitial(64);
            }
            this._tableInfo.compareAndSet(tableInfo2, tableInfo);
        }
    }

    private void nukeSymbols(boolean z) {
        this._count = 0;
        this._spilloverEnd = _spilloverStart();
        this._longNameOffset = this._hashSize << 3;
        if (z) {
            Arrays.fill(this._hashArea, 0);
            Arrays.fill(this._names, (Object) null);
        }
    }

    private void rehash() {
        this._needRehash = false;
        this._hashShared = false;
        int[] iArr = this._hashArea;
        String[] strArr = this._names;
        int i = this._hashSize;
        int i2 = this._count;
        int i3 = i + i;
        int i4 = this._spilloverEnd;
        if (i3 > 65536) {
            nukeSymbols(true);
            return;
        }
        this._hashArea = new int[((i << 3) + iArr.length)];
        this._hashSize = i3;
        this._secondaryStart = i3 << 2;
        this._tertiaryStart = this._secondaryStart + (this._secondaryStart >> 1);
        this._tertiaryShift = _calcTertiaryShift(i3);
        this._names = new String[(strArr.length << 1)];
        nukeSymbols(false);
        int[] iArr2 = new int[16];
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6 += 4) {
            int i7 = iArr[i6 + 3];
            if (i7 != 0) {
                i5++;
                String str = strArr[i6 >> 2];
                switch (i7) {
                    case 1:
                        iArr2[0] = iArr[i6];
                        addName(str, iArr2, 1);
                        break;
                    case 2:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        addName(str, iArr2, 2);
                        break;
                    case 3:
                        iArr2[0] = iArr[i6];
                        iArr2[1] = iArr[i6 + 1];
                        iArr2[2] = iArr[i6 + 2];
                        addName(str, iArr2, 3);
                        break;
                    default:
                        if (i7 > iArr2.length) {
                            iArr2 = new int[i7];
                        }
                        System.arraycopy(iArr, iArr[i6 + 1], iArr2, 0, i7);
                        addName(str, iArr2, i7);
                        break;
                }
            }
        }
        if (i5 != i2) {
            throw new IllegalStateException("Failed rehash(): old count=" + i2 + ", copyCount=" + i5);
        }
    }

    /* access modifiers changed from: protected */
    public final void _reportTooManyCollisions() {
        if (this._hashSize > 1024) {
            throw new IllegalStateException("Spill-over slots in symbol table with " + this._count + " entries, hash area of " + this._hashSize + " slots is now full (all " + (this._hashSize >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
        }
    }

    public final String addName(String str, int[] iArr, int i) {
        int _findOffsetForAdd;
        _verifySharing();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        switch (i) {
            case 1:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 3] = 1;
                break;
            case 2:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0], iArr[1]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 1] = iArr[1];
                this._hashArea[_findOffsetForAdd + 3] = 2;
                break;
            case 3:
                _findOffsetForAdd = _findOffsetForAdd(calcHash(iArr[0], iArr[1], iArr[2]));
                this._hashArea[_findOffsetForAdd] = iArr[0];
                this._hashArea[_findOffsetForAdd + 1] = iArr[1];
                this._hashArea[_findOffsetForAdd + 2] = iArr[2];
                this._hashArea[_findOffsetForAdd + 3] = 3;
                break;
            default:
                int calcHash = calcHash(iArr, i);
                _findOffsetForAdd = _findOffsetForAdd(calcHash);
                this._hashArea[_findOffsetForAdd] = calcHash;
                this._hashArea[_findOffsetForAdd + 1] = _appendLongName(iArr, i);
                this._hashArea[_findOffsetForAdd + 3] = i;
                break;
        }
        this._names[_findOffsetForAdd >> 2] = str;
        this._count++;
        _verifyNeedForRehash();
        return str;
    }

    public final int calcHash(int i) {
        int i2 = this._seed ^ i;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        return i4 + (i4 >>> 12);
    }

    public final int calcHash(int i, int i2) {
        int i3 = (i >>> 15) + i;
        int i4 = ((i3 ^ (i3 >>> 9)) + (i2 * 33)) ^ this._seed;
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    public final int calcHash(int i, int i2, int i3) {
        int i4 = this._seed ^ i;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    public final int calcHash(int[] iArr, int i) {
        if (i < 4) {
            throw new IllegalArgumentException();
        }
        int i2 = iArr[0] ^ this._seed;
        int i3 = i2 + (i2 >>> 9) + iArr[1];
        int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
        int i5 = (i4 >>> 4) + i4;
        for (int i6 = 3; i6 < i; i6++) {
            int i7 = iArr[i6];
            i5 += i7 ^ (i7 >> 21);
        }
        int i8 = 65599 * i5;
        int i9 = i8 + (i8 >>> 19);
        return i9 ^ (i9 << 5);
    }

    public final String findName(int i) {
        int _calcOffset = _calcOffset(calcHash(i));
        int[] iArr = this._hashArea;
        int i2 = iArr[_calcOffset + 3];
        if (i2 == 1) {
            if (iArr[_calcOffset] == i) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i4 = iArr[i3 + 3];
        if (i4 == 1) {
            if (iArr[i3] == i) {
                return this._names[i3 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i);
    }

    public final String findName(int i, int i2) {
        int _calcOffset = _calcOffset(calcHash(i, i2));
        int[] iArr = this._hashArea;
        int i3 = iArr[_calcOffset + 3];
        if (i3 == 2) {
            if (i == iArr[_calcOffset] && i2 == iArr[_calcOffset + 1]) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this._names[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2);
    }

    public final String findName(int i, int i2, int i3) {
        int _calcOffset = _calcOffset(calcHash(i, i2, i3));
        int[] iArr = this._hashArea;
        int i4 = iArr[_calcOffset + 3];
        if (i4 == 3) {
            if (i == iArr[_calcOffset] && iArr[_calcOffset + 1] == i2 && iArr[_calcOffset + 2] == i3) {
                return this._names[_calcOffset >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this._names[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        return _findSecondary(_calcOffset, i, i2, i3);
    }

    public final String findName(int[] iArr, int i) {
        if (i < 4) {
            return i == 3 ? findName(iArr[0], iArr[1], iArr[2]) : i == 2 ? findName(iArr[0], iArr[1]) : findName(iArr[0]);
        }
        int calcHash = calcHash(iArr, i);
        int _calcOffset = _calcOffset(calcHash);
        int[] iArr2 = this._hashArea;
        int i2 = iArr2[_calcOffset + 3];
        if (calcHash == iArr2[_calcOffset] && i2 == i && _verifyLongName(iArr, i, iArr2[_calcOffset + 1])) {
            return this._names[_calcOffset >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((_calcOffset >> 3) << 2);
        int i4 = iArr2[i3 + 3];
        if (calcHash == iArr2[i3] && i4 == i && _verifyLongName(iArr, i, iArr2[i3 + 1])) {
            return this._names[i3 >> 2];
        }
        if (i2 != 0) {
            return _findSecondary(_calcOffset, calcHash, iArr, i);
        }
        return null;
    }

    public final ByteQuadsCanonicalizer makeChild(int i) {
        return new ByteQuadsCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i), this._seed, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), this._tableInfo.get());
    }

    public final boolean maybeDirty() {
        return !this._hashShared;
    }

    public final int primaryCount() {
        int i = this._secondaryStart;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public final void release() {
        if (this._parent != null && maybeDirty()) {
            this._parent.mergeChild(new TableInfo(this));
            this._hashShared = true;
        }
    }

    public final int secondaryCount() {
        int i = this._tertiaryStart;
        int i2 = 0;
        for (int i3 = this._secondaryStart + 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public final int spilloverCount() {
        return (this._spilloverEnd - _spilloverStart()) >> 2;
    }

    public final int tertiaryCount() {
        int i = this._tertiaryStart + 3;
        int i2 = this._hashSize + i;
        int i3 = i;
        int i4 = 0;
        for (int i5 = i3; i5 < i2; i5 += 4) {
            if (this._hashArea[i5] != 0) {
                i4++;
            }
        }
        return i4;
    }

    public final String toString() {
        int primaryCount = primaryCount();
        int secondaryCount = secondaryCount();
        int tertiaryCount = tertiaryCount();
        int spilloverCount = spilloverCount();
        int i = totalCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", new Object[]{getClass().getName(), Integer.valueOf(this._count), Integer.valueOf(this._hashSize), Integer.valueOf(primaryCount), Integer.valueOf(secondaryCount), Integer.valueOf(tertiaryCount), Integer.valueOf(spilloverCount), Integer.valueOf(i), Integer.valueOf(primaryCount + secondaryCount + tertiaryCount + spilloverCount), Integer.valueOf(i)});
    }

    public final int totalCount() {
        int i = this._hashSize << 3;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }
}
