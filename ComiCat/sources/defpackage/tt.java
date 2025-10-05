package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: tt  reason: default package */
/* compiled from: UriBuilder */
class tt {
    static final /* synthetic */ boolean b = (!tt.class.desiredAssertionStatus());
    StringBuilder a;
    private String c;
    private String d;
    private final LinkedList<a> e = new LinkedList<>();

    /* renamed from: tt$a */
    /* compiled from: UriBuilder */
    public static class a {
        static final /* synthetic */ boolean b = (!tt.class.desiredAssertionStatus());
        final String a;
        private final String c;

        public a(String str) {
            if (b || str != null) {
                this.a = str;
                this.c = null;
                return;
            }
            throw new AssertionError();
        }

        public a(String str, String str2) {
            if (!b && str == null) {
                throw new AssertionError();
            } else if (b || str2 != null) {
                this.a = str;
                this.c = str2;
            } else {
                throw new AssertionError();
            }
        }

        public final String toString() {
            return this.c != null ? this.a + "=" + this.c : this.a;
        }
    }

    public static tt a(Uri uri) {
        tt ttVar = new tt();
        String scheme = uri.getScheme();
        if (b || scheme != null) {
            ttVar.c = scheme;
            String host = uri.getHost();
            if (b || host != null) {
                ttVar.d = host;
                String path = uri.getPath();
                if (b || path != null) {
                    ttVar.a = new StringBuilder(path);
                    return ttVar.a(uri.getQuery());
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public final tt a(String str) {
        this.e.clear();
        if (str != null) {
            for (String str2 : TextUtils.split(str, "&")) {
                String[] split = TextUtils.split(str2, "=");
                if (split.length == 2) {
                    this.e.add(new a(split[0], split[1]));
                } else if (split.length == 1) {
                    this.e.add(new a(split[0]));
                } else {
                    Log.w("com.microsoft.live.UriBuilder", "Invalid query parameter: " + str2);
                }
            }
        }
        return this;
    }

    public final tt a(String str, String str2) {
        if (b || str2 != null) {
            this.e.add(new a(str, str2));
            return this;
        }
        throw new AssertionError();
    }

    public final tt b(String str) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            if (((a) it.next()).a.equals(str)) {
                it.remove();
            }
        }
        return this;
    }

    public String toString() {
        return new Uri.Builder().scheme(this.c).authority(this.d).path(this.a == null ? "" : this.a.toString()).encodedQuery(TextUtils.join("&", this.e)).build().toString();
    }
}
