package defpackage;

import java.io.IOException;
import java.util.HashMap;

/* renamed from: yx  reason: default package */
/* compiled from: Dfs */
public final class yx {
    static abx a = abx.a();
    static final boolean b = xj.a("jcifs.smb.client.dfs.strictView", false);
    static final long c = xj.a("jcifs.smb.client.dfs.ttl", 300);
    static final boolean d = xj.a("jcifs.smb.client.dfs.disabled", false);
    protected static a e = new a(0);
    protected a f = null;
    protected a g = null;

    /* renamed from: yx$a */
    /* compiled from: Dfs */
    static class a {
        long a;
        HashMap b;

        a(long j) {
            this.a = System.currentTimeMillis() + (1000 * (j == 0 ? yx.c : j));
            this.b = new HashMap();
        }
    }

    private static aax a(String str, zl zlVar) {
        yy a2;
        yy yyVar;
        if (d) {
            return null;
        }
        try {
            a2 = aax.a(xk.b(str), 0).a(zlVar, "\\" + str, 1);
            if (a2 != null) {
                yyVar = a2;
                do {
                    return aax.a(xk.a(yyVar.c), 0);
                } while (yyVar == a2);
                throw e;
            }
        } catch (IOException e2) {
            yyVar = yyVar.i;
            if (yyVar == a2) {
                throw e2;
            }
        } catch (IOException e3) {
            if (abx.a >= 3) {
                e3.printStackTrace(a);
            }
            if (b && (e3 instanceof zo)) {
                throw ((zo) e3);
            }
        }
        return null;
    }

    private static yy a(aax aax, String str, String str2, String str3, zl zlVar) {
        if (d) {
            return null;
        }
        try {
            String str4 = "\\" + str + "\\" + str2;
            if (str3 != null) {
                str4 = str4 + str3;
            }
            yy a2 = aax.a(zlVar, str4, 0);
            if (a2 != null) {
                return a2;
            }
        } catch (IOException e2) {
            if (abx.a >= 4) {
                e2.printStackTrace(a);
            }
            if (b && (e2 instanceof zo)) {
                throw ((zo) e2);
            }
        }
        return null;
    }

    public final HashMap a(zl zlVar) {
        if (d || zlVar.h == "?") {
            return null;
        }
        if (this.f != null && System.currentTimeMillis() > this.f.a) {
            this.f = null;
        }
        if (this.f != null) {
            return this.f.b;
        }
        try {
            aax a2 = aax.a(xk.b(zlVar.h), 0);
            a aVar = new a(c * 10);
            yy a3 = a2.a(zlVar, "", 0);
            if (a3 != null) {
                yy yyVar = a3;
                do {
                    aVar.b.put(yyVar.c.toLowerCase(), new HashMap());
                    yyVar = yyVar.i;
                } while (yyVar != a3);
                this.f = aVar;
                return this.f.b;
            }
        } catch (IOException e2) {
            if (abx.a >= 3) {
                e2.printStackTrace(a);
            }
            if (b && (e2 instanceof zo)) {
                throw ((zo) e2);
            }
        }
        return null;
    }

