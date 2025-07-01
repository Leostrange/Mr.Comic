// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class wn extends wl
{
    public static class a
    {

        private Object a;
        private boolean b;

        public final Object a()
        {
            if (b)
            {
                for (wl wl1 = wl.b(); wl1 != null; wl1 = wl1.c)
                {
                    if (!(wl1 instanceof wn))
                    {
                        continue;
                    }
                    Object obj = ((wn)wl1).a.get(this);
                    if (obj != null)
                    {
                        return obj;
                    }
                }

                return a;
            } else
            {
                return a;
            }
        }

        public String toString()
        {
            return String.valueOf(a());
        }

        public a(Object obj)
        {
            a = obj;
        }
    }


    final xd a = new xd();

    public wn()
    {
    }
}
