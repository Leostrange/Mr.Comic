// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;


// Referenced classes of package com.eclipsesource.json:
//            JsonObject

static class hashTable
{

    private final byte hashTable[];

    private int hashSlotFor(Object obj)
    {
        return obj.hashCode() & hashTable.length - 1;
    }

    void add(String s, int i)
    {
        int j = hashSlotFor(s);
        if (i < 255)
        {
            hashTable[j] = (byte)(i + 1);
            return;
        } else
        {
            hashTable[j] = 0;
            return;
        }
    }

    int get(Object obj)
    {
        int i = hashSlotFor(obj);
        return (hashTable[i] & 0xff) - 1;
    }

    void remove(int i)
    {
        int j = 0;
        while (j < hashTable.length) 
        {
            if (hashTable[j] == i + 1)
            {
                hashTable[j] = 0;
            } else
            if (hashTable[j] > i + 1)
            {
                byte abyte0[] = hashTable;
                abyte0[j] = (byte)(abyte0[j] - 1);
            }
            j++;
        }
    }

    public ()
    {
        hashTable = new byte[32];
    }

    public hashTable(hashTable hashtable)
    {
        hashTable = new byte[32];
        System.arraycopy(hashtable.hashTable, 0, hashTable, 0, hashTable.length);
    }
}
