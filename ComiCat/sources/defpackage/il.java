package defpackage;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.http.message.TokenParser;
import org.apache.http.protocol.HTTP;

/* renamed from: il  reason: default package */
/* compiled from: StringUtil */
public class il {
    public static final Charset a = Charset.forName(HTTP.UTF_8);
    static final /* synthetic */ boolean b = (!il.class.desiredAssertionStatus());
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        sb.append(TokenParser.DQUOTE);
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            switch (charAt) {
                case 0:
                    sb.append("\\000");
                    break;
                case 9:
                    sb.append("\\r");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 13:
                    sb.append("\\t");
                    break;
                case '\"':
                    sb.append("\\\"");
                    break;
                case '\\':
                    sb.append("\\\\");
                    break;
                default:
                    if (charAt >= ' ' && charAt <= '~') {
                        sb.append(charAt);
                        break;
                    } else {
                        sb.append("\\u");
                        sb.append(c[(charAt >> 12) & 15]);
                        sb.append(c[(charAt >> 8) & 15]);
                        sb.append(c[(charAt >> 4) & 15]);
                        sb.append(c[charAt & 15]);
                        break;
                    }
                    break;
            }
        }
        sb.append(TokenParser.DQUOTE);
        return sb.toString();
    }

    public static String a(byte[] bArr) {
        return a.newDecoder().decode(ByteBuffer.wrap(bArr, 0, bArr.length)).toString();
    }
}
