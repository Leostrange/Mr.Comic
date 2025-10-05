package meanlabs.comicreader.ui;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.TextView;
import meanlabs.comicat.R;

public class PageChooserView extends LinearLayout {
    BaseAdapter a = new BaseAdapter() {
        public final int getCount() {
            return 0;
        }

        public final Object getItem(int i) {
            return null;
        }

        public final long getItemId(int i) {
            return 0;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            return null;
        }
    };
    Gallery b;
    Activity c;
    a d;

    public class a extends BaseAdapter {
        protected Context a;
        afa b;
        int c = 1;
        int d;

        public a(Context context, afa afa) {
            this.a = context;
            this.b = afa;
            this.d = afa.d();
            if (this.d >= 200) {
                this.c = 5;
            } else if (this.d >= 100) {
                this.c = 3;
            }
            this.d = (int) Math.ceil(((double) this.d) / ((double) this.c));
        }

        public final int getCount() {
            return this.d;
        }

        public final Object getItem(int i) {
            int i2 = this.c * i;
            if (i2 < this.b.d()) {
                return this.b.a(i2);
            }
            return null;
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = i * this.c;
            if (view == null) {
                view = PageChooserView.this.c.getLayoutInflater().inflate(R.layout.pagethumb, (ViewGroup) null);
            }
            afb a2 = this.b.a(i2);
            ((TextView) view.findViewById(R.id.thumbTitle)).setText(String.valueOf(i2 + 1));
            ((AsyncPageThumbView) view.findViewById(R.id.thumbImage)).setPage(a2);
            return view;
        }
    }

    public PageChooserView(Context context) {
        super(context);
        a(context);
    }

    public PageChooserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        setBackgroundResource(R.drawable.almost_transparent);
        this.c = (Activity) context;
        this.c.getLayoutInflater().inflate(R.layout.pagebrowser, this);
        this.b = (Gallery) findViewById(R.id.pagelist);
    }

    public final void a() {
        setVisibility(8);
        this.b.setAdapter(this.a);
    }

    public final void a(afa afa, final AdapterView.OnItemClickListener onItemClickListener) {
        setVisibility(0);
        this.d = new a(this.c, afa);
        this.b.setAdapter(this.d);
        this.b.setSelection(afa.j.a / this.d.c, false);
        this.b.postDelayed(new Runnable() {
            public final void run() {
                PageChooserView.this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        onItemClickListener.onItemClick(adapterView, view, i, (long) ((int) (((long) PageChooserView.this.d.c) * j)));
                    }
                });
            }
        }, 100);
    }
}
