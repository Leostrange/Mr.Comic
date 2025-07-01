// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.InetAddress;

abstract class yj
{

    int a;
    yk b[];
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    yf q;
    yf r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;
    InetAddress y;

    yj()
    {
        n = true;
        p = true;
        f = 1;
        t = 1;
    }

    static void a(int i1, byte abyte0[], int j1)
    {
        abyte0[j1] = (byte)(i1 >> 8 & 0xff);
        abyte0[j1 + 1] = (byte)(i1 & 0xff);
    }

    static int b(byte abyte0[], int i1)
    {
        return ((abyte0[i1] & 0xff) << 8) + (abyte0[i1 + 1] & 0xff);
    }

    static int c(byte abyte0[], int i1)
    {
        return ((abyte0[i1] & 0xff) << 24) + ((abyte0[i1 + 1] & 0xff) << 16) + ((abyte0[i1 + 2] & 0xff) << 8) + (abyte0[i1 + 3] & 0xff);
    }

    abstract int a(byte abyte0[]);

    abstract int a(byte abyte0[], int i1);

    abstract int b(byte abyte0[]);

    final int c(byte abyte0[])
    {
        int i1 = q.a(abyte0, 12) + 12;
        a(s, abyte0, i1);
        i1 += 2;
        a(t, abyte0, i1);
        return (i1 + 2) - 12;
    }

    final int d(byte abyte0[], int i1)
    {
        int j1;
        int k1;
        if ((abyte0[12] & 0xc0) == 192)
        {
            r = q;
            i1 += 2;
        } else
        {
            i1 = r.a(abyte0) + 12;
        }
        u = b(abyte0, i1);
        i1 += 2;
        v = b(abyte0, i1);
        i1 += 2;
        w = c(abyte0, i1);
        i1 += 4;
        x = b(abyte0, i1);
        j1 = i1 + 2;
        b = new yk[x / 6];
        k1 = x;
        a = 0;
        for (i1 = j1; i1 < k1 + j1;)
        {
            i1 += a(abyte0, i1);
            a = a + 1;
        }

        return i1 - 12;
    }

    public String toString()
    {
        d;
        JVM INSTR lookupswitch 2: default 32
    //                   0: 518
    //                   7: 524;
           goto _L1 _L2 _L3
_L1:
        Object obj = Integer.toString(d);
_L15:
        e;
        JVM INSTR tableswitch 1 7: default 88
    //                   1 109
    //                   2 109
    //                   3 88
    //                   4 109
    //                   5 109
    //                   6 109
    //                   7 109;
           goto _L4 _L5 _L5 _L4 _L5 _L5 _L5 _L5
_L4:
        (new StringBuilder("0x")).append(abw.a(e, 1));
_L5:
        s;
        JVM INSTR tableswitch 32 33: default 136
    //                   32 530
    //                   33 536;
           goto _L6 _L7 _L8
_L6:
        Object obj1 = (new StringBuilder("0x")).append(abw.a(s, 4)).toString();
_L16:
        u;
        JVM INSTR lookupswitch 5: default 216
    //                   1: 542
    //                   2: 548
    //                   10: 554
    //                   32: 560
    //                   33: 566;
           goto _L9 _L10 _L11 _L12 _L13 _L14
_L9:
        String s1 = (new StringBuilder("0x")).append(abw.a(u, 4)).toString();
_L17:
        obj1 = (new StringBuilder("nameTrnId=")).append(c).append(",isResponse=").append(k).append(",opCode=").append(((String) (obj))).append(",isAuthAnswer=").append(l).append(",isTruncated=").append(m).append(",isRecurAvailable=").append(o).append(",isRecurDesired=").append(n).append(",isBroadcast=").append(p).append(",resultCode=").append(e).append(",questionCount=").append(f).append(",answerCount=").append(g).append(",authorityCount=").append(h).append(",additionalCount=").append(i).append(",questionName=").append(q).append(",questionType=").append(((String) (obj1))).append(",questionClass=");
        if (t == 1)
        {
            obj = "IN";
        } else
        {
            obj = (new StringBuilder("0x")).append(abw.a(t, 4)).toString();
        }
        obj = ((StringBuilder) (obj1)).append(((String) (obj))).append(",recordName=").append(r).append(",recordType=").append(s1).append(",recordClass=");
        if (v == 1)
        {
            s1 = "IN";
        } else
        {
            s1 = (new StringBuilder("0x")).append(abw.a(v, 4)).toString();
        }
        return new String(((StringBuilder) (obj)).append(s1).append(",ttl=").append(w).append(",rDataLength=").append(x).toString());
_L2:
        obj = "QUERY";
          goto _L15
_L3:
        obj = "WACK";
          goto _L15
_L7:
        obj1 = "NB";
          goto _L16
_L8:
        obj1 = "NBSTAT";
          goto _L16
_L10:
        s1 = "A";
          goto _L17
_L11:
        s1 = "NS";
          goto _L17
_L12:
        s1 = "NULL";
          goto _L17
_L13:
        s1 = "NB";
          goto _L17
_L14:
        s1 = "NBSTAT";
          goto _L17
    }
}
