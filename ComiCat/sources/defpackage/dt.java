package defpackage;

import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import defpackage.dy;

/* renamed from: dt  reason: default package */
/* compiled from: MenuDialogHelper */
public final class dt implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, dy.a {
    ds a;
    AlertDialog b;
    dr c;
    private dy.a d;

    public dt(ds dsVar) {
        this.a = dsVar;
    }

    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.a((MenuItem) (du) this.c.a().getItem(i), (dy) null, 0);
    }

    public final void onCloseMenu(ds dsVar, boolean z) {
        if ((z || dsVar == this.a) && this.b != null) {
            this.b.dismiss();
        }
        if (this.d != null) {
            this.d.onCloseMenu(dsVar, z);
        }
    }

    public final void onDismiss(DialogInterface dialogInterface) {
        this.c.onCloseMenu(this.a, true);
    }

    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.b.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.a.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.a.performShortcut(i, keyEvent, 0);
    }

    public final boolean onOpenSubMenu(ds dsVar) {
        if (this.d != null) {
            return this.d.onOpenSubMenu(dsVar);
        }
        return false;
    }
}
