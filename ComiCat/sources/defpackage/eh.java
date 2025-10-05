package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.protocol.HTTP;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* renamed from: eh  reason: default package */
/* compiled from: ActivityChooserModel */
public class eh extends DataSetObservable {
    /* access modifiers changed from: private */
    public static final String c = eh.class.getSimpleName();
    private static final Object d = new Object();
    private static final Map<String, eh> e = new HashMap();
    public final Object a;
    public final List<a> b;
    private final List<c> f;
    /* access modifiers changed from: private */
    public final Context g;
    /* access modifiers changed from: private */
    public final String h;
    private Intent i;
    private b j;
    private int k;
    /* access modifiers changed from: private */
    public boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private d p;

    /* renamed from: eh$a */
    /* compiled from: ActivityChooserModel */
    public final class a implements Comparable<a> {
        public final ResolveInfo a;
        public float b;

        public a(ResolveInfo resolveInfo) {
            this.a = resolveInfo;
        }

        public final /* synthetic */ int compareTo(Object obj) {
            return Float.floatToIntBits(((a) obj).b) - Float.floatToIntBits(this.b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            return Float.floatToIntBits(this.b) == Float.floatToIntBits(((a) obj).b);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.b) + 31;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("resolveInfo:").append(this.a.toString());
            sb.append("; weight:").append(new BigDecimal((double) this.b));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: eh$b */
    /* compiled from: ActivityChooserModel */
    public interface b {
    }

    /* renamed from: eh$c */
    /* compiled from: ActivityChooserModel */
    public static final class c {
        public final ComponentName a;
        public final long b;
        public final float c;

        public c(ComponentName componentName, long j, float f) {
            this.a = componentName;
            this.b = j;
            this.c = f;
        }

        public c(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.a == null) {
                if (cVar.a != null) {
                    return false;
                }
            } else if (!this.a.equals(cVar.a)) {
                return false;
            }
            if (this.b != cVar.b) {
                return false;
            }
            return Float.floatToIntBits(this.c) == Float.floatToIntBits(cVar.c);
        }

        public final int hashCode() {
            return (((((this.a == null ? 0 : this.a.hashCode()) + 31) * 31) + ((int) (this.b ^ (this.b >>> 32)))) * 31) + Float.floatToIntBits(this.c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            sb.append("; activity:").append(this.a);
            sb.append("; time:").append(this.b);
            sb.append("; weight:").append(new BigDecimal((double) this.c));
            sb.append("]");
            return sb.toString();
        }
    }

    /* renamed from: eh$d */
    /* compiled from: ActivityChooserModel */
    public interface d {
        boolean a();
    }

    /* renamed from: eh$e */
    /* compiled from: ActivityChooserModel */
    final class e extends AsyncTask<Object, Void, Void> {
        private e() {
        }

        /* synthetic */ e(eh ehVar, byte b) {
            this();
        }

        /* access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(Object... objArr) {
            List list = objArr[0];
            String str = objArr[1];
            try {
                FileOutputStream openFileOutput = eh.this.g.openFileOutput(str, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    newSerializer.setOutput(openFileOutput, (String) null);
                    newSerializer.startDocument(HTTP.UTF_8, true);
                    newSerializer.startTag((String) null, "historical-records");
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        c cVar = (c) list.remove(0);
                        newSerializer.startTag((String) null, "historical-record");
                        newSerializer.attribute((String) null, "activity", cVar.a.flattenToString());
                        newSerializer.attribute((String) null, "time", String.valueOf(cVar.b));
                        newSerializer.attribute((String) null, "weight", String.valueOf(cVar.c));
                        newSerializer.endTag((String) null, "historical-record");
                    }
                    newSerializer.endTag((String) null, "historical-records");
                    newSerializer.endDocument();
                    boolean unused = eh.this.l = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (IllegalArgumentException e2) {
                    Log.e(eh.c, "Error writing historical recrod file: " + eh.this.h, e2);
                    boolean unused2 = eh.this.l = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (IllegalStateException e4) {
                    Log.e(eh.c, "Error writing historical recrod file: " + eh.this.h, e4);
                    boolean unused3 = eh.this.l = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e5) {
                        }
                    }
                } catch (IOException e6) {
                    Log.e(eh.c, "Error writing historical recrod file: " + eh.this.h, e6);
                    boolean unused4 = eh.this.l = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e7) {
                        }
                    }
                } catch (Throwable th) {
                    boolean unused5 = eh.this.l = true;
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e8) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e9) {
                Log.e(eh.c, "Error writing historical recrod file: " + str, e9);
            }
            return null;
        }
    }

    private boolean f() {
        if (this.j == null || this.i == null || this.b.isEmpty() || this.f.isEmpty()) {
            return false;
        }
        Collections.unmodifiableList(this.f);
        return true;
    }

    private void g() {
        int size = this.f.size() - this.k;
        if (size > 0) {
            this.n = true;
            for (int i2 = 0; i2 < size; i2++) {
                this.f.remove(0);
            }
        }
    }

    private void h() {
        try {
            FileInputStream openFileInput = this.g.openFileInput(this.h);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(openFileInput, (String) null);
                int i2 = 0;
                while (i2 != 1 && i2 != 2) {
                    i2 = newPullParser.next();
                }
                if (!"historical-records".equals(newPullParser.getName())) {
                    throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                }
                List<c> list = this.f;
                list.clear();
                while (true) {
                    int next = newPullParser.next();
                    if (next != 1) {
                        if (!(next == 3 || next == 4)) {
                            if (!"historical-record".equals(newPullParser.getName())) {
                                throw new XmlPullParserException("Share records file not well-formed.");
                            }
                            list.add(new c(newPullParser.getAttributeValue((String) null, "activity"), Long.parseLong(newPullParser.getAttributeValue((String) null, "time")), Float.parseFloat(newPullParser.getAttributeValue((String) null, "weight"))));
                        }
                    } else if (openFileInput != null) {
                        try {
                            openFileInput.close();
                            return;
                        } catch (IOException e2) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } catch (XmlPullParserException e3) {
                Log.e(c, "Error reading historical recrod file: " + this.h, e3);
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e4) {
                    }
                }
            } catch (IOException e5) {
                Log.e(c, "Error reading historical recrod file: " + this.h, e5);
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e6) {
                    }
                }
            } catch (Throwable th) {
                if (openFileInput != null) {
                    try {
                        openFileInput.close();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e8) {
        }
    }

    public final int a() {
        int size;
        synchronized (this.a) {
            d();
            size = this.b.size();
        }
        return size;
    }

    public final int a(ResolveInfo resolveInfo) {
        synchronized (this.a) {
            d();
            List<a> list = this.b;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (list.get(i2).a == resolveInfo) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public final ResolveInfo a(int i2) {
        ResolveInfo resolveInfo;
        synchronized (this.a) {
            d();
            resolveInfo = this.b.get(i2).a;
        }
        return resolveInfo;
    }

    public final boolean a(c cVar) {
        boolean add = this.f.add(cVar);
        if (add) {
            this.n = true;
            g();
            if (!this.m) {
                throw new IllegalStateException("No preceding call to #readHistoricalData");
            }
            if (this.n) {
                this.n = false;
                if (!TextUtils.isEmpty(this.h)) {
                    e eVar = new e(this, (byte) 0);
                    Object[] objArr = {this.f, this.h};
                    if (Build.VERSION.SDK_INT >= 11) {
                        eVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, objArr);
                    } else {
                        eVar.execute(objArr);
                    }
                }
            }
            f();
            notifyChanged();
        }
        return add;
    }

    public final Intent b(int i2) {
        synchronized (this.a) {
            if (this.i == null) {
                return null;
            }
            d();
            a aVar = this.b.get(i2);
            ComponentName componentName = new ComponentName(aVar.a.activityInfo.packageName, aVar.a.activityInfo.name);
            Intent intent = new Intent(this.i);
            intent.setComponent(componentName);
            if (this.p != null) {
                new Intent(intent);
                if (this.p.a()) {
                    return null;
                }
            }
            a(new c(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public final ResolveInfo b() {
        synchronized (this.a) {
            d();
            if (this.b.isEmpty()) {
                return null;
            }
            ResolveInfo resolveInfo = this.b.get(0).a;
            return resolveInfo;
        }
    }

    public final int c() {
        int size;
        synchronized (this.a) {
            d();
            size = this.f.size();
        }
        return size;
    }

    public final void d() {
        boolean z;
        boolean z2 = true;
        if (!this.o || this.i == null) {
            z = false;
        } else {
            this.o = false;
            this.b.clear();
            List<ResolveInfo> queryIntentActivities = this.g.getPackageManager().queryIntentActivities(this.i, 0);
            int size = queryIntentActivities.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.b.add(new a(queryIntentActivities.get(i2)));
            }
            z = true;
        }
        if (!this.l || !this.n || TextUtils.isEmpty(this.h)) {
            z2 = false;
        } else {
            this.l = false;
            this.m = true;
            h();
        }
        boolean z3 = z | z2;
        g();
        if (z3) {
            f();
            notifyChanged();
        }
    }
}
