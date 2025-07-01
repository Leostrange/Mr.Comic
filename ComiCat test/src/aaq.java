// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public class aaq extends IOException
    implements abs, yz, zh
{

    int n;
    Throwable o;

    aaq()
    {
    }

    aaq(int i)
    {
        super(a(i));
        n = b(i);
        o = null;
    }

    public aaq(int i, boolean flag)
    {
        String s;
        if (flag)
        {
            s = c(i);
        } else
        {
            s = a(i);
        }
        super(s);
        if (!flag)
        {
            i = b(i);
        }
        n = i;
    }

    aaq(String s)
    {
        super(s);
        n = 0xc0000001;
    }

    aaq(String s, Throwable throwable)
    {
        super(s);
        o = throwable;
        n = 0xc0000001;
    }

    static String a(int i)
    {
        if (i == 0)
        {
            return "NT_STATUS_SUCCESS";
        }
        if ((i & 0xc0000000) == 0xc0000000)
        {
            int j = 1;
            for (int l = c_.length - 1; l >= j;)
            {
                int j1 = (j + l) / 2;
                if (i > c_[j1])
                {
                    j = j1 + 1;
                } else
                if (i < c_[j1])
                {
                    l = j1 - 1;
                } else
                {
                    return d_[j1];
                }
            }

        } else
        {
            int i1 = l.length - 1;
            for (int k = 0; i1 >= k;)
            {
                int k1 = (k + i1) / 2;
                if (i > l[k1][0])
                {
                    k = k1 + 1;
                } else
                if (i < l[k1][0])
                {
                    i1 = k1 - 1;
                } else
                {
                    return m[k1];
                }
            }

        }
        return (new StringBuilder("0x")).append(abw.a(i, 8)).toString();
    }

    static int b(int i)
    {
        if ((0xc0000000 & i) != 0)
        {
            return i;
        }
        int k = l.length - 1;
        for (int j = 0; k >= j;)
        {
            int l = (j + k) / 2;
            if (i > l[l][0])
            {
                j = l + 1;
            } else
            if (i < l[l][0])
            {
                k = l - 1;
            } else
            {
                return l[l][1];
            }
        }

        return 0xc0000001;
    }

    private static String c(int i)
    {
        int j = 0;
        for (int k = e_.length - 1; k >= j;)
        {
            int l = (j + k) / 2;
            if (i > e_[l])
            {
                j = l + 1;
            } else
            if (i < e_[l])
            {
                k = l - 1;
            } else
            {
                return f_[l];
            }
        }

        return String.valueOf(i);
    }

    public String toString()
    {
        if (o != null)
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            o.printStackTrace(printwriter);
            return (new StringBuilder()).append(super.toString()).append("\n").append(stringwriter).toString();
        } else
        {
            return super.toString();
        }
    }
}
