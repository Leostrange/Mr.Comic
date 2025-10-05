package defpackage;

import com.box.androidsdk.content.BoxConstants;
import defpackage.hy;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HTTP;

/* renamed from: hm  reason: default package */
/* compiled from: DbxRequestUtil */
public final class hm {
    private static final Random a = new Random();

    public static hj a(hy.b bVar) {
        String a2 = a(bVar, "X-Dropbox-Request-Id");
        String a3 = a(a2, bVar.a, c(bVar));
        switch (bVar.a) {
            case HttpStatus.SC_BAD_REQUEST /*400*/:
                return new he(a2, a3);
            case HttpStatus.SC_UNAUTHORIZED /*401*/:
                return new hp(a2, a3);
            case BoxConstants.HTTP_STATUS_TOO_MANY_REQUESTS:
                try {
                    List list = bVar.c.get(HttpHeaders.RETRY_AFTER);
                    if (list != null && !list.isEmpty()) {
                        return new ht(a2, a3, (long) Integer.parseInt((String) list.get(0)), TimeUnit.SECONDS);
                    }
                    throw new hg(a(bVar, "X-Dropbox-Request-Id"), "missing HTTP header \"" + HttpHeaders.RETRY_AFTER + "\"");
                } catch (NumberFormatException e) {
                    return new hg(a2, "Invalid value for HTTP header: \"Retry-After\"");
                }
            case HttpStatus.SC_INTERNAL_SERVER_ERROR /*500*/:
                return new hv(a2, a3);
            case HttpStatus.SC_SERVICE_UNAVAILABLE /*503*/:
                String a4 = a(bVar, HttpHeaders.RETRY_AFTER);
                if (a4 != null) {
                    try {
                        if (!a4.trim().isEmpty()) {
                            return new hu(a2, a3, (long) Integer.parseInt(a4), TimeUnit.SECONDS);
                        }
                    } catch (NumberFormatException e2) {
                        return new hg(a2, "Invalid value for HTTP header: \"Retry-After\"");
                    }
                }
                return new hu(a2, a3);
            default:
                return new hf(a2, "unexpected HTTP status code: " + bVar.a + ": " + a3, bVar.a);
        }
    }

    public static hy.b a(hl hlVar, String str, String str2, String str3, byte[] bArr, List<hy.a> list) {
        OutputStream a2;
        String a3 = a(str2, str3);
        ArrayList arrayList = list == null ? new ArrayList() : new ArrayList(list);
        arrayList.add(new hy.a("User-Agent", hlVar.a + " " + str + "/" + hn.a));
        arrayList.add(new hy.a("Content-Length", Integer.toString(bArr.length)));
        try {
            hy.c a4 = hlVar.c.a(a3, arrayList);
            try {
                a2 = a4.a();
                a2.write(bArr);
                a2.close();
                hy.b c = a4.c();
                a4.b();
                return c;
            } catch (Throwable th) {
                a4.b();
                throw th;
            }
        } catch (IOException e) {
            throw new hr(e);
        }
    }

    private static String a(hy.b bVar, String str) {
        List list = bVar.c.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    private static String a(String str) {
        try {
            return URLEncoder.encode(str, HTTP.UTF_8);
        } catch (UnsupportedEncodingException e) {
            throw ik.a("UTF-8 should always be supported", e);
        }
    }

    private static String a(String str, int i, byte[] bArr) {
        try {
            return il.a(bArr);
        } catch (CharacterCodingException e) {
            throw new hg(str, "Got non-UTF8 response body: " + i + ": " + e.getMessage());
        }
    }

    private static String a(String str, String str2) {
        try {
            return new URI("https", str, "/" + str2, (String) null).toASCIIString();
        } catch (URISyntaxException e) {
            throw ik.a("URI creation failed, host=" + il.a(str) + ", path=" + il.a(str2), e);
        }
    }

    public static String a(String str, String str2, String str3, String[] strArr) {
        return a(str2, str3) + "?" + a(str, strArr);
    }

    private static String a(String str, String[] strArr) {
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (str != null) {
            sb.append("locale=").append(str);
            str2 = "&";
        }
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("'params.length' is " + strArr.length + "; expecting a multiple of two");
            }
            for (int i = 0; i < strArr.length; i += 2) {
                String str3 = strArr[i];
                String str4 = strArr[i + 1];
                if (str3 == null) {
                    throw new IllegalArgumentException("params[" + i + "] is null");
                }
                if (str4 != null) {
                    sb.append(str2);
                    str2 = "&";
                    sb.append(a(str3));
                    sb.append("=");
                    sb.append(a(str4));
                }
            }
        }
        return sb.toString();
    }

    public static List<hy.a> a(List<hy.a> list, hl hlVar) {
        if (hlVar.b != null) {
            list.add(new hy.a("Dropbox-API-User-Locale", hlVar.b));
        }
        return list;
    }

    public static List<hy.a> a(List<hy.a> list, String str) {
        if (str == null) {
            throw new NullPointerException("accessToken");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        list.add(new hy.a(HttpHeaders.AUTHORIZATION, "Bearer " + str));
        return list;
    }

    public static String b(hy.b bVar) {
        return a(bVar, "X-Dropbox-Request-Id");
    }

    private static byte[] c(hy.b bVar) {
        if (bVar.b == null) {
            return new byte[0];
        }
        try {
            return ij.b(bVar.b);
        } catch (IOException e) {
            throw new hr(e);
        }
    }
}
