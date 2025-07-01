// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.message:
//            LineParser, ParserCursor, BasicRequestLine, BasicStatusLine, 
//            BufferedHeader

public class BasicLineParser
    implements LineParser
{

    public static final BasicLineParser DEFAULT = new BasicLineParser();
    public static final BasicLineParser INSTANCE = new BasicLineParser();
    protected final ProtocolVersion protocol;

    public BasicLineParser()
    {
        this(null);
    }

    public BasicLineParser(ProtocolVersion protocolversion)
    {
        if (protocolversion == null)
        {
            protocolversion = HttpVersion.HTTP_1_1;
        }
        protocol = protocolversion;
    }

    public static Header parseHeader(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseHeader(chararraybuffer);
    }

    public static ProtocolVersion parseProtocolVersion(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseProtocolVersion(chararraybuffer, s);
    }

    public static RequestLine parseRequestLine(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseRequestLine(chararraybuffer, s);
    }

    public static StatusLine parseStatusLine(String s, LineParser lineparser)
    {
        Args.notNull(s, "Value");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        s = new ParserCursor(0, s.length());
        if (lineparser == null)
        {
            lineparser = INSTANCE;
        }
        return lineparser.parseStatusLine(chararraybuffer, s);
    }

    protected ProtocolVersion createProtocolVersion(int i, int j)
    {
        return protocol.forVersion(i, j);
    }

    protected RequestLine createRequestLine(String s, String s1, ProtocolVersion protocolversion)
    {
        return new BasicRequestLine(s, s1, protocolversion);
    }

    protected StatusLine createStatusLine(ProtocolVersion protocolversion, int i, String s)
    {
        return new BasicStatusLine(protocolversion, i, s);
    }

    public boolean hasProtocolVersion(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int j;
        int k;
        boolean flag1;
        flag1 = true;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        j = parsercursor.getPos();
        parsercursor = protocol.getProtocol();
        k = parsercursor.length();
        if (chararraybuffer.length() >= k + 4) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (j >= 0) goto _L4; else goto _L3
_L3:
        int i = chararraybuffer.length() - 4 - k;
_L6:
        boolean flag;
        if (i + k + 4 <= chararraybuffer.length())
        {
            j = 0;
            flag = true;
            while (flag && j < k) 
            {
                if (chararraybuffer.charAt(i + j) == parsercursor.charAt(j))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                j++;
            }
            break MISSING_BLOCK_LABEL_175;
        }
        if (true) goto _L1; else goto _L4
_L4:
        i = j;
        if (j != 0) goto _L6; else goto _L5
_L5:
        i = j;
        if (j >= chararraybuffer.length()) goto _L6; else goto _L7
_L7:
        i = j;
        if (!HTTP.isWhitespace(chararraybuffer.charAt(j))) goto _L6; else goto _L8
_L8:
        j++;
          goto _L5
        if (flag)
        {
            if (chararraybuffer.charAt(i + k) == '/')
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
        }
        return flag;
    }

    public Header parseHeader(CharArrayBuffer chararraybuffer)
    {
        return new BufferedHeader(chararraybuffer);
    }

    public ProtocolVersion parseProtocolVersion(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int l = 1;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        String s = protocol.getProtocol();
        int j1 = s.length();
        int i1 = parsercursor.getPos();
        int k = parsercursor.getUpperBound();
        skipWhitespace(chararraybuffer, parsercursor);
        int k1 = parsercursor.getPos();
        if (k1 + j1 + 4 > k)
        {
            throw new ParseException((new StringBuilder("Not a valid protocol version: ")).append(chararraybuffer.substring(i1, k)).toString());
        }
        int j = 0;
        boolean flag = true;
        while (flag && j < j1) 
        {
            if (chararraybuffer.charAt(k1 + j) == s.charAt(j))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            j++;
        }
        if (flag)
        {
            if (chararraybuffer.charAt(k1 + j1) == '/')
            {
                flag = l;
            } else
            {
                flag = false;
            }
        }
        if (!flag)
        {
            throw new ParseException((new StringBuilder("Not a valid protocol version: ")).append(chararraybuffer.substring(i1, k)).toString());
        }
        j = j1 + 1 + k1;
        int i = chararraybuffer.indexOf(46, j, k);
        if (i == -1)
        {
            throw new ParseException((new StringBuilder("Invalid protocol version number: ")).append(chararraybuffer.substring(i1, k)).toString());
        }
        try
        {
            l = Integer.parseInt(chararraybuffer.substringTrimmed(j, i));
        }
        // Misplaced declaration of an exception variable
        catch (ParserCursor parsercursor)
        {
            throw new ParseException((new StringBuilder("Invalid protocol major version number: ")).append(chararraybuffer.substring(i1, k)).toString());
        }
        j1 = i + 1;
        j = chararraybuffer.indexOf(32, j1, k);
        i = j;
        if (j == -1)
        {
            i = k;
        }
        try
        {
            j = Integer.parseInt(chararraybuffer.substringTrimmed(j1, i));
        }
        // Misplaced declaration of an exception variable
        catch (ParserCursor parsercursor)
        {
            throw new ParseException((new StringBuilder("Invalid protocol minor version number: ")).append(chararraybuffer.substring(i1, k)).toString());
        }
        parsercursor.updatePos(i);
        return createProtocolVersion(l, j);
    }

    public RequestLine parseRequestLine(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int i;
        int j;
        int k;
        int l;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        i = parsercursor.getPos();
        j = parsercursor.getUpperBound();
        try
        {
            skipWhitespace(chararraybuffer, parsercursor);
            k = parsercursor.getPos();
            l = chararraybuffer.indexOf(32, k, j);
        }
        // Misplaced declaration of an exception variable
        catch (ParserCursor parsercursor)
        {
            throw new ParseException((new StringBuilder("Invalid request line: ")).append(chararraybuffer.substring(i, j)).toString());
        }
        if (l >= 0)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        throw new ParseException((new StringBuilder("Invalid request line: ")).append(chararraybuffer.substring(i, j)).toString());
        String s;
        s = chararraybuffer.substringTrimmed(k, l);
        parsercursor.updatePos(l);
        skipWhitespace(chararraybuffer, parsercursor);
        k = parsercursor.getPos();
        l = chararraybuffer.indexOf(32, k, j);
        if (l >= 0)
        {
            break MISSING_BLOCK_LABEL_193;
        }
        throw new ParseException((new StringBuilder("Invalid request line: ")).append(chararraybuffer.substring(i, j)).toString());
        String s1 = chararraybuffer.substringTrimmed(k, l);
        parsercursor.updatePos(l);
        ProtocolVersion protocolversion = parseProtocolVersion(chararraybuffer, parsercursor);
        skipWhitespace(chararraybuffer, parsercursor);
        if (!parsercursor.atEnd())
        {
            throw new ParseException((new StringBuilder("Invalid request line: ")).append(chararraybuffer.substring(i, j)).toString());
        }
        parsercursor = createRequestLine(s, s1, protocolversion);
        return parsercursor;
    }

    public StatusLine parseStatusLine(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        ProtocolVersion protocolversion;
        int i;
        int j;
        int k;
        int l;
        Args.notNull(chararraybuffer, "Char array buffer");
        Args.notNull(parsercursor, "Parser cursor");
        l = parsercursor.getPos();
        k = parsercursor.getUpperBound();
        try
        {
            protocolversion = parseProtocolVersion(chararraybuffer, parsercursor);
            skipWhitespace(chararraybuffer, parsercursor);
            j = parsercursor.getPos();
            i = chararraybuffer.indexOf(32, j, k);
        }
        // Misplaced declaration of an exception variable
        catch (ParserCursor parsercursor)
        {
            throw new ParseException((new StringBuilder("Invalid status line: ")).append(chararraybuffer.substring(l, k)).toString());
        }
        if (i < 0)
        {
            i = k;
        }
        parsercursor = chararraybuffer.substringTrimmed(j, i);
        j = 0;
_L2:
        if (j >= parsercursor.length())
        {
            break; /* Loop/switch isn't completed */
        }
        if (!Character.isDigit(parsercursor.charAt(j)))
        {
            throw new ParseException((new StringBuilder("Status line contains invalid status code: ")).append(chararraybuffer.substring(l, k)).toString());
        }
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        j = Integer.parseInt(parsercursor);
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        parsercursor = chararraybuffer.substringTrimmed(i, k);
_L3:
        return createStatusLine(protocolversion, j, parsercursor);
        parsercursor;
        throw new ParseException((new StringBuilder("Status line contains invalid status code: ")).append(chararraybuffer.substring(l, k)).toString());
        parsercursor = "";
          goto _L3
    }

    protected void skipWhitespace(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        int i = parsercursor.getPos();
        for (int j = parsercursor.getUpperBound(); i < j && HTTP.isWhitespace(chararraybuffer.charAt(i)); i++) { }
        parsercursor.updatePos(i);
    }

}
