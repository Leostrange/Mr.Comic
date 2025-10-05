package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Environment;
import android.support.v4.app.NotificationCompat;
import defpackage.acr;
import defpackage.aer;
import defpackage.afw;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ComicFolders;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.Viewer;

/* renamed from: agm  reason: default package */
/* compiled from: CatalogUtils */
public final class agm {

    /* renamed from: agm$4  reason: invalid class name */
    /* compiled from: CatalogUtils */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a = new int[b.a().length];

        static {
            try {
                a[b.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[b.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[b.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: agm$a */
    /* compiled from: CatalogUtils */
    public static final class a {
        public int a;
        public int b = 0;
    }

    /* renamed from: agm$b */
    /* compiled from: CatalogUtils */
    enum b {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = new int[]{a, b, c, d};
        }

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    /* renamed from: agm$c */
    /* compiled from: CatalogUtils */
    public enum c {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = new int[]{a, b, c, d, e};
        }
    }

    public static a a(File file, String str, int i, adc adc) {
        return a(file, afa.a(str), false, i, adc, (aer.a) null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002d A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00bd A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00c9 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00d1 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x010a A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x010d A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0143 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x01b4 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x01be A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01c1 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x01cb A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x01d7 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:92:0x01da A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x01de A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x01ec A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x01f2 A[Catch:{ Exception -> 0x0042 }] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x01f4 A[Catch:{ Exception -> 0x0042 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static defpackage.agm.a a(java.io.File r10, java.lang.String r11, boolean r12, int r13, defpackage.adc r14, defpackage.aer.a r15) {
        /*
            agm$a r6 = new agm$a
            r6.<init>()
            int r0 = defpackage.agm.c.b
            r6.a = r0
            if (r15 == 0) goto L_0x0031
            r0 = 1
            r5 = r0
        L_0x000d:
            if (r14 == 0) goto L_0x0034
            r0 = 1
            r4 = r0
        L_0x0011:
            r1 = 0
            r0 = 0
            if (r10 == 0) goto L_0x0213
            boolean r2 = r10.exists()     // Catch:{ Exception -> 0x0042 }
            if (r2 == 0) goto L_0x0213
            afa r0 = new afa     // Catch:{ Exception -> 0x0042 }
            r1 = 0
            r0.<init>(r10, r1)     // Catch:{ Exception -> 0x0042 }
            boolean r1 = r0.b()     // Catch:{ Exception -> 0x0042 }
            if (r1 != 0) goto L_0x0037
            int r1 = defpackage.agm.c.b     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
        L_0x002b:
            if (r0 == 0) goto L_0x0030
            r0.a()     // Catch:{ Exception -> 0x0042 }
        L_0x0030:
            return r6
        L_0x0031:
            r0 = 0
            r5 = r0
            goto L_0x000d
        L_0x0034:
            r0 = 0
            r4 = r0
            goto L_0x0011
        L_0x0037:
            int r1 = r0.d()     // Catch:{ Exception -> 0x0042 }
            if (r1 != 0) goto L_0x0063
            int r1 = defpackage.agm.c.c     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
            goto L_0x002b
        L_0x0042:
            r0 = move-exception
            r1 = r0
            if (r10 == 0) goto L_0x0204
            java.lang.String r0 = r10.getPath()
        L_0x004a:
            java.lang.String r2 = "Sync Catalog Task"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Error processing file: "
            r3.<init>(r4)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            android.util.Log.e(r2, r0, r1)
            int r0 = defpackage.agm.c.b
            r6.a = r0
            goto L_0x0030
        L_0x0063:
            if (r4 == 0) goto L_0x0085
            java.lang.String r1 = r14.b()     // Catch:{ Exception -> 0x0042 }
        L_0x0069:
            java.lang.String r1 = defpackage.agv.a((java.lang.String) r1)     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = r1.toLowerCase()     // Catch:{ Exception -> 0x0042 }
            java.lang.String r2 = "zip"
            boolean r1 = r1.equals(r2)     // Catch:{ Exception -> 0x0042 }
            if (r1 == 0) goto L_0x008a
            int r1 = r0.d()     // Catch:{ Exception -> 0x0042 }
            r2 = 2
            if (r1 >= r2) goto L_0x008a
            int r1 = defpackage.agm.c.c     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
            goto L_0x002b
        L_0x0085:
            java.lang.String r1 = r10.getPath()     // Catch:{ Exception -> 0x0042 }
            goto L_0x0069
        L_0x008a:
            android.graphics.Bitmap r1 = a((defpackage.afa) r0)     // Catch:{ Exception -> 0x0042 }
            if (r1 != 0) goto L_0x0095
            int r1 = defpackage.agm.c.d     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
            goto L_0x002b
        L_0x0095:
            r3 = r1
        L_0x0096:
            r1 = 0
            if (r4 == 0) goto L_0x0210
            if (r10 == 0) goto L_0x0210
            java.lang.String r1 = r10.getPath()     // Catch:{ Exception -> 0x0042 }
            java.lang.String r2 = r14.b()     // Catch:{ Exception -> 0x0042 }
            boolean r1 = defpackage.aib.a((java.lang.CharSequence) r1, (java.lang.CharSequence) r2)     // Catch:{ Exception -> 0x0042 }
            r2 = r1
        L_0x00a8:
            aeq r7 = new aeq     // Catch:{ Exception -> 0x0042 }
            r7.<init>()     // Catch:{ Exception -> 0x0042 }
            if (r4 == 0) goto L_0x00b3
            if (r5 != 0) goto L_0x00b3
            if (r2 == 0) goto L_0x01d1
        L_0x00b3:
            java.lang.String r1 = r10.getPath()     // Catch:{ Exception -> 0x0042 }
        L_0x00b7:
            r7.d = r1     // Catch:{ Exception -> 0x0042 }
            r7.c = r11     // Catch:{ Exception -> 0x0042 }
            if (r0 == 0) goto L_0x01d7
            int r1 = r0.d()     // Catch:{ Exception -> 0x0042 }
        L_0x00c1:
            r7.b = r1     // Catch:{ Exception -> 0x0042 }
            if (r5 != 0) goto L_0x00c7
            if (r4 == 0) goto L_0x00df
        L_0x00c7:
            if (r4 == 0) goto L_0x01da
            java.lang.String r1 = r14.b()     // Catch:{ Exception -> 0x0042 }
        L_0x00cd:
            r7.e = r1     // Catch:{ Exception -> 0x0042 }
            if (r4 == 0) goto L_0x01de
            java.lang.String r1 = r14.c()     // Catch:{ Exception -> 0x0042 }
            long r8 = r14.f()     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = defpackage.adg.a(r1, r8)     // Catch:{ Exception -> 0x0042 }
        L_0x00dd:
            r7.f = r1     // Catch:{ Exception -> 0x0042 }
        L_0x00df:
            r7.g = r13     // Catch:{ Exception -> 0x0042 }
            aet r1 = r7.h     // Catch:{ Exception -> 0x0042 }
            r8 = 8
            r1.a(r8, r4)     // Catch:{ Exception -> 0x0042 }
            aet r8 = r7.h     // Catch:{ Exception -> 0x0042 }
            r9 = 16
            if (r5 != 0) goto L_0x00f0
            if (r2 == 0) goto L_0x01e9
        L_0x00f0:
            r1 = 1
        L_0x00f1:
            r8.a(r9, r1)     // Catch:{ Exception -> 0x0042 }
            if (r0 == 0) goto L_0x0141
            if (r12 == 0) goto L_0x0141
            aei r1 = defpackage.aei.a()     // Catch:{ Exception -> 0x0042 }
            aeu r1 = r1.d     // Catch:{ Exception -> 0x0042 }
            java.lang.String r2 = "fix-file-extn"
            boolean r1 = r1.c(r2)     // Catch:{ Exception -> 0x0042 }
            if (r1 == 0) goto L_0x0141
            java.lang.String r1 = r0.a     // Catch:{ Exception -> 0x0042 }
            if (r1 == 0) goto L_0x01ec
            r1 = 1
        L_0x010b:
            if (r1 == 0) goto L_0x0141
            r0.a()     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = r0.a     // Catch:{ Exception -> 0x0042 }
            java.lang.String r2 = r10.getAbsolutePath()     // Catch:{ Exception -> 0x0042 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0042 }
            r5.<init>()     // Catch:{ Exception -> 0x0042 }
            r8 = 0
            r9 = 46
            int r9 = r2.lastIndexOf(r9)     // Catch:{ Exception -> 0x0042 }
            int r9 = r9 + 1
            java.lang.String r8 = r2.substring(r8, r9)     // Catch:{ Exception -> 0x0042 }
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ Exception -> 0x0042 }
            java.lang.StringBuilder r1 = r5.append(r1)     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = r1.toString()     // Catch:{ Exception -> 0x0042 }
            java.io.File r5 = new java.io.File     // Catch:{ Exception -> 0x0042 }
            r5.<init>(r1)     // Catch:{ Exception -> 0x0042 }
            boolean r5 = r10.renameTo(r5)     // Catch:{ Exception -> 0x0042 }
            if (r5 == 0) goto L_0x01ef
        L_0x013f:
            r7.d = r1     // Catch:{ Exception -> 0x0042 }
        L_0x0141:
            if (r4 != 0) goto L_0x014b
            java.lang.String r1 = r7.d     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = a((java.lang.String) r1)     // Catch:{ Exception -> 0x0042 }
            r7.k = r1     // Catch:{ Exception -> 0x0042 }
        L_0x014b:
            aei r1 = defpackage.aei.a()     // Catch:{ Exception -> 0x0042 }
            aek r2 = r1.b     // Catch:{ Exception -> 0x0042 }
            r1 = 0
            android.database.sqlite.SQLiteStatement r4 = r2.a     // Catch:{ Exception -> 0x0042 }
            r4.clearBindings()     // Catch:{ Exception -> 0x0042 }
            android.database.sqlite.SQLiteStatement r4 = r2.a     // Catch:{ Exception -> 0x0042 }
            r5 = 1
            aet r8 = r7.h     // Catch:{ Exception -> 0x0042 }
            int r8 = r8.a     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 2
            int r8 = r7.j     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 3
            int r8 = r7.i     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 4
            int r8 = r7.b     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 5
            java.lang.String r8 = r7.c     // Catch:{ Exception -> 0x0042 }
            r4.bindString(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 6
            java.lang.String r8 = r7.d     // Catch:{ Exception -> 0x0042 }
            r4.bindString(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 7
            java.lang.String r8 = r7.e     // Catch:{ Exception -> 0x0042 }
            r4.bindString(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 8
            java.lang.String r8 = r7.f     // Catch:{ Exception -> 0x0042 }
            r4.bindString(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 9
            int r8 = r7.g     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 10
            java.lang.String r8 = r7.k     // Catch:{ Exception -> 0x0042 }
            r4.bindString(r5, r8)     // Catch:{ Exception -> 0x0042 }
            r5 = 11
            long r8 = r7.l     // Catch:{ Exception -> 0x0042 }
            r4.bindLong(r5, r8)     // Catch:{ Exception -> 0x0042 }
            android.database.sqlite.SQLiteStatement r4 = r2.a     // Catch:{ Exception -> 0x0042 }
            long r4 = r4.executeInsert()     // Catch:{ Exception -> 0x0042 }
            int r4 = (int) r4     // Catch:{ Exception -> 0x0042 }
            r7.a = r4     // Catch:{ Exception -> 0x0042 }
            int r4 = r7.a     // Catch:{ Exception -> 0x0042 }
            r5 = -1
            if (r4 == r5) goto L_0x01b9
            java.util.ArrayList<aeq> r2 = r2.b     // Catch:{ Exception -> 0x0042 }
            r2.add(r7)     // Catch:{ Exception -> 0x0042 }
        L_0x01b9:
            int r2 = r7.a     // Catch:{ Exception -> 0x0042 }
            r4 = -1
            if (r2 == r4) goto L_0x01f2
            r2 = 1
        L_0x01bf:
            if (r2 == 0) goto L_0x01c9
            if (r3 == 0) goto L_0x01c8
            int r1 = r7.a     // Catch:{ Exception -> 0x0042 }
            defpackage.ahd.a((int) r1, (android.graphics.Bitmap) r3)     // Catch:{ Exception -> 0x0042 }
        L_0x01c8:
            r1 = 1
        L_0x01c9:
            if (r1 != 0) goto L_0x01f4
            int r1 = defpackage.agm.c.e     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
            goto L_0x002b
        L_0x01d1:
            java.lang.String r1 = r14.b()     // Catch:{ Exception -> 0x0042 }
            goto L_0x00b7
        L_0x01d7:
            r1 = -1
            goto L_0x00c1
        L_0x01da:
            java.lang.String r1 = r15.d     // Catch:{ Exception -> 0x0042 }
            goto L_0x00cd
        L_0x01de:
            java.lang.String r1 = r15.b     // Catch:{ Exception -> 0x0042 }
            int r8 = r15.e     // Catch:{ Exception -> 0x0042 }
            long r8 = (long) r8     // Catch:{ Exception -> 0x0042 }
            java.lang.String r1 = defpackage.adg.a(r1, r8)     // Catch:{ Exception -> 0x0042 }
            goto L_0x00dd
        L_0x01e9:
            r1 = 0
            goto L_0x00f1
        L_0x01ec:
            r1 = 0
            goto L_0x010b
        L_0x01ef:
            r1 = r2
            goto L_0x013f
        L_0x01f2:
            r2 = 0
            goto L_0x01bf
        L_0x01f4:
            if (r15 == 0) goto L_0x01fa
            int r1 = r7.a     // Catch:{ Exception -> 0x0042 }
            r15.h = r1     // Catch:{ Exception -> 0x0042 }
        L_0x01fa:
            int r1 = defpackage.agm.c.a     // Catch:{ Exception -> 0x0042 }
            r6.a = r1     // Catch:{ Exception -> 0x0042 }
            int r1 = r7.a     // Catch:{ Exception -> 0x0042 }
            r6.b = r1     // Catch:{ Exception -> 0x0042 }
            goto L_0x002b
        L_0x0204:
            if (r14 == 0) goto L_0x020c
            java.lang.String r0 = r14.b()
            goto L_0x004a
        L_0x020c:
            java.lang.String r0 = ""
            goto L_0x004a
        L_0x0210:
            r2 = r1
            goto L_0x00a8
        L_0x0213:
            r3 = r0
            r0 = r1
            goto L_0x0096
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.agm.a(java.io.File, java.lang.String, boolean, int, adc, aer$a):agm$a");
    }

    private static Bitmap a(afa afa) {
        Bitmap bitmap = null;
        int i = 0;
        do {
            afb a2 = afa.a(i);
            if (!(a2 == null || (bitmap = a(a2)) == null) || (i = i + 1) >= afa.d() || i >= 3) {
                return bitmap;
            }
            afb a22 = afa.a(i);
            break;
        } while (i >= 3);
        return bitmap;
    }

    public static Bitmap a(afb afb) {
        if (afb.f() == 2 && aei.a().d.c("use-right-cover-as-thumbnail")) {
            afb.d();
        }
        return afb.c();
    }

    public static String a(String str) {
        File file = new File(str);
        return file.exists() ? file.getName() + '@' + file.length() : "";
    }

    public static void a() {
        if (ComicReaderApp.d() != null) {
            synchronized (ComicReaderApp.d()) {
                Catalog d = ComicReaderApp.d();
                agb agb = (agb) d.b.getAdapter();
                if (agb != null) {
                    agb.notifyDataSetChanged();
                    agb.a();
                    d.b.setAdapter(agb);
                }
                agb agb2 = (agb) d.c.getAdapter();
                if (agb2 != null) {
                    agb2.notifyDataSetChanged();
                    agb2.a();
                    d.c.setAdapter(agb2);
                }
            }
        }
    }

    public static void a(int i) {
        aek aek = aei.a().b;
        aen aen = aei.a().c;
        List<aeq> a2 = ael.a(i);
        if (a2.size() > 0) {
            for (aeq a3 : a2) {
                adh.a(a3, false, false, aek);
            }
        }
        List<aem> b2 = ael.b(i);
        ael.b(b2, "prefSortByFilePath");
        Collections.reverse(b2);
        for (aem next : b2) {
            if (next.d()) {
                String a4 = next.a();
                List<aeq> f = aei.a().b.f();
                ArrayList arrayList = new ArrayList();
                for (aeq next2 : f) {
                    if (a4.equalsIgnoreCase(agv.c(next2.d))) {
                        arrayList.add(next2);
                    }
                }
                if (!a(next, arrayList.size() - next.d, 0)) {
                    next.j = next.a();
                    next.c = -1;
                    next.f.b(2);
                    aen.b(next);
                }
            }
        }
        for (aem next3 : b2) {
            if (aen.a(next3.a) != null) {
                ahd.a(next3);
            }
        }
        ael.b();
    }

    public static void a(final aem aem, Activity activity, final acr.a aVar) {
        int size = ael.a(aem, true).size();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage(activity.getString(R.string.excludeFolderPrompt, new Object[]{aem.j, Integer.valueOf(size)})).setCancelable(true).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setTitle(R.string.excludeFolderFromCatalog).setPositiveButton(17039370, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                aem aem = aem;
                for (aeq g : ael.a(aem, true)) {
                    aei.a().b.g(g);
                }
                aen aen = aei.a().c;
                for (aem next : ael.a(aem)) {
                    new StringBuilder("Deleting Folder: ").append(next.j);
                    aen.a(next, true);
                }
                aen.a(aem, true);
                aei.a().e.a(aem.j);
                ael.a();
                dialogInterface.dismiss();
                aVar.f();
            }
        });
        builder.create().show();
    }

    public static void a(Activity activity, int i) {
        Intent intent = new Intent(activity, Viewer.class);
        intent.putExtra("seriesid", i);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, int i, boolean z) {
        Intent intent = new Intent(activity, Viewer.class);
        intent.putExtra("comicid", i);
        intent.putExtra("prefBookmark", z);
        activity.startActivity(intent);
    }

    public static void a(final Activity activity, final acr.a aVar) {
        int i;
        boolean a2 = aei.a().d.a("app-state-flags", 4);
        aei.a().d.a(4);
        int i2 = b.a;
        String externalStorageState = Environment.getExternalStorageState();
        if ("shared".equals(externalStorageState)) {
            i2 = b.b;
        } else if ("nofs".equals(externalStorageState) || "unmountable".equals(externalStorageState)) {
            i2 = b.c;
        } else if ("checking".equals(externalStorageState) && "unmounted".equals(externalStorageState)) {
            i2 = b.d;
        }
        if (i2 != b.a) {
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            switch (AnonymousClass4.a[i2 - 1]) {
                case 1:
                    i = R.string.cardShared;
                    break;
                case 2:
                    i = R.string.cardBad;
                    break;
                case 3:
                    i = R.string.notMounted;
                    break;
                default:
                    i = 0;
                    break;
            }
            builder.setMessage(activity.getString(R.string.msgCardNotReady, new Object[]{i != 0 ? ComicReaderApp.a().getResources().getString(i) : ""})).setCancelable(true).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).setTitle(R.string.syncFiles).setPositiveButton(17039370, new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    agm.b(activity, aVar);
                }
            });
            builder.create().show();
            return;
        }
        String b2 = aei.a().d.b("catalog-folders");
        if (a2 || b2.length() != 0) {
            b(activity, aVar);
        } else {
            afw.a(activity, activity.getString(R.string.limitScanTo), activity.getString(R.string.firstSyncSelectComicFolder), R.string.selectComicFolder, R.string.continueScan, new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        Intent intent = new Intent(activity, ComicFolders.class);
                        intent.putExtra("warn", false);
                        ComicFolders.a = new ComicFolders.a() {
                            public final void c() {
                                agm.b(activity, aVar);
                            }
                        };
                        activity.startActivity(intent);
                        return;
                    }
                    agm.b(activity, aVar);
                }
            });
        }
    }

    public static void a(String str, int i) {
        aem a2 = aei.a().c.a(str);
        if (a2 != null) {
            a(a2, i, 0);
        }
    }

    public static void a(boolean z) {
        if (ComicReaderApp.d() != null) {
            synchronized (ComicReaderApp.d()) {
                if (z) {
                    ComicReaderApp.d().c();
                } else {
                    ComicReaderApp.d().e();
                }
            }
        }
    }

    public static boolean a(aem aem, int i, int i2) {
        new StringBuilder("Fixing folder: ").append(aem.j);
        aem.d += i;
        aem.e += i2;
        if (aem.d == 0 && aem.e == 0) {
            new StringBuilder("Fixing folder deleting: ").append(aem.j);
            aen aen = aei.a().c;
            return aen.a(aem, true);
        }
        if (!(i == 0 && i2 == 0)) {
            aen aen2 = aei.a().c;
            aen.b(aem);
        }
        ahd.d(aem.a);
        ahd.a(aem);
        aem b2 = ael.b(aem);
        if (b2 == null) {
            return false;
        }
        a(b2, 0, 0);
        return false;
    }

    public static boolean a(aem aem, boolean z) {
        for (aeq next : ael.a(aem, z)) {
            if (!next.d()) {
                a(next, false);
            } else {
                b(next, false);
            }
        }
        aen aen = aei.a().c;
        if (z) {
            for (aem next2 : ael.a(aem)) {
                if (agz.a(next2.a()) || next2.d()) {
                    aen.a(next2, false);
                }
            }
        }
        agz.a(aem.a());
        return aen.a(aem, true);
    }

    public static boolean a(aeq aeq, boolean z) {
        boolean z2 = false;
        if (!aeq.d() || aeq.h.c(16)) {
            File file = new File(aeq.d);
            if (!file.exists() || agz.a(file)) {
                if (!file.exists()) {
                    z2 = true;
                }
                if (z2) {
                    if (!aeq.d()) {
                        z2 = aei.a().b.g(aeq);
                        if (z2 && z) {
                            a(file.getParent(), -1);
                        }
                    } else {
                        aeq.d = aeq.e;
                        aeq.h.b(16);
                        aek aek = aei.a().b;
                        aek.a(aeq);
                    }
                }
            }
        }
        return z2;
    }

    public static boolean a(afa afa, int i) {
        Bitmap a2 = a(afa);
        if (a2 != null) {
            return ahd.a(i, a2);
        }
        return false;
    }

    public static void b(aeq aeq, boolean z) {
        if (aeq.d()) {
            if (aeq.g()) {
                agz.a(aeq.d);
            }
            ahd.a(aeq.a);
            aeq.h.a(NotificationCompat.FLAG_HIGH_PRIORITY);
            aek aek = aei.a().b;
            aek.b(aeq);
            if (z) {
                a(ael.b(aeq), -1, 0);
            }
        }
    }

    static void b(Activity activity, acr.a aVar) {
        new acr(activity, aVar, false).execute(new Void[]{null});
    }

    public static void c(aeq aeq, boolean z) {
        if (z) {
            aeq.h.a(2);
            aeq.h.b(1);
        } else {
            aeq.h.b(2);
        }
        aek aek = aei.a().b;
        aek.a(aeq);
    }
}
