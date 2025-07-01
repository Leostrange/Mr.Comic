// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vr extends vo
{

    private int a;

    public vr(byte abyte0[])
    {
        super(abyte0);
    }

    public final int a()
    {
        if (k != null)
        {
            a = ug.b(k, l);
        }
        return a;
    }

    public final void a(int i)
    {
        a = i;
        if (k != null)
        {
            ug.a(k, l, i);
        }
    }

    public final void a(vr vr1)
    {
        a(vr1.c());
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("State[");
        stringbuilder.append("\n  pos=");
        stringbuilder.append(l);
        stringbuilder.append("\n  size=");
        stringbuilder.append(4);
        stringbuilder.append("\n  next=");
        stringbuilder.append(a());
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }
}
