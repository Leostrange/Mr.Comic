package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.util.Log;
import defpackage.aer;
import defpackage.agm;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: acr  reason: default package */
/* compiled from: SyncCatalogTask */
public final class acr extends AsyncTask<Void, String, Integer> {
    static a k = null;
    boolean a;
    boolean b;
    ArrayList<aeq> c = new ArrayList<>();
    ArrayList<String> d = new ArrayList<>();
    ArrayList<String> e = new ArrayList<>();
    ArrayList<String> f = new ArrayList<>();
    HashMap<String, Boolean> g = new HashMap<>();
    HashMap<String, File> h = new HashMap<>();
    int i = 0;
    int j;
    private Activity l;
    private ProgressDialog m;
    private a n;
    private aek o;
    private aen p;
    private aes q;
    private boolean r;
    private String[] s;
    private boolean t;
    private String[] u = {"/sys", "/sbin", "/proc", "/init", "/system", "/config", "/dev", "/etc", "/cache", "/storage/emulated/legacy"};

    /* renamed from: acr$a */
    /* compiled from: SyncCatalogTask */
    public interface a {
        void f();
    }

    public acr(Activity activity, a aVar, boolean z) {
        this.l = activity;
        this.n = aVar == null ? k : aVar;
        this.a = z;
        aek aek = aei.a().b;
        this.j = aek.e();
        this.o = aei.a().b;
        this.p = aei.a().c;
        this.q = aei.a().e;
        String b2 = aei.a().d.b("include-secondry-formats");
        this.r = b2.equals("prefConditionallyInclude");
        this.s = afa.b(b2);
        this.t = aei.a().d.c("fix-file-extn");
        if (!this.a) {
            this.m = new ProgressDialog(this.l);
            this.m.setProgressStyle(1);
            this.m.setIndeterminate(true);
            this.m.setMessage(ComicReaderApp.a().getString(R.string.rescanMessage));
            this.m.setTitle(R.string.syncFiles);
            this.m.setProgress(0);
            this.m.setCancelable(false);
            this.m.setCanceledOnTouchOutside(false);
            ahf.a(this.m);
            this.m.show();
            return;
        }
        ahf.b(activity, R.string.autoRescanMessage);
    }

    public static void a() {
        if (k != null) {
            k.f();
        }
    }

    public static void a(a aVar) {
        k = aVar;
    }

