package defpackage;

import android.text.TextUtils;
import java.beans.PropertyChangeSupport;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

/* renamed from: ta  reason: default package */
/* compiled from: LiveConnectSession */
public class ta {
    protected String a;
    protected String b;
    protected final PropertyChangeSupport c = new PropertyChangeSupport(this);
    protected Date d;
    protected String e;
    protected Set<String> f;
    protected String g;
    protected String h;
    protected boolean i;
    private final sw j;

    public ta(sw swVar) {
        this.j = swVar;
    }

    public final String a() {
        return this.a;
    }

    /* access modifiers changed from: package-private */
    public final void a(to toVar) {
        boolean z = true;
        this.a = toVar.a;
        this.g = toVar.f.toString().toLowerCase();
        if (toVar.b != null && !TextUtils.isEmpty(toVar.b)) {
            this.b = toVar.b;
        }
        if (toVar.c != -1) {
            Calendar instance = Calendar.getInstance();
            instance.add(13, toVar.c);
            Date time = instance.getTime();
            Date date = this.d;
            this.d = new Date(time.getTime());
            this.c.firePropertyChange("expiresIn", date, this.d);
        }
        if (toVar.d != null && !TextUtils.isEmpty(toVar.d)) {
            this.e = toVar.d;
        }
        if (toVar.e == null || TextUtils.isEmpty(toVar.e)) {
            z = false;
        }
        if (z) {
            b(Arrays.asList(toVar.e.split(" ")));
        }
        this.c.firePropertyChange(BoxRequestEvent.STREAM_TYPE_ALL, "", "");
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i2) {
        Calendar instance = Calendar.getInstance();
        instance.add(13, i2);
        return instance.getTime().after(this.d);
    }

    public final boolean a(Iterable<String> iterable) {
        if (iterable == null) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        for (String contains : iterable) {
            if (!this.f.contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public final String b() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public final void b(Iterable<String> iterable) {
        Set<String> set = this.f;
        this.f = new HashSet();
        if (iterable != null) {
            for (String add : iterable) {
                this.f.add(add);
            }
        }
        this.f = Collections.unmodifiableSet(this.f);
        this.c.firePropertyChange("scopes", set, this.f);
    }

    public final Date c() {
        return new Date(this.d.getTime());
    }

    public final String d() {
        return this.e;
    }

    public final String e() {
        return this.g;
    }

    public final boolean f() {
        if (this.d == null) {
            return true;
        }
        return new Date().after(this.d);
    }

    /* access modifiers changed from: package-private */
    public final boolean g() {
        String join = TextUtils.join(" ", this.f);
        if (TextUtils.isEmpty(this.e)) {
            return false;
        }
        try {
            new tp(new DefaultHttpClient(), this.h, this.e, join).a().a(new tn() {
                public final void a(tk tkVar) {
                    ta.this.i = false;
                }

                public final void a(to toVar) {
                    ta.this.a(toVar);
                    ta.this.i = true;
                }
            });
            return this.i;
        } catch (sx e2) {
            return false;
        }
    }

    public String toString() {
        return String.format("LiveConnectSession [accessToken=%s, authenticationToken=%s, expiresIn=%s, refreshToken=%s, scopes=%s, tokenType=%s]", new Object[]{this.a, this.b, this.d, this.e, this.f, this.g});
    }
}
