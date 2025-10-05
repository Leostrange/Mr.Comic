package defpackage;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: adi  reason: default package */
/* compiled from: RemoteFilecacheManager */
public final class adi {
    static int c = 7;
    private static adi d = null;
    File a = ComicReaderApp.a().getDir("filecache", 0);
    ArrayList<File> b = new ArrayList<>();

    private adi() {
        for (File file : this.a.listFiles()) {
            if ("dld".equalsIgnoreCase(agv.a(file.getName()))) {
                file.delete();
            } else {
                this.b.add(file);
            }
        }
        Collections.sort(this.b, new Comparator<File>() {
            public final /* synthetic */ int compare(Object obj, Object obj2) {
                return (int) (((File) obj).lastModified() - ((File) obj2).lastModified());
            }
        });
        a(c);
    }

    public static adi a() {
        if (d == null) {
            d = new adi();
        }
        return d;
    }

    public final File a(String str, long j) {
        File file;
        Iterator<File> it = this.b.iterator();
        while (true) {
            if (!it.hasNext()) {
                file = null;
                break;
            }
            file = it.next();
            if (file.getName().equalsIgnoreCase(str)) {
                break;
            }
        }
        if (file == null || j == -1 || file.length() == j) {
            return file;
        }
        this.b.remove(file);
        agz.a(file);
        return null;
    }

    public final String a(String str) {
        String b2 = agp.b(this.a.getAbsolutePath(), str);
        String str2 = null;
        while (str2 == null) {
            File file = new File(b2 + "0.dld");
            if (!file.exists() || file.delete()) {
                str2 = file.getAbsolutePath();
            }
        }
        return str2;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.b.size() > i) {
            int size = this.b.size() - i;
            for (int i2 = 0; i2 < size; i2++) {
                agz.a(this.b.remove(0));
            }
        }
    }
}
