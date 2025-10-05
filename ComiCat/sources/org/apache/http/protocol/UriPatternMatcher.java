package org.apache.http.protocol;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE)
public class UriPatternMatcher<T> {
    private final Map<String, T> map = new HashMap();

    @Deprecated
    public synchronized Map<String, T> getObjects() {
        return this.map;
    }

    public synchronized T lookup(String str) {
        T t;
        T t2;
        Args.notNull(str, "Request path");
        t = this.map.get(str);
        if (t == null) {
            String str2 = null;
            for (String next : this.map.keySet()) {
                if (!matchUriRequestPattern(next, str) || (str2 != null && str2.length() >= next.length() && (str2.length() != next.length() || !next.endsWith("*")))) {
                    next = str2;
                    t2 = t;
                } else {
                    t2 = this.map.get(next);
                }
                t = t2;
                str2 = next;
            }
        }
        return t;
    }

    /* access modifiers changed from: protected */
    public boolean matchUriRequestPattern(String str, String str2) {
        if (str.equals("*")) {
            return true;
        }
        if (!str.endsWith("*") || !str2.startsWith(str.substring(0, str.length() - 1))) {
            return str.startsWith("*") && str2.endsWith(str.substring(1, str.length()));
        }
        return true;
    }

    public synchronized void register(String str, T t) {
        Args.notNull(str, "URI request pattern");
        this.map.put(str, t);
    }

    @Deprecated
    public synchronized void setHandlers(Map<String, T> map2) {
        Args.notNull(map2, "Map of handlers");
        this.map.clear();
        this.map.putAll(map2);
    }

    @Deprecated
    public synchronized void setObjects(Map<String, T> map2) {
        Args.notNull(map2, "Map of handlers");
        this.map.clear();
        this.map.putAll(map2);
    }

    public String toString() {
        return this.map.toString();
    }

    public synchronized void unregister(String str) {
        if (str != null) {
            this.map.remove(str);
        }
    }
}
