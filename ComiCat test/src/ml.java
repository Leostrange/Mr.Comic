// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

public final class ml
{
    static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        private static final a n[];
        final Character i;
        final String j;
        final String k;
        final boolean l;
        final boolean m;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(ml$a, s);
        }

        public static a[] values()
        {
            return (a[])n.clone();
        }

        final String a(String s)
        {
            if (m)
            {
                return op.c(s);
            } else
            {
                return op.a(s);
            }
        }

        static 
        {
            a = new a("PLUS", 0, Character.valueOf('+'), "", ",", false, true);
            b = new a("HASH", 1, Character.valueOf('#'), "#", ",", false, true);
            c = new a("DOT", 2, Character.valueOf('.'), ".", ".", false, false);
            d = new a("FORWARD_SLASH", 3, Character.valueOf('/'), "/", "/", false, false);
            e = new a("SEMI_COLON", 4, Character.valueOf(';'), ";", ";", true, false);
            f = new a("QUERY", 5, Character.valueOf('?'), "?", "&", true, false);
            g = new a("AMP", 6, Character.valueOf('&'), "&", "&", true, false);
            h = new a("SIMPLE", 7, null, "", ",", false, false);
            n = (new a[] {
                a, b, c, d, e, f, g, h
            });
        }

        private a(String s, int i1, Character character, String s1, String s2, boolean flag, boolean flag1)
        {
            super(s, i1);
            i = character;
            j = (String)ni.a(s1);
            k = (String)ni.a(s2);
            l = flag;
            m = flag1;
            if (character != null)
            {
                ml.a.put(character, this);
            }
        }
    }


    static final Map a = new HashMap();

    private static String a(String s, Object obj)
    {
        Map map = a(obj);
        StringBuilder stringbuilder = new StringBuilder();
        int j1 = s.length();
        int i = 0;
        do
        {
            int j;
label0:
            {
                if (i < j1)
                {
                    j = s.indexOf('{', i);
                    if (j != -1)
                    {
                        break label0;
                    }
                    stringbuilder.append(s.substring(i));
                }
                lr.a(map.entrySet(), stringbuilder);
                return stringbuilder.toString();
            }
            stringbuilder.append(s.substring(i, j));
            int k1 = s.indexOf('}', j + 2);
            obj = s.substring(j + 1, k1);
            a a1 = (a)a.get(Character.valueOf(((String) (obj)).charAt(0)));
            if (a1 == null)
            {
                a1 = a.h;
            }
            ng ng1 = ng.a();
            ni.a(ng1);
            ListIterator listiterator = (new nj(new nj._cls1(ng1))).a(((CharSequence) (obj))).listIterator();
            i = 1;
            while (listiterator.hasNext()) 
            {
                obj = (String)listiterator.next();
                boolean flag = ((String) (obj)).endsWith("*");
                Object obj1;
                String s1;
                int k;
                int l;
                int i1;
                if (listiterator.nextIndex() == 1 && a1.i != null)
                {
                    k = 1;
                } else
                {
                    k = 0;
                }
                i1 = ((String) (obj)).length();
                l = i1;
                if (flag)
                {
                    l = i1 - 1;
                }
                s1 = ((String) (obj)).substring(k, l);
                obj1 = map.remove(s1);
                if (obj1 != null)
                {
                    if (i == 0)
                    {
                        stringbuilder.append(a1.k);
                    } else
                    {
                        stringbuilder.append(a1.j);
                        i = 0;
                    }
                    if (obj1 instanceof Iterator)
                    {
                        obj = a(s1, (Iterator)obj1, flag, a1);
                    } else
                    if ((obj1 instanceof Iterable) || obj1.getClass().isArray())
                    {
                        obj = a(s1, on.a(obj1).iterator(), flag, a1);
                    } else
                    if (obj1.getClass().isEnum())
                    {
                        obj = obj1;
                        if (nv.a((Enum)obj1).c != null)
                        {
                            obj = obj1;
                            if (a1.l)
                            {
                                obj = String.format("%s=%s", new Object[] {
                                    s1, obj1
                                });
                            }
                            obj = op.c(obj.toString());
                        }
                    } else
                    if (!ns.d(obj1))
                    {
                        obj = a(s1, a(obj1), flag, a1);
                    } else
                    {
                        obj = obj1;
                        if (a1.l)
                        {
                            obj = String.format("%s=%s", new Object[] {
                                s1, obj1
                            });
                        }
                        if (a1.m)
                        {
                            obj = op.d(obj.toString());
                        } else
                        {
                            obj = op.c(obj.toString());
                        }
                    }
                    stringbuilder.append(obj);
                }
            }
            i = k1 + 1;
        } while (true);
    }

    public static String a(String s, String s1, Object obj)
    {
        if (!s1.startsWith("/")) goto _L2; else goto _L1
_L1:
        String s2;
        s = new lr(s);
        s.a = lr.g(null);
        s2 = (new StringBuilder()).append(s.e()).append(s1).toString();
_L4:
        return a(s2, obj);
_L2:
        s2 = s1;
        if (!s1.startsWith("http://"))
        {
            s2 = s1;
            if (!s1.startsWith("https://"))
            {
                s2 = (new StringBuilder()).append(s).append(s1).toString();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static String a(String s, Iterator iterator, boolean flag, a a1)
    {
        StringBuilder stringbuilder;
        if (!iterator.hasNext())
        {
            return "";
        }
        stringbuilder = new StringBuilder();
        if (!flag) goto _L2; else goto _L1
_L1:
        String s1 = a1.k;
_L4:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag && a1.l)
        {
            stringbuilder.append(op.c(s));
            stringbuilder.append("=");
        }
        stringbuilder.append(a1.a(iterator.next().toString()));
        if (iterator.hasNext())
        {
            stringbuilder.append(s1);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        String s2 = ",";
        s1 = s2;
        if (a1.l)
        {
            stringbuilder.append(op.c(s));
            stringbuilder.append("=");
            s1 = s2;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return stringbuilder.toString();
    }

    private static String a(String s, Map map, boolean flag, a a1)
    {
        if (map.isEmpty())
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        String s1;
        if (flag)
        {
            s1 = a1.k;
            s = "=";
        } else
        {
            if (a1.l)
            {
                stringbuilder.append(op.c(s));
                stringbuilder.append("=");
            }
            s = ",";
            s1 = ",";
        }
        map = map.entrySet().iterator();
        do
        {
            if (!map.hasNext())
            {
                break;
            }
            Object obj = (java.util.Map.Entry)map.next();
            String s2 = a1.a((String)((java.util.Map.Entry) (obj)).getKey());
            obj = a1.a(((java.util.Map.Entry) (obj)).getValue().toString());
            stringbuilder.append(s2);
            stringbuilder.append(s);
            stringbuilder.append(((String) (obj)));
            if (map.hasNext())
            {
                stringbuilder.append(s1);
            }
        } while (true);
        return stringbuilder.toString();
    }

    private static Map a(Object obj)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        obj = ns.b(obj).entrySet().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj)).next();
            Object obj1 = entry.getValue();
            if (obj1 != null && !ns.a(obj1))
            {
                linkedhashmap.put(entry.getKey(), obj1);
            }
        } while (true);
        return linkedhashmap;
    }

    static 
    {
        a.values();
    }
}
