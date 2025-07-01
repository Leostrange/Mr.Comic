// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Hashtable;

public final class ye
{

    private static final String a = xj.a("jcifs.netbios.lmhosts");
    private static final Hashtable b = new Hashtable();
    private static long c = 1L;
    private static int d;
    private static abx e = abx.a();

    public static yk a(String s)
    {
        ye;
        JVM INSTR monitorenter ;
        s = a(new yf(s, 32, null));
        ye;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    static yk a(yf yf1)
    {
        ye;
        JVM INSTR monitorenter ;
        Object obj = null;
        if (a == null) goto _L2; else goto _L1
_L1:
        File file = new File(a);
        long l = file.lastModified();
        if (l > c)
        {
            c = l;
            b.clear();
            d = 0;
            a(((Reader) (new FileReader(file))));
        }
        yf1 = (yk)b.get(yf1);
_L4:
        ye;
        JVM INSTR monitorexit ;
        return yf1;
        Object obj1;
        obj1;
        yf1 = obj;
        if (abx.a <= 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        e.println((new StringBuilder("lmhosts file: ")).append(a).toString());
        ((FileNotFoundException) (obj1)).printStackTrace(e);
        yf1 = obj;
        continue; /* Loop/switch isn't completed */
        yf1;
        throw yf1;
        obj1;
        yf1 = obj;
        if (abx.a <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((IOException) (obj1)).printStackTrace(e);
        yf1 = obj;
        continue; /* Loop/switch isn't completed */
_L2:
        yf1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void a(Reader reader)
    {
        reader = new BufferedReader(reader);
        do
        {
            Object obj = reader.readLine();
            if (obj == null)
            {
                break;
            }
            obj = ((String) (obj)).toUpperCase().trim();
            if (((String) (obj)).length() == 0)
            {
                continue;
            }
            if (((String) (obj)).charAt(0) == '#')
            {
                if (((String) (obj)).startsWith("#INCLUDE "))
                {
                    obj = ((String) (obj)).substring(((String) (obj)).indexOf('\\'));
                    obj = (new StringBuilder("smb:")).append(((String) (obj)).replace('\\', '/')).toString();
                    if (d > 0)
                    {
                        try
                        {
                            a(((Reader) (new InputStreamReader(new aas(((String) (obj)))))));
                        }
                        catch (IOException ioexception)
                        {
                            e.println((new StringBuilder("lmhosts URL: ")).append(((String) (obj))).toString());
                            ioexception.printStackTrace(e);
                            continue;
                        }
                        d--;
                        do
                        {
                            obj = reader.readLine();
                        } while (obj != null && !((String) (obj)).toUpperCase().trim().startsWith("#END_ALTERNATE"));
                        continue;
                    }
                    a(((Reader) (new InputStreamReader(new aas(((String) (obj)))))));
                } else
                if (((String) (obj)).startsWith("#BEGIN_ALTERNATE"))
                {
                    d++;
                } else
                if (((String) (obj)).startsWith("#END_ALTERNATE") && d > 0)
                {
                    d--;
                    throw new IOException("no lmhosts alternate includes loaded");
                }
            } else
            if (Character.isDigit(((String) (obj)).charAt(0)))
            {
                char ac[] = ((String) (obj)).toCharArray();
                int j = 46;
                int i = 0;
                int k = 0;
                for (; i < ac.length && j == 46; i++)
                {
                    int l = 0;
                    do
                    {
                        if (i >= ac.length)
                        {
                            break;
                        }
                        j = ac[i];
                        if (j < '0' || j > '9')
                        {
                            break;
                        }
                        i++;
                        l = (l * 10 + j) - 48;
                    } while (true);
                    k = (k << 8) + l;
                }

                for (; i < ac.length && Character.isWhitespace(ac[i]); i++) { }
                for (j = i; j < ac.length && !Character.isWhitespace(ac[j]); j++) { }
                obj = new yf(((String) (obj)).substring(i, j), 32, null);
                yk yk1 = new yk(((yf) (obj)), k, false, 0, false, false, true, true, yk.d);
                b.put(obj, yk1);
            }
        } while (true);
    }

}
