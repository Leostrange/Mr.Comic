// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class ByteQuadsCanonicalizer
{
    static final class TableInfo
    {

        public final int count;
        public final int longNameOffset;
        public final int mainHash[];
        public final String names[];
        public final int size;
        public final int spilloverEnd;
        public final int tertiaryShift;

        public static TableInfo createInitial(int i)
        {
            int j = i << 3;
            return new TableInfo(i, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i), new int[j], new String[i << 1], j - i, j);
        }

        public TableInfo(int i, int j, int k, int ai[], String as[], int l, int i1)
        {
            size = i;
            count = j;
            tertiaryShift = k;
            mainHash = ai;
            names = as;
            spilloverEnd = l;
            longNameOffset = i1;
        }

        public TableInfo(ByteQuadsCanonicalizer bytequadscanonicalizer)
        {
            size = bytequadscanonicalizer._hashSize;
            count = bytequadscanonicalizer._count;
            tertiaryShift = bytequadscanonicalizer._tertiaryShift;
            mainHash = bytequadscanonicalizer._hashArea;
            names = bytequadscanonicalizer._names;
            spilloverEnd = bytequadscanonicalizer._spilloverEnd;
            longNameOffset = bytequadscanonicalizer._longNameOffset;
        }
    }


    protected int _count;
    protected final boolean _failOnDoS;
    protected int _hashArea[];
    private boolean _hashShared;
    protected int _hashSize;
    protected boolean _intern;
    protected int _longNameOffset;
    protected String _names[];
    private transient boolean _needRehash;
    protected final ByteQuadsCanonicalizer _parent;
    protected int _secondaryStart;
    private final int _seed;
    protected int _spilloverEnd;
    protected final AtomicReference _tableInfo;
    protected int _tertiaryShift;
    protected int _tertiaryStart;

    private ByteQuadsCanonicalizer(int i, boolean flag, int j, boolean flag1)
    {
        byte byte0;
        byte0 = 16;
        super();
        _parent = null;
        _seed = j;
        _intern = flag;
        _failOnDoS = flag1;
        if (i >= 16) goto _L2; else goto _L1
_L1:
        j = 16;
_L4:
        _tableInfo = new AtomicReference(TableInfo.createInitial(j));
        return;
_L2:
        j = i;
        if ((i - 1 & i) != 0)
        {
            j = byte0;
            while (j < i) 
            {
                j += j;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private ByteQuadsCanonicalizer(ByteQuadsCanonicalizer bytequadscanonicalizer, boolean flag, int i, boolean flag1, TableInfo tableinfo)
    {
        _parent = bytequadscanonicalizer;
        _seed = i;
        _intern = flag;
        _failOnDoS = flag1;
        _tableInfo = null;
        _count = tableinfo.count;
        _hashSize = tableinfo.size;
        _secondaryStart = _hashSize << 2;
        _tertiaryStart = _secondaryStart + (_secondaryStart >> 1);
        _tertiaryShift = tableinfo.tertiaryShift;
        _hashArea = tableinfo.mainHash;
        _names = tableinfo.names;
        _spilloverEnd = tableinfo.spilloverEnd;
        _longNameOffset = tableinfo.longNameOffset;
        _needRehash = false;
        _hashShared = true;
    }

    private int _appendLongName(int ai[], int i)
    {
        int j = _longNameOffset;
        if (j + i > _hashArea.length)
        {
            int l = _hashArea.length;
            int i1 = Math.min(4096, _hashSize);
            int k = _hashArea.length;
            l = Math.max((j + i) - l, i1);
            _hashArea = Arrays.copyOf(_hashArea, l + k);
        }
        System.arraycopy(ai, 0, _hashArea, j, i);
        _longNameOffset = _longNameOffset + i;
        return j;
    }

    private final int _calcOffset(int i)
    {
        return (_hashSize - 1 & i) << 2;
    }

    static int _calcTertiaryShift(int i)
    {
        i >>= 2;
        if (i < 64)
        {
            return 4;
        }
        if (i <= 256)
        {
            return 5;
        }
        return i > 1024 ? 7 : 6;
    }

    private int _findOffsetForAdd(int i)
    {
        int ai[];
        i = _calcOffset(i);
        ai = _hashArea;
        if (ai[i + 3] != 0) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j = _secondaryStart + ((i >> 3) << 2);
        if (ai[j + 3] == 0)
        {
            return j;
        }
        j = _tertiaryStart;
        int k = ((i >> _tertiaryShift + 2) << _tertiaryShift) + j;
        int l = _tertiaryShift;
        i = k;
        do
        {
            j = i;
            if (j >= (1 << l) + k)
            {
                break;
            }
            i = j;
            if (ai[j + 3] == 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            i = j + 4;
        } while (true);
        j = _spilloverEnd;
        _spilloverEnd = _spilloverEnd + 4;
        k = _hashSize;
        i = j;
        if (_spilloverEnd >= k << 3)
        {
            if (_failOnDoS)
            {
                _reportTooManyCollisions();
            }
            _needRehash = true;
            return j;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private String _findSecondary(int i, int j)
    {
        int k = _tertiaryStart + ((i >> _tertiaryShift + 2) << _tertiaryShift);
        int ai[] = _hashArea;
        int l = _tertiaryShift;
        for (i = k; i < (1 << l) + k; i += 4)
        {
            int i1 = ai[i + 3];
            if (j == ai[i] && 1 == i1)
            {
                return _names[i >> 2];
            }
            if (i1 == 0)
            {
                return null;
            }
        }

        for (i = _spilloverStart(); i < _spilloverEnd; i += 4)
        {
            if (j == ai[i] && 1 == ai[i + 3])
            {
                return _names[i >> 2];
            }
        }

        return null;
    }

    private String _findSecondary(int i, int j, int k)
    {
        int l = _tertiaryStart + ((i >> _tertiaryShift + 2) << _tertiaryShift);
        int ai[] = _hashArea;
        int i1 = _tertiaryShift;
        for (i = l; i < (1 << i1) + l; i += 4)
        {
            int j1 = ai[i + 3];
            if (j == ai[i] && k == ai[i + 1] && 2 == j1)
            {
                return _names[i >> 2];
            }
            if (j1 == 0)
            {
                return null;
            }
        }

        for (i = _spilloverStart(); i < _spilloverEnd; i += 4)
        {
            if (j == ai[i] && k == ai[i + 1] && 2 == ai[i + 3])
            {
                return _names[i >> 2];
            }
        }

        return null;
    }

    private String _findSecondary(int i, int j, int k, int l)
    {
        int i1 = _tertiaryStart + ((i >> _tertiaryShift + 2) << _tertiaryShift);
        int ai[] = _hashArea;
        int j1 = _tertiaryShift;
        for (i = i1; i < (1 << j1) + i1; i += 4)
        {
            int k1 = ai[i + 3];
            if (j == ai[i] && k == ai[i + 1] && l == ai[i + 2] && 3 == k1)
            {
                return _names[i >> 2];
            }
            if (k1 == 0)
            {
                return null;
            }
        }

        for (i = _spilloverStart(); i < _spilloverEnd; i += 4)
        {
            if (j == ai[i] && k == ai[i + 1] && l == ai[i + 2] && 3 == ai[i + 3])
            {
                return _names[i >> 2];
            }
        }

        return null;
    }

    private String _findSecondary(int i, int j, int ai[], int k)
    {
        int l = _tertiaryStart + ((i >> _tertiaryShift + 2) << _tertiaryShift);
        int ai1[] = _hashArea;
        int i1 = _tertiaryShift;
        for (i = l; i < (1 << i1) + l; i += 4)
        {
            int j1 = ai1[i + 3];
            if (j == ai1[i] && k == j1 && _verifyLongName(ai, k, ai1[i + 1]))
            {
                return _names[i >> 2];
            }
            if (j1 == 0)
            {
                return null;
            }
        }

        for (i = _spilloverStart(); i < _spilloverEnd; i += 4)
        {
            if (j == ai1[i] && k == ai1[i + 3] && _verifyLongName(ai, k, ai1[i + 1]))
            {
                return _names[i >> 2];
            }
        }

        return null;
    }

    private final int _spilloverStart()
    {
        int i = _hashSize;
        return (i << 3) - i;
    }

    private boolean _verifyLongName(int ai[], int i, int j)
    {
        int ai1[];
        boolean flag1;
        flag1 = false;
        ai1 = _hashArea;
        i;
        JVM INSTR tableswitch 4 8: default 44
    //                   4 249
    //                   5 244
    //                   6 239
    //                   7 234
    //                   8 56;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        boolean flag = _verifyLongName2(ai, i, j);
_L8:
        return flag;
_L6:
        flag = flag1;
        if (ai[0] != ai1[j]) goto _L8; else goto _L7
_L7:
        j++;
        i = 1;
_L16:
        flag = flag1;
        if (ai[i] != ai1[j]) goto _L8; else goto _L9
_L9:
        j++;
        i++;
_L17:
        flag = flag1;
        if (ai[i] != ai1[j]) goto _L8; else goto _L10
_L10:
        j++;
        i++;
_L18:
        flag = flag1;
        if (ai[i] != ai1[j]) goto _L8; else goto _L11
_L11:
        j++;
        i++;
_L19:
        int k;
        int l;
        k = i + 1;
        l = ai[i];
        i = j + 1;
        flag = flag1;
        if (l != ai1[j]) goto _L8; else goto _L12
_L12:
        j = k + 1;
        k = ai[k];
        l = i + 1;
        flag = flag1;
        if (k != ai1[i]) goto _L8; else goto _L13
_L13:
        flag = flag1;
        if (ai[j] != ai1[l]) goto _L8; else goto _L14
_L14:
        flag = flag1;
        if (ai[j + 1] != ai1[l + 1]) goto _L8; else goto _L15
_L15:
        return true;
_L5:
        i = 0;
          goto _L16
_L4:
        i = 0;
          goto _L17
_L3:
        i = 0;
          goto _L18
_L2:
        i = 0;
          goto _L19
    }

    private boolean _verifyLongName2(int ai[], int i, int j)
    {
        boolean flag = false;
        int k = j;
        j = ((flag) ? 1 : 0);
        do
        {
            int l = j + 1;
            if (ai[j] != _hashArea[k])
            {
                return false;
            }
            if (l >= i)
            {
                return true;
            }
            k++;
            j = l;
        } while (true);
    }

    private void _verifyNeedForRehash()
    {
        if (_count > _hashSize >> 1 && (_spilloverEnd - _spilloverStart() >> 2 > _count + 1 >> 7 || (double)_count > (double)_hashSize * 0.80000000000000004D))
        {
            _needRehash = true;
        }
    }

    private void _verifySharing()
    {
        if (_hashShared)
        {
            _hashArea = Arrays.copyOf(_hashArea, _hashArea.length);
            _names = (String[])Arrays.copyOf(_names, _names.length);
            _hashShared = false;
            _verifyNeedForRehash();
        }
        if (_needRehash)
        {
            rehash();
        }
    }

    public static ByteQuadsCanonicalizer createRoot()
    {
        long l = System.currentTimeMillis();
        int i = (int)l;
        return createRoot((int)(l >>> 32) + i | 1);
    }

    protected static ByteQuadsCanonicalizer createRoot(int i)
    {
        return new ByteQuadsCanonicalizer(64, true, i, true);
    }

    private void mergeChild(TableInfo tableinfo)
    {
        int i = tableinfo.count;
        TableInfo tableinfo1 = (TableInfo)_tableInfo.get();
        if (i == tableinfo1.count)
        {
            return;
        }
        if (i > 6000)
        {
            tableinfo = TableInfo.createInitial(64);
        }
        _tableInfo.compareAndSet(tableinfo1, tableinfo);
    }

    private void nukeSymbols(boolean flag)
    {
        _count = 0;
        _spilloverEnd = _spilloverStart();
        _longNameOffset = _hashSize << 3;
        if (flag)
        {
            Arrays.fill(_hashArea, 0);
            Arrays.fill(_names, null);
        }
    }

    private void rehash()
    {
        int ai2[];
        String as[];
        int i;
        int j;
        int l;
        int i1;
        _needRehash = false;
        _hashShared = false;
        ai2 = _hashArea;
        as = _names;
        i = _hashSize;
        l = _count;
        j = i + i;
        i1 = _spilloverEnd;
        if (j <= 0x10000) goto _L2; else goto _L1
_L1:
        nukeSymbols(true);
_L12:
        return;
_L2:
        int ai[];
        _hashArea = new int[(i << 3) + ai2.length];
        _hashSize = j;
        _secondaryStart = j << 2;
        _tertiaryStart = _secondaryStart + (_secondaryStart >> 1);
        _tertiaryShift = _calcTertiaryShift(j);
        _names = new String[as.length << 1];
        nukeSymbols(false);
        ai = new int[16];
        i = 0;
        j = 0;
_L10:
        int ai1[];
        int k;
        int j1;
        if (i >= i1)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = ai2[i + 3];
        ai1 = ai;
        k = j;
        if (j1 == 0) goto _L4; else goto _L3
_L3:
        String s;
        k = j + 1;
        s = as[i >> 2];
        j1;
        JVM INSTR tableswitch 1 3: default 208
    //                   1 261
    //                   2 282
    //                   3 312;
           goto _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_312;
_L6:
        break; /* Loop/switch isn't completed */
_L5:
        ai1 = ai;
        if (j1 > ai.length)
        {
            ai1 = new int[j1];
        }
        System.arraycopy(ai2, ai2[i + 1], ai1, 0, j1);
        addName(s, ai1, j1);
_L4:
        i += 4;
        ai = ai1;
        j = k;
        if (true) goto _L10; else goto _L9
_L9:
        ai[0] = ai2[i];
        addName(s, ai, 1);
        ai1 = ai;
          goto _L4
_L7:
        ai[0] = ai2[i];
        ai[1] = ai2[i + 1];
        addName(s, ai, 2);
        ai1 = ai;
          goto _L4
        ai[0] = ai2[i];
        ai[1] = ai2[i + 1];
        ai[2] = ai2[i + 2];
        addName(s, ai, 3);
        ai1 = ai;
          goto _L4
        if (j == l) goto _L12; else goto _L11
_L11:
        throw new IllegalStateException((new StringBuilder("Failed rehash(): old count=")).append(l).append(", copyCount=").append(j).toString());
    }

    protected final void _reportTooManyCollisions()
    {
        if (_hashSize <= 1024)
        {
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder("Spill-over slots in symbol table with ")).append(_count).append(" entries, hash area of ").append(_hashSize).append(" slots is now full (all ").append(_hashSize >> 3).append(" slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`").toString());
        }
    }

    public final String addName(String s, int ai[], int i)
    {
        String s1;
        _verifySharing();
        s1 = s;
        if (_intern)
        {
            s1 = InternCache.instance.intern(s);
        }
        i;
        JVM INSTR tableswitch 1 3: default 52
    //                   1 136
    //                   2 169
    //                   3 216;
           goto _L1 _L2 _L3 _L4
_L1:
        int k = calcHash(ai, i);
        int j = _findOffsetForAdd(k);
        _hashArea[j] = k;
        k = _appendLongName(ai, i);
        _hashArea[j + 1] = k;
        _hashArea[j + 3] = i;
        i = j;
_L6:
        _names[i >> 2] = s1;
        _count = _count + 1;
        _verifyNeedForRehash();
        return s1;
_L2:
        i = _findOffsetForAdd(calcHash(ai[0]));
        _hashArea[i] = ai[0];
        _hashArea[i + 3] = 1;
        continue; /* Loop/switch isn't completed */
_L3:
        i = _findOffsetForAdd(calcHash(ai[0], ai[1]));
        _hashArea[i] = ai[0];
        _hashArea[i + 1] = ai[1];
        _hashArea[i + 3] = 2;
        continue; /* Loop/switch isn't completed */
_L4:
        i = _findOffsetForAdd(calcHash(ai[0], ai[1], ai[2]));
        _hashArea[i] = ai[0];
        _hashArea[i + 1] = ai[1];
        _hashArea[i + 2] = ai[2];
        _hashArea[i + 3] = 3;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final int calcHash(int i)
    {
        i = _seed ^ i;
        i += i >>> 16;
        i ^= i << 3;
        return i + (i >>> 12);
    }

    public final int calcHash(int i, int j)
    {
        i = (i >>> 15) + i;
        i = (i ^ i >>> 9) + j * 33 ^ _seed;
        i += i >>> 16;
        i ^= i >>> 4;
        return i + (i << 3);
    }

    public final int calcHash(int i, int j, int k)
    {
        i = _seed ^ i;
        i = ((i + (i >>> 9)) * 31 + j) * 33;
        i = i + (i >>> 15) ^ k;
        i += i >>> 4;
        i += i >>> 15;
        return i ^ i << 9;
    }

    public final int calcHash(int ai[], int i)
    {
        if (i < 4)
        {
            throw new IllegalArgumentException();
        }
        int j = ai[0] ^ _seed;
        j = j + (j >>> 9) + ai[1];
        j = (j + (j >>> 15)) * 33 ^ ai[2];
        int l = (j >>> 4) + j;
        for (int k = 3; k < i; k++)
        {
            int i1 = ai[k];
            l += i1 ^ i1 >> 21;
        }

        i = 0x1003f * l;
        i += i >>> 19;
        return i ^ i << 5;
    }

    public final String findName(int i)
    {
        Object obj;
        int ai[];
        int j;
        int k;
        obj = null;
        j = _calcOffset(calcHash(i));
        ai = _hashArea;
        k = ai[j + 3];
        if (k != 1) goto _L2; else goto _L1
_L1:
        if (ai[j] != i) goto _L4; else goto _L3
_L3:
        String s = _names[j >> 2];
_L5:
        return s;
_L2:
        s = obj;
        if (k == 0) goto _L5; else goto _L4
_L4:
        int i1;
        int l = _secondaryStart + ((j >> 3) << 2);
        i1 = ai[l + 3];
        if (i1 == 1)
        {
            if (ai[l] == i)
            {
                return _names[l >> 2];
            }
            break; /* Loop/switch isn't completed */
        }
        s = obj;
        if (i1 == 0) goto _L5; else goto _L6
_L6:
        return _findSecondary(j, i);
    }

    public final String findName(int i, int j)
    {
        Object obj;
        int ai[];
        int k;
        int l;
        obj = null;
        k = _calcOffset(calcHash(i, j));
        ai = _hashArea;
        l = ai[k + 3];
        if (l != 2) goto _L2; else goto _L1
_L1:
        if (i != ai[k] || j != ai[k + 1]) goto _L4; else goto _L3
_L3:
        String s = _names[k >> 2];
_L5:
        return s;
_L2:
        s = obj;
        if (l == 0) goto _L5; else goto _L4
_L4:
        int j1;
        int i1 = _secondaryStart + ((k >> 3) << 2);
        j1 = ai[i1 + 3];
        if (j1 == 2)
        {
            if (i == ai[i1] && j == ai[i1 + 1])
            {
                return _names[i1 >> 2];
            }
            break; /* Loop/switch isn't completed */
        }
        s = obj;
        if (j1 == 0) goto _L5; else goto _L6
_L6:
        return _findSecondary(k, i, j);
    }

    public final String findName(int i, int j, int k)
    {
        Object obj;
        int ai[];
        int l;
        int i1;
        obj = null;
        l = _calcOffset(calcHash(i, j, k));
        ai = _hashArea;
        i1 = ai[l + 3];
        if (i1 != 3) goto _L2; else goto _L1
_L1:
        if (i != ai[l] || ai[l + 1] != j || ai[l + 2] != k) goto _L4; else goto _L3
_L3:
        String s = _names[l >> 2];
_L5:
        return s;
_L2:
        s = obj;
        if (i1 == 0) goto _L5; else goto _L4
_L4:
        int k1;
        int j1 = _secondaryStart + ((l >> 3) << 2);
        k1 = ai[j1 + 3];
        if (k1 == 3)
        {
            if (i == ai[j1] && ai[j1 + 1] == j && ai[j1 + 2] == k)
            {
                return _names[j1 >> 2];
            }
            break; /* Loop/switch isn't completed */
        }
        s = obj;
        if (k1 == 0) goto _L5; else goto _L6
_L6:
        return _findSecondary(l, i, j, k);
    }

    public final String findName(int ai[], int i)
    {
        Object obj = null;
        if (i >= 4) goto _L2; else goto _L1
_L1:
        if (i != 3) goto _L4; else goto _L3
_L3:
        String s = findName(ai[0], ai[1], ai[2]);
_L6:
        return s;
_L4:
        if (i == 2)
        {
            return findName(ai[0], ai[1]);
        } else
        {
            return findName(ai[0]);
        }
_L2:
        int j = calcHash(ai, i);
        int k = _calcOffset(j);
        int ai1[] = _hashArea;
        int l = ai1[k + 3];
        if (j == ai1[k] && l == i && _verifyLongName(ai, i, ai1[k + 1]))
        {
            return _names[k >> 2];
        }
        s = obj;
        if (l != 0)
        {
            int i1 = _secondaryStart + ((k >> 3) << 2);
            int j1 = ai1[i1 + 3];
            if (j == ai1[i1] && j1 == i && _verifyLongName(ai, i, ai1[i1 + 1]))
            {
                return _names[i1 >> 2];
            }
            s = obj;
            if (l != 0)
            {
                return _findSecondary(k, j, ai, i);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final ByteQuadsCanonicalizer makeChild(int i)
    {
        return new ByteQuadsCanonicalizer(this, com.fasterxml.jackson.core.JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i), _seed, com.fasterxml.jackson.core.JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), (TableInfo)_tableInfo.get());
    }

    public final boolean maybeDirty()
    {
        return !_hashShared;
    }

    public final int primaryCount()
    {
        int l = _secondaryStart;
        int j = 0;
        for (int i = 3; i < l;)
        {
            int k = j;
            if (_hashArea[i] != 0)
            {
                k = j + 1;
            }
            i += 4;
            j = k;
        }

        return j;
    }

    public final void release()
    {
        if (_parent != null && maybeDirty())
        {
            _parent.mergeChild(new TableInfo(this));
            _hashShared = true;
        }
    }

    public final int secondaryCount()
    {
        int i = _secondaryStart;
        int l = _tertiaryStart;
        int j = 0;
        for (i += 3; i < l;)
        {
            int k = j;
            if (_hashArea[i] != 0)
            {
                k = j + 1;
            }
            i += 4;
            j = k;
        }

        return j;
    }

    public final int spilloverCount()
    {
        return _spilloverEnd - _spilloverStart() >> 2;
    }

    public final int tertiaryCount()
    {
        int l = _tertiaryStart + 3;
        int i1 = _hashSize;
        int j = 0;
        for (int i = l; i < i1 + l;)
        {
            int k = j;
            if (_hashArea[i] != 0)
            {
                k = j + 1;
            }
            i += 4;
            j = k;
        }

        return j;
    }

    public final String toString()
    {
        int i = primaryCount();
        int j = secondaryCount();
        int k = tertiaryCount();
        int l = spilloverCount();
        int i1 = totalCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", new Object[] {
            getClass().getName(), Integer.valueOf(_count), Integer.valueOf(_hashSize), Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k), Integer.valueOf(l), Integer.valueOf(i1), Integer.valueOf(i + j + k + l), Integer.valueOf(i1)
        });
    }

    public final int totalCount()
    {
        int l = _hashSize;
        int j = 0;
        for (int i = 3; i < l << 3;)
        {
            int k = j;
            if (_hashArea[i] != 0)
            {
                k = j + 1;
            }
            i += 4;
            j = k;
        }

        return j;
    }
}