    public final synchronized yy a(String str, String str2, String str3, zl zlVar) {
        yy yyVar;
        aax aax;
        a aVar;
        aax aax2;
        yyVar = null;
        long currentTimeMillis = System.currentTimeMillis();
        if (d || str2.equals("IPC$")) {
            yyVar = null;
        } else {
            HashMap a2 = a(zlVar);
            if (a2 != null) {
                str = str.toLowerCase();
                HashMap hashMap = (HashMap) a2.get(str);
                if (hashMap != null) {
                    str2 = str2.toLowerCase();
                    a aVar2 = (a) hashMap.get(str2);
                    if (aVar2 != null && currentTimeMillis > aVar2.a) {
                        hashMap.remove(str2);
                        aVar2 = null;
                    }
                    if (aVar2 == null) {
                        aax a3 = a(str, zlVar);
                        if (a3 == null) {
                            yyVar = null;
                        } else {
                            yy a4 = a(a3, str, str2, str3, zlVar);
                            if (a4 != null) {
                                int length = str.length() + 1 + 1 + str2.length();
                                a aVar3 = new a(0);
                                yy yyVar2 = a4;
                                do {
                                    if (str3 == null) {
                                        yyVar2.j = aVar3.b;
                                        yyVar2.k = "\\";
                                    }
                                    yyVar2.a -= length;
                                    yyVar2 = yyVar2.i;
                                } while (yyVar2 != a4);
                                if (a4.k != null) {
                                    aVar3.b.put(a4.k, a4);
                                }
                                hashMap.put(str2, aVar3);
                                a aVar4 = aVar3;
                                aax = a3;
                                yyVar = a4;
                                aVar = aVar4;
                            } else if (str3 == null) {
                                hashMap.put(str2, e);
                                a aVar5 = aVar2;
                                aax = a3;
                                yyVar = a4;
                                aVar = aVar5;
                            } else {
                                a aVar6 = aVar2;
                                aax = a3;
                                yyVar = a4;
                                aVar = aVar6;
                            }
                        }
                    } else if (aVar2 == e) {
                        aax = null;
                        aVar = null;
                    } else {
                        a aVar7 = aVar2;
                        aax = null;
                        aVar = aVar7;
                    }
                    if (aVar != null) {
                        yy yyVar3 = (yy) aVar.b.get("\\");
                        if (yyVar3 == null || currentTimeMillis <= yyVar3.h) {
                            yyVar = yyVar3;
                        } else {
                            aVar.b.remove("\\");
                            yyVar = null;
                        }
                        if (yyVar == null) {
                            if (aax == null) {
                                aax2 = a(str, zlVar);
                                if (aax2 == null) {
                                    yyVar = null;
                                }
                            } else {
                                aax2 = aax;
                            }
                            yyVar = a(aax2, str, str2, str3, zlVar);
                            if (yyVar != null) {
                                yyVar.a -= ((str.length() + 1) + 1) + str2.length();
                                yyVar.e = "\\";
                                aVar.b.put("\\", yyVar);
                            }
                        }
                    }
                }
            }
            if (yyVar == null && str3 != null) {
                if (this.g != null && currentTimeMillis > this.g.a) {
                    this.g = null;
                }
                if (this.g == null) {
                    this.g = new a(0);
                }
                String str4 = "\\" + str + "\\" + str2;
                if (!str3.equals("\\")) {
                    str4 = str4 + str3;
                }
                String lowerCase = str4.toLowerCase();
                for (String str5 : this.g.b.keySet()) {
                    int length2 = str5.length();
                    boolean z = false;
                    if (length2 == lowerCase.length()) {
                        z = str5.equals(lowerCase);
                    } else if (length2 < lowerCase.length()) {
                        z = str5.regionMatches(0, lowerCase, 0, length2) && lowerCase.charAt(length2) == '\\';
                    }
                    yyVar = z ? (yy) this.g.b.get(str5) : yyVar;
                }
            }
        }
        return yyVar;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(String str, yy yyVar) {
        if (!d) {
            int indexOf = str.indexOf(92, 1);
            int indexOf2 = str.indexOf(92, indexOf + 1);
            String substring = str.substring(1, indexOf);
            String substring2 = str.substring(indexOf + 1, indexOf2);
            String lowerCase = str.substring(0, yyVar.a).toLowerCase();
            int length = lowerCase.length();
            while (length > 1 && lowerCase.charAt(length - 1) == '\\') {
                length--;
            }
            if (length < lowerCase.length()) {
                lowerCase = lowerCase.substring(0, length);
            }
            yyVar.a -= ((substring.length() + 1) + 1) + substring2.length();
            if (this.g != null && System.currentTimeMillis() + 10000 > this.g.a) {
                this.g = null;
            }
            if (this.g == null) {
                this.g = new a(0);
            }
            this.g.b.put(lowerCase, yyVar);
        }
    }
}
