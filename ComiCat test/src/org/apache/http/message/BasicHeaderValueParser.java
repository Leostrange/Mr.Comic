// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            HeaderValueParser, TokenParser, ParserCursor, BasicHeaderElement, 
//            BasicNameValuePair

public class BasicHeaderValueParser
    implements HeaderValueParser
{

    public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
    private static final char ELEM_DELIMITER = 44;
    public static final BasicHeaderValueParser INSTANCE = new BasicHeaderValueParser();
    private static final char PARAM_DELIMITER = 59;
    private static final BitSet TOKEN_DELIMS = TokenParser.INIT_BITSET(new int[] {
        61, 59, 44
    });
    private static final BitSet VALUE_DELIMS = TokenParser.INIT_BITSET(new int[] {
        59, 44
    });
    private final TokenParser tokenParser;

    public BasicHeaderValueParser()
    {
        tokenParser = TokenParser.INSTANCE;
    }

    public static HeaderElement[] parseElements(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseElements(chararraybuffer, s);
    }

    public static HeaderElement parseHeaderElement(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseHeaderElement(chararraybuffer, s);
    }

    public static NameValuePair parseNameValuePair(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseNameValuePair(chararraybuffer, s);
    }

    public static NameValuePair[] parseParameters(String s, HeaderValueParser headervalueparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (headervalueparser == null)
        {
            headervalueparser = INSTANCE;
        }
        return headervalueparser.parseParameters(chararraybuffer, s);
    }

    protected HeaderElement createHeaderElement(String s, String s1, NameValuePair anamevaluepair[])
    {
        return new BasicHeaderElement(s, s1, anamevaluepair);
    }

    protected NameValuePair createNameValuePair(String s, String s1)
    {
        return new BasicNameValuePair(s, s1);
    }

    public HeaderElement[] parseElements(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        ArrayList arraylist = new ArrayList();
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            HeaderElement headerelement = parseHeaderElement(chararraybuffer, parsercursor);
            if (headerelement.getName().length() != 0 || headerelement.getValue() != null)
            {
                arraylist.add(headerelement);
            }
        } while (true);
        return (HeaderElement[])arraylist.toArray(new HeaderElement[arraylist.size()]);
    }

    public HeaderElement parseHeaderElement(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        NameValuePair namevaluepair = parseNameValuePair(chararraybuffer, parsercursor);
        Object obj = null;
        NameValuePair anamevaluepair[] = obj;
        if (!parsercursor.atEnd())
        {
            anamevaluepair = obj;
            if (chararraybuffer.charAt(parsercursor.getPos() - 1) != ',')
            {
                anamevaluepair = parseParameters(chararraybuffer, parsercursor);
            }
        }
        return createHeaderElement(namevaluepair.getName(), namevaluepair.getValue(), anamevaluepair);
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        String s = tokenParser.parseToken(chararraybuffer, parsercursor, TOKEN_DELIMS);
        if (parsercursor.atEnd())
        {
            return new BasicNameValuePair(s, null);
        }
        char c = chararraybuffer.charAt(parsercursor.getPos());
        parsercursor.updatePos(parsercursor.getPos() + 1);
        if (c != '=')
        {
            return createNameValuePair(s, null);
        }
        chararraybuffer = tokenParser.parseValue(chararraybuffer, parsercursor, VALUE_DELIMS);
        if (!parsercursor.atEnd())
        {
            parsercursor.updatePos(parsercursor.getPos() + 1);
        }
        return createNameValuePair(s, chararraybuffer);
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer chararraybuffer, ParserCursor parsercursor, char ac[])
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        BitSet bitset = new BitSet();
        if (ac != null)
        {
            int j = ac.length;
            for (int i = 0; i < j; i++)
            {
                bitset.set(ac[i]);
            }

        }
        bitset.set(61);
        ac = tokenParser.parseToken(chararraybuffer, parsercursor, bitset);
        if (parsercursor.atEnd())
        {
            return new BasicNameValuePair(ac, null);
        }
        char c = chararraybuffer.charAt(parsercursor.getPos());
        parsercursor.updatePos(parsercursor.getPos() + 1);
        if (c != '=')
        {
            return createNameValuePair(ac, null);
        }
        bitset.clear(61);
        chararraybuffer = tokenParser.parseValue(chararraybuffer, parsercursor, bitset);
        if (!parsercursor.atEnd())
        {
            parsercursor.updatePos(parsercursor.getPos() + 1);
        }
        return createNameValuePair(ac, chararraybuffer);
    }

    public NameValuePair[] parseParameters(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        tokenParser.skipWhiteSpace(chararraybuffer, parsercursor);
        ArrayList arraylist = new ArrayList();
        do
        {
            if (parsercursor.atEnd())
            {
                break;
            }
            arraylist.add(parseNameValuePair(chararraybuffer, parsercursor));
        } while (chararraybuffer.charAt(parsercursor.getPos() - 1) != ',');
        return (NameValuePair[])arraylist.toArray(new NameValuePair[arraylist.size()]);
    }

}
