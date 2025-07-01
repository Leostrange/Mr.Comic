// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Comparator;

public abstract class xb
    implements Comparator, xi
{
    static final class a extends xb
    {

        public final int a(Object obj)
        {
            if (obj == null)
            {
                return 0;
            }
            if (xb.b)
            {
                return e.a(obj);
            } else
            {
                return obj.hashCode();
            }
        }

        public final boolean a(Object obj, Object obj1)
        {
            if (obj != null) goto _L2; else goto _L1
_L1:
            if (obj1 != null) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (obj != obj1 && !obj.equals(obj1))
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public final int compare(Object obj, Object obj1)
        {
            return ((Comparable)obj).compareTo(obj1);
        }

        public final String toString()
        {
            return "Default";
        }

        private a()
        {
        }

        a(byte byte0)
        {
            this();
        }
    }

    static final class b extends xb
    {

        public final int a(Object obj)
        {
            if (obj == null)
            {
                return 0;
            } else
            {
                return obj.hashCode();
            }
        }

        public final boolean a(Object obj, Object obj1)
        {
            if (obj != null) goto _L2; else goto _L1
_L1:
            if (obj1 != null) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (obj != obj1 && !obj.equals(obj1))
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public final int compare(Object obj, Object obj1)
        {
            return ((Comparable)obj).compareTo(obj1);
        }

        public final String toString()
        {
            return "Direct";
        }

        private b()
        {
        }

        b(byte byte0)
        {
            this();
        }
    }

    static final class c extends xb
    {

        public final int a(Object obj)
        {
            int i = System.identityHashCode(obj);
            if (!xb.b)
            {
                return i;
            } else
            {
                i += ~(i << 9);
                i ^= i >>> 14;
                i += i << 4;
                return i ^ i >>> 10;
            }
        }

        public final boolean a(Object obj, Object obj1)
        {
            return obj == obj1;
        }

        public final int compare(Object obj, Object obj1)
        {
            return ((Comparable)obj).compareTo(obj1);
        }

        public final String toString()
        {
            return "Identity";
        }

        private c()
        {
        }

        c(byte byte0)
        {
            this();
        }
    }

    static final class d extends xb
    {

        public final int a(Object obj)
        {
            int i;
            int k;
            i = 0;
            k = 0;
            if (obj != null) goto _L2; else goto _L1
_L1:
            return k;
_L2:
            if ((obj instanceof String) || (obj instanceof ww))
            {
                return obj.hashCode();
            }
            obj = (CharSequence)obj;
            int l = ((CharSequence) (obj)).length();
            int j = 0;
            do
            {
                k = i;
                if (j >= l)
                {
                    continue;
                }
                i = ((CharSequence) (obj)).charAt(j) + i * 31;
                j++;
            } while (true);
            if (true) goto _L1; else goto _L3
_L3:
        }

        public final boolean a(Object obj, Object obj1)
        {
            boolean flag1 = false;
            if (!(obj instanceof String) || !(obj1 instanceof String)) goto _L2; else goto _L1
_L1:
            boolean flag = obj.equals(obj1);
_L4:
            return flag;
_L2:
            if ((obj instanceof CharSequence) && (obj1 instanceof String))
            {
                obj = (CharSequence)obj;
                obj1 = (String)obj1;
                int l = ((String) (obj1)).length();
                flag = flag1;
                if (((CharSequence) (obj)).length() != l)
                {
                    continue; /* Loop/switch isn't completed */
                }
                for (int i = 0; i < l; i++)
                {
                    flag = flag1;
                    if (((String) (obj1)).charAt(i) != ((CharSequence) (obj)).charAt(i))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                }

                return true;
            }
            if ((obj instanceof String) && (obj1 instanceof CharSequence))
            {
                obj1 = (CharSequence)obj1;
                obj = (String)obj;
                int i1 = ((String) (obj)).length();
                flag = flag1;
                if (((CharSequence) (obj1)).length() != i1)
                {
                    continue; /* Loop/switch isn't completed */
                }
                for (int j = 0; j < i1; j++)
                {
                    flag = flag1;
                    if (((String) (obj)).charAt(j) != ((CharSequence) (obj1)).charAt(j))
                    {
                        continue; /* Loop/switch isn't completed */
                    }
                }

                return true;
            }
            if (obj != null && obj1 != null)
            {
                break; /* Loop/switch isn't completed */
            }
            flag = flag1;
            if (obj == obj1)
            {
                return true;
            }
            if (true) goto _L4; else goto _L3
_L3:
            obj = (CharSequence)obj;
            obj1 = (CharSequence)obj1;
            int j1 = ((CharSequence) (obj)).length();
            flag = flag1;
            if (((CharSequence) (obj1)).length() == j1)
            {
                int k = 0;
label0:
                do
                {
label1:
                    {
                        if (k >= j1)
                        {
                            break label1;
                        }
                        flag = flag1;
                        if (((CharSequence) (obj)).charAt(k) != ((CharSequence) (obj1)).charAt(k))
                        {
                            break label0;
                        }
                        k++;
                    }
                } while (true);
            }
            if (true) goto _L4; else goto _L5
_L5:
            return true;
        }

        public final int compare(Object obj, Object obj1)
        {
            if (obj instanceof String)
            {
                if (obj1 instanceof String)
                {
                    return ((String)obj).compareTo((String)obj1);
                }
                obj = (String)obj;
                obj1 = (CharSequence)obj1;
                int i = Math.min(((String) (obj)).length(), ((CharSequence) (obj1)).length());
                int k = 0;
                for (; i != 0; i--)
                {
                    char c1 = ((String) (obj)).charAt(k);
                    char c3 = ((CharSequence) (obj1)).charAt(k);
                    if (c1 != c3)
                    {
                        return c1 - c3;
                    }
                    k++;
                }

                return ((String) (obj)).length() - ((CharSequence) (obj1)).length();
            }
            if (obj1 instanceof String)
            {
                return -compare(obj1, obj);
            }
            obj = (CharSequence)obj;
            obj1 = (CharSequence)obj1;
            int j = Math.min(((CharSequence) (obj)).length(), ((CharSequence) (obj1)).length());
            int l = 0;
            for (; j != 0; j--)
            {
                char c2 = ((CharSequence) (obj)).charAt(l);
                char c4 = ((CharSequence) (obj1)).charAt(l);
                if (c2 != c4)
                {
                    return c2 - c4;
                }
                l++;
            }

            return ((CharSequence) (obj)).length() - ((CharSequence) (obj1)).length();
        }

        public final String toString()
        {
            return "Lexical";
        }

        private d()
        {
        }

        d(byte byte0)
        {
            this();
        }
    }

    static final class e extends xb
    {

        public final int a(Object obj)
        {
            if (obj == null)
            {
                return 0;
            } else
            {
                int i = obj.hashCode();
                i += ~(i << 9);
                i ^= i >>> 14;
                i += i << 4;
                return i ^ i >>> 10;
            }
        }

        public final boolean a(Object obj, Object obj1)
        {
            if (obj != null) goto _L2; else goto _L1
_L1:
            if (obj1 != null) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (obj != obj1 && !obj.equals(obj1))
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public final int compare(Object obj, Object obj1)
        {
            return ((Comparable)obj).compareTo(obj1);
        }

        public final String toString()
        {
            return "Rehash";
        }

        private e()
        {
        }

        e(byte byte0)
        {
            this();
        }
    }

    static final class f extends xb
    {

        public final int a(Object obj)
        {
            if (obj != null)
            {
                obj = (String)obj;
                int i = ((String) (obj)).length();
                if (i != 0)
                {
                    return ((String) (obj)).charAt(0) + ((String) (obj)).charAt(i - 1) * 31 + ((String) (obj)).charAt(i >> 1) * 1009 + ((String) (obj)).charAt(i >> 2) * 27583 + ((String) (obj)).charAt(i - 1 - (i >> 2)) * 0x460215b;
                }
            }
            return 0;
        }

        public final boolean a(Object obj, Object obj1)
        {
            if (obj != null) goto _L2; else goto _L1
_L1:
            if (obj1 != null) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (obj != obj1 && !obj.equals(obj1))
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public final int compare(Object obj, Object obj1)
        {
            return ((String)obj).compareTo((String)obj1);
        }

        public final String toString()
        {
            return "String";
        }

        private f()
        {
        }

        f(byte byte0)
        {
            this();
        }
    }


    public static final wr a;
    static boolean b;
    public static final xb c = new a((byte)0);
    public static final xb d = new b((byte)0);
    public static final xb e = new e((byte)0);
    public static final xb f = new f((byte)0);
    public static final xb g = new c((byte)0);
    public static final xb h = new d((byte)0);

    public xb()
    {
    }

    private static boolean a()
    {
        boolean aflag[] = new boolean[64];
        for (int i = 0; i < 64; i++)
        {
            aflag[(new Object()).hashCode() & 0x3f] = true;
        }

        int j = 0;
        int k = 0;
        while (j < 64) 
        {
            int l;
            if (aflag[j])
            {
                l = 1;
            } else
            {
                l = 0;
            }
            k = l + k;
            j++;
        }
        return k < 16;
    }

    public abstract int a(Object obj);

    public abstract boolean a(Object obj, Object obj1);

    public abstract int compare(Object obj, Object obj1);

    static 
    {
        wr wr1 = new wr(new Boolean(a())) {

        };
        a = wr1;
        b = ((Boolean)wr1.a).booleanValue();
    }
}
