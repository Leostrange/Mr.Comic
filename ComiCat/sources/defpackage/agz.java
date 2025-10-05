package defpackage;

import java.io.File;
import java.io.FileOutputStream;

/* renamed from: agz  reason: default package */
/* compiled from: StorageHandler */
public final class agz {
    static a a;

    /* renamed from: agz$a */
    /* compiled from: StorageHandler */
    interface a {
        boolean a(File file);

        boolean a(String str);

        FileOutputStream b(String str);
    }

    /* renamed from: agz$b */
    /* compiled from: StorageHandler */
    static class b implements a {
        private b() {
        }

        /* synthetic */ b(byte b) {
            this();
        }

        public final boolean a(File file) {
            return (!file.exists() || file.delete()) && !file.exists();
        }

        public final boolean a(String str) {
            return a(new File(str));
        }

        public final FileOutputStream b(String str) {
            return new FileOutputStream(new File(str));
        }
    }

    private static a a() {
        if (a == null) {
            a = new b((byte) 0);
        }
        return a;
    }

    public static boolean a(File file) {
        return a().a(file);
    }

    public static boolean a(String str) {
        return a().a(str);
    }

    public static FileOutputStream b(String str) {
        return a().b(str);
    }
}
