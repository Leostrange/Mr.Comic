package org.apache.http.entity;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.TextUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public final class ContentType implements Serializable {
    public static final ContentType APPLICATION_ATOM_XML = create("application/atom+xml", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_FORM_URLENCODED = create("application/x-www-form-urlencoded", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_JSON = create("application/json", Consts.UTF_8);
    public static final ContentType APPLICATION_OCTET_STREAM = create("application/octet-stream", (Charset) null);
    public static final ContentType APPLICATION_SVG_XML = create("application/svg+xml", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_XHTML_XML = create("application/xhtml+xml", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_XML = create("application/xml", Consts.ISO_8859_1);
    public static final ContentType DEFAULT_BINARY = APPLICATION_OCTET_STREAM;
    public static final ContentType DEFAULT_TEXT = TEXT_PLAIN;
    public static final ContentType MULTIPART_FORM_DATA = create("multipart/form-data", Consts.ISO_8859_1);
    public static final ContentType TEXT_HTML = create("text/html", Consts.ISO_8859_1);
    public static final ContentType TEXT_PLAIN = create(HTTP.PLAIN_TEXT_TYPE, Consts.ISO_8859_1);
    public static final ContentType TEXT_XML = create("text/xml", Consts.ISO_8859_1);
    public static final ContentType WILDCARD = create("*/*", (Charset) null);
    private static final long serialVersionUID = -7768694718232371896L;
    private final Charset charset;
    private final String mimeType;
    private final NameValuePair[] params;

    ContentType(String str, Charset charset2) {
        this.mimeType = str;
        this.charset = charset2;
        this.params = null;
    }

    ContentType(String str, Charset charset2, NameValuePair[] nameValuePairArr) {
        this.mimeType = str;
        this.charset = charset2;
        this.params = nameValuePairArr;
    }

    public static ContentType create(String str) {
        return new ContentType(str, (Charset) null);
    }

    public static ContentType create(String str, String str2) {
        return create(str, !TextUtils.isBlank(str2) ? Charset.forName(str2) : null);
    }

    public static ContentType create(String str, Charset charset2) {
        String lowerCase = ((String) Args.notBlank(str, "MIME type")).toLowerCase(Locale.ROOT);
        Args.check(valid(lowerCase), "MIME type may not contain reserved characters");
        return new ContentType(lowerCase, charset2);
    }

    public static ContentType create(String str, NameValuePair... nameValuePairArr) {
        Args.check(valid(((String) Args.notBlank(str, "MIME type")).toLowerCase(Locale.ROOT)), "MIME type may not contain reserved characters");
        return create(str, nameValuePairArr, true);
    }

    private static ContentType create(String str, NameValuePair[] nameValuePairArr, boolean z) {
        Charset charset2;
        int length = nameValuePairArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            NameValuePair nameValuePair = nameValuePairArr[i];
            if (nameValuePair.getName().equalsIgnoreCase("charset")) {
                String value = nameValuePair.getValue();
                if (!TextUtils.isBlank(value)) {
                    try {
                        charset2 = Charset.forName(value);
                    } catch (UnsupportedCharsetException e) {
                        if (z) {
                            throw e;
                        }
                        charset2 = null;
                    }
                }
            } else {
                i++;
            }
        }
        charset2 = null;
        if (nameValuePairArr == null || nameValuePairArr.length <= 0) {
            nameValuePairArr = null;
        }
        return new ContentType(str, charset2, nameValuePairArr);
    }

    private static ContentType create(HeaderElement headerElement, boolean z) {
        return create(headerElement.getName(), headerElement.getParameters(), z);
    }

    public static ContentType get(HttpEntity httpEntity) {
        Header contentType;
        if (httpEntity == null || (contentType = httpEntity.getContentType()) == null) {
            return null;
        }
        HeaderElement[] elements = contentType.getElements();
        if (elements.length > 0) {
            return create(elements[0], true);
        }
        return null;
    }

    public static ContentType getLenient(HttpEntity httpEntity) {
        Header contentType;
        if (httpEntity == null || (contentType = httpEntity.getContentType()) == null) {
            return null;
        }
        try {
            HeaderElement[] elements = contentType.getElements();
            if (elements.length > 0) {
                return create(elements[0], false);
            }
            return null;
        } catch (ParseException e) {
            return null;
        }
    }

    public static ContentType getLenientOrDefault(HttpEntity httpEntity) {
        ContentType contentType = get(httpEntity);
        return contentType != null ? contentType : DEFAULT_TEXT;
    }

    public static ContentType getOrDefault(HttpEntity httpEntity) {
        ContentType contentType = get(httpEntity);
        return contentType != null ? contentType : DEFAULT_TEXT;
    }

    public static ContentType parse(String str) {
        Args.notNull(str, "Content type");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        HeaderElement[] parseElements = BasicHeaderValueParser.INSTANCE.parseElements(charArrayBuffer, new ParserCursor(0, str.length()));
        if (parseElements.length > 0) {
            return create(parseElements[0], true);
        }
        throw new ParseException("Invalid content type: " + str);
    }

    private static boolean valid(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"' || charAt == ',' || charAt == ';') {
                return false;
            }
        }
        return true;
    }

    public final Charset getCharset() {
        return this.charset;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final String getParameter(String str) {
        Args.notEmpty(str, "Parameter name");
        if (this.params == null) {
            return null;
        }
        for (NameValuePair nameValuePair : this.params) {
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair.getValue();
            }
        }
        return null;
    }

    public final String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        charArrayBuffer.append(this.mimeType);
        if (this.params != null) {
            charArrayBuffer.append("; ");
            BasicHeaderValueFormatter.INSTANCE.formatParameters(charArrayBuffer, this.params, false);
        } else if (this.charset != null) {
            charArrayBuffer.append(HTTP.CHARSET_PARAM);
            charArrayBuffer.append(this.charset.name());
        }
        return charArrayBuffer.toString();
    }

    public final ContentType withCharset(String str) {
        return create(getMimeType(), str);
    }

    public final ContentType withCharset(Charset charset2) {
        return create(getMimeType(), charset2);
    }

    public final ContentType withParameters(NameValuePair... nameValuePairArr) {
        if (nameValuePairArr.length == 0) {
            return this;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.params != null) {
            for (NameValuePair nameValuePair : this.params) {
                linkedHashMap.put(nameValuePair.getName(), nameValuePair.getValue());
            }
        }
        for (NameValuePair nameValuePair2 : nameValuePairArr) {
            linkedHashMap.put(nameValuePair2.getName(), nameValuePair2.getValue());
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size() + 1);
        if (this.charset != null && !linkedHashMap.containsKey("charset")) {
            arrayList.add(new BasicNameValuePair("charset", this.charset.name()));
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
        }
        return create(getMimeType(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]), true);
    }
}
