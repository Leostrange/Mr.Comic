// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedReader;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class hn
{
    static final class a extends Exception
    {

        public a(String s)
        {
            super(s);
        }
    }


    public static final String a = b();

    public hn()
    {
    }

    private static String a()
    {
        Object obj;
        try
        {
            obj = hn.getResourceAsStream("/sdk-version.txt");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new a(((IOException) (obj)).getMessage());
        }
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        throw new a("Not found.");
        Object obj1;
        Object obj2;
        obj2 = new BufferedReader(ij.a(((java.io.InputStream) (obj))));
        obj1 = ((BufferedReader) (obj2)).readLine();
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        throw new a("No lines.");
        obj1;
        ij.c(((java.io.InputStream) (obj)));
        throw obj1;
        obj2 = ((BufferedReader) (obj2)).readLine();
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_109;
        }
        throw new a((new StringBuilder("Found more than one line.  Second line: ")).append(il.a(((String) (obj2)))).toString());
        ij.c(((java.io.InputStream) (obj)));
        return ((String) (obj1));
    }

    private static String b()
    {
        Object obj;
        try
        {
            obj = a();
            if (!Pattern.compile("[0-9]+(?:\\.[0-9]+)*(?:-[-_A-Za-z0-9]+)?").matcher(((CharSequence) (obj))).matches())
            {
                throw new a((new StringBuilder("Text doesn't follow expected pattern: ")).append(il.a(((String) (obj)))).toString());
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new RuntimeException((new StringBuilder("Error loading version from resource \"sdk-version.txt\": ")).append(((a) (obj)).getMessage()).toString());
        }
        return ((String) (obj));
    }

}
