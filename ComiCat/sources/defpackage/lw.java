package defpackage;

import defpackage.nw;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.HttpHeaders;

/* renamed from: lw  reason: default package */
/* compiled from: HttpHeaders */
public final class lw extends nw {
    @nz(a = "Accept")
    private List<String> accept;
    @nz(a = "Accept-Encoding")
    List<String> acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    @nz(a = "Age")
    private List<Long> age;
    @nz(a = "WWW-Authenticate")
    public List<String> authenticate;
    @nz(a = "Authorization")
    public List<String> authorization;
    @nz(a = "Cache-Control")
    private List<String> cacheControl;
    @nz(a = "Content-Encoding")
    private List<String> contentEncoding;
    @nz(a = "Content-Length")
    private List<Long> contentLength;
    @nz(a = "Content-MD5")
    private List<String> contentMD5;
    @nz(a = "Content-Range")
    private List<String> contentRange;
    @nz(a = "Content-Type")
    List<String> contentType;
    @nz(a = "Cookie")
    private List<String> cookie;
    @nz(a = "Date")
    private List<String> date;
    @nz(a = "ETag")
    private List<String> etag;
    @nz(a = "Expires")
    private List<String> expires;
    @nz(a = "If-Match")
    List<String> ifMatch;
    @nz(a = "If-Modified-Since")
    List<String> ifModifiedSince;
    @nz(a = "If-None-Match")
    List<String> ifNoneMatch;
    @nz(a = "If-Range")
    List<String> ifRange;
    @nz(a = "If-Unmodified-Since")
    List<String> ifUnmodifiedSince;
    @nz(a = "Last-Modified")
    private List<String> lastModified;
    @nz(a = "Location")
    private List<String> location;
    @nz(a = "MIME-Version")
    private List<String> mimeVersion;
    @nz(a = "Range")
    public List<String> range;
    @nz(a = "Retry-After")
    private List<String> retryAfter;
    @nz(a = "User-Agent")
    List<String> userAgent;

    /* renamed from: lw$a */
    /* compiled from: HttpHeaders */
    static class a extends mi {
        private final lw e;
        private final b f;

        a(lw lwVar, b bVar) {
            this.e = lwVar;
            this.f = bVar;
        }

        public final mj a() {
            throw new UnsupportedOperationException();
        }

        public final void a(String str, String str2) {
            this.e.a(str, str2, this.f);
        }
    }

    /* renamed from: lw$b */
    /* compiled from: HttpHeaders */
    static final class b {
        final nm a;
        final StringBuilder b;
        final nq c;
        final List<Type> d;

        public b(lw lwVar, StringBuilder sb) {
            Class<?> cls = lwVar.getClass();
            this.d = Arrays.asList(new Type[]{cls});
            this.c = nq.a(cls, true);
            this.b = sb;
            this.a = new nm(lwVar);
        }
    }

    public lw() {
        super(EnumSet.of(nw.c.a));
    }

    private static Object a(Type type, List<Type> list, String str) {
        return ns.a(ns.a(list, type), str);
    }

    public static <T> T a(List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }

