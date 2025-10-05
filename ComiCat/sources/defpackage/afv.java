package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import java.util.ArrayList;
import meanlabs.comicat.R;

/* renamed from: afv  reason: default package */
/* compiled from: MangaSettingsDialog */
public final class afv {
    Activity a;

    /* renamed from: afv$a */
    /* compiled from: MangaSettingsDialog */
    class a {
        public String a;
        public String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public afv(Activity activity) {
        this.a = activity;
    }

    public final void a(final DialogInterface.OnClickListener onClickListener) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new a("page-navigation-rtl", this.a.getString(R.string.rtlPageOrdering)));
        arrayList.add(new a("double-page-rtl", this.a.getString(R.string.rtlDoublePage)));
        arrayList.add(new a("start-from-tr", this.a.getString(R.string.trPageSetup)));
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
                builder.setTitle(R.string.mangaOptions);
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
