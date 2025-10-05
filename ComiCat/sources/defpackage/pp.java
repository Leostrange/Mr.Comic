package defpackage;

import java.util.Collection;

/* renamed from: pp  reason: default package */
/* compiled from: Collections2 */
public final class pp {
    static final pe a = new pe(", ").a("null");

    static boolean a(Collection<?> collection, Object obj) {
        pg.a(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }
}
