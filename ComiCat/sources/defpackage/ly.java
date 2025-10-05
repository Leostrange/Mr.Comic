package defpackage;

import java.nio.charset.Charset;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: ly  reason: default package */
/* compiled from: HttpMediaType */
public final class ly {
    private static final Pattern a = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
    private static final Pattern b = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
    private static final Pattern c = Pattern.compile("\\s*(" + "[^\\s/=;\"]+" + ")/(" + "[^\\s/=;\"]+" + ")\\s*(" + ";.*" + ")?", 32);
    private static final Pattern d = Pattern.compile("\\s*;\\s*(" + "[^\\s/=;\"]+" + ")=(" + ("\"([^\"]*)\"" + "|" + "[^\\s;\"]*") + ")");
    private String e = "application";
    private String f = "octet-stream";
    private final SortedMap<String, String> g = new TreeMap();
    private String h;

    public ly(String str) {
        c(str);
    }

    private boolean a(ly lyVar) {
        return lyVar != null && this.e.equalsIgnoreCase(lyVar.e) && this.f.equalsIgnoreCase(lyVar.f);
    }

    static boolean b(String str) {
        return b.matcher(str).matches();
    }

    public static boolean b(String str, String str2) {
        return str2 != null && new ly(str).a(new ly(str2));
    }

    private ly c(String str) {
        Matcher matcher = c.matcher(str);
        oh.a(matcher.matches(), (Object) "Type must be in the 'maintype/subtype; parameter=value' format");
        String group = matcher.group(1);
        oh.a(a.matcher(group).matches(), (Object) "Type contains reserved characters");
        this.e = group;
        this.h = null;
        String group2 = matcher.group(2);
        oh.a(a.matcher(group2).matches(), (Object) "Subtype contains reserved characters");
        this.f = group2;
        this.h = null;
        String group3 = matcher.group(3);
        if (group3 != null) {
            Matcher matcher2 = d.matcher(group3);
            while (matcher2.find()) {
                String group4 = matcher2.group(1);
                String group5 = matcher2.group(3);
                if (group5 == null) {
                    group5 = matcher2.group(2);
                }
                a(group4, group5);
            }
        }
        return this;
    }

    public final String a() {
        if (this.h != null) {
            return this.h;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.e);
        sb.append('/');
        sb.append(this.f);
        if (this.g != null) {
            for (Map.Entry next : this.g.entrySet()) {
                String str = (String) next.getValue();
                sb.append("; ");
                sb.append((String) next.getKey());
                sb.append("=");
                if (!b(str)) {
                    str = "\"" + str.replace("\\", "\\\\").replace("\"", "\\\"") + "\"";
                }
                sb.append(str);
            }
        }
        this.h = sb.toString();
        return this.h;
    }

    public final String a(String str) {
        return (String) this.g.get(str.toLowerCase());
    }

    public final ly a(String str, String str2) {
        if (str2 == null) {
            this.h = null;
            this.g.remove(str.toLowerCase());
        } else {
            oh.a(b.matcher(str).matches(), (Object) "Name contains reserved characters");
            this.h = null;
            this.g.put(str.toLowerCase(), str2);
        }
        return this;
    }

    public final Charset b() {
        String a2 = a("charset");
        if (a2 == null) {
            return null;
        }
        return Charset.forName(a2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ly)) {
            return false;
        }
        ly lyVar = (ly) obj;
        return a(lyVar) && this.g.equals(lyVar.g);
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a();
    }
}
