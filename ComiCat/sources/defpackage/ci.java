package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import defpackage.cj;

/* renamed from: ci  reason: default package */
/* compiled from: CursorAdapter */
public abstract class ci extends BaseAdapter implements Filterable, cj.a {
    protected boolean a = false;
    protected boolean b = true;
    protected Cursor c = null;
    protected Context d;
    protected int e;
    protected a f;
    protected DataSetObserver g;
    protected cj h;
    protected FilterQueryProvider i;

    /* renamed from: ci$a */
    /* compiled from: CursorAdapter */
    class a extends ContentObserver {
        public a() {
            super(new Handler());
        }

        public final boolean deliverSelfNotifications() {
            return true;
        }

        public final void onChange(boolean z) {
            ci.this.b();
        }
    }

    /* renamed from: ci$b */
    /* compiled from: CursorAdapter */
    class b extends DataSetObserver {
        private b() {
        }

        /* synthetic */ b(ci ciVar, byte b) {
            this();
        }

        public final void onChanged() {
            ci.this.a = true;
            ci.this.notifyDataSetChanged();
        }

        public final void onInvalidated() {
            ci.this.a = false;
            ci.this.notifyDataSetInvalidated();
        }
    }

    public ci(Context context) {
        this.d = context;
        this.e = -1;
        this.f = new a();
        this.g = new b(this, (byte) 0);
    }

    public final Cursor a() {
        return this.c;
    }

    public Cursor a(CharSequence charSequence) {
        return this.i != null ? this.i.runQuery(charSequence) : this.c;
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public void a(Cursor cursor) {
        Cursor cursor2;
        if (cursor == this.c) {
            cursor2 = null;
        } else {
            cursor2 = this.c;
            if (cursor2 != null) {
                if (this.f != null) {
                    cursor2.unregisterContentObserver(this.f);
                }
                if (this.g != null) {
                    cursor2.unregisterDataSetObserver(this.g);
                }
            }
            this.c = cursor;
            if (cursor != null) {
                if (this.f != null) {
                    cursor.registerContentObserver(this.f);
                }
                if (this.g != null) {
                    cursor.registerDataSetObserver(this.g);
                }
                this.e = cursor.getColumnIndexOrThrow("_id");
                this.a = true;
                notifyDataSetChanged();
            } else {
                this.e = -1;
                this.a = false;
                notifyDataSetInvalidated();
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract void a(View view, Cursor cursor);

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    public CharSequence b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* access modifiers changed from: protected */
    public final void b() {
        if (this.b && this.c != null && !this.c.isClosed()) {
            this.a = this.c.requery();
        }
    }

    public int getCount() {
        if (!this.a || this.c == null) {
            return 0;
        }
        return this.c.getCount();
    }

    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.a) {
            return null;
        }
        this.c.moveToPosition(i2);
        if (view == null) {
            view = b(this.d, this.c, viewGroup);
        }
        a(view, this.c);
        return view;
    }

    public Filter getFilter() {
        if (this.h == null) {
            this.h = new cj(this);
        }
        return this.h;
    }

    public Object getItem(int i2) {
        if (!this.a || this.c == null) {
            return null;
        }
        this.c.moveToPosition(i2);
        return this.c;
    }

    public long getItemId(int i2) {
        if (!this.a || this.c == null || !this.c.moveToPosition(i2)) {
            return 0;
        }
        return this.c.getLong(this.e);
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (!this.c.moveToPosition(i2)) {
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        } else {
            if (view == null) {
                view = a(this.d, this.c, viewGroup);
            }
            a(view, this.c);
            return view;
        }
    }

    public boolean hasStableIds() {
        return true;
    }
}
