// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class kj
{
    static final class a
        implements kl.a
    {

        public final String a(lz lz1)
        {
label0:
            {
                lz1 = lz1.b.authorization;
                if (lz1 == null)
                {
                    break label0;
                }
                lz1 = lz1.iterator();
                String s;
                do
                {
                    if (!lz1.hasNext())
                    {
                        break label0;
                    }
                    s = (String)lz1.next();
                } while (!s.startsWith("Bearer "));
                return s.substring(7);
            }
            return null;
        }

        public final void a(lz lz1, String s)
        {
            lz1.b.a((new StringBuilder("Bearer ")).append(s).toString());
        }

        a()
        {
        }
    }


    static final Pattern a = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    public static kl.a a()
    {
        return new a();
    }

}
