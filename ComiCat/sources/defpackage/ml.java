package defpackage;

import defpackage.nj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;

/* renamed from: ml  reason: default package */
/* compiled from: UriTemplate */
public final class ml {
    static final Map<Character, a> a = new HashMap();

    /* renamed from: ml$a */
    /* compiled from: UriTemplate */
    enum a {
        PLUS('+', "", ",", false, true),
        HASH('#', "#", ",", false, true),
        DOT('.', ".", ".", false, false),
        FORWARD_SLASH('/', "/", "/", false, false),
        SEMI_COLON(';', ";", ";", true, false),
        QUERY('?', "?", "&", true, false),
        AMP('&', "&", "&", true, false),
        SIMPLE((String) null, "", ",", false, false);
        
        final Character i;
        final String j;
        final String k;
        final boolean l;
        final boolean m;

        private a(Character ch, String str, String str2, boolean z, boolean z2) {
            this.i = ch;
            this.j = (String) ni.a(str);
            this.k = (String) ni.a(str2);
            this.l = z;
            this.m = z2;
            if (ch != null) {
                ml.a.put(ch, this);
            }
        }

        /* access modifiers changed from: package-private */
        public final String a(String str) {
            return this.m ? op.c(str) : op.a(str);
        }
    }

    static {
        a.values();
    }

    private static String a(String str, Object obj) {
        Map<String, Object> a2 = a(obj);
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int indexOf = str.indexOf(123, i);
            if (indexOf == -1) {
                sb.append(str.substring(i));
                break;
            }
            sb.append(str.substring(i, indexOf));
            int indexOf2 = str.indexOf(125, indexOf + 2);
            int i2 = indexOf2 + 1;
            String substring = str.substring(indexOf + 1, indexOf2);
            a aVar = a.get(Character.valueOf(substring.charAt(0)));
            a aVar2 = aVar == null ? a.SIMPLE : aVar;
            ng a3 = ng.a();
            ni.a(a3);
            ListIterator<String> listIterator = new nj(new nj.b(a3) {
                final /* synthetic */ ng a;

                {
                    this.a = r1;
                }

                public final /* synthetic */ Iterator a(nj njVar, CharSequence charSequence) {
                    return new a(njVar, charSequence) {
                        /* access modifiers changed from: package-private */
                        public final int a(int i) {
                            return AnonymousClass1.this.a.a(this.c, i);
                        }

                        /* access modifiers changed from: package-private */
                        public final int b(int i) {
                            return i + 1;
                        }
                    };
                }
            }).a(substring).listIterator();
            boolean z = true;
            while (listIterator.hasNext()) {
                String next = listIterator.next();
                boolean endsWith = next.endsWith("*");
                int i3 = (listIterator.nextIndex() != 1 || aVar2.i == null) ? 0 : 1;
                int length2 = next.length();
                if (endsWith) {
                    length2--;
                }
                String substring2 = next.substring(i3, length2);
                Object remove = a2.remove(substring2);
                if (remove != null) {
                    if (!z) {
                        sb.append(aVar2.k);
                    } else {
                        sb.append(aVar2.j);
                        z = false;
                    }
                    if (remove instanceof Iterator) {
                        remove = a(substring2, (Iterator<?>) (Iterator) remove, endsWith, aVar2);
                    } else if ((remove instanceof Iterable) || remove.getClass().isArray()) {
                        remove = a(substring2, (Iterator<?>) on.a(remove).iterator(), endsWith, aVar2);
                    } else if (remove.getClass().isEnum()) {
                        if (nv.a((Enum<?>) (Enum) remove).c != null) {
                            if (aVar2.l) {
                                remove = String.format("%s=%s", new Object[]{substring2, remove});
                            }
                            remove = op.c(remove.toString());
                        }
                    } else if (!ns.d(remove)) {
                        remove = a(substring2, a(remove), endsWith, aVar2);
                    } else {
                        if (aVar2.l) {
                            remove = String.format("%s=%s", new Object[]{substring2, remove});
                        }
                        remove = aVar2.m ? op.d(remove.toString()) : op.c(remove.toString());
                    }
                    sb.append(remove);
                }
            }
            i = i2;
        }
        lr.a(a2.entrySet(), sb);
        return sb.toString();
    }

    public static String a(String str, String str2, Object obj) {
        if (str2.startsWith("/")) {
            lr lrVar = new lr(str);
            lrVar.a = lr.g((String) null);
            str2 = lrVar.e() + str2;
        } else if (!str2.startsWith("http://") && !str2.startsWith("https://")) {
            str2 = str + str2;
        }
        return a(str2, obj);
    }

    private static String a(String str, Iterator<?> it, boolean z, a aVar) {
        String str2;
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = aVar.k;
        } else {
            str2 = ",";
            if (aVar.l) {
                sb.append(op.c(str));
                sb.append("=");
            }
        }
        while (it.hasNext()) {
            if (z && aVar.l) {
                sb.append(op.c(str));
                sb.append("=");
            }
            sb.append(aVar.a(it.next().toString()));
            if (it.hasNext()) {
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    private static String a(String str, Map<String, Object> map, boolean z, a aVar) {
        String str2;
        String str3;
        if (map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            str2 = "=";
            str3 = aVar.k;
        } else {
            if (aVar.l) {
                sb.append(op.c(str));
                sb.append("=");
            }
            str2 = ",";
            str3 = ",";
        }
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry next = it.next();
            String a2 = aVar.a((String) next.getKey());
            String a3 = aVar.a(next.getValue().toString());
            sb.append(a2);
            sb.append(str2);
            sb.append(a3);
            if (it.hasNext()) {
                sb.append(str3);
            }
        }
        return sb.toString();
    }

    private static Map<String, Object> a(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry next : ns.b(obj).entrySet()) {
            Object value = next.getValue();
            if (value != null && !ns.a(value)) {
                linkedHashMap.put(next.getKey(), value);
            }
        }
        return linkedHashMap;
    }
}
