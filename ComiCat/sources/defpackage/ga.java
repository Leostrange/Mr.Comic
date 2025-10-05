package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.util.Date;

/* renamed from: ga  reason: default package */
/* compiled from: AuthorizationToken */
public abstract class ga extends fy {
    public static final String[] b = {"Id", "AppId", "Token", "CreationTime", "ExpirationTime", "MiscData", "type", "directedId"};
    private static final String j = ga.class.getName();
    protected String c;
    protected String d;
    protected Date e;
    protected Date f;
    protected byte[] g;
    protected a h;
    public String i;

    /* renamed from: ga$a */
    /* compiled from: AuthorizationToken */
    public enum a {
        ACCESS("com.amazon.identity.token.accessToken"),
        REFRESH("com.amazon.identity.token.refreshToken");
        
        private final String c;

        private a(String str) {
            this.c = str;
        }

        public final String toString() {
            return this.c;
        }
    }

    /* renamed from: ga$b */
    /* compiled from: AuthorizationToken */
    public enum b {
        ID(0),
        APP_ID(1),
        TOKEN(2),
        CREATION_TIME(3),
        EXPIRATION_TIME(4),
        MISC_DATA(5),
        TYPE(6),
        DIRECTED_ID(7);
        
        public final int i;

        private b(int i2) {
            this.i = i2;
        }
    }

    public ga() {
    }

    public ga(String str, String str2, Date date, Date date2, a aVar) {
        this.c = str;
        this.d = str2;
        this.e = gg.a(date);
        this.f = gg.a(date2);
        this.g = null;
        this.h = aVar;
        this.i = null;
    }

    public static gf d(Context context) {
        return gf.a(context);
    }

    public final ContentValues a() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(b[b.APP_ID.i], this.c);
        contentValues.put(b[b.TOKEN.i], this.d);
        contentValues.put(b[b.CREATION_TIME.i], gg.a.format(this.e));
        contentValues.put(b[b.EXPIRATION_TIME.i], gg.a.format(this.f));
        contentValues.put(b[b.MISC_DATA.i], this.g);
        contentValues.put(b[b.TYPE.i], Integer.valueOf(this.h.ordinal()));
        contentValues.put(b[b.DIRECTED_ID.i], this.i);
        return contentValues;
    }

    public final void a(String str) {
        this.c = str;
    }

    public final void a(Date date) {
        this.e = gg.a(date);
    }

    public final void a(byte[] bArr) {
        this.g = bArr;
    }

    public final void b(String str) {
        this.d = str;
    }

    public final void b(Date date) {
        this.f = gg.a(date);
    }

    public final /* synthetic */ gc c(Context context) {
        return gf.a(context);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ga)) {
            return false;
        }
        try {
            ga gaVar = (ga) obj;
            return TextUtils.equals(this.c, gaVar.c) && TextUtils.equals(this.d, gaVar.d) && a(this.e, gaVar.e) && a(this.f, gaVar.f) && TextUtils.equals(this.h.toString(), gaVar.h.toString()) && TextUtils.equals(this.i, gaVar.i);
        } catch (NullPointerException e2) {
            gz.b(j, e2.toString());
            return false;
        }
    }

    public String toString() {
        return this.d;
    }
}
