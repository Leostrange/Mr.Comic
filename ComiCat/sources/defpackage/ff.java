package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* renamed from: ff  reason: default package */
/* compiled from: ScrollbarHelper */
public final class ff {
    public static int a(RecyclerView.p pVar, fd fdVar, View view, View view2, RecyclerView.h hVar, boolean z) {
        if (hVar.k() == 0 || pVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.h.a(view) - RecyclerView.h.a(view2)) + 1;
        }
        return Math.min(fdVar.e(), fdVar.b(view2) - fdVar.a(view));
    }

    public static int a(RecyclerView.p pVar, fd fdVar, View view, View view2, RecyclerView.h hVar, boolean z, boolean z2) {
        if (hVar.k() == 0 || pVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (pVar.a() - Math.max(RecyclerView.h.a(view), RecyclerView.h.a(view2))) - 1) : Math.max(0, Math.min(RecyclerView.h.a(view), RecyclerView.h.a(view2)));
        if (!z) {
            return max;
        }
        return Math.round((((float) max) * (((float) Math.abs(fdVar.b(view2) - fdVar.a(view))) / ((float) (Math.abs(RecyclerView.h.a(view) - RecyclerView.h.a(view2)) + 1)))) + ((float) (fdVar.b() - fdVar.a(view))));
    }

    public static int b(RecyclerView.p pVar, fd fdVar, View view, View view2, RecyclerView.h hVar, boolean z) {
        if (hVar.k() == 0 || pVar.a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return pVar.a();
        }
        return (int) ((((float) (fdVar.b(view2) - fdVar.a(view))) / ((float) (Math.abs(RecyclerView.h.a(view) - RecyclerView.h.a(view2)) + 1))) * ((float) pVar.a()));
    }
}
