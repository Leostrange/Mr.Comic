// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import java.util.BitSet;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            ParserCursor

public class TokenParser
{

    public static final char CR = 13;
    public static final char DQUOTE = 34;
    public static final char ESCAPE = 92;
    public static final char HT = 9;
    public static final TokenParser INSTANCE = new TokenParser();
    public static final char LF = 10;
    public static final char SP = 32;

    public TokenParser()
    {
    }

    public static transient BitSet INIT_BITSET(int ai[])
    {
        BitSet bitset = new BitSet();
        int j = ai.length;
        for (int i = 0; i < j; i++)
        {
            bitset.set(ai[i]);
        }

        return bitset;
    }

    public static boolean isWhitespace(char c)
    {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    public void copyContent(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, BitSet bitset, StringBuilder stringbuilder)
    {
        int j = parsercursor.getPos();
        int i = parsercursor.getPos();
        int k = parsercursor.getUpperBound();
        do
        {
            if (i >= k)
            {
                break;
            }
            char c = chararraybuffer.charAt(i);
            if (bitset != null && bitset.get(c) || isWhitespace(c))
            {
                break;
            }
            j++;
            stringbuilder.append(c);
            i++;
        } while (true);
        parsercursor.updatePos(j);
    }

    public void copyQuotedContent(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, StringBuilder stringbuilder)
    {
        if (!parsercursor.atEnd()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        int l;
        i = parsercursor.getPos();
        j = parsercursor.getPos();
        l = parsercursor.getUpperBound();
        if (chararraybuffer.charAt(i) != '"') goto _L1; else goto _L3
_L3:
        int k;
        boolean flag;
        i++;
        k = j + 1;
        flag = false;
_L8:
        if (k >= l) goto _L5; else goto _L4
_L4:
        char c = chararraybuffer.charAt(k);
        if (!flag) goto _L7; else goto _L6
_L6:
        if (c != '"' && c != '\\')
        {
            stringbuilder.append('\\');
        }
        stringbuilder.append(c);
        j = 0;
_L9:
        k++;
        i++;
        flag = j;
          goto _L8
_L7:
        if (c != '"')
        {
            break MISSING_BLOCK_LABEL_142;
        }
        i++;
_L5:
        parsercursor.updatePos(i);
        return;
        if (c == '\\')
        {
            j = 1;
        } else
        {
            j = ((flag) ? 1 : 0);
            if (c != '\r')
            {
                j = ((flag) ? 1 : 0);
                if (c != '\n')
                {
                    stringbuilder.append(c);
                    j = ((flag) ? 1 : 0);
                }
            }
        }
          goto _L9
    }

    public void copyUnquotedContent(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, BitSet bitset, StringBuilder stringbuilder)
    {
        int j = parsercursor.getPos();
        int i = parsercursor.getPos();
        int k = parsercursor.getUpperBound();
        do
        {
            if (i >= k)
            {
                break;
            }
            char c = chararraybuffer.charAt(i);
            if (bitset != null && bitset.get(c) || isWhitespace(c) || c == '"')
            {
                break;
            }
            j++;
            stringbuilder.append(c);
            i++;
        } while (true);
        parsercursor.updatePos(j);
    }

    public String parseToken(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, BitSet bitset)
    {
        StringBuilder stringbuilder = new StringBuilder();
        boolean flag = false;
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            char c = chararraybuffer.charAt(parsercursor.getPos());
            if (bitset != null && bitset.get(c))
            {
                break;
            }
            if (isWhitespace(c))
            {
                skipWhiteSpace(chararraybuffer, parsercursor);
                flag = true;
            } else
            {
                if (flag && stringbuilder.length() > 0)
                {
                    stringbuilder.append(' ');
                }
                copyContent(chararraybuffer, parsercursor, bitset, stringbuilder);
                flag = false;
            }
        } while (true);
        return stringbuilder.toString();
    }

    public String parseValue(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, BitSet bitset)
    {
        StringBuilder stringbuilder = new StringBuilder();
        boolean flag = false;
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            char c = chararraybuffer.charAt(parsercursor.getPos());
            if (bitset != null && bitset.get(c))
            {
                break;
            }
            if (isWhitespace(c))
            {
                skipWhiteSpace(chararraybuffer, parsercursor);
                flag = true;
            } else
            if (c == '"')
            {
                if (flag && stringbuilder.length() > 0)
                {
                    stringbuilder.append(' ');
                }
                copyQuotedContent(chararraybuffer, parsercursor, stringbuilder);
                flag = false;
            } else
            {
                if (flag && stringbuilder.length() > 0)
                {
                    stringbuilder.append(' ');
                }
                copyUnquotedContent(chararraybuffer, parsercursor, bitset, stringbuilder);
                flag = false;
            }
        } while (true);
        return stringbuilder.toString();
    }

    public void skipWhiteSpace(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int j = parsercursor.getPos();
        int i = parsercursor.getPos();
        for (int k = parsercursor.getUpperBound(); i < k && isWhitespace(chararraybuffer.charAt(i)); i++)
        {
            j++;
        }

        parsercursor.updatePos(j);
    }

}
