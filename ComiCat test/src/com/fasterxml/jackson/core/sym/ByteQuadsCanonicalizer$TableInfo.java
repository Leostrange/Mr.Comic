// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.sym;


// Referenced classes of package com.fasterxml.jackson.core.sym:
//            ByteQuadsCanonicalizer

static final class ffset
{

    public final int count;
    public final int longNameOffset;
    public final int mainHash[];
    public final String names[];
    public final int size;
    public final int spilloverEnd;
    public final int tertiaryShift;

    public static ffset createInitial(int i)
    {
        int j = i << 3;
        return new <init>(i, 0, ByteQuadsCanonicalizer._calcTertiaryShift(i), new int[j], new String[i << 1], j - i, j);
    }

    public (int i, int j, int k, int ai[], String as[], int l, int i1)
    {
        size = i;
        count = j;
        tertiaryShift = k;
        mainHash = ai;
        names = as;
        spilloverEnd = l;
        longNameOffset = i1;
    }

    public longNameOffset(ByteQuadsCanonicalizer bytequadscanonicalizer)
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
