package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: cr  reason: default package */
/* compiled from: ResourceCursorAdapter */
public abstract class cr extends ci {
    private int j;
    private int k;
    private LayoutInflater l;

    public cr(Context context, int i) {
        super(context);
        this.k = i;
        this.j = i;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.j, viewGroup, false);
    }

    public final View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.k, viewGroup, false);
    }
}
