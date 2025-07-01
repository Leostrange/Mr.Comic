// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.lang.ref.SoftReference;

// Referenced classes of package com.fasterxml.jackson.core.io:
//            CharTypes, UTF8Writer

public final class JsonStringEncoder
{

    private static final byte HB[] = CharTypes.copyHexBytes();
    private static final char HC[] = CharTypes.copyHexChars();
    protected static final ThreadLocal _threadEncoder = new ThreadLocal();
    protected ByteArrayBuilder _bytes;
    protected final char _qbuf[] = new char[6];

    public JsonStringEncoder()
    {
        _qbuf[0] = '\\';
        _qbuf[2] = '0';
        _qbuf[3] = '0';
    }

    private static int _convert(int i, int j)
    {
        if (j < 56320 || j > 57343)
        {
            throw new IllegalArgumentException((new StringBuilder("Broken surrogate pair: first char 0x")).append(Integer.toHexString(i)).append(", second 0x").append(Integer.toHexString(j)).append("; illegal combination").toString());
        } else
        {
            return 0x10000 + (i - 55296 << 10) + (j - 56320);
        }
    }

    private static void _illegal(int i)
    {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }

    public static JsonStringEncoder getInstance()
    {
        Object obj = (SoftReference)_threadEncoder.get();
        Object obj1;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = (JsonStringEncoder)((SoftReference) (obj)).get();
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new JsonStringEncoder();
            _threadEncoder.set(new SoftReference(obj1));
        }
        return ((JsonStringEncoder) (obj1));
    }

    public final byte[] encodeAsUTF8(String s)
    {
        byte abyte0[];
        ByteArrayBuilder bytearraybuilder1;
        int i;
        int j;
        int k;
        int l3;
        ByteArrayBuilder bytearraybuilder = _bytes;
        bytearraybuilder1 = bytearraybuilder;
        if (bytearraybuilder == null)
        {
            bytearraybuilder1 = new ByteArrayBuilder(null);
            _bytes = bytearraybuilder1;
        }
        l3 = s.length();
        abyte0 = bytearraybuilder1.resetAndGetFirstSegment();
        k = abyte0.length;
        i = 0;
        j = 0;
_L7:
        if (j >= l3) goto _L2; else goto _L1
_L1:
        int l;
        int i1 = j + 1;
        char c = s.charAt(j);
        l = k;
        j = i1;
        k = c;
_L6:
        if (k > 127) goto _L4; else goto _L3
_L3:
        int j1;
        j1 = l;
        int l2 = i;
        if (i >= l)
        {
            abyte0 = bytearraybuilder1.finishCurrentSegment();
            j1 = abyte0.length;
            l2 = 0;
        }
        i = l2 + 1;
        abyte0[l2] = (byte)k;
        if (j >= l3) goto _L2; else goto _L5
_L5:
        k = s.charAt(j);
        j++;
        l = j1;
          goto _L6
_L4:
        int l1;
        int i3;
        if (i >= l)
        {
            abyte0 = bytearraybuilder1.finishCurrentSegment();
            i = abyte0.length;
            l = 0;
        } else
        {
            int k2 = i;
            i = l;
            l = k2;
        }
        if (k < 2048)
        {
            int k1 = l + 1;
            abyte0[l] = (byte)(k >> 6 | 0xc0);
            l = k;
            k = k1;
        } else
        if (k < 55296 || k > 57343)
        {
            int j3 = l + 1;
            abyte0[l] = (byte)(k >> 12 | 0xe0);
            l = i;
            int i2 = j3;
            if (j3 >= i)
            {
                abyte0 = bytearraybuilder1.finishCurrentSegment();
                l = abyte0.length;
                i2 = 0;
            }
            abyte0[i2] = (byte)(k >> 6 & 0x3f | 0x80);
            j3 = i2 + 1;
            i2 = k;
            i = l;
            k = j3;
            l = i2;
        } else
        {
            if (k > 56319)
            {
                _illegal(k);
            }
            if (j >= l3)
            {
                _illegal(k);
            }
            int j2 = _convert(k, s.charAt(j));
            if (j2 > 0x10ffff)
            {
                _illegal(j2);
            }
            int k3 = l + 1;
            abyte0[l] = (byte)(j2 >> 18 | 0xf0);
            k = i;
            l = k3;
            if (k3 >= i)
            {
                abyte0 = bytearraybuilder1.finishCurrentSegment();
                k = abyte0.length;
                l = 0;
            }
            i = l + 1;
            abyte0[l] = (byte)(j2 >> 12 & 0x3f | 0x80);
            if (i >= k)
            {
                abyte0 = bytearraybuilder1.finishCurrentSegment();
                i = abyte0.length;
                k = 0;
            } else
            {
                l = i;
                i = k;
                k = l;
            }
            abyte0[k] = (byte)(j2 >> 6 & 0x3f | 0x80);
            k++;
            l = j2;
            j++;
        }
        l1 = i;
        i3 = k;
        if (k >= i)
        {
            abyte0 = bytearraybuilder1.finishCurrentSegment();
            l1 = abyte0.length;
            i3 = 0;
        }
        abyte0[i3] = (byte)(l & 0x3f | 0x80);
        k = l1;
        i = i3 + 1;
        if (true) goto _L7; else goto _L2
_L2:
        return _bytes.completeAndCoalesce(i);
    }

}
