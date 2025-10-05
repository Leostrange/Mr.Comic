package org.apache.http.params;

import java.util.HashSet;
import java.util.Set;
import org.apache.http.util.Args;

@Deprecated
public final class DefaultedHttpParams extends AbstractHttpParams {
    private final HttpParams defaults;
    private final HttpParams local;

    public DefaultedHttpParams(HttpParams httpParams, HttpParams httpParams2) {
        this.local = (HttpParams) Args.notNull(httpParams, "Local HTTP parameters");
        this.defaults = httpParams2;
    }

    private Set<String> getNames(HttpParams httpParams) {
        if (httpParams instanceof HttpParamsNames) {
            return ((HttpParamsNames) httpParams).getNames();
        }
        throw new UnsupportedOperationException("HttpParams instance does not implement HttpParamsNames");
    }

    public final HttpParams copy() {
        return new DefaultedHttpParams(this.local.copy(), this.defaults);
    }

    public final Set<String> getDefaultNames() {
        return new HashSet(getNames(this.defaults));
    }

    public final HttpParams getDefaults() {
        return this.defaults;
    }

    public final Set<String> getLocalNames() {
        return new HashSet(getNames(this.local));
    }

    public final Set<String> getNames() {
        HashSet hashSet = new HashSet(getNames(this.defaults));
        hashSet.addAll(getNames(this.local));
        return hashSet;
    }

    public final Object getParameter(String str) {
        Object parameter = this.local.getParameter(str);
        return (parameter != null || this.defaults == null) ? parameter : this.defaults.getParameter(str);
    }

    public final boolean removeParameter(String str) {
        return this.local.removeParameter(str);
    }

    public final HttpParams setParameter(String str, Object obj) {
        return this.local.setParameter(str, obj);
    }
}