    static /* synthetic */ void a(acr acr) {
        AlertDialog.Builder builder = new AlertDialog.Builder(acr.l);
        builder.setTitle(R.string.failedFiles).setMessage(acr.b()).setCancelable(false).setPositiveButton(R.string.reportFailures, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                acr.b(acr.this);
            }
        }).setNegativeButton(R.string.close, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.create().show();
    }

    private void a(File file, LinkedList<File> linkedList, ArrayList<aem> arrayList, ArrayList<String> arrayList2) {
        String trim = file.getAbsolutePath().trim();
        if (!this.q.b(trim) && !this.g.containsKey(trim)) {
            this.g.put(trim, true);
            String[] list = file.list();
            if (list != null && list.length != 0) {
                String str = !trim.endsWith(File.separator) ? trim + File.separator : trim;
                int i2 = 0;
                while (true) {
                    int i3 = i2;
                    if (i3 < list.length) {
                        File file2 = new File(str + list[i3]);
                        if (!file2.isHidden() && file2.canRead() && (this.b || !a(file2))) {
                            if (!file2.isDirectory() && file2.length() > 51200) {
                                String a2 = agv.a(file2.getName());
                                if (!(a2 == null || agv.a(this.s, a2) == -1)) {
                                    boolean z = !a2.toLowerCase().equals("zip");
                                    if (!z) {
                                        z = file2.length() > 1048576;
                                    }
                                    if (z) {
                                        if (!this.q.b(file2.getAbsolutePath())) {
                                            String name = file2.getName();
                                            File file3 = this.h.get(name);
                                            boolean z2 = file3 != null && file3.length() == file2.length();
                                            if (!z2) {
                                                arrayList2.add(file2.getAbsolutePath());
                                                this.h.put(name, file2);
                                            }
                                            if ((!z2) && (arrayList.size() == 0 || !arrayList.get(arrayList.size() - 1).j.equals(file.getAbsolutePath()))) {
                                                arrayList.add(aem.a(file.getAbsolutePath()));
                                            }
                                        }
                                    }
                                }
                            } else if (this.b || !a(file2.getAbsolutePath())) {
                                linkedList.add(file2);
                            }
                        }
                        i2 = i3 + 1;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void a(ArrayList<File> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        LinkedList linkedList = new LinkedList();
        if (arrayList == null || arrayList.isEmpty()) {
            a((LinkedList<File>) linkedList);
        } else {
            this.b = true;
            Iterator<File> it = arrayList.iterator();
            while (it.hasNext()) {
                linkedList.add(it.next());
            }
        }
        while (!linkedList.isEmpty()) {
            try {
                a((File) linkedList.removeLast(), linkedList, arrayList2, arrayList3);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        a((ArrayList<aem>) arrayList2, (ArrayList<String>) arrayList3);
        System.gc();
    }

    private void a(ArrayList<aem> arrayList, ArrayList<String> arrayList2) {
        int i2;
        boolean z;
        if (this.r) {
            ArrayList<String> arrayList3 = new ArrayList<>(arrayList2.size());
            Iterator<String> it = arrayList2.iterator();
            boolean z2 = false;
            String str = "";
            while (it.hasNext()) {
                String next = it.next();
                if (!ahb.a(next)) {
                    String c2 = agv.c(next);
                    if (!c2.equals(str)) {
                        z2 = (c2.toLowerCase().contains("comic") || ahb.a(c2, arrayList2)) || ahb.a(agv.c(c2), arrayList2);
                        str = c2;
                    }
                    if (z2) {
                        arrayList3.add(next);
                    }
                } else {
                    arrayList3.add(next);
                }
            }
            arrayList2 = arrayList3;
        }
        for (aeq next2 : this.o.f()) {
            if (!next2.d()) {
                Iterator<String> it2 = arrayList2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (it2.next().equalsIgnoreCase(next2.d)) {
                            z = true;
                            break;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    this.c.add(next2);
                }
            }
        }
        Iterator<String> it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            String next3 = it3.next();
            if (this.o.b(next3) == null) {
                this.d.add(next3);
            }
        }
        Iterator<String> it4 = this.d.iterator();
        while (it4.hasNext()) {
            String next4 = it4.next();
            publishProgress(new String[]{afa.a(new File(next4).getName())});
            this.i++;
            aeq a2 = this.o.a(next4);
            if (a2 == null) {
                int i3 = agm.c.b;
                try {
                    boolean z3 = this.t;
                    File file = new File(next4);
                    i2 = agm.a(file, afa.a(file.getName()), z3, -1, (adc) null, (aer.a) null).a;
                } catch (Exception e2) {
                    Log.e("Sync Catalog", "Error adding comic: " + next4, e2);
                    i2 = i3;
                }
                if (i2 != agm.c.a) {
                    if (i2 == agm.c.c || new File(next4).length() < 262144) {
                        this.f.add(next4);
                    } else {
                        this.e.add(next4);
                    }
                }
            } else {
                a2.a(false);
                a2.d = next4;
                a2.k = agm.a(next4);
                aek.d(a2);
                aek.b(a2);
            }
        }
        for (int i4 = 0; i4 < this.c.size(); i4++) {
            aeq aeq = this.c.get(i4);
            aeq.a(true);
            aek.b(aeq);
        }
        this.o.d();
        this.p.a(arrayList, -1, false, true);
        this.p.d();
        aei.a().d.a("last-sync-time", String.valueOf(ahc.b()));
        if (this.d.size() - (this.f.size() + this.e.size()) > 0) {
            aei.a().d.a("last-synced-id", String.valueOf(this.j));
        }
    }

    private static void a(LinkedList<File> linkedList) {
        for (File add : File.listRoots()) {
            linkedList.add(add);
        }
        linkedList.add(Environment.getExternalStorageDirectory());
        a(linkedList, "/storage");
        a(linkedList, "/storage/extSdCard");
        a(linkedList, "/storage/emulated/0");
        a(linkedList, "/storage/sdcard1");
        a(linkedList, "/storage/external_SD");
        a(linkedList, "/storage/ext_sd");
    }

    private static void a(LinkedList<File> linkedList, String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            new StringBuilder("Adding: ").append(file.getAbsolutePath());
            linkedList.add(file);
        }
    }

    private static boolean a(File file) {
        try {
            return !file.getCanonicalPath().equals(file.getAbsolutePath());
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean a(String str) {
        for (String equals : this.u) {
            if (str.equals(equals)) {
                return true;
            }
        }
        return false;
    }

    private String b() {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.e.size()) {
                return sb.toString();
            }
            String str = this.e.get(i3);
            sb.append((i3 + 1) + ". File: " + str + " (" + agv.a(new File(str).length()) + ")\n");
            i2 = i3 + 1;
        }
    }

    static /* synthetic */ void b(acr acr) {
        StringBuilder sb = new StringBuilder();
        sb.append("ComiCat App Version: " + agv.d() + "\n");
        sb.append("Device: " + Build.MODEL + "\n");
        sb.append("Architecture: " + Build.CPU_ABI + "\n");
        sb.append("SDK: " + Build.VERSION.SDK_INT + "\n");
        sb.append("SD Card state: " + Environment.getExternalStorageState() + "\n\n");
        sb.append("Following files, failed to sync\n");
        sb.append(acr.b());
        sb.append("\nPlease investigate.\n");
        new agu("support@meanlabs.com", "ComiCat Sync Failure Report", sb.toString()).a(acr.l);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        ArrayList arrayList;
        aeu aeu = aei.a().d;
        String b2 = aeu.b("catalog-folders");
        String[] split = (b2 == null || b2.length() <= 0) ? null : b2.split("#,#");
        if (split == null || split.length <= 0) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (String file : split) {
                File file2 = new File(file);
                if (file2.exists()) {
                    arrayList2.add(file2);
                }
            }
            File file3 = new File(aeu.b("cloud-sync-download-location"));
            if (file3.isDirectory()) {
                arrayList2.add(file3);
            }
            arrayList = arrayList2;
        }
        a((ArrayList<File>) arrayList);
        return null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        if (this.m != null) {
            try {
                this.m.setProgress(100);
                this.m.dismiss();
            } catch (Exception e2) {
            }
        }
        int size = this.d.size() - this.f.size();
        if (this.n != null) {
            this.n.f();
        }
        String string = this.l.getString(R.string.importStats, new Object[]{Integer.valueOf(size), Integer.valueOf(size - this.e.size()), Integer.valueOf(this.e.size()), Integer.valueOf(this.c.size())});
        if (!this.a) {
            try {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.l);
                builder.setMessage(string).setCancelable(true).setNegativeButton(R.string.close, (DialogInterface.OnClickListener) null).setTitle(R.string.syncFiles);
                if (this.e.size() > 0) {
                    builder.setNeutralButton(R.string.viewFailedFiles, new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            dialogInterface.dismiss();
                            acr.a(acr.this);
                        }
                    });
                }
                builder.create().show();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else {
            ahf.a((Context) this.l, string, false);
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        String[] strArr = (String[]) objArr;
        if (this.m != null) {
            this.m.setIndeterminate(false);
            this.m.setMax(this.d.size());
            this.m.setProgress(this.i);
            this.m.setMessage(this.l.getString(R.string.importingComic, new Object[]{strArr[0]}));
        }
    }
}
