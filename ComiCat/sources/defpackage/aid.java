package defpackage;

import defpackage.aif;
import defpackage.aii;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;

/* renamed from: aid  reason: default package */
/* compiled from: JsonFactory */
public final class aid {
    static final int a = aii.a.a();
    static final int b = aif.a.a();
    protected static final ThreadLocal<SoftReference<ajr>> c = new ThreadLocal<>();
    protected ajl d;
    protected ajk e;
    protected aim f;
    protected int g;
    protected int h;
    protected ajb i;
    protected ajd j;
    protected ajh k;

    public aid() {
        this((byte) 0);
    }

    private aid(byte b2) {
        this.d = ajl.a();
        long currentTimeMillis = System.currentTimeMillis();
        this.e = new ajk(((((int) currentTimeMillis) >>> 32) + ((int) currentTimeMillis)) | 1);
        this.g = a;
        this.h = b;
        this.f = null;
    }

    private static ajc a(Object obj, boolean z) {
        SoftReference softReference = c.get();
        ajr ajr = softReference == null ? null : (ajr) softReference.get();
        if (ajr == null) {
            ajr = new ajr();
            c.set(new SoftReference(ajr));
        }
        return new ajc(ajr, obj, z);
    }

    private boolean a(aii.a aVar) {
        return (this.g & (1 << aVar.ordinal())) != 0;
    }

    public final aid a(aif.a aVar) {
        this.h &= aVar.i ^ -1;
        return this;
    }

    public final aif a(OutputStream outputStream, aic aic) {
        ajc a2 = a((Object) outputStream, false);
        a2.a(aic);
        if (aic == aic.UTF8) {
            if (this.k != null) {
                outputStream = this.k.a();
            }
            aix aix = new aix(a2, this.h, this.f, outputStream);
            if (this.i == null) {
                return aix;
            }
            aix.a(this.i);
            return aix;
        }
        Writer ajj = aic == aic.UTF8 ? new ajj(a2, outputStream) : new OutputStreamWriter(outputStream, aic.a());
        if (this.k != null) {
            ajj = this.k.b();
        }
        aiz aiz = new aiz(a2, this.h, this.f, ajj);
        if (this.i != null) {
            aiz.a(this.i);
        }
        return aiz;
    }

    public final aii a(InputStream inputStream) {
        ajc a2 = a((Object) inputStream, false);
        if (this.j != null) {
            inputStream = this.j.a();
        }
        return new aip(a2, inputStream).a(this.g, this.f, this.e, this.d);
    }

    public final aii a(String str) {
        Reader stringReader = new StringReader(str);
        ajc a2 = a((Object) stringReader, true);
        if (this.j != null) {
            stringReader = this.j.b();
        }
        return new aiw(a2, this.g, stringReader, this.f, this.d.a(a(aii.a.CANONICALIZE_FIELD_NAMES), a(aii.a.INTERN_FIELD_NAMES)));
    }
}
