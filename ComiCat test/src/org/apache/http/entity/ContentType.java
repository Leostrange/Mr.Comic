// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.entity;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.TextUtils;

public final class ContentType
    implements Serializable
{

    public static final ContentType APPLICATION_ATOM_XML;
    public static final ContentType APPLICATION_FORM_URLENCODED;
    public static final ContentType APPLICATION_JSON;
    public static final ContentType APPLICATION_OCTET_STREAM;
    public static final ContentType APPLICATION_SVG_XML;
    public static final ContentType APPLICATION_XHTML_XML;
    public static final ContentType APPLICATION_XML;
    public static final ContentType DEFAULT_BINARY;
    public static final ContentType DEFAULT_TEXT;
    public static final ContentType MULTIPART_FORM_DATA;
    public static final ContentType TEXT_HTML;
    public static final ContentType TEXT_PLAIN;
    public static final ContentType TEXT_XML;
    public static final ContentType WILDCARD = create("*/*", ((Charset) (null)));
    private static final long serialVersionUID = 0x94300d50674e5d48L;
    private final Charset charset;
    private final String mimeType;
    private final NameValuePair params[];

    ContentType(String s, Charset charset1)
    {
        mimeType = s;
        charset = charset1;
        params = null;
    }

    ContentType(String s, Charset charset1, NameValuePair anamevaluepair[])
    {
        mimeType = s;
        charset = charset1;
        params = anamevaluepair;
    }

    public static ContentType create(String s)
    {
        return new ContentType(s, null);
    }

    public static ContentType create(String s, String s1)
    {
        if (!TextUtils.isBlank(s1))
        {
            s1 = Charset.forName(s1);
        } else
        {
            s1 = null;
        }
        return create(s, ((Charset) (s1)));
    }

    public static ContentType create(String s, Charset charset1)
    {
        s = ((String)Args.notBlank(s, "MIME type")).toLowerCase(Locale.ROOT);
        Args.check(valid(s), "MIME type may not contain reserved characters");
        return new ContentType(s, charset1);
    }

    public static transient ContentType create(String s, NameValuePair anamevaluepair[])
    {
        Args.check(valid(((String)Args.notBlank(s, "MIME type")).toLowerCase(Locale.ROOT)), "MIME type may not contain reserved characters");
        return create(s, anamevaluepair, true);
    }

    private static ContentType create(String s, NameValuePair anamevaluepair[], boolean flag)
    {
        int i;
        int j;
        j = anamevaluepair.length;
        i = 0;
_L3:
        Object obj;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        obj = anamevaluepair[i];
        if (!((NameValuePair) (obj)).getName().equalsIgnoreCase("charset")) goto _L2; else goto _L1
_L1:
        obj = ((NameValuePair) (obj)).getValue();
        if (TextUtils.isBlank(((CharSequence) (obj))))
        {
            break MISSING_BLOCK_LABEL_98;
        }
        try
        {
            obj = Charset.forName(((String) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            if (flag)
            {
                throw obj;
            }
            obj = null;
        }
_L4:
        if (anamevaluepair == null || anamevaluepair.length <= 0)
        {
            anamevaluepair = null;
        }
        return new ContentType(s, ((Charset) (obj)), anamevaluepair);
_L2:
        i++;
          goto _L3
        obj = null;
          goto _L4
    }

    private static ContentType create(HeaderElement headerelement, boolean flag)
    {
        return create(headerelement.getName(), headerelement.getParameters(), flag);
    }

    public static ContentType get(HttpEntity httpentity)
    {
        if (httpentity != null)
        {
            if ((httpentity = httpentity.getContentType()) != null && (httpentity = httpentity.getElements()).length > 0)
            {
                return create(httpentity[0], true);
            }
        }
        return null;
    }

    public static ContentType getLenient(HttpEntity httpentity)
    {
        if (httpentity != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        if ((httpentity = httpentity.getContentType()) == null) goto _L1; else goto _L3
_L3:
        httpentity = httpentity.getElements();
        if (httpentity.length <= 0) goto _L1; else goto _L4
_L4:
        httpentity = create(httpentity[0], false);
        return httpentity;
        httpentity;
        return null;
    }

    public static ContentType getLenientOrDefault(HttpEntity httpentity)
    {
        httpentity = get(httpentity);
        if (httpentity != null)
        {
            return httpentity;
        } else
        {
            return DEFAULT_TEXT;
        }
    }

    public static ContentType getOrDefault(HttpEntity httpentity)
    {
        httpentity = get(httpentity);
        if (httpentity != null)
        {
            return httpentity;
        } else
        {
            return DEFAULT_TEXT;
        }
    }

    public static ContentType parse(String s)
    {
        Args.notNull(s, "Content type");
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
        chararraybuffer.append(s);
        ParserCursor parsercursor = new ParserCursor(0, s.length());
        HeaderElement aheaderelement[] = BasicHeaderValueParser.INSTANCE.parseElements(chararraybuffer, parsercursor);
        if (aheaderelement.length > 0)
        {
            return create(aheaderelement[0], true);
        } else
        {
            throw new ParseException((new StringBuilder("Invalid content type: ")).append(s).toString());
        }
    }

    private static boolean valid(String s)
    {
        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if (c == '"' || c == ',' || c == ';')
            {
                return false;
            }
        }

        return true;
    }

    public final Charset getCharset()
    {
        return charset;
    }

    public final String getMimeType()
    {
        return mimeType;
    }

    public final String getParameter(String s)
    {
        Args.notEmpty(s, "Parameter name");
        if (params != null)
        {
            NameValuePair anamevaluepair[] = params;
            int j = anamevaluepair.length;
            int i = 0;
            while (i < j) 
            {
                NameValuePair namevaluepair = anamevaluepair[i];
                if (namevaluepair.getName().equalsIgnoreCase(s))
                {
                    return namevaluepair.getValue();
                }
                i++;
            }
        }
        return null;
    }

    public final String toString()
    {
        CharArrayBuffer chararraybuffer;
        chararraybuffer = new CharArrayBuffer(64);
        chararraybuffer.append(mimeType);
        if (params == null) goto _L2; else goto _L1
_L1:
        chararraybuffer.append("; ");
        BasicHeaderValueFormatter.INSTANCE.formatParameters(chararraybuffer, params, false);
_L4:
        return chararraybuffer.toString();
_L2:
        if (charset != null)
        {
            chararraybuffer.append("; charset=");
            chararraybuffer.append(charset.name());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final ContentType withCharset(String s)
    {
        return create(getMimeType(), s);
    }

    public final ContentType withCharset(Charset charset1)
    {
        return create(getMimeType(), charset1);
    }

    public final transient ContentType withParameters(NameValuePair anamevaluepair[])
    {
        boolean flag = false;
        if (anamevaluepair.length == 0)
        {
            return this;
        }
        Object obj = new LinkedHashMap();
        if (params != null)
        {
            NameValuePair anamevaluepair1[] = params;
            int k = anamevaluepair1.length;
            for (int i = 0; i < k; i++)
            {
                NameValuePair namevaluepair1 = anamevaluepair1[i];
                ((Map) (obj)).put(namevaluepair1.getName(), namevaluepair1.getValue());
            }

        }
        int l = anamevaluepair.length;
        for (int j = ((flag) ? 1 : 0); j < l; j++)
        {
            NameValuePair namevaluepair = anamevaluepair[j];
            ((Map) (obj)).put(namevaluepair.getName(), namevaluepair.getValue());
        }

        anamevaluepair = new ArrayList(((Map) (obj)).size() + 1);
        if (charset != null && !((Map) (obj)).containsKey("charset"))
        {
            anamevaluepair.add(new BasicNameValuePair("charset", charset.name()));
        }
        java.util.Map.Entry entry;
        for (obj = ((Map) (obj)).entrySet().iterator(); ((Iterator) (obj)).hasNext(); anamevaluepair.add(new BasicNameValuePair((String)entry.getKey(), (String)entry.getValue())))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        }

        return create(getMimeType(), (NameValuePair[])anamevaluepair.toArray(new NameValuePair[anamevaluepair.size()]), true);
    }

    static 
    {
        APPLICATION_ATOM_XML = create("application/atom+xml", Consts.ISO_8859_1);
        APPLICATION_FORM_URLENCODED = create("application/x-www-form-urlencoded", Consts.ISO_8859_1);
        APPLICATION_JSON = create("application/json", Consts.UTF_8);
        APPLICATION_OCTET_STREAM = create("application/octet-stream", ((Charset) (null)));
        APPLICATION_SVG_XML = create("application/svg+xml", Consts.ISO_8859_1);
        APPLICATION_XHTML_XML = create("application/xhtml+xml", Consts.ISO_8859_1);
        APPLICATION_XML = create("application/xml", Consts.ISO_8859_1);
        MULTIPART_FORM_DATA = create("multipart/form-data", Consts.ISO_8859_1);
        TEXT_HTML = create("text/html", Consts.ISO_8859_1);
        TEXT_PLAIN = create("text/plain", Consts.ISO_8859_1);
        TEXT_XML = create("text/xml", Consts.ISO_8859_1);
        DEFAULT_TEXT = TEXT_PLAIN;
        DEFAULT_BINARY = APPLICATION_OCTET_STREAM;
    }
}
