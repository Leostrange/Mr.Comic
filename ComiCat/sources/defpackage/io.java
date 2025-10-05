package defpackage;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import defpackage.hy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.apache.http.HttpStatus;

/* renamed from: io  reason: default package */
/* compiled from: DbxRawClientV2 */
public abstract class io {
    private static final JsonFactory b = new JsonFactory();
    private static final Random c = new Random();
    public final hk a;
    /* access modifiers changed from: private */
    public final hl d;

    /* renamed from: io$a */
    /* compiled from: DbxRawClientV2 */
    interface a<T> {
        T a();
    }

    protected io(hl hlVar, hk hkVar) {
        if (hlVar == null) {
            throw new NullPointerException("requestConfig");
        } else if (hkVar == null) {
            throw new NullPointerException("host");
        } else {
            this.d = hlVar;
            this.a = hkVar;
        }
    }

    private static <T> T a(int i, a<T> aVar) {
        if (i == 0) {
            return aVar.a();
        }
        int i2 = 0;
        while (true) {
            try {
                return aVar.a();
            } catch (hu e) {
                if (i2 < i) {
                    i2++;
                    long nextInt = e.a + ((long) c.nextInt(1000));
                    if (nextInt > 0) {
                        try {
                            Thread.sleep(nextInt);
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                        }
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    private static <T> byte[] a(ie<T> ieVar, T t) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ieVar.a(t, (OutputStream) byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw ik.a("Impossible", e);
        }
    }

    private static <T> String b(ie<T> ieVar, T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonGenerator createGenerator = b.createGenerator((Writer) stringWriter);
            createGenerator.setHighestNonEscapedChar(126);
            ieVar.a(t, createGenerator);
            createGenerator.flush();
            return stringWriter.toString();
        } catch (IOException e) {
            throw ik.a("Impossible", e);
        }
    }

    public final <ArgT, ResT, ErrT> hi<ResT> a(String str, String str2, ArgT argt, List<hy.a> list, ie<ArgT> ieVar, ie<ResT> ieVar2, ie<ErrT> ieVar3) {
        final ArrayList arrayList = new ArrayList(list);
        a((List<hy.a>) arrayList);
        hm.a((List<hy.a>) arrayList, this.d);
        arrayList.add(new hy.a("Dropbox-API-Arg", b(ieVar, argt)));
        arrayList.add(new hy.a("Content-Type", ""));
        final byte[] bArr = new byte[0];
        final String str3 = str;
        final String str4 = str2;
        final ie<ResT> ieVar4 = ieVar2;
        final ie<ErrT> ieVar5 = ieVar3;
        return (hi) a(this.d.d, new a<hi<ResT>>() {
            /* access modifiers changed from: private */
            /* renamed from: b */
            public hi<ResT> a() {
                hy.b a2 = hm.a(io.this.d, "OfficialDropboxJavaSDKv2", str3, str4, bArr, arrayList);
                String b2 = hm.b(a2);
                try {
                    switch (a2.a) {
                        case HttpStatus.SC_OK /*200*/:
                        case HttpStatus.SC_PARTIAL_CONTENT /*206*/:
                            List list = a2.c.get("dropbox-api-result");
                            if (list == null) {
                                throw new hg(b2, "Missing Dropbox-API-Result header; " + a2.c);
                            } else if (list.size() == 0) {
                                throw new hg(b2, "No Dropbox-API-Result header; " + a2.c);
                            } else {
                                String str = (String) list.get(0);
                                if (str != null) {
                                    return new hi<>(ieVar4.a(str), a2.b);
                                }
                                throw new hg(b2, "Null Dropbox-API-Result header; " + a2.c);
                            }
                        case HttpStatus.SC_CONFLICT /*409*/:
                            throw ho.a(ieVar5, a2);
                        default:
                            throw hm.a(a2);
                    }
                } catch (JsonProcessingException e2) {
                    throw new hg(b2, "Bad JSON: " + e2.getMessage(), e2);
                } catch (IOException e3) {
                    throw new hr(e3);
                }
            }
        });
    }

    public final <ArgT, ResT, ErrT> ResT a(String str, String str2, ArgT argt, ie<ArgT> ieVar, ie<ResT> ieVar2, ie<ErrT> ieVar3) {
        final byte[] a2 = a(ieVar, argt);
        final ArrayList arrayList = new ArrayList();
        a((List<hy.a>) arrayList);
        if (!this.a.d.equals(str)) {
            hm.a((List<hy.a>) arrayList, this.d);
        }
        arrayList.add(new hy.a("Content-Type", "application/json; charset=utf-8"));
        final String str3 = str;
        final String str4 = str2;
        final ie<ResT> ieVar4 = ieVar2;
        final ie<ErrT> ieVar5 = ieVar3;
        return a(this.d.d, new a<ResT>() {
            public final ResT a() {
                hy.b a2 = hm.a(io.this.d, "OfficialDropboxJavaSDKv2", str3, str4, a2, arrayList);
                try {
                    switch (a2.a) {
                        case HttpStatus.SC_OK /*200*/:
                            return ieVar4.a(a2.b);
                        case HttpStatus.SC_CONFLICT /*409*/:
                            throw ho.a(ieVar5, a2);
                        default:
                            throw hm.a(a2);
                    }
                } catch (JsonProcessingException e2) {
                    throw new hg(hm.b(a2), "Bad JSON: " + e2.getMessage(), e2);
                } catch (IOException e3) {
                    throw new hr(e3);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public abstract void a(List<hy.a> list);
}
