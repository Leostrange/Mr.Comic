// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;

public final class afa
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        private static final a g[];
        String f;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(afa$a, s);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        public final String toString()
        {
            return f;
        }

        static 
        {
            a = new a("CBR", 0, "CBR");
            b = new a("CBZ", 1, "CBZ");
            c = new a("SEQUENTIALZIP", 2, "SZIP");
            d = new a("LIB7ZIP", 3, "7ZIP");
            e = new a("PDF", 4, "PDF");
            g = (new a[] {
                a, b, c, d, e
            });
        }

        private a(String s, int i1, String s1)
        {
            super(s, i1);
            f = s1;
        }
    }

    public final class b
    {

        public int a;
        afb b;
        public afb c;
        public afb d;
        public boolean e;
        final afa f;

        public final void a()
        {
            b = null;
            c = null;
            d = null;
        }

        public b()
        {
            f = afa.this;
            super();
            a = 0;
            b = null;
            c = null;
            d = null;
            e = aei.a().d.c("aggressive-caching");
        }
    }


    static final a b[];
    static final a c[];
    static final a d[];
    static final a e[];
    public static final String f[] = {
        "jpg", "jpeg", "png", "bmp", "gif", "webp"
    };
    static final String g[] = {
        "cbz", "cbr", "cb7", "cbt"
    };
    static final String h[] = {
        "zip", "rar", "7z", "tar", "pdf"
    };
    static final String i[] = {
        "cbz", "cbr", "cb7", "cbt", "zip", "rar", "7z", "tar", "pdf"
    };
    public String a;
    public b j;
    private afe k;
    private String l;

    public afa()
    {
        k = null;
        l = null;
        a = null;
        j = new b();
    }

    public afa(File file, boolean flag)
    {
        k = null;
        l = null;
        a = null;
        j = new b();
        l = file.getAbsolutePath();
        if (!file.exists() || file.length() <= 0L) goto _L2; else goto _L1
_L1:
        Object obj;
        (new StringBuilder("Processing: ")).append(file.getAbsolutePath());
        obj = agv.a(file.getName());
        if (!((String) (obj)).equals("cbz") && !((String) (obj)).equals("zip")) goto _L4; else goto _L3
_L3:
        obj = a(c, file);
        file = ((File) (obj));
        if (obj != null)
        {
            file = ((File) (obj));
            if (((afe) (obj)).d() == a.a)
            {
                a = "cbr";
                file = ((File) (obj));
            }
        }
_L6:
        if (file != null)
        {
            (new StringBuilder("Opened with handler: ")).append(file);
        }
        k = file;
        if (flag && c())
        {
            k.a();
        }
_L2:
        return;
_L4:
        if (((String) (obj)).equals("cbr") || ((String) (obj)).equals("rar"))
        {
            obj = a(b, file);
            file = ((File) (obj));
            if (obj != null)
            {
                file = ((File) (obj));
                if (((afe) (obj)).d() == a.b)
                {
                    a = "cbz";
                    file = ((File) (obj));
                }
            }
        } else
        if (((String) (obj)).equals("pdf"))
        {
            file = a(e, file);
        } else
        {
            file = a(d, file);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static afe a(afe afe1, File file)
    {
label0:
        {
            afe afe2 = afe1;
            try
            {
                if (afe1.a(file))
                {
                    break label0;
                }
                afe1.b();
            }
            // Misplaced declaration of an exception variable
            catch (afe afe1)
            {
                afe1.printStackTrace();
                return null;
            }
            afe2 = null;
        }
        return afe2;
    }

    private static afe a(a aa[], File file)
    {
        Object obj;
        int i1;
        i1 = 0;
        obj = null;
_L7:
        if (i1 >= aa.length || obj != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        obj = aa[i1];
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[a.values().length];
                try
                {
                    a[a.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[((a) (obj)).ordinal()];
        JVM INSTR tableswitch 1 4: default 56
    //                   1 71
    //                   2 82
    //                   3 93
    //                   4 104;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_104;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        obj = null;
_L8:
        obj = a(((afe) (obj)), file);
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
        obj = new aex();
          goto _L8
_L3:
        obj = new aez();
          goto _L8
_L4:
        obj = new afc();
          goto _L8
        obj = new afg();
          goto _L8
        return ((afe) (obj));
    }

    public static String a(String s)
    {
        int i1 = s.lastIndexOf(".");
        String s1 = s;
        if (i1 != -1)
        {
            s1 = s.substring(0, i1);
        }
        s = s1.replace("_", " ").replace("-", " ");
        if (s != null && s.length() != 0)
        {
            int k1 = s.length();
            StringBuffer stringbuffer = new StringBuffer(k1);
            int j1 = 0;
            boolean flag = true;
            while (j1 < k1) 
            {
                char c1 = s.charAt(j1);
                if (Character.isWhitespace(c1))
                {
                    stringbuffer.append(c1);
                    flag = true;
                } else
                if (flag)
                {
                    stringbuffer.append(Character.toTitleCase(c1));
                    flag = false;
                } else
                {
                    stringbuffer.append(c1);
                }
                j1++;
            }
            s = stringbuffer.toString();
        }
        return s.replace("  ", " ");
    }

    protected static boolean a(String s, long l1)
    {
        boolean flag;
        if (s.startsWith("__MACOSX"))
        {
            String s1 = agv.b(s);
            if (s1 != null && s1.startsWith("."))
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            s = agv.a(s);
            return (l1 == -1L || l1 >= 4096L) && agv.a(f, s) != -1;
        } else
        {
            return false;
        }
    }

    public static String[] b(String s)
    {
        if (s.equals("prefDontInclude"))
        {
            return g;
        } else
        {
            return i;
        }
    }

    public static String[] j()
    {
        return g;
    }

    public static String[] k()
    {
        return h;
    }

    public static String[] l()
    {
        return i;
    }

    public final afb a(int i1)
    {
        Object obj;
        Object obj1;
        obj1 = null;
        obj = obj1;
        if (i1 < 0) goto _L2; else goto _L1
_L1:
        obj = obj1;
        if (i1 >= k.c()) goto _L2; else goto _L3
_L3:
        try
        {
            obj = k.a(i1);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            ((Exception) (obj)).printStackTrace();
            return null;
        }
        if (obj == null) goto _L5; else goto _L4
_L4:
        obj = new afb(((aff) (obj)));
_L2:
        return ((afb) (obj));
_L5:
        obj = null;
        if (true) goto _L2; else goto _L6
_L6:
    }

    public final void a()
    {
        if (k != null)
        {
            k.b();
            k = null;
            j.a();
        }
    }

    public final void b(int i1)
    {
        j.a();
        j.a = i1;
    }

    public final boolean b()
    {
        return k != null;
    }

    public final boolean c()
    {
        return k != null && k.c() > 0;
    }

    public final int d()
    {
        return k.c();
    }

    public final afb e()
    {
        if (j.b == null)
        {
            j.b = a(j.a);
        }
        return j.b;
    }

    public final boolean f()
    {
        if (j.b != null)
        {
            afb afb1 = j.b;
            boolean flag;
            if (afb1.a > 1 && afb1.b > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag || j.a > 0)
            {
                return true;
            }
        }
        return false;
    }

    protected final void finalize()
    {
        a();
    }

    public final boolean g()
    {
        if (j.b != null)
        {
            afb afb1 = j.b;
            boolean flag;
            if (afb1.b < afb1.a - 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag || j.a < k.c() - 1)
            {
                return true;
            }
        }
        return false;
    }

    public final afb h()
    {
        boolean flag1 = false;
        afb afb1;
        if (j.b != null)
        {
            afb1 = j.b;
            Object obj;
            boolean flag;
            if (afb1.a > 1 && afb1.b > 0)
            {
                afb1.b = afb1.b - 1;
                afb1.c = null;
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                afb1 = j.b;
            } else
            {
                afb1 = null;
            }
        } else
        {
            afb1 = null;
        }
        flag = flag1;
        if (j.a > 0)
        {
            flag = true;
        }
        obj = afb1;
        if (afb1 == null)
        {
            obj = afb1;
            if (flag)
            {
                obj = j;
                obj.a = ((b) (obj)).a - 1;
                obj = j;
                obj.c = ((b) (obj)).b;
                obj.b = ((b) (obj)).d;
                obj.d = null;
                if (j.b == null)
                {
                    j.b = a(j.a);
                }
                j.d = a(j.a - 1);
                obj = afb1;
                if (j.b != null)
                {
                    afb1 = j.b;
                    afb1.b = 1;
                    afb1.c = null;
                    obj = j.b;
                }
            }
        }
        return ((afb) (obj));
    }

    public final afb i()
    {
        Object obj;
        afb afb1;
        boolean flag;
        if (j.b != null)
        {
            if (j.b.d())
            {
                obj = j.b;
            } else
            {
                obj = null;
            }
        } else
        {
            obj = null;
        }
        if (j.a < k.c() - 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        afb1 = ((afb) (obj));
        if (obj == null)
        {
            afb1 = ((afb) (obj));
            if (flag)
            {
                obj = j;
                obj.a = ((b) (obj)).a + 1;
                obj = j;
                obj.d = ((b) (obj)).b;
                obj.b = ((b) (obj)).c;
                obj.c = null;
                if (j.b == null)
                {
                    j.b = a(j.a);
                }
                j.c = a(j.a + 1);
                afb1 = j.b;
            }
        }
        return afb1;
    }

    static 
    {
        b = (new a[] {
            a.d, a.a, a.b
        });
        c = (new a[] {
            a.b, a.d, a.a
        });
        d = (new a[] {
            a.d, a.b, a.a
        });
        e = (new a[] {
            a.e
        });
    }
}
