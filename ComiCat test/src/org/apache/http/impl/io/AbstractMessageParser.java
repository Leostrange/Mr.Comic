// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.MessageConstraintException;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.LineParser;
import org.apache.http.params.HttpParamConfig;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

public abstract class AbstractMessageParser
    implements HttpMessageParser
{

    private static final int HEADERS = 1;
    private static final int HEAD_LINE = 0;
    private final List headerLines;
    protected final LineParser lineParser;
    private HttpMessage message;
    private final MessageConstraints messageConstraints;
    private final SessionInputBuffer sessionBuffer;
    private int state;

    public AbstractMessageParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, MessageConstraints messageconstraints)
    {
        sessionBuffer = (SessionInputBuffer)Args.notNull(sessioninputbuffer, "Session input buffer");
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        lineParser = lineparser;
        if (messageconstraints == null)
        {
            messageconstraints = MessageConstraints.DEFAULT;
        }
        messageConstraints = messageconstraints;
        headerLines = new ArrayList();
        state = 0;
    }

    public AbstractMessageParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpParams httpparams)
    {
        Args.notNull(sessioninputbuffer, "Session input buffer");
        Args.notNull(httpparams, "HTTP parameters");
        sessionBuffer = sessioninputbuffer;
        messageConstraints = HttpParamConfig.getMessageConstraints(httpparams);
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        lineParser = lineparser;
        headerLines = new ArrayList();
        state = 0;
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser)
    {
        ArrayList arraylist = new ArrayList();
        if (lineparser == null)
        {
            lineparser = BasicLineParser.INSTANCE;
        }
        return parseHeaders(sessioninputbuffer, i, j, lineparser, ((List) (arraylist)));
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser, List list)
    {
        boolean flag = false;
        Args.notNull(sessioninputbuffer, "Session input buffer");
        Args.notNull(lineparser, "Line parser");
        Args.notNull(list, "Header line list");
        CharArrayBuffer chararraybuffer2 = null;
        CharArrayBuffer chararraybuffer = null;
        do
        {
            if (chararraybuffer == null)
            {
                chararraybuffer = new CharArrayBuffer(64);
            } else
            {
                chararraybuffer.clear();
            }
            if (sessioninputbuffer.readLine(chararraybuffer) != -1 && chararraybuffer.length() > 0)
            {
                if ((chararraybuffer.charAt(0) == ' ' || chararraybuffer.charAt(0) == '\t') && chararraybuffer2 != null)
                {
                    int k = 0;
                    do
                    {
                        if (k >= chararraybuffer.length())
                        {
                            break;
                        }
                        char c = chararraybuffer.charAt(k);
                        if (c != ' ' && c != '\t')
                        {
                            break;
                        }
                        k++;
                    } while (true);
                    if (j > 0 && (chararraybuffer2.length() + 1 + chararraybuffer.length()) - k > j)
                    {
                        throw new MessageConstraintException("Maximum line length limit exceeded");
                    }
                    chararraybuffer2.append(' ');
                    chararraybuffer2.append(chararraybuffer, k, chararraybuffer.length() - k);
                } else
                {
                    list.add(chararraybuffer);
                    Object obj = null;
                    chararraybuffer2 = chararraybuffer;
                    chararraybuffer = obj;
                }
                if (i > 0 && list.size() >= i)
                {
                    throw new MessageConstraintException("Maximum header count exceeded");
                }
            } else
            {
                sessioninputbuffer = new Header[list.size()];
                i = ((flag) ? 1 : 0);
                while (i < list.size()) 
                {
                    CharArrayBuffer chararraybuffer1 = (CharArrayBuffer)list.get(i);
                    try
                    {
                        sessioninputbuffer[i] = lineparser.parseHeader(chararraybuffer1);
                    }
                    // Misplaced declaration of an exception variable
                    catch (SessionInputBuffer sessioninputbuffer)
                    {
                        throw new ProtocolException(sessioninputbuffer.getMessage());
                    }
                    i++;
                }
                return sessioninputbuffer;
            }
        } while (true);
    }

    public HttpMessage parse()
    {
        switch (state)
        {
        default:
            throw new IllegalStateException("Inconsistent parser state");

        case 0: // '\0'
            Header aheader[];
            HttpMessage httpmessage;
            try
            {
                message = parseHead(sessionBuffer);
            }
            catch (ParseException parseexception)
            {
                throw new ProtocolException(parseexception.getMessage(), parseexception);
            }
            state = 1;
            // fall through

        case 1: // '\001'
            aheader = parseHeaders(sessionBuffer, messageConstraints.getMaxHeaderCount(), messageConstraints.getMaxLineLength(), lineParser, headerLines);
            message.setHeaders(aheader);
            httpmessage = message;
            message = null;
            headerLines.clear();
            state = 0;
            return httpmessage;
        }
    }

    protected abstract HttpMessage parseHead(SessionInputBuffer sessioninputbuffer);
}
