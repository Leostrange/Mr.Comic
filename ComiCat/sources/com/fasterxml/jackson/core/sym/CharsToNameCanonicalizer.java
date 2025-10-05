package com.fasterxml.jackson.core.sym;

import android.support.v4.app.NotificationCompat;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;

public final class CharsToNameCanonicalizer {
    static final CharsToNameCanonicalizer sBootstrapSymbolTable = new CharsToNameCanonicalizer();
    protected Bucket[] _buckets;
    protected boolean _canonicalize;
    protected boolean _dirty;
    protected final int _flags;
    private final int _hashSeed;
    protected int _indexMask;
    protected int _longestCollisionList;
    protected BitSet _overflows;
    protected CharsToNameCanonicalizer _parent;
    protected int _size;
    protected int _sizeThreshold;
    protected String[] _symbols;

    static final class Bucket {
        public final int length;
        public final Bucket next;
        public final String symbol;

        public Bucket(String str, Bucket bucket) {
            this.symbol = str;
            this.next = bucket;
            this.length = bucket == null ? 1 : bucket.length + 1;
        }

        public final String has(char[] cArr, int i, int i2) {
            if (this.symbol.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.symbol.charAt(i3) == cArr[i + i3]) {
                i3++;
                if (i3 >= i2) {
                    return this.symbol;
                }
            }
            return null;
        }
    }

    private CharsToNameCanonicalizer() {
        this._canonicalize = true;
        this._flags = -1;
        this._dirty = true;
        this._hashSeed = 0;
        this._longestCollisionList = 0;
        initTables(64);
    }

