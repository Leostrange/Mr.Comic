package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;

/* renamed from: eo  reason: default package */
/* compiled from: ThemeUtils */
public final class eo {
    static final int[] a = {-16842910};
    static final int[] b = {16842908};
    static final int[] c = {16843518};
    static final int[] d = {16842919};
    static final int[] e = {16842912};
    static final int[] f = {16842913};
    static final int[] g = {-16842919, -16842908};
    static final int[] h = new int[0];
    private static final ThreadLocal<TypedValue> i = new ThreadLocal<>();
    private static final int[] j = new int[1];

    public static int a(Context context, int i2) {
        j[0] = i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, j);
        try {
            return obtainStyledAttributes.getColor(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    static int a(Context context, int i2, float f2) {
        int a2 = a(context, i2);
        return h.b(a2, Math.round(((float) Color.alpha(a2)) * f2));
    }

    public static ColorStateList a(int i2, int i3) {
        return new ColorStateList(new int[][]{a, h}, new int[]{i3, i2});
    }

    public static ColorStateList b(Context context, int i2) {
        j[0] = i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, j);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int c(Context context, int i2) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null && b2.isStateful()) {
            return b2.getColorForState(a, b2.getDefaultColor());
        }
        TypedValue typedValue = i.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            i.set(typedValue);
        }
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        return a(context, i2, typedValue.getFloat());
    }
}
