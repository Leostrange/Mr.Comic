package defpackage;

import java.io.IOException;
import org.apache.http.message.TokenParser;

/* renamed from: md  reason: default package */
/* compiled from: HttpResponseException */
public class md extends IOException {
    private final String a;
    public final int b;
    private final transient lw c;
    private final String d;

    /* renamed from: md$a */
    /* compiled from: HttpResponseException */
    public static class a {
        int a;
        String b;
        lw c;
        public String d;
        public String e;

        public a(int i, String str, lw lwVar) {
            ni.a(i >= 0);
            this.a = i;
            this.b = str;
            this.c = (lw) ni.a(lwVar);
        }

        public a(mc mcVar) {
            this(mcVar.c, mcVar.d, mcVar.e.c);
            try {
                this.d = mcVar.e();
                if (this.d.length() == 0) {
                    this.d = null;
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            StringBuilder a2 = md.a(mcVar);
            if (this.d != null) {
                a2.append(ok.a).append(this.d);
            }
            this.e = a2.toString();
        }
    }

    public md(mc mcVar) {
        this(new a(mcVar));
    }

    protected md(a aVar) {
        super(aVar.e);
        this.b = aVar.a;
        this.a = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
    }

    public static StringBuilder a(mc mcVar) {
        StringBuilder sb = new StringBuilder();
        int i = mcVar.c;
        if (i != 0) {
            sb.append(i);
        }
        String str = mcVar.d;
        if (str != null) {
            if (i != 0) {
                sb.append(TokenParser.SP);
            }
            sb.append(str);
        }
        return sb;
    }
}