    private CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i, String[] strArr, Bucket[] bucketArr, int i2, int i3, int i4) {
        this._parent = charsToNameCanonicalizer;
        this._flags = i;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i);
        this._symbols = strArr;
        this._buckets = bucketArr;
        this._size = i2;
        this._hashSeed = i3;
        int length = strArr.length;
        this._sizeThreshold = _thresholdSize(length);
        this._indexMask = length - 1;
        this._longestCollisionList = i4;
        this._dirty = false;
    }

    private String _addSymbol(char[] cArr, int i, int i2, int i3, int i4) {
        if (!this._dirty) {
            copyArrays();
            this._dirty = true;
        } else if (this._size >= this._sizeThreshold) {
            rehash();
            i4 = _hashToIndex(calcHash(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this._flags)) {
            str = InternCache.instance.intern(str);
        }
        this._size++;
        if (this._symbols[i4] == null) {
            this._symbols[i4] = str;
        } else {
            int i5 = i4 >> 1;
            Bucket bucket = new Bucket(str, this._buckets[i5]);
            int i6 = bucket.length;
            if (i6 > 100) {
                _handleSpillOverflow(i5, bucket);
            } else {
                this._buckets[i5] = bucket;
                this._longestCollisionList = Math.max(i6, this._longestCollisionList);
            }
        }
        return str;
    }

    private String _findSymbol2(char[] cArr, int i, int i2, Bucket bucket) {
        while (bucket != null) {
            String has = bucket.has(cArr, i, i2);
            if (has != null) {
                return has;
            }
            bucket = bucket.next;
        }
        return null;
    }

    private void _handleSpillOverflow(int i, Bucket bucket) {
        if (this._overflows == null) {
            this._overflows = new BitSet();
        } else if (this._overflows.get(i)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
                reportTooManyCollisions(100);
            }
            this._canonicalize = false;
            this._symbols[i + i] = bucket.symbol;
            this._buckets[i] = null;
            this._size -= bucket.length;
            this._longestCollisionList = -1;
        }
        this._overflows.set(i);
        this._symbols[i + i] = bucket.symbol;
        this._buckets[i] = null;
        this._size -= bucket.length;
        this._longestCollisionList = -1;
    }

    private static int _thresholdSize(int i) {
        return i - (i >> 2);
    }

    private void copyArrays() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        Bucket[] bucketArr = this._buckets;
        this._buckets = (Bucket[]) Arrays.copyOf(bucketArr, bucketArr.length);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static CharsToNameCanonicalizer createRoot(int i) {
        return sBootstrapSymbolTable.makeOrphan(i);
    }

    private void initTables(int i) {
        this._symbols = new String[i];
        this._buckets = new Bucket[(i >> 1)];
        this._indexMask = i - 1;
        this._size = 0;
        this._longestCollisionList = 0;
        this._sizeThreshold = _thresholdSize(i);
    }

    private CharsToNameCanonicalizer makeOrphan(int i) {
        return new CharsToNameCanonicalizer((CharsToNameCanonicalizer) null, -1, this._symbols, this._buckets, this._size, i, this._longestCollisionList);
    }

    private void mergeChild(CharsToNameCanonicalizer charsToNameCanonicalizer) {
        if (charsToNameCanonicalizer.size() > 12000) {
            synchronized (this) {
                initTables(NotificationCompat.FLAG_LOCAL_ONLY);
                this._dirty = false;
            }
        } else if (charsToNameCanonicalizer.size() > size()) {
            synchronized (this) {
                this._symbols = charsToNameCanonicalizer._symbols;
                this._buckets = charsToNameCanonicalizer._buckets;
                this._size = charsToNameCanonicalizer._size;
                this._sizeThreshold = charsToNameCanonicalizer._sizeThreshold;
                this._indexMask = charsToNameCanonicalizer._indexMask;
                this._longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
                this._dirty = false;
            }
        }
    }

    private void rehash() {
        int length = this._symbols.length;
        int i = length + length;
        if (i > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new Bucket[32];
            this._indexMask = 63;
            this._dirty = true;
            return;
        }
        String[] strArr = this._symbols;
        Bucket[] bucketArr = this._buckets;
        this._symbols = new String[i];
        this._buckets = new Bucket[(i >> 1)];
        this._indexMask = i - 1;
        this._sizeThreshold = _thresholdSize(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            String str = strArr[i4];
            if (str != null) {
                i3++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                if (this._symbols[_hashToIndex] == null) {
                    this._symbols[_hashToIndex] = str;
                } else {
                    int i5 = _hashToIndex >> 1;
                    Bucket bucket = new Bucket(str, this._buckets[i5]);
                    this._buckets[i5] = bucket;
                    i2 = Math.max(i2, bucket.length);
                }
            }
        }
        int i6 = length >> 1;
        int i7 = i3;
        for (int i8 = 0; i8 < i6; i8++) {
            Bucket bucket2 = bucketArr[i8];
            while (bucket2 != null) {
                int i9 = i7 + 1;
                String str2 = bucket2.symbol;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                if (this._symbols[_hashToIndex2] == null) {
                    this._symbols[_hashToIndex2] = str2;
                } else {
                    int i10 = _hashToIndex2 >> 1;
                    Bucket bucket3 = new Bucket(str2, this._buckets[i10]);
                    this._buckets[i10] = bucket3;
                    i2 = Math.max(i2, bucket3.length);
                }
                bucket2 = bucket2.next;
                i7 = i9;
            }
        }
        this._longestCollisionList = i2;
        this._overflows = null;
        if (i7 != this._size) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i7 + ".");
        }
    }

    public final int _hashToIndex(int i) {
        int i2 = (i >>> 15) + i;
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this._indexMask;
    }

    public final int calcHash(String str) {
        int length = str.length();
        int i = this._hashSeed;
        int i2 = 0;
        while (i2 < length) {
            i2++;
            i = str.charAt(i2) + (i * 33);
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final int calcHash(char[] cArr, int i, int i2) {
        int i3 = this._hashSeed;
        int i4 = i + i2;
        while (i < i4) {
            i3 = (i3 * 33) + cArr[i];
            i++;
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public final String findSymbol(char[] cArr, int i, int i2, int i3) {
        if (i2 <= 0) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i, i2);
        }
        int _hashToIndex = _hashToIndex(i3);
        String str = this._symbols[_hashToIndex];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            Bucket bucket = this._buckets[_hashToIndex >> 1];
            if (bucket != null) {
                String has = bucket.has(cArr, i, i2);
                if (has != null) {
                    return has;
                }
                String _findSymbol2 = _findSymbol2(cArr, i, i2, bucket.next);
                if (_findSymbol2 != null) {
                    return _findSymbol2;
                }
            }
        }
        return _addSymbol(cArr, i, i2, i3, _hashToIndex);
    }

    public final int hashSeed() {
        return this._hashSeed;
    }

    public final CharsToNameCanonicalizer makeChild(int i) {
        String[] strArr;
        Bucket[] bucketArr;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            strArr = this._symbols;
            bucketArr = this._buckets;
            i2 = this._size;
            i3 = this._hashSeed;
            i4 = this._longestCollisionList;
        }
        return new CharsToNameCanonicalizer(this, i, strArr, bucketArr, i2, i3, i4);
    }

    public final boolean maybeDirty() {
        return this._dirty;
    }

    public final void release() {
        if (maybeDirty() && this._parent != null && this._canonicalize) {
            this._parent.mergeChild(this);
            this._dirty = false;
        }
    }

    /* access modifiers changed from: protected */
    public final void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    public final int size() {
        return this._size;
    }
}
