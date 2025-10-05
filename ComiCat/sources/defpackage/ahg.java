package defpackage;

import android.support.v4.app.FragmentTransaction;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* renamed from: ahg  reason: default package */
/* compiled from: ZipBuilder */
public final class ahg {
    ZipOutputStream a;
    String b = "";
    boolean c;
    byte[] d = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];

    public ahg(String str) {
        try {
            this.a = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(str)));
            this.c = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String b(String str) {
        return this.b + str;
    }

    public final void a(String str) {
        this.b = str.length() != 0 ? str + "/" : "";
    }

    public final boolean a() {
        try {
            this.a.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean a(File file) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file), FragmentTransaction.TRANSIT_ENTER_MASK);
            this.a.putNextEntry(new ZipEntry(b(file.getName())));
            while (true) {
                int read = bufferedInputStream.read(this.d, 0, FragmentTransaction.TRANSIT_ENTER_MASK);
                if (read != -1) {
                    this.a.write(this.d, 0, read);
                } else {
                    bufferedInputStream.close();
                    this.a.closeEntry();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean a(String str, InputStream inputStream) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, FragmentTransaction.TRANSIT_ENTER_MASK);
            this.a.putNextEntry(new ZipEntry(b(str)));
            while (true) {
                int read = bufferedInputStream.read(this.d, 0, FragmentTransaction.TRANSIT_ENTER_MASK);
                if (read != -1) {
                    this.a.write(this.d, 0, read);
                } else {
                    bufferedInputStream.close();
                    this.a.closeEntry();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
