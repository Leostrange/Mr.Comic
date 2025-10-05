package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.box.androidsdk.content.BoxConstants;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.http.HttpHost;

/* renamed from: ha  reason: default package */
/* compiled from: MAPUtils */
public final class ha {
    private static final String a = ha.class.getName();
    private static SQLiteDatabase b = null;

    private ha() {
        throw new Exception("This class is not instantiable!");
    }

    public static synchronized SQLiteDatabase a(Context context) {
        SQLiteDatabase sQLiteDatabase;
        synchronized (ha.class) {
            if (b == null) {
                b = new gg(context).getWritableDatabase();
            }
            sQLiteDatabase = b;
        }
        return sQLiteDatabase;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                stringBuffer.append(BoxConstants.ROOT_FOLDER_ID);
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static String a(String[] strArr, String str) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        String str2 = "";
        int i = 0;
        while (i < strArr.length) {
            str2 = str2 + strArr[i].trim() + (i == strArr.length + -1 ? "" : str);
            i++;
        }
        return str2;
    }

    public static boolean a(String str) {
        if (str == null) {
            gz.c(a, "URL is null");
            return false;
        }
        try {
            URL url = new URL(str);
            String protocol = url.getProtocol();
            if (TextUtils.isEmpty(protocol) || !protocol.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                return false;
            }
            String host = url.getHost();
            if (TextUtils.isEmpty(host) || !host.contains(".amazon.")) {
                return false;
            }
            String path = url.getPath();
            boolean isEmpty = TextUtils.isEmpty(path);
            boolean startsWith = path.startsWith("/ap/");
            boolean equals = path.equals("/gp/yourstore/home");
            boolean equals2 = path.equals("/ap/forgotpassword");
            gz.a(a, " isEmpty=" + isEmpty + "startsWithAP=" + startsWith + "equalsGP=" + equals + "equalsForgotPassword=" + equals2);
            if (!isEmpty) {
                return (startsWith && !equals2) || equals;
            }
            return false;
        } catch (MalformedURLException e) {
            gz.a(a, "MalformedURLException", " url=" + str);
            return false;
        }
    }

    public static String[] a(String str, String str2) {
        if (str == null || str.trim().length() <= 0) {
            return null;
        }
        return str.trim().split("[" + str2 + "]");
    }
}
