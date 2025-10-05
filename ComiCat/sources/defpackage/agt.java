package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: agt  reason: default package */
/* compiled from: Logger */
public final class agt {
    public static boolean c = false;
    private static agt d = null;
    public BufferedWriter a;
    public File b;

    @SuppressLint({"NewApi"})
    private agt() {
        if (c) {
            try {
                this.b = new File(ComicReaderApp.a().getExternalFilesDir("Logs"), "Comicatlog.log");
                this.a = new BufferedWriter(new FileWriter(this.b));
                a("ComiCat App Version: " + agv.d() + "\n\n");
                a("Device: " + Build.MODEL + "\n\n");
                a("********************* START OF LOG ***************************");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static agt a() {
        if (d == null) {
            d = new agt();
        }
        return d;
    }

    public static void a(Exception exc) {
        if (c) {
            agt a2 = a();
            try {
                if (a2.a != null) {
                    StringWriter stringWriter = new StringWriter();
                    stringWriter.append(exc.toString() + "\n\n");
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    stringWriter.append("--------- Stack trace ---------\n");
                    exc.printStackTrace(printWriter);
                    stringWriter.append("-------------------------------\n\n");
                    Throwable cause = exc.getCause();
                    if (cause != null) {
                        stringWriter.append("--------- Cause ---------\n\n");
                        stringWriter.append(cause.toString() + "\n");
                        cause.printStackTrace(printWriter);
                        stringWriter.append("-------------------------------\n\n");
                    }
                    a2.a.write(stringWriter.toString());
                    a2.a.flush();
                    printWriter.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            exc.printStackTrace();
        }
    }

    public static void a(String str, String str2) {
        if (c) {
            a().a(str + ": " + str2);
        }
    }

    public final void a(String str) {
        if (this.a != null) {
            try {
                this.a.write(str);
                this.a.newLine();
                this.a.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
