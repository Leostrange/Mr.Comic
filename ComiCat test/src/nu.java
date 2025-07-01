// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class nu
    implements Serializable
{

    private static final TimeZone a = TimeZone.getTimeZone("GMT");
    private static final Pattern b = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");
    private final long c;
    private final boolean d;
    private final int e;

    public nu()
    {
        this(false, 0L, null);
    }

    private nu(boolean flag, long l, Integer integer)
    {
        d = flag;
        c = l;
        int i;
        if (flag)
        {
            i = 0;
        } else
        if (integer == null)
        {
            i = TimeZone.getDefault().getOffset(l) / 60000;
        } else
        {
            i = integer.intValue();
        }
        e = i;
    }

    public static nu a(String s)
    {
        Matcher matcher;
        String s1;
        int i;
        int k;
        int i1;
        boolean flag;
        boolean flag1;
        int j2;
        int k2;
        int l2;
        matcher = b.matcher(s);
        if (!matcher.matches())
        {
            throw new NumberFormatException((new StringBuilder("Invalid date/time format: ")).append(s).toString());
        }
        j2 = Integer.parseInt(matcher.group(1));
        k2 = Integer.parseInt(matcher.group(2));
        l2 = Integer.parseInt(matcher.group(3));
        if (matcher.group(4) != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s1 = matcher.group(9);
        if (s1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        i = 0;
        k = 0;
        i1 = 0;
        if (flag1 && !flag)
        {
            throw new NumberFormatException((new StringBuilder("Invalid date/time format, cannot specify time zone shift without specifying time: ")).append(s).toString());
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        int j1;
        int k1;
        int l1;
        j1 = Integer.parseInt(matcher.group(5));
        k1 = Integer.parseInt(matcher.group(6));
        l1 = Integer.parseInt(matcher.group(7));
        i = j1;
        k = k1;
        i1 = l1;
        if (matcher.group(8) == null) goto _L2; else goto _L3
_L3:
        int i2;
        i = Integer.parseInt(matcher.group(8).substring(1));
        k = matcher.group(8).substring(1).length();
        i2 = (int)((double)(float)i / Math.pow(10D, k - 3));
        i1 = l1;
        k = k1;
        i = j1;
_L5:
        s = new GregorianCalendar(a);
        s.set(j2, k2 - 1, l2, i, k, i1);
        s.set(14, i2);
        long l3 = s.getTimeInMillis();
        boolean flag2;
        if (flag && flag1)
        {
            int j;
            if (Character.toUpperCase(s1.charAt(0)) == 'Z')
            {
                j = 0;
            } else
            {
                int l = Integer.parseInt(matcher.group(11)) * 60 + Integer.parseInt(matcher.group(12));
                j = l;
                if (matcher.group(10).charAt(0) == '-')
                {
                    j = -l;
                }
                long l4 = j;
                l3 -= l4 * 60000L;
            }
            s = Integer.valueOf(j);
        } else
        {
            s = null;
        }
        if (!flag)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        return new nu(flag2, l3, s);
_L2:
        i2 = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void a(StringBuilder stringbuilder, int i, int j)
    {
        int k = i;
        if (i < 0)
        {
            stringbuilder.append('-');
            k = -i;
        }
        for (i = k; i > 0;)
        {
            i /= 10;
            j--;
        }

        for (i = 0; i < j; i++)
        {
            stringbuilder.append('0');
        }

        if (k != 0)
        {
            stringbuilder.append(k);
        }
    }

    public final String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        GregorianCalendar gregoriancalendar = new GregorianCalendar(a);
        gregoriancalendar.setTimeInMillis(c + (long)e * 60000L);
        a(stringbuilder, gregoriancalendar.get(1), 4);
        stringbuilder.append('-');
        a(stringbuilder, gregoriancalendar.get(2) + 1, 2);
        stringbuilder.append('-');
        a(stringbuilder, gregoriancalendar.get(5), 2);
        if (!d)
        {
            stringbuilder.append('T');
            a(stringbuilder, gregoriancalendar.get(11), 2);
            stringbuilder.append(':');
            a(stringbuilder, gregoriancalendar.get(12), 2);
            stringbuilder.append(':');
            a(stringbuilder, gregoriancalendar.get(13), 2);
            if (gregoriancalendar.isSet(14))
            {
                stringbuilder.append('.');
                a(stringbuilder, gregoriancalendar.get(14), 3);
            }
            if (e == 0)
            {
                stringbuilder.append('Z');
            } else
            {
                int i = e;
                if (e > 0)
                {
                    stringbuilder.append('+');
                } else
                {
                    stringbuilder.append('-');
                    i = -i;
                }
                a(stringbuilder, i / 60, 2);
                stringbuilder.append(':');
                a(stringbuilder, i % 60, 2);
            }
        }
        return stringbuilder.toString();
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof nu))
            {
                return false;
            }
            obj = (nu)obj;
            if (d != ((nu) (obj)).d || c != ((nu) (obj)).c || e != ((nu) (obj)).e)
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        long l1 = c;
        long l;
        if (d)
        {
            l = 1L;
        } else
        {
            l = 0L;
        }
        return Arrays.hashCode(new long[] {
            l1, l, (long)e
        });
    }

    public final String toString()
    {
        return a();
    }

}
