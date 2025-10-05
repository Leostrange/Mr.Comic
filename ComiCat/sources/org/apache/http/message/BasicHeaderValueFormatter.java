package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
public class BasicHeaderValueFormatter implements HeaderValueFormatter {
    @Deprecated
    public static final BasicHeaderValueFormatter DEFAULT = new BasicHeaderValueFormatter();
    public static final BasicHeaderValueFormatter INSTANCE = new BasicHeaderValueFormatter();
    public static final String SEPARATORS = " ;,:@()<>\\\"/[]?={}\t";
    public static final String UNSAFE_CHARS = "\"\\";

    public static String formatElements(HeaderElement[] headerElementArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatElements((CharArrayBuffer) null, headerElementArr, z).toString();
    }

    public static String formatHeaderElement(HeaderElement headerElement, boolean z, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatHeaderElement((CharArrayBuffer) null, headerElement, z).toString();
    }

    public static String formatNameValuePair(NameValuePair nameValuePair, boolean z, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatNameValuePair((CharArrayBuffer) null, nameValuePair, z).toString();
    }

    public static String formatParameters(NameValuePair[] nameValuePairArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatParameters((CharArrayBuffer) null, nameValuePairArr, z).toString();
    }

    /* access modifiers changed from: protected */
    public void doFormatValue(CharArrayBuffer charArrayBuffer, String str, boolean z) {
        if (!z) {
            for (int i = 0; i < str.length() && !z; i++) {
                z = isSeparator(str.charAt(i));
            }
        }
        if (z) {
            charArrayBuffer.append((char) TokenParser.DQUOTE);
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (isUnsafe(charAt)) {
                charArrayBuffer.append((char) TokenParser.ESCAPE);
            }
            charArrayBuffer.append(charAt);
        }
        if (z) {
            charArrayBuffer.append((char) TokenParser.DQUOTE);
        }
    }

    /* access modifiers changed from: protected */
    public int estimateElementsLen(HeaderElement[] headerElementArr) {
        int i = 0;
        if (headerElementArr != null && headerElementArr.length > 0) {
            int length = headerElementArr.length;
            i = (headerElementArr.length - 1) * 2;
            int i2 = 0;
            while (i2 < length) {
                int estimateHeaderElementLen = estimateHeaderElementLen(headerElementArr[i2]) + i;
                i2++;
                i = estimateHeaderElementLen;
            }
        }
        return i;
    }

    /* access modifiers changed from: protected */
    public int estimateHeaderElementLen(HeaderElement headerElement) {
        if (headerElement == null) {
            return 0;
        }
        int length = headerElement.getName().length();
        String value = headerElement.getValue();
        if (value != null) {
            length += value.length() + 3;
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount <= 0) {
            return length;
        }
        for (int i = 0; i < parameterCount; i++) {
            length += estimateNameValuePairLen(headerElement.getParameter(i)) + 2;
        }
        return length;
    }

    /* access modifiers changed from: protected */
    public int estimateNameValuePairLen(NameValuePair nameValuePair) {
        if (nameValuePair == null) {
            return 0;
        }
        int length = nameValuePair.getName().length();
        String value = nameValuePair.getValue();
        return value != null ? length + value.length() + 3 : length;
    }

    /* access modifiers changed from: protected */
    public int estimateParametersLen(NameValuePair[] nameValuePairArr) {
        int i = 0;
        if (nameValuePairArr != null && nameValuePairArr.length > 0) {
            int length = nameValuePairArr.length;
            i = (nameValuePairArr.length - 1) * 2;
            int i2 = 0;
            while (i2 < length) {
                int estimateNameValuePairLen = estimateNameValuePairLen(nameValuePairArr[i2]) + i;
                i2++;
                i = estimateNameValuePairLen;
            }
        }
        return i;
    }

    public CharArrayBuffer formatElements(CharArrayBuffer charArrayBuffer, HeaderElement[] headerElementArr, boolean z) {
        Args.notNull(headerElementArr, "Header element array");
        int estimateElementsLen = estimateElementsLen(headerElementArr);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateElementsLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateElementsLen);
        }
        for (int i = 0; i < headerElementArr.length; i++) {
            if (i > 0) {
                charArrayBuffer.append(", ");
            }
            formatHeaderElement(charArrayBuffer, headerElementArr[i], z);
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatHeaderElement(CharArrayBuffer charArrayBuffer, HeaderElement headerElement, boolean z) {
        Args.notNull(headerElement, "Header element");
        int estimateHeaderElementLen = estimateHeaderElementLen(headerElement);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateHeaderElementLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateHeaderElementLen);
        }
        charArrayBuffer.append(headerElement.getName());
        String value = headerElement.getValue();
        if (value != null) {
            charArrayBuffer.append('=');
            doFormatValue(charArrayBuffer, value, z);
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount > 0) {
            for (int i = 0; i < parameterCount; i++) {
                charArrayBuffer.append("; ");
                formatNameValuePair(charArrayBuffer, headerElement.getParameter(i), z);
            }
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatNameValuePair(CharArrayBuffer charArrayBuffer, NameValuePair nameValuePair, boolean z) {
        Args.notNull(nameValuePair, "Name / value pair");
        int estimateNameValuePairLen = estimateNameValuePairLen(nameValuePair);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateNameValuePairLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateNameValuePairLen);
        }
        charArrayBuffer.append(nameValuePair.getName());
        String value = nameValuePair.getValue();
        if (value != null) {
            charArrayBuffer.append('=');
            doFormatValue(charArrayBuffer, value, z);
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatParameters(CharArrayBuffer charArrayBuffer, NameValuePair[] nameValuePairArr, boolean z) {
        Args.notNull(nameValuePairArr, "Header parameter array");
        int estimateParametersLen = estimateParametersLen(nameValuePairArr);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateParametersLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateParametersLen);
        }
        for (int i = 0; i < nameValuePairArr.length; i++) {
            if (i > 0) {
                charArrayBuffer.append("; ");
            }
            formatNameValuePair(charArrayBuffer, nameValuePairArr[i], z);
        }
        return charArrayBuffer;
    }

    /* access modifiers changed from: protected */
    public boolean isSeparator(char c) {
        return SEPARATORS.indexOf(c) >= 0;
    }

    /* access modifiers changed from: protected */
    public boolean isUnsafe(char c) {
        return UNSAFE_CHARS.indexOf(c) >= 0;
    }
}
