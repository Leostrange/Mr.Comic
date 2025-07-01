// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class aec
{

    public static qh a(String s, String s1, String s2, String s3)
    {
        qw qw1;
        int i;
        qw1 = new qw();
        i = Integer.parseInt(s1);
        if (s == null)
        {
            try
            {
                throw new qy("host must not be null.");
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                agt.a(s);
            }
            return null;
        }
        s = new ry(qw1, s2, s, i);
        if (s3.isEmpty() || s3 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        s.t = si.a(s3);
        s.a();
        s = s.a("sftp");
        s.b(0);
        s = (qh)s;
        return s;
    }
}
