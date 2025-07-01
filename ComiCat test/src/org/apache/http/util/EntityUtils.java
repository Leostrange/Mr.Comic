// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.entity.ContentType;
import org.apache.http.protocol.HTTP;

// Referenced classes of package org.apache.http.util:
//            Args, ByteArrayBuffer, CharArrayBuffer

public final class EntityUtils
{

    private EntityUtils()
    {
    }

    public static void consume(HttpEntity httpentity)
    {
        if (httpentity != null && httpentity.isStreaming())
        {
            httpentity = httpentity.getContent();
            if (httpentity != null)
            {
                httpentity.close();
                return;
            }
        }
    }

    public static void consumeQuietly(HttpEntity httpentity)
    {
        try
        {
            consume(httpentity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (HttpEntity httpentity)
        {
            return;
        }
    }

    public static String getContentCharSet(HttpEntity httpentity)
    {
        Args.notNull(httpentity, "Entity");
        Object obj = null;
        String s = obj;
        if (httpentity.getContentType() != null)
        {
            httpentity = httpentity.getContentType().getElements();
            s = obj;
            if (httpentity.length > 0)
            {
                httpentity = httpentity[0].getParameterByName("charset");
                s = obj;
                if (httpentity != null)
                {
                    s = httpentity.getValue();
                }
            }
        }
        return s;
    }

    public static String getContentMimeType(HttpEntity httpentity)
    {
        Args.notNull(httpentity, "Entity");
        Object obj = null;
        String s = obj;
        if (httpentity.getContentType() != null)
        {
            httpentity = httpentity.getContentType().getElements();
            s = obj;
            if (httpentity.length > 0)
            {
                s = httpentity[0].getName();
            }
        }
        return s;
    }

    public static byte[] toByteArray(HttpEntity httpentity)
    {
        InputStream inputstream;
        int i;
        boolean flag;
        i = 4096;
        flag = false;
        Args.notNull(httpentity, "Entity");
        inputstream = httpentity.getContent();
        if (inputstream == null)
        {
            return null;
        }
        if (httpentity.getContentLength() <= 0x7fffffffL)
        {
            flag = true;
        }
        int j;
        Args.check(flag, "HTTP entity too large to be buffered in memory");
        j = (int)httpentity.getContentLength();
        byte abyte0[];
        if (j >= 0)
        {
            i = j;
        }
        httpentity = new ByteArrayBuffer(i);
        abyte0 = new byte[4096];
_L1:
        i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        httpentity.append(abyte0, 0, i);
          goto _L1
        httpentity;
        inputstream.close();
        throw httpentity;
        httpentity = httpentity.toByteArray();
        inputstream.close();
        return httpentity;
    }

    public static String toString(HttpEntity httpentity)
    {
        return toString(httpentity, ((Charset) (null)));
    }

    public static String toString(HttpEntity httpentity, String s)
    {
        if (s != null)
        {
            s = Charset.forName(s);
        } else
        {
            s = null;
        }
        return toString(httpentity, ((Charset) (s)));
    }

    public static String toString(HttpEntity httpentity, Charset charset)
    {
        char ac[];
        InputStream inputstream;
        boolean flag;
        ac = null;
        flag = false;
        Args.notNull(httpentity, "Entity");
        inputstream = httpentity.getContent();
        if (inputstream == null)
        {
            return null;
        }
        if (httpentity.getContentLength() <= 0x7fffffffL)
        {
            flag = true;
        }
        long l;
        Args.check(flag, "HTTP entity too large to be buffered in memory");
        l = httpentity.getContentLength();
        int i;
        int j = (int)l;
        i = j;
        if (j < 0)
        {
            i = 4096;
        }
        ContentType contenttype = ContentType.get(httpentity);
        httpentity = ac;
        if (contenttype == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        httpentity = contenttype.getCharset();
_L3:
        ac = httpentity;
        if (httpentity == null)
        {
            ac = charset;
        }
        httpentity = ac;
        if (ac != null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        httpentity = HTTP.DEF_CONTENT_CHARSET;
        httpentity = new InputStreamReader(inputstream, httpentity);
        charset = new CharArrayBuffer(i);
        ac = new char[1024];
_L1:
        i = httpentity.read(ac);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        charset.append(ac, 0, i);
          goto _L1
        httpentity;
        inputstream.close();
        throw httpentity;
        UnsupportedCharsetException unsupportedcharsetexception;
        unsupportedcharsetexception;
        httpentity = ac;
        if (charset != null) goto _L3; else goto _L2
_L2:
        throw new UnsupportedEncodingException(unsupportedcharsetexception.getMessage());
        httpentity = charset.toString();
        inputstream.close();
        return httpentity;
    }

    public static void updateEntity(HttpResponse httpresponse, HttpEntity httpentity)
    {
        Args.notNull(httpresponse, "Response");
        consume(httpresponse.getEntity());
        httpresponse.setEntity(httpentity);
    }
}
