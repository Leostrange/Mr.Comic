package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import java.util.ArrayList;
import meanlabs.comicat.R;

/* renamed from: afs  reason: default package */
/* compiled from: GestureSelectorDialog */
public final class afs {
    Activity a;

    /* renamed from: afs$a */
    /* compiled from: GestureSelectorDialog */
    class a {
        public String a;
        public String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public afs(Activity activity) {
        this.a = activity;
    }

    public final void a(final DialogInterface.OnClickListener onClickListener) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new a("swipe-for-page-turn", this.a.getString(R.string.prefSwipeForPageTrun)));
        arrayList.add(new a("tap-for-page-turn", this.a.getString(R.string.prefTapForPageTrun)));
        arrayList.add(new a("doubletap-for-page-fitting", this.a.getString(R.string.prefDoubleTapForViewMode)));
        arrayList.add(new a("press-and-hold-for-seek", this.a.getString(R.string.prefPressHoldForSeek)));
        arrayList.add(new a("no-swipe-on-zoom", this.a.getString(R.string.disableSwipe)));
        arrayList.add(new a("press-and-hold-for-menu", this.a.getString(R.string.hlpContextMenu)));
        arrayList.add(new a("left-edge-swipe-for-settings", this.a.getString(R.string.leftEdgeSwipe)));
        arrayList.add(new a("right-edge-swipe-for-tools", this.a.getString(R.string.rightEdgeSwipe)));
        arrayList.add(new a("left-press-and-hold-for-prefs", this.a.getString(R.string.leftLongpress)));
        arrayList.add(new a("right-press-and-hold-for-tools", this.a.getString(R.string.rightLongpress)));
        arrayList.add(new a("use-volume-controls", this.a.getString(R.string.useVolumeControlsMsg)));
        CharSequence[] charSequenceArr = new CharSequence[arrayList.size()];
        boolean[] zArr = new boolean[arrayList.size()];
        final aeu aeu = aei.a().d;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                a aVar = (a) arrayList.get(i2);
                charSequenceArr[i2] = aVar.b;
                zArr[i2] = aeu.c(aVar.a);
                i = i2 + 1;
            } else {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.a);
                builder.setTitle(R.string.touchOptions);
                builder.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                        aeu.a(((a) arrayList.get(i)).a, z);
                    }
                });
                builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        if (onClickListener != null) {
                            onClickListener.onClick(dialogInterface, i);
                        }
                        dialogInterface.dismiss();
                    }
                });
                builder.create().show();
                return;
            }
        }
    }
}
