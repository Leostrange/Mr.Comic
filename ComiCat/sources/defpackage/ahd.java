package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import defpackage.aft;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicreader.ComicReaderApp;
import org.apache.http.HttpStatus;

/* renamed from: ahd  reason: default package */
/* compiled from: ThumbnailManager */
public final class ahd {
    private static File a;
    private static File b;
    private static String c = "covers";
    private static String d = "folder_covers";
    private static String e = ".cov";

    /* renamed from: ahd$1  reason: invalid class name */
    /* compiled from: ThumbnailManager */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[aft.a.a().length];

        static {
            try {
                a[aft.a.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[aft.a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[aft.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public static Bitmap a(int i, int i2, boolean z) {
        Bitmap bitmap = null;
        switch (AnonymousClass1.a[i2 - 1]) {
            case 1:
                bitmap = a(i, z);
                break;
            case 2:
                bitmap = c(i, z);
                break;
        }
        return bitmap != null ? bitmap : aga.a().b;
    }

    public static Bitmap a(int i, boolean z) {
        Bitmap bitmap = null;
        try {
            bitmap = agl.a(b(i, z));
            if (bitmap == null) {
                bitmap = agl.a(b(i, !z));
            }
        } catch (Exception e2) {
        }
        return bitmap != null ? bitmap : aga.a().b;
    }

    private static Bitmap a(List<Integer> list) {
        Bitmap bitmap;
        Bitmap bitmap2 = aga.a().b;
        ArrayList arrayList = new ArrayList(list.size());
        for (Integer intValue : list) {
            Bitmap a2 = a(intValue.intValue(), true);
            if (!(a2 == null || a2 == bitmap2)) {
                if (a2.getWidth() > a2.getHeight()) {
                    bitmap = agl.b(a2);
                    a2.recycle();
                } else {
                    bitmap = a2;
                }
                arrayList.add(bitmap);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        int size = arrayList.size() - 1;
        Bitmap bitmap3 = (Bitmap) arrayList.get(0);
        int height = (int) ((375.0d / ((double) bitmap3.getHeight())) * ((double) bitmap3.getWidth()));
        int min = size > 0 ? Math.min((400 - height) / size, 30) : 0;
        int i = height + (size * min);
        Bitmap createBitmap = Bitmap.createBitmap(i, 375, bitmap3.getConfig());
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(-1);
        int i2 = i;
        for (int i3 = 1; i3 <= size; i3++) {
            Bitmap bitmap4 = (Bitmap) arrayList.get(i3);
            canvas.drawBitmap(bitmap4, (Rect) null, new RectF((float) Math.max(i2 - ((int) ((375.0d / ((double) bitmap4.getHeight())) * ((double) bitmap4.getWidth()))), 0), 0.0f, (float) i2, 375.0f), (Paint) null);
            i2 -= min;
        }
        canvas.drawBitmap(bitmap3, (Rect) null, new RectF(0.0f, 0.0f, (float) height, 375.0f), (Paint) null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Bitmap) it.next()).recycle();
        }
        return createBitmap;
    }

    public static void a() {
        a = ComicReaderApp.a().getDir(c, 0);
        b = ComicReaderApp.a().getDir(d, 0);
    }

    public static void a(int i) {
        agz.a(b(i, false));
        agz.a(b(i, true));
    }

    public static boolean a(int i, Bitmap bitmap) {
        try {
            agl.a(bitmap, HttpStatus.SC_MULTIPLE_CHOICES, 375, b(i, true), Bitmap.CompressFormat.JPEG);
            agl.a(bitmap, HttpStatus.SC_OK, 250, b(i, false), Bitmap.CompressFormat.JPEG);
            bitmap.recycle();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean a(aem aem) {
        Bitmap a2;
        try {
            new StringBuilder("Inside save thumbnails for: ").append(aem.j);
            List<Integer> b2 = b(aem);
            new StringBuilder("Found covers count: ").append(b2.size());
            if (b2.size() <= 0 || (a2 = a(b2)) == null) {
                return true;
            }
            agl.a(a2, d(aem.a, true), Bitmap.CompressFormat.JPEG);
            agl.a(a2, 265, 250, d(aem.a, false), Bitmap.CompressFormat.JPEG);
            a2.recycle();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static Bitmap b() {
        return aga.a().b;
    }

    public static String b(int i, boolean z) {
        return a.getAbsolutePath() + "/" + i + (z ? "_l" : "") + e;
    }

    private static List<Integer> b(aem aem) {
        ArrayList arrayList = new ArrayList();
        List<aeq> a2 = ael.a(aem, aem.d == 0);
        ArrayList<aeq> arrayList2 = new ArrayList<>();
        for (aeq next : a2) {
            if (c(next.a)) {
                arrayList2.add(next);
            }
        }
        if (arrayList2.size() > 0) {
            ael.a((List<aeq>) arrayList2, "prefSortAlphabetically");
            arrayList.add(Integer.valueOf(((aeq) arrayList2.remove(0)).a));
            if (arrayList2.size() <= 4) {
                for (aeq aeq : arrayList2) {
                    arrayList.add(Integer.valueOf(aeq.a));
                }
            } else {
                for (int i = 0; i < 4; i++) {
                    arrayList.add(Integer.valueOf(((aeq) arrayList2.remove(((int) Math.round(Math.random() * 1000.0d)) % arrayList2.size())).a));
                }
            }
        }
        return arrayList;
    }

    public static boolean b(int i) {
        return new File(d(i, true)).exists() && new File(d(i, false)).exists();
    }

    public static Bitmap c(int i, boolean z) {
        Bitmap bitmap = null;
        try {
            bitmap = agl.a(d(i, z));
            if (bitmap == null) {
                bitmap = agl.a(d(i, !z));
            }
        } catch (Exception e2) {
        }
        return bitmap != null ? bitmap : aga.a().b;
    }

    public static boolean c(int i) {
        return new File(b(i, true)).exists() && new File(b(i, false)).exists();
    }

    public static String d(int i, boolean z) {
        return b.getAbsolutePath() + "/" + i + (z ? "_l" : "") + e;
    }

    public static void d(int i) {
        agz.a(d(i, true));
        agz.a(d(i, false));
    }
}
