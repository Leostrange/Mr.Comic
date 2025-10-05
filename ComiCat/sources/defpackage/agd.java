package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.KeyEvent;

/* renamed from: agd  reason: default package */
/* compiled from: Utils */
public final class agd {
    public static final void a(Dialog dialog) {
        dialog.setOnKeyListener(new DialogInterface.OnKeyListener() {
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 84 && keyEvent.getRepeatCount() == 0;
            }
        });
    }
}
