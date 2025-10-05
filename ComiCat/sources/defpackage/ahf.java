package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.Toast;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: ahf  reason: default package */
/* compiled from: WidgetUtils */
public final class ahf {
    public static String a(Activity activity, int i) {
        EditText editText = (EditText) activity.findViewById(i);
        if (editText != null) {
            return editText.getText().toString().trim();
        }
        return null;
    }

    public static void a(Activity activity, int i, String str) {
        EditText editText = (EditText) activity.findViewById(i);
        if (editText != null) {
            editText.setText(str);
        }
    }

    public static final void a(Dialog dialog) {
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 84 && keyEvent.getRepeatCount() == 0;
            }
        });
    }

    public static void a(Context context, int i) {
        a(context, ComicReaderApp.a().getString(i));
    }

    public static void a(Context context, String str) {
        Toast.makeText(context, str, 0).show();
    }

    public static void a(Context context, String str, boolean z) {
        Toast makeText = Toast.makeText(context, str, z ? 0 : 1);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }

    public static boolean a() {
        return ComicReaderApp.a().getResources().getConfiguration().orientation == 2;
    }

    public static void b(Context context, int i) {
        a(context, ComicReaderApp.a().getString(i), true);
    }
}
