// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
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
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class eh extends DataSetObservable
{
    public final class a
        implements Comparable
    {

        public final ResolveInfo a;
        public float b;
        final eh c;

        public final int compareTo(Object obj)
        {
            return Float.floatToIntBits(((a)obj).b) - Float.floatToIntBits(b);
        }

        public final boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (a)obj;
                if (Float.floatToIntBits(b) != Float.floatToIntBits(((a) (obj)).b))
                {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode()
        {
            return Float.floatToIntBits(b) + 31;
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("resolveInfo:").append(a.toString());
            stringbuilder.append("; weight:").append(new BigDecimal(b));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public a(ResolveInfo resolveinfo)
        {
            c = eh.this;
            super();
            a = resolveinfo;
        }
    }

    public static interface b
    {
    }

    public static final class c
    {

        public final ComponentName a;
        public final long b;
        public final float c;

        public final boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (c)obj;
                if (a == null)
                {
                    if (((c) (obj)).a != null)
                    {
                        return false;
                    }
                } else
                if (!a.equals(((c) (obj)).a))
                {
                    return false;
                }
                if (b != ((c) (obj)).b)
                {
                    return false;
                }
                if (Float.floatToIntBits(c) != Float.floatToIntBits(((c) (obj)).c))
                {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode()
        {
            int i1;
            if (a == null)
            {
                i1 = 0;
            } else
            {
                i1 = a.hashCode();
            }
            return ((i1 + 31) * 31 + (int)(b ^ b >>> 32)) * 31 + Float.floatToIntBits(c);
        }

        public final String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("; activity:").append(a);
            stringbuilder.append("; time:").append(b);
            stringbuilder.append("; weight:").append(new BigDecimal(c));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public c(ComponentName componentname, long l1, float f1)
        {
            a = componentname;
            b = l1;
            c = f1;
        }

        public c(String s, long l1, float f1)
        {
            this(ComponentName.unflattenFromString(s), l1, f1);
        }
    }

    public static interface d
    {

        public abstract boolean a();
    }

    final class e extends AsyncTask
    {

        final eh a;

        private transient Void a(Object aobj[])
        {
            List list;
            Object obj1;
            int i1;
            i1 = 0;
            list = (List)aobj[0];
            obj1 = (String)aobj[1];
            aobj = eh.a(a).openFileOutput(((String) (obj1)), 0);
            obj1 = Xml.newSerializer();
            int j1;
            ((XmlSerializer) (obj1)).setOutput(((java.io.OutputStream) (aobj)), null);
            ((XmlSerializer) (obj1)).startDocument("UTF-8", Boolean.valueOf(true));
            ((XmlSerializer) (obj1)).startTag(null, "historical-records");
            j1 = list.size();
_L2:
            if (i1 >= j1)
            {
                break; /* Loop/switch isn't completed */
            }
            c c1 = (c)list.remove(0);
            ((XmlSerializer) (obj1)).startTag(null, "historical-record");
            ((XmlSerializer) (obj1)).attribute(null, "activity", c1.a.flattenToString());
            ((XmlSerializer) (obj1)).attribute(null, "time", String.valueOf(c1.b));
            ((XmlSerializer) (obj1)).attribute(null, "weight", String.valueOf(c1.c));
            ((XmlSerializer) (obj1)).endTag(null, "historical-record");
            i1++;
            if (true) goto _L2; else goto _L1
            aobj;
            Log.e(eh.e(), (new StringBuilder("Error writing historical recrod file: ")).append(((String) (obj1))).toString(), ((Throwable) (aobj)));
_L3:
            return null;
_L1:
            ((XmlSerializer) (obj1)).endTag(null, "historical-records");
            ((XmlSerializer) (obj1)).endDocument();
            eh.c(a);
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            Object obj;
            obj;
            Log.e(eh.e(), (new StringBuilder("Error writing historical recrod file: ")).append(eh.b(a)).toString(), ((Throwable) (obj)));
            eh.c(a);
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            obj;
            Log.e(eh.e(), (new StringBuilder("Error writing historical recrod file: ")).append(eh.b(a)).toString(), ((Throwable) (obj)));
            eh.c(a);
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            obj;
            Log.e(eh.e(), (new StringBuilder("Error writing historical recrod file: ")).append(eh.b(a)).toString(), ((Throwable) (obj)));
            eh.c(a);
            if (aobj == null) goto _L3; else goto _L4
_L4:
            try
            {
                ((FileOutputStream) (aobj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[])
            {
                return null;
            }
            return null;
            obj;
            eh.c(a);
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[]) { }
            }
            throw obj;
        }

        public final Object doInBackground(Object aobj[])
        {
            return a(aobj);
        }

        private e()
        {
            a = eh.this;
            super();
        }

        e(byte byte0)
        {
            this();
        }
    }


    private static final String c = eh.getSimpleName();
    private static final Object d = new Object();
    private static final Map e = new HashMap();
    public final Object a;
    public final List b;
    private final List f;
    private final Context g;
    private final String h;
    private Intent i;
    private b j;
    private int k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private d p;

    static Context a(eh eh1)
    {
        return eh1.g;
    }

    static String b(eh eh1)
    {
        return eh1.h;
    }

    static boolean c(eh eh1)
    {
        eh1.l = true;
        return true;
    }

    static String e()
    {
        return c;
    }

    private boolean f()
    {
        if (j != null && i != null && !b.isEmpty() && !f.isEmpty())
        {
            Collections.unmodifiableList(f);
            return true;
        } else
        {
            return false;
        }
    }

    private void g()
    {
        int j1 = f.size() - k;
        if (j1 > 0)
        {
            n = true;
            int i1 = 0;
            while (i1 < j1) 
            {
                f.remove(0);
                i1++;
            }
        }
    }

    private void h()
    {
        Object obj;
        Object obj1;
        Exception exception;
        List list;
        int i1;
        try
        {
            obj = g.openFileInput(h);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return;
        }
        obj1 = Xml.newPullParser();
        ((XmlPullParser) (obj1)).setInput(((java.io.InputStream) (obj)), null);
        i1 = 0;
_L1:
        if (i1 == 1 || i1 == 2)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        i1 = ((XmlPullParser) (obj1)).next();
          goto _L1
        if (!"historical-records".equals(((XmlPullParser) (obj1)).getName()))
        {
            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
        }
          goto _L2
        obj1;
        Log.e(c, (new StringBuilder("Error reading historical recrod file: ")).append(h).toString(), ((Throwable) (obj1)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        ((FileInputStream) (obj)).close();
_L6:
        return;
_L2:
        list = f;
        list.clear();
_L4:
        i1 = ((XmlPullParser) (obj1)).next();
        if (i1 == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i1 == 3 || i1 == 4) goto _L4; else goto _L3
_L3:
        if (!"historical-record".equals(((XmlPullParser) (obj1)).getName()))
        {
            throw new XmlPullParserException("Share records file not well-formed.");
        }
        break MISSING_BLOCK_LABEL_211;
        obj1;
        Log.e(c, (new StringBuilder("Error reading historical recrod file: ")).append(h).toString(), ((Throwable) (obj1)));
        if (obj == null) goto _L6; else goto _L5
_L5:
        try
        {
            ((FileInputStream) (obj)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        list.add(new c(((XmlPullParser) (obj1)).getAttributeValue(null, "activity"), Long.parseLong(((XmlPullParser) (obj1)).getAttributeValue(null, "time")), Float.parseFloat(((XmlPullParser) (obj1)).getAttributeValue(null, "weight"))));
          goto _L4
        exception;
        IOException ioexception;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch (IOException ioexception1) { }
        }
        throw exception;
        if (obj == null) goto _L6; else goto _L7
_L7:
        try
        {
            ((FileInputStream) (obj)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            return;
        }
        ioexception;
    }

    public final int a()
    {
        int i1;
        synchronized (a)
        {
            d();
            i1 = b.size();
        }
        return i1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final int a(ResolveInfo resolveinfo)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        List list;
        int j1;
        d();
        list = b;
        j1 = list.size();
        int i1 = 0;
_L2:
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        if (((a)list.get(i1)).a != resolveinfo)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        obj;
        JVM INSTR monitorexit ;
        return i1;
        obj;
        JVM INSTR monitorexit ;
        return -1;
        resolveinfo;
        obj;
        JVM INSTR monitorexit ;
        throw resolveinfo;
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final ResolveInfo a(int i1)
    {
        ResolveInfo resolveinfo;
        synchronized (a)
        {
            d();
            resolveinfo = ((a)b.get(i1)).a;
        }
        return resolveinfo;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final boolean a(c c1)
    {
        boolean flag = f.add(c1);
        if (flag)
        {
            n = true;
            g();
            if (!m)
            {
                throw new IllegalStateException("No preceding call to #readHistoricalData");
            }
            if (n)
            {
                n = false;
                if (!TextUtils.isEmpty(h))
                {
                    c1 = new e((byte)0);
                    Object aobj[] = new Object[2];
                    aobj[0] = f;
                    aobj[1] = h;
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        c1.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, aobj);
                    } else
                    {
                        c1.execute(aobj);
                    }
                }
            }
            f();
            notifyChanged();
        }
        return flag;
    }

    public final Intent b(int i1)
    {
label0:
        {
            synchronized (a)
            {
                if (i != null)
                {
                    break label0;
                }
            }
            return null;
        }
        Object obj1;
        Intent intent;
        d();
        obj1 = (a)b.get(i1);
        obj1 = new ComponentName(((a) (obj1)).a.activityInfo.packageName, ((a) (obj1)).a.activityInfo.name);
        intent = new Intent(i);
        intent.setComponent(((ComponentName) (obj1)));
        if (p == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        new Intent(intent);
        if (!p.a())
        {
            break MISSING_BLOCK_LABEL_117;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        a(new c(((ComponentName) (obj1)), System.currentTimeMillis(), 1.0F));
        obj;
        JVM INSTR monitorexit ;
        return intent;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final ResolveInfo b()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        ResolveInfo resolveinfo;
        d();
        if (b.isEmpty())
        {
            break MISSING_BLOCK_LABEL_44;
        }
        resolveinfo = ((a)b.get(0)).a;
        return resolveinfo;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final int c()
    {
        int i1;
        synchronized (a)
        {
            d();
            i1 = f.size();
        }
        return i1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void d()
    {
        boolean flag1 = true;
        boolean flag;
        if (o && i != null)
        {
            o = false;
            b.clear();
            List list = g.getPackageManager().queryIntentActivities(i, 0);
            int j1 = list.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                ResolveInfo resolveinfo = (ResolveInfo)list.get(i1);
                b.add(new a(resolveinfo));
            }

            flag = true;
        } else
        {
            flag = false;
        }
        if (l && n && !TextUtils.isEmpty(h))
        {
            l = false;
            m = true;
            h();
        } else
        {
            flag1 = false;
        }
        g();
        if (flag | flag1)
        {
            f();
            notifyChanged();
        }
    }

}
