package defpackage;

/* renamed from: po  reason: default package */
/* compiled from: CollectPreconditions */
final class po {
    static void a(boolean z) {
        if (!z) {
            throw new IllegalStateException(String.valueOf("no calls to next() since the last call to remove()"));
        }
    }
}
