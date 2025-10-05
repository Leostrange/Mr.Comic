package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

/* renamed from: as  reason: default package */
/* compiled from: LayoutInflaterCompatBase */
final class as {

    /* renamed from: as$a */
    /* compiled from: LayoutInflaterCompatBase */
    static class a implements LayoutInflater.Factory {
        final au a;

        a(au auVar) {
            this.a = auVar;
        }

        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.a.onCreateView((View) null, str, context, attributeSet);
        }

        public String toString() {
            return getClass().getName() + "{" + this.a + "}";
        }
    }
}
