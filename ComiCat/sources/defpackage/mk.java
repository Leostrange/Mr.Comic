package defpackage;

import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* renamed from: mk  reason: default package */
/* compiled from: MultipartContent */
public final class mk extends ll {
    public ArrayList<a> b = new ArrayList<>();

    /* renamed from: mk$a */
    /* compiled from: MultipartContent */
    public static final class a {
        ls a;
        lw b;
        lt c;

        public a() {
            this((ls) null);
        }

        public a(ls lsVar) {
            this(lsVar, (byte) 0);
        }

        private a(ls lsVar, byte b2) {
            this.b = null;
            this.a = lsVar;
        }
    }

    public mk() {
        super(new ly("multipart/related").a("boundary", "__END_OF_PART__"));
    }

    public final void a(OutputStream outputStream) {
        oj ojVar;
        long a2;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, b());
        String a3 = this.a.a("boundary");
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            a next = it.next();
            lw lwVar = new lw();
            lwVar.acceptEncoding = lw.a(null);
            if (next.b != null) {
                lwVar.a(next.b);
            }
            lwVar.b((String) null).e((String) null).d((String) null).a((Long) null).d("Content-Transfer-Encoding", (Object) null);
            ls lsVar = next.a;
            if (lsVar != null) {
                lwVar.d("Content-Transfer-Encoding", (Object) Arrays.asList(new String[]{"binary"}));
                lwVar.d(lsVar.c());
                lt ltVar = next.c;
                if (ltVar == null) {
                    a2 = lsVar.a();
                    ojVar = lsVar;
                } else {
                    lwVar.b(ltVar.a());
                    ojVar = new lu(lsVar, ltVar);
                    a2 = ll.a(lsVar);
                }
                if (a2 != -1) {
                    lwVar.a(Long.valueOf(a2));
                }
            } else {
                ojVar = null;
            }
            outputStreamWriter.write("--");
            outputStreamWriter.write(a3);
            outputStreamWriter.write("\r\n");
            lw.a(lwVar, (Writer) outputStreamWriter);
            if (ojVar != null) {
                outputStreamWriter.write("\r\n");
                outputStreamWriter.flush();
                ojVar.a(outputStream);
            }
            outputStreamWriter.write("\r\n");
        }
        outputStreamWriter.write("--");
        outputStreamWriter.write(a3);
        outputStreamWriter.write("--");
        outputStreamWriter.write("\r\n");
        outputStreamWriter.flush();
    }

    public final boolean d() {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            if (!it.next().a.d()) {
                return false;
            }
        }
        return true;
    }
}
