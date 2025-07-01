// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.entity;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpMessage;
import org.apache.http.ParseException;
import org.apache.http.ProtocolException;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.util.Args;

public class LaxContentLengthStrategy
    implements ContentLengthStrategy
{

    public static final LaxContentLengthStrategy INSTANCE = new LaxContentLengthStrategy();
    private final int implicitLen;

    public LaxContentLengthStrategy()
    {
        this(-1);
    }

    public LaxContentLengthStrategy(int i)
    {
        implicitLen = i;
    }

    public long determineLength(HttpMessage httpmessage)
    {
_L2:
        long l;
        if (l >= 0L)
        {
            return l;
        }
        do
        {
            return -1L;
        } while ("identity".equalsIgnoreCase(header.getValue()) || i <= 0 || !"chunked".equalsIgnoreCase(httpmessage[i - 1].getName()));
        return -2L;
label0:
        {
            Args.notNull(httpmessage, "HTTP message");
            Header header = httpmessage.getFirstHeader("Transfer-Encoding");
            int i;
            if (header != null)
            {
                try
                {
                    httpmessage = header.getElements();
                }
                // Misplaced declaration of an exception variable
                catch (HttpMessage httpmessage)
                {
                    throw new ProtocolException((new StringBuilder("Invalid Transfer-Encoding header value: ")).append(header).toString(), httpmessage);
                }
                i = httpmessage.length;
                break MISSING_BLOCK_LABEL_30;
            }
            if (httpmessage.getFirstHeader("Content-Length") != null)
            {
                httpmessage = httpmessage.getHeaders("Content-Length");
                int j = httpmessage.length - 1;
                do
                {
                    if (j < 0)
                    {
                        break label0;
                    }
                    header = httpmessage[j];
                    try
                    {
                        l = Long.parseLong(header.getValue());
                        continue; /* Loop/switch isn't completed */
                    }
                    catch (NumberFormatException numberformatexception)
                    {
                        j--;
                    }
                } while (true);
            } else
            {
                return (long)implicitLen;
            }
        }
        l = -1L;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
