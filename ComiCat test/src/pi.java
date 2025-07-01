// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.Collection;

public final class pi
{
    static final class a
        implements Serializable, ph
    {

        private final Collection a;

        public final boolean a(Object obj)
        {
            boolean flag;
            try
            {
                flag = a.contains(obj);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return false;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                return false;
            }
            return flag;
        }

        public final boolean equals(Object obj)
        {
            if (obj instanceof a)
            {
                obj = (a)obj;
                return a.equals(((a) (obj)).a);
            } else
            {
                return false;
            }
        }

        public final int hashCode()
        {
            return a.hashCode();
        }

        public final String toString()
        {
            return (new StringBuilder("Predicates.in(")).append(a).append(")").toString();
        }

        private a(Collection collection)
        {
            a = (Collection)pg.a(collection);
        }

        a(Collection collection, byte byte0)
        {
            this(collection);
        }
    }


    private static final pe a = new pe(",");

    public static ph a(Collection collection)
    {
        return new a(collection, (byte)0);
    }

}
