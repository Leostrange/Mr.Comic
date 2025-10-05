package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import defpackage.cb;
import defpackage.cc;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ca  reason: default package */
/* compiled from: AccessibilityNodeProviderCompat */
public final class ca {
    private static final a b;
    public final Object a;

    /* renamed from: ca$a */
    /* compiled from: AccessibilityNodeProviderCompat */
    interface a {
        Object a(ca caVar);
    }

    /* renamed from: ca$b */
    /* compiled from: AccessibilityNodeProviderCompat */
    static class b extends d {
        b() {
        }

        public final Object a(final ca caVar) {
            return new AccessibilityNodeProvider(new cb.a() {
                public final boolean a() {
                    return ca.b();
                }

                public final List<Object> b() {
                    List list = null;
                    ca.c();
                    ArrayList arrayList = new ArrayList();
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        arrayList.add(((bz) list.get(i)).b);
                    }
                    return arrayList;
                }

                public final Object c() {
                    ca.a();
                    return null;
                }
            }) {
                final /* synthetic */ a a;

                {
                    this.a = r1;
                }

                public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                    this.a.c();
                    return null;
                }

                public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
                    return this.a.b();
                }

                public final boolean performAction(int i, int i2, Bundle bundle) {
                    return this.a.a();
                }
            };
        }
    }

    /* renamed from: ca$c */
    /* compiled from: AccessibilityNodeProviderCompat */
    static class c extends d {
        c() {
        }

        public final Object a(final ca caVar) {
            return new AccessibilityNodeProvider(new cc.a() {
                public final boolean a() {
                    return ca.b();
                }

                public final List<Object> b() {
                    List list = null;
                    ca.c();
                    ArrayList arrayList = new ArrayList();
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        arrayList.add(((bz) list.get(i)).b);
                    }
                    return arrayList;
                }

                public final Object c() {
                    ca.a();
                    return null;
                }

                public final Object d() {
                    ca.d();
                    return null;
                }
            }) {
                final /* synthetic */ a a;

                {
                    this.a = r1;
                }

                public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
                    this.a.c();
                    return null;
                }

                public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
                    return this.a.b();
                }

                public final AccessibilityNodeInfo findFocus(int i) {
                    this.a.d();
                    return null;
                }

                public final boolean performAction(int i, int i2, Bundle bundle) {
                    return this.a.a();
                }
            };
        }
    }

    /* renamed from: ca$d */
    /* compiled from: AccessibilityNodeProviderCompat */
    static class d implements a {
        d() {
        }

        public Object a(ca caVar) {
            return null;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            b = new c();
        } else if (Build.VERSION.SDK_INT >= 16) {
            b = new b();
        } else {
            b = new d();
        }
    }

    public ca() {
        this.a = b.a(this);
    }

    public ca(Object obj) {
        this.a = obj;
    }

    public static bz a() {
        return null;
    }

    public static boolean b() {
        return false;
    }

    public static List<bz> c() {
        return null;
    }

    public static bz d() {
        return null;
    }
}
