// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

public class il
{

    public static final Charset a = Charset.forName("UTF-8");
    static final boolean b;
    private static final char c[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f'
    };

    public il()
    {
    }

    public static String a(String s)
    {
        StringBuilder stringbuilder;
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
label4:
                        {
label5:
                            {
                                stringbuilder = new StringBuilder(s.length() * 2);
                                stringbuilder.append('"');
                                int i = 0;
label6:
                                do
                                {
                                    {
                                        if (i >= s.length())
                                        {
                                            break label0;
                                        }
                                        char c1 = s.charAt(i);
                                        switch (c1)
                                        {
                                        default:
                                            if (c1 >= ' ' && c1 <= '~')
                                            {
                                                stringbuilder.append(c1);
                                            } else
                                            {
                                                stringbuilder.append("\\u");
                                                stringbuilder.append(c[c1 >> 12 & 0xf]);
                                                stringbuilder.append(c[c1 >> 8 & 0xf]);
                                                stringbuilder.append(c[c1 >> 4 & 0xf]);
                                                stringbuilder.append(c[c1 & 0xf]);
                                            }
                                            break;

                                        case 0: // '\0'
                                            break label1;

                                        case 9: // '\t'
                                            break label2;

                                        case 10: // '\n'
                                            break label4;

                                        case 13: // '\r'
                                            break label3;

                                        case 34: // '"'
                                            break label6;

                                        case 92: // '\\'
                                            break label5;
                                        }
                                    }
                                    i++;
                                } while (true);
                                stringbuilder.append("\\\"");
                                break MISSING_BLOCK_LABEL_114;
                            }
                            stringbuilder.append("\\\\");
                            break MISSING_BLOCK_LABEL_114;
                        }
                        stringbuilder.append("\\n");
                        break MISSING_BLOCK_LABEL_114;
                    }
                    stringbuilder.append("\\t");
                    break MISSING_BLOCK_LABEL_114;
                }
                stringbuilder.append("\\r");
                break MISSING_BLOCK_LABEL_114;
            }
            stringbuilder.append("\\000");
            break MISSING_BLOCK_LABEL_114;
        }
        stringbuilder.append('"');
        return stringbuilder.toString();
    }

    public static String a(byte abyte0[])
    {
        int i = abyte0.length;
        return a.newDecoder().decode(ByteBuffer.wrap(abyte0, 0, i)).toString();
    }

    static 
    {
        boolean flag;
        if (!il.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
