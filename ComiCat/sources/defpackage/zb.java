package defpackage;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* renamed from: zb  reason: default package */
/* compiled from: Handler */
public final class zb extends URLStreamHandler {
    static final URLStreamHandler a = new zb();

    /* access modifiers changed from: protected */
    public final int getDefaultPort() {
        return 445;
    }

    public final URLConnection openConnection(URL url) {
        return new aar(url);
    }

    /* access modifiers changed from: protected */
    public final void parseURL(URL url, String str, int i, int i2) {
        String host = url.getHost();
        if (str.equals("smb://")) {
            str = "smb:////";
            i2 += 2;
        } else if (!str.startsWith("smb://") && host != null && host.length() == 0) {
            str = "//" + str;
            i2 += 2;
        }
        super.parseURL(url, str, i, i2);
        String path = url.getPath();
        String ref = url.getRef();
        if (ref != null) {
            path = path + '#' + ref;
        }
        int port = url.getPort();
        if (port == -1) {
            port = getDefaultPort();
        }
        setURL(url, "smb", url.getHost(), port, url.getAuthority(), url.getUserInfo(), path, url.getQuery(), (String) null);
    }
}
