package defpackage;

import android.app.Activity;
import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: afm  reason: default package */
/* compiled from: CatalogAdapter */
public abstract class afm extends BaseAdapter implements Filterable {
    protected Context a;
    protected List<aft> b;
    protected Activity c;

    public afm(Context context, Activity activity, List<aft> list) {
        this.a = context;
        this.c = activity;
        a(list);
    }

    public final void a(List<aft> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.b = list;
    }

    public int getCount() {
        return this.b.size();
    }

    public Filter getFilter() {
        return null;
    }

    public Object getItem(int i) {
        if (i < this.b.size()) {
            return this.b.get(i);
        }
        return null;
    }

    public long getItemId(int i) {
        if (i < this.b.size()) {
            return (long) this.b.get(i).j();
        }
        return -1;
    }
}
