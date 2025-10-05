package defpackage;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* renamed from: mn  reason: default package */
/* compiled from: UrlEncodedParser */
public final class mn implements of {
    public static final String a;

    static {
        ly lyVar = new ly("application/x-www-form-urlencoded");
        Charset charset = np.a;
        lyVar.a("charset", charset == null ? null : charset.name());
        a = lyVar.a();
    }

    private static Object a(Type type, List<Type> list, String str) {
        return ns.a(ns.a(list, type), str);
    }

    private static void a(Reader reader, Object obj) {
        Class<?> cls = obj.getClass();
        nq a2 = nq.a(cls);
        List asList = Arrays.asList(new Type[]{cls});
        nw nwVar = nw.class.isAssignableFrom(cls) ? (nw) obj : null;
        Map map = Map.class.isAssignableFrom(cls) ? (Map) obj : null;
        nm nmVar = new nm(obj);
        StringWriter stringWriter = new StringWriter();
        StringWriter stringWriter2 = new StringWriter();
        boolean z = true;
        while (true) {
            int read = reader.read();
            switch (read) {
                case -1:
                case 38:
                    String b = op.b(stringWriter.toString());
                    if (b.length() != 0) {
                        String b2 = op.b(stringWriter2.toString());
                        nv a3 = a2.a(b);
                        if (a3 != null) {
                            Type a4 = ns.a((List<Type>) asList, a3.b.getGenericType());
                            if (on.a(a4)) {
                                Class<?> a5 = on.a((List<Type>) asList, on.b(a4));
                                nmVar.a(a3.b, a5, a((Type) a5, (List<Type>) asList, b2));
                            } else if (on.a(on.a((List<Type>) asList, a4), (Class<?>) Iterable.class)) {
                                Collection<Object> collection = (Collection) a3.a(obj);
                                if (collection == null) {
                                    collection = ns.b(a4);
                                    a3.a(obj, (Object) collection);
                                }
                                collection.add(a(a4 == Object.class ? null : on.c(a4), (List<Type>) asList, b2));
                            } else {
                                a3.a(obj, a(a4, (List<Type>) asList, b2));
                            }
                        } else if (map != null) {
                            ArrayList arrayList = (ArrayList) map.get(b);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                if (nwVar != null) {
                                    nwVar.d(b, arrayList);
                                } else {
                                    map.put(b, arrayList);
                                }
                            }
                            arrayList.add(b2);
                        }
                    }
                    stringWriter = new StringWriter();
                    stringWriter2 = new StringWriter();
                    if (read != -1) {
                        z = true;
                        break;
                    } else {
                        nmVar.a();
                        return;
                    }
                case 61:
                    z = false;
                    break;
                default:
                    if (!z) {
                        stringWriter2.write(read);
                        break;
                    } else {
                        stringWriter.write(read);
                        break;
                    }
            }
        }
    }

    public static void a(String str, Object obj) {
        if (str != null) {
            try {
                a((Reader) new StringReader(str), obj);
            } catch (IOException e) {
                throw om.a(e);
            }
        }
    }

    public final <T> T a(InputStream inputStream, Charset charset, Class<T> cls) {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, charset);
        oh.a(cls instanceof Class, (Object) "dataType has to be of type Class<?>");
        T a2 = on.a(cls);
        a((Reader) new BufferedReader(inputStreamReader), (Object) a2);
        return a2;
    }
}
