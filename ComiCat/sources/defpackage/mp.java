package defpackage;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* renamed from: mp  reason: default package */
/* compiled from: DefaultConnectionFactory */
public final class mp implements mo {
    private final Proxy a;

    public mp() {
        this((byte) 0);
    }

    private mp(byte b) {
        this.a = null;
    }

    public final HttpURLConnection a(URL url) {
        return (HttpURLConnection) (this.a == null ? url.openConnection() : url.openConnection(this.a));
    }
}
