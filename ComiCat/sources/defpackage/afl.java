package defpackage;

import android.app.Activity;
import android.content.ContentResolver;
import android.provider.Settings;
import android.view.WindowManager;

/* renamed from: afl  reason: default package */
/* compiled from: BrightnessHandler */
public final class afl {
    public Activity a;
    public boolean b = false;
    boolean c = false;

    public afl(Activity activity) {
        this.a = activity;
    }

    public static void a(Activity activity, int i) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.screenBrightness = ((float) i) / 100.0f;
        activity.getWindow().setAttributes(attributes);
    }

    public final void a() {
        if (this.b) {
            c();
            this.b = false;
        }
    }

    public final void b() {
        ContentResolver contentResolver = this.a.getContentResolver();
        this.c = Settings.System.getInt(contentResolver, "screen_brightness_mode", 0) != 0;
        if (this.c) {
            Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
        }
    }

    public final void c() {
        ContentResolver contentResolver = this.a.getContentResolver();
        if (this.c) {
            Settings.System.putInt(contentResolver, "screen_brightness_mode", 1);
            this.c = false;
        }
    }
}
