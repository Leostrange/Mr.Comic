// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class wz
{

    private static final CharSequence a = (CharSequence)"true";
    private static final CharSequence b = (CharSequence)"false";

    private static Appendable a(double d, int i, boolean flag, Appendable appendable)
    {
        wx wx1;
        if (appendable instanceof wx)
        {
            return ((wx)appendable).a(d, i, flag);
        }
        wx1 = wx.c();
        wx1.a(d, i, flag);
        appendable = appendable.append(wx1);
        wx.a(wx1);
        return appendable;
        appendable;
        wx.a(wx1);
        throw appendable;
    }

    public static Appendable a(double d, Appendable appendable)
    {
        boolean flag;
        if (ws.b(d) >= 10000000D || ws.b(d) < 0.001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a(d, -1, flag, appendable);
    }

    public static Appendable a(float f, Appendable appendable)
    {
        double d = f;
        boolean flag;
        if ((double)ws.a(f) >= 10000000D || (double)ws.a(f) < 0.001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a(d, 10, flag, appendable);
    }

    public static Appendable a(int i, Appendable appendable)
    {
        wx wx1;
        if (appendable instanceof wx)
        {
            return ((wx)appendable).a(i);
        }
        wx1 = wx.c();
        wx1.a(i);
        appendable = appendable.append(wx1);
        wx.a(wx1);
        return appendable;
        appendable;
        wx.a(wx1);
        throw appendable;
    }

    public static Appendable a(long l, Appendable appendable)
    {
        wx wx1;
        if (appendable instanceof wx)
        {
            return ((wx)appendable).a(l);
        }
        wx1 = wx.c();
        wx1.a(l);
        appendable = appendable.append(wx1);
        wx.a(wx1);
        return appendable;
        appendable;
        wx.a(wx1);
        throw appendable;
    }

    public static Appendable a(boolean flag, Appendable appendable)
    {
        if (flag)
        {
            return appendable.append(a);
        } else
        {
            return appendable.append(b);
        }
    }

}
