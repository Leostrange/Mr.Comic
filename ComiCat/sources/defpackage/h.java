package defpackage;

import android.graphics.Color;

/* renamed from: h  reason: default package */
/* compiled from: ColorUtils */
public final class h {
    private static double a(int i) {
        double red = ((double) Color.red(i)) / 255.0d;
        double pow = red < 0.03928d ? red / 12.92d : Math.pow((red + 0.055d) / 1.055d, 2.4d);
        double green = ((double) Color.green(i)) / 255.0d;
        double pow2 = green < 0.03928d ? green / 12.92d : Math.pow((green + 0.055d) / 1.055d, 2.4d);
        double blue = ((double) Color.blue(i)) / 255.0d;
        return (pow * 0.2126d) + (pow2 * 0.7152d) + (0.0722d * (blue < 0.03928d ? blue / 12.92d : Math.pow((blue + 0.055d) / 1.055d, 2.4d)));
    }

    private static float a(float f, float f2) {
        if (f < 0.0f) {
            return 0.0f;
        }
        return f <= f2 ? f : f2;
    }

    public static int a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha) * (255 - alpha2)) / 255);
        return Color.argb(i3, a(Color.red(i), alpha2, Color.red(i2), alpha, i3), a(Color.green(i), alpha2, Color.green(i2), alpha, i3), a(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    public static int a(int i, int i2, float f) {
        int i3 = 0;
        int i4 = 255;
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent");
        } else if (c(b(i, 255), i2) < ((double) f)) {
            return -1;
        } else {
            int i5 = 0;
            while (i5 <= 10 && i4 - i3 > 10) {
                int i6 = (i3 + i4) / 2;
                if (c(b(i, i6), i2) >= ((double) f)) {
                    i4 = i6;
                    i6 = i3;
                }
                i5++;
                i3 = i6;
            }
            return i4;
        }
    }

    private static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    public static int a(float[] fArr) {
        int round;
        int round2;
        int i = 0;
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float abs = (1.0f - Math.abs((2.0f * f3) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * abs);
        float abs2 = abs * (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f));
        switch (((int) f) / 60) {
            case 0:
                round = Math.round((abs + f4) * 255.0f);
                round2 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round(255.0f * f4);
                break;
            case 1:
                round = Math.round((abs2 + f4) * 255.0f);
                round2 = Math.round((abs + f4) * 255.0f);
                i = Math.round(255.0f * f4);
                break;
            case 2:
                round = Math.round(255.0f * f4);
                round2 = Math.round((abs + f4) * 255.0f);
                i = Math.round((abs2 + f4) * 255.0f);
                break;
            case 3:
                round = Math.round(255.0f * f4);
                round2 = Math.round((abs2 + f4) * 255.0f);
                i = Math.round((abs + f4) * 255.0f);
                break;
            case 4:
                round = Math.round((abs2 + f4) * 255.0f);
                round2 = Math.round(255.0f * f4);
                i = Math.round((abs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                round = Math.round((abs + f4) * 255.0f);
                round2 = Math.round(255.0f * f4);
                i = Math.round((abs2 + f4) * 255.0f);
                break;
            default:
                round2 = 0;
                round = 0;
                break;
        }
        return Color.rgb(b(round), b(round2), b(i));
    }

    public static void a(int i, int i2, int i3, float[] fArr) {
        float f;
        float abs;
        float f2 = ((float) i) / 255.0f;
        float f3 = ((float) i2) / 255.0f;
        float f4 = ((float) i3) / 255.0f;
        float max = Math.max(f2, Math.max(f3, f4));
        float min = Math.min(f2, Math.min(f3, f4));
        float f5 = max - min;
        float f6 = (max + min) / 2.0f;
        if (max == min) {
            abs = 0.0f;
            f = 0.0f;
        } else {
            f = max == f2 ? ((f3 - f4) / f5) % 6.0f : max == f3 ? ((f4 - f2) / f5) + 2.0f : ((f2 - f3) / f5) + 4.0f;
            abs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        fArr[0] = a(f7, 360.0f);
        fArr[1] = a(abs, 1.0f);
        fArr[2] = a(f6, 1.0f);
    }

    private static int b(int i) {
        if (i < 0) {
            return 0;
        }
        if (i > 255) {
            return 255;
        }
        return i;
    }

    public static int b(int i, int i2) {
        if (i2 >= 0 && i2 <= 255) {
            return (16777215 & i) | (i2 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    private static double c(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent");
        }
        if (Color.alpha(i) < 255) {
            i = a(i, i2);
        }
        double a = a(i) + 0.05d;
        double a2 = a(i2) + 0.05d;
        return Math.max(a, a2) / Math.min(a, a2);
    }
}
