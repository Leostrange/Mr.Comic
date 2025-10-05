package defpackage;

import android.database.Cursor;
import android.widget.Filter;

/* renamed from: cj  reason: default package */
/* compiled from: CursorFilter */
final class cj extends Filter {
    a a;

    /* renamed from: cj$a */
    /* compiled from: CursorFilter */
    interface a {
        Cursor a();

        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence b(Cursor cursor);
    }

    cj(a aVar) {
        this.a = aVar;
    }

    public final CharSequence convertResultToString(Object obj) {
        return this.a.b((Cursor) obj);
    }

    /* access modifiers changed from: protected */
    public final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a2 = this.a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a2 != null) {
            filterResults.count = a2.getCount();
            filterResults.values = a2;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    /* access modifiers changed from: protected */
    public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor a2 = this.a.a();
        if (filterResults.values != null && filterResults.values != a2) {
            this.a.a((Cursor) filterResults.values);
        }
    }
}
