// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;

public final class agp
{

    private static final String a;

    public static File a(aeq aeq1, boolean flag, acy acy)
    {
        Object obj = null;
        if (aeq1.d() && !aeq1.g())
        {
            Object obj1 = aei.a().g.a(aeq1.g);
            if (obj1 != null)
            {
                obj = adg.a(aeq1.f);
                if (obj != null)
                {
                    acy = adh.a(((adg) (obj)).a, aeq1.e, ((adg) (obj)).b, ((aev) (obj1)), flag, acy);
                } else
                {
                    acy = null;
                }
                if (acy == null || !acy.exists() || flag || !"makeLocalCopy".equals(aei.a().d.b("on-the-fly-reading")))
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                obj = act.b().a(aeq1.g);
                if (obj == null)
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                obj1 = b(((acs) (obj)).h(), aeq1.e);
                obj = new File(((String) (obj1)));
                if (!a(((File) (acy)), ((File) (obj))))
                {
                    break MISSING_BLOCK_LABEL_189;
                }
                aeq1.h.a(16);
                aeq1.d = ((String) (obj1));
                acy = aei.a().b;
                aek.e(aeq1);
            }
            return ((File) (obj));
        } else
        {
            return new File(aeq1.d);
        }
        return acy;
    }

    public static String a(String s)
    {
        String s1 = s;
        if (s.endsWith(File.separator))
        {
            s1 = s.substring(0, s.length() - 1);
        }
        return s1;
    }

    public static boolean a(File file, File file1)
    {
        File file2 = file1.getParentFile();
        if (!file.getAbsolutePath().equals(file1.getAbsolutePath()) && file1.exists())
        {
            agz.a(file1);
        }
        if (!file2.isDirectory() && !file2.mkdirs())
        {
            break MISSING_BLOCK_LABEL_76;
        }
        boolean flag;
        boolean flag1;
        try
        {
            flag1 = file.renameTo(file1);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            file.printStackTrace();
            return false;
        }
        flag = flag1;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        ahk.a(file, file1);
        flag = true;
        return flag;
        return false;
    }

    public static boolean a(String s, String s1)
    {
        String s3;
        String s4;
        int i;
        int j;
        if (s.endsWith(File.separator))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (s1.endsWith(File.separator))
        {
            j = 1;
        } else
        {
            j = 0;
        }
        s3 = s;
        s4 = s1;
        if (i + j == 1)
        {
            s3 = s;
            s4 = s1;
            if (Math.abs(s.length() - s1.length()) == 1)
            {
                String s2 = s;
                if (i == 1)
                {
                    s2 = s.substring(0, s.length() - 1);
                }
                s3 = s2;
                s4 = s1;
                if (j == 1)
                {
                    s4 = s1.substring(0, s1.length() - 1);
                    s3 = s2;
                }
            }
        }
        return s3.equalsIgnoreCase(s4);
    }

    public static String b(String s, String s1)
    {
        if (s.endsWith(File.separator))
        {
            s = (new StringBuilder()).append(s).append(s1).toString();
        } else
        {
            s = (new StringBuilder()).append(s).append(File.separator).append(s1).toString();
        }
        return s.replace(a, File.separator);
    }

    static 
    {
        a = (new StringBuilder()).append(File.separator).append(File.separator).toString();
    }
}
