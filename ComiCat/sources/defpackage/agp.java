package defpackage;

import java.io.File;

/* renamed from: agp  reason: default package */
/* compiled from: FileUtils */
public final class agp {
    private static final String a = (File.separator + File.separator);

    public static File a(aeq aeq, boolean z, acy acy) {
        acs a2;
        if (!aeq.d() || aeq.g()) {
            return new File(aeq.d);
        }
        aev a3 = aei.a().g.a(aeq.g);
        if (a3 == null) {
            return null;
        }
        adg a4 = adg.a(aeq.f);
        File a5 = a4 != null ? adh.a(a4.a, aeq.e, a4.b, a3, z, acy) : null;
        if (a5 != null && a5.exists() && !z && "makeLocalCopy".equals(aei.a().d.b("on-the-fly-reading")) && (a2 = act.b().a(aeq.g)) != null) {
            String b = b(a2.h(), aeq.e);
            File file = new File(b);
            if (a(a5, file)) {
                aeq.h.a(16);
                aeq.d = b;
                aek aek = aei.a().b;
                aek.e(aeq);
                return file;
            }
        }
        return a5;
    }

    public static String a(String str) {
        return str.endsWith(File.separator) ? str.substring(0, str.length() - 1) : str;
    }

    public static boolean a(File file, File file2) {
        File parentFile = file2.getParentFile();
        if (!file.getAbsolutePath().equals(file2.getAbsolutePath()) && file2.exists()) {
            agz.a(file2);
        }
        if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
            return false;
        }
        try {
            boolean renameTo = file.renameTo(file2);
            if (renameTo) {
                return renameTo;
            }
            ahk.a(file, file2);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        int i = str.endsWith(File.separator) ? 1 : 0;
        int i2 = str2.endsWith(File.separator) ? 1 : 0;
        if (i + i2 == 1 && Math.abs(str.length() - str2.length()) == 1) {
            if (i == 1) {
                str = str.substring(0, str.length() - 1);
            }
            if (i2 == 1) {
                str2 = str2.substring(0, str2.length() - 1);
            }
        }
        return str.equalsIgnoreCase(str2);
    }

    public static String b(String str, String str2) {
        return (str.endsWith(File.separator) ? str + str2 : str + File.separator + str2).replace(a, File.separator);
    }
}