    static <T> List<T> a(T t) {
        if (t == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(t);
        return arrayList;
    }

    private static void a(Logger logger, StringBuilder sb, StringBuilder sb2, mi miVar, String str, Object obj, Writer writer) {
        if (obj != null && !ns.a(obj)) {
            String obj2 = obj instanceof Enum ? nv.a((Enum<?>) (Enum) obj).c : obj.toString();
            String str2 = ((HttpHeaders.AUTHORIZATION.equalsIgnoreCase(str) || "Cookie".equalsIgnoreCase(str)) && (logger == null || !logger.isLoggable(Level.ALL))) ? "<Not Logged>" : obj2;
            if (sb != null) {
                sb.append(str).append(": ");
                sb.append(str2);
                sb.append(ok.a);
            }
            if (sb2 != null) {
                sb2.append(" -H '").append(str).append(": ").append(str2).append("'");
            }
            if (miVar != null) {
                miVar.a(str, obj2);
            }
            if (writer != null) {
                writer.write(str);
                writer.write(": ");
                writer.write(obj2);
                writer.write("\r\n");
            }
        }
    }

    public static void a(lw lwVar, Writer writer) {
        a(lwVar, (StringBuilder) null, (StringBuilder) null, (Logger) null, (mi) null, writer);
    }

    static void a(lw lwVar, StringBuilder sb, StringBuilder sb2, Logger logger, mi miVar) {
        a(lwVar, sb, sb2, logger, miVar, (Writer) null);
    }

    private static void a(lw lwVar, StringBuilder sb, StringBuilder sb2, Logger logger, mi miVar, Writer writer) {
        HashSet hashSet = new HashSet();
        for (Map.Entry next : lwVar.entrySet()) {
            String str = (String) next.getKey();
            oh.a(hashSet.add(str), "multiple headers of the same name (headers are case insensitive): %s", str);
            Object value = next.getValue();
            if (value != null) {
                nv a2 = lwVar.f.a(str);
                String str2 = a2 != null ? a2.c : str;
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object a3 : on.a(value)) {
                        a(logger, sb, sb2, miVar, str2, a3, writer);
                    }
                } else {
                    a(logger, sb, sb2, miVar, str2, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    public final String a() {
        return (String) a(this.location);
    }

    public final lw a(Long l) {
        this.contentLength = a(l);
        return this;
    }

    public final lw a(String str) {
        this.authorization = a(str);
        return this;
    }

    /* renamed from: a */
    public final lw d(String str, Object obj) {
        return (lw) super.d(str, obj);
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2, b bVar) {
        List<Type> list = bVar.d;
        nq nqVar = bVar.c;
        nm nmVar = bVar.a;
        StringBuilder sb = bVar.b;
        if (sb != null) {
            sb.append(str + ": " + str2).append(ok.a);
        }
        nv a2 = nqVar.a(str);
        if (a2 != null) {
            Type a3 = ns.a(list, a2.b.getGenericType());
            if (on.a(a3)) {
                Class<?> a4 = on.a(list, on.b(a3));
                nmVar.a(a2.b, a4, a((Type) a4, list, str2));
            } else if (on.a(on.a(list, a3), (Class<?>) Iterable.class)) {
                Collection<Object> collection = (Collection) a2.a((Object) this);
                if (collection == null) {
                    collection = ns.b(a3);
                    a2.a((Object) this, (Object) collection);
                }
                collection.add(a(a3 == Object.class ? null : on.c(a3), list, str2));
            } else {
                a2.a((Object) this, a(a3, list, str2));
            }
        } else {
            ArrayList arrayList = (ArrayList) get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                d(str, (Object) arrayList);
            }
            arrayList.add(str2);
        }
    }

    public final void a(lw lwVar) {
        try {
            b bVar = new b(this, (StringBuilder) null);
            a(lwVar, (StringBuilder) null, (StringBuilder) null, (Logger) null, new a(this, bVar));
            bVar.a.a();
        } catch (IOException e) {
            throw om.a(e);
        }
    }

    public final void a(mj mjVar, StringBuilder sb) {
        clear();
        b bVar = new b(this, sb);
        int g = mjVar.g();
        for (int i = 0; i < g; i++) {
            a(mjVar.a(i), mjVar.b(i), bVar);
        }
        bVar.a.a();
    }

    public final lw b(String str) {
        this.contentEncoding = a(str);
        return this;
    }

    public final lw c(String str) {
        this.contentRange = a(str);
        return this;
    }

    public final /* synthetic */ Object clone() {
        return (lw) super.clone();
    }

    public final lw d(String str) {
        this.contentType = a(str);
        return this;
    }

    public final /* bridge */ /* synthetic */ nw d() {
        return (lw) super.clone();
    }

    public final lw e(String str) {
        this.userAgent = a(str);
        return this;
    }
}
