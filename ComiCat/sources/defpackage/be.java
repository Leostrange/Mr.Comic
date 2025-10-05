package defpackage;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;

/* renamed from: be  reason: default package */
/* compiled from: PagerTitleStripIcs */
final class be {

    /* renamed from: be$a */
    /* compiled from: PagerTitleStripIcs */
    public static class a extends SingleLineTransformationMethod {
        private Locale a;

        public a(Context context) {
            this.a = context.getResources().getConfiguration().locale;
        }

        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.a);
            }
            return null;
        }
    }
}
