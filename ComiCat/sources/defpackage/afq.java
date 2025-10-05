package defpackage;

import android.support.v7.app.ActionBar;
import android.widget.ArrayAdapter;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: afq  reason: default package */
/* compiled from: FilterList */
public final class afq {
    public static final String f = ComicReaderApp.a().getString(R.string.all);
    public static final String g = ComicReaderApp.a().getString(R.string.unread);
    public static final String h = ComicReaderApp.a().getString(R.string.readingList);
    public static final String i = ComicReaderApp.a().getString(R.string.incompleteBookmarked);
    public static final String j = ComicReaderApp.a().getString(R.string.privateComics);
    public static final String k = ComicReaderApp.a().getString(R.string.recentlyAdded);
    Catalog a;
    ArrayAdapter<CharSequence> b;
    a c;
    List<aem> d;
    public Hashtable<Integer, aem> e;

    /* renamed from: afq$a */
    /* compiled from: FilterList */
    class a implements ActionBar.OnNavigationListener {
        boolean a;
        public int b;

        private a() {
            this.a = false;
            this.b = 0;
        }

        /* synthetic */ a(afq afq, byte b2) {
            this();
        }

        public final boolean onNavigationItemSelected(int i, long j) {
            aei.a().d.a("catalog-folder", String.valueOf(afq.this.e(i).a));
            boolean z = this.b != i;
            this.b = i;
            if (!this.a && z) {
                afq.this.a.d();
            }
            return true;
        }
    }

    public afq(Catalog catalog) {
        this.a = catalog;
    }

    private aem a(int i2, String str) {
        aem a2 = aem.a(str);
        a2.a = i2;
        a2.b = str;
        a2.f.a(16);
        this.e.put(Integer.valueOf(i2), a2);
        return a2;
    }

    private void d(int i2) {
        if (i2 != -1) {
            this.a.getSupportActionBar().setSelectedNavigationItem(i2);
        }
    }

    /* access modifiers changed from: private */
    public aem e(int i2) {
        List<aem> list = this.d;
        if (i2 < 0 || i2 >= this.d.size()) {
            i2 = 0;
        }
        return list.get(i2);
    }

    private int f(int i2) {
        for (int i3 = 0; i3 < this.d.size(); i3++) {
            if (this.d.get(i3).a == i2) {
                return i3;
            }
        }
        return 0;
    }

    public final aem a() {
        return e(b());
    }

    public final void a(int i2) {
        d(f(i2));
    }

    public final void a(boolean z) {
        this.a.getSupportActionBar().setNavigationMode(1);
        this.b = null;
        if (this.b == null) {
            aeu aeu = aei.a().d;
            ArrayAdapter<CharSequence> arrayAdapter = new ArrayAdapter<>(this.a, 17367048);
            this.e = new Hashtable<>();
            this.d = new ArrayList();
            this.d.add(a(0, f));
            this.d.add(a(-2, g));
            this.d.add(a(-3, h));
            this.d.add(a(-4, i));
            if (aeu.a("last-synced-id", 0) != 0) {
                this.d.add(a(-6, k));
            }
            if (aeu.c("enable-hidden-folders") && !aeu.c("current-hidden-state")) {
                this.d.add(a(-5, j));
            }
            c();
            List<aem> a2 = ael.a(aei.a().c.e());
            if (a2 != null) {
                this.d.addAll(a2);
                for (int i2 = 0; i2 < this.d.size(); i2++) {
                    arrayAdapter.add(this.d.get(i2).b);
                }
            }
            arrayAdapter.setDropDownViewResource(R.layout.filter_list_item);
            this.b = arrayAdapter;
        }
        if (this.c == null) {
            this.c = new a(this, (byte) 0);
        }
        this.a.getSupportActionBar().setListNavigationCallbacks(this.b, this.c);
        int f2 = f((int) aei.a().d.a("catalog-folder", 0));
        if (z) {
            b(f2);
        } else {
            d(f2);
        }
    }

    public final int b() {
        if (this.c == null) {
            return -1;
        }
        return this.c.b;
    }

    public final void b(int i2) {
        if (i2 != -1) {
            this.c.a = true;
            this.c.b = i2;
            this.a.getSupportActionBar().setSelectedNavigationItem(i2);
            this.a.findViewById(R.id.catalogContainer).postDelayed(new Runnable() {
                public final void run() {
                    afq.this.c.a = false;
                }
            }, 100);
        }
    }

    public final void c() {
        aeu aeu = aei.a().d;
        int a2 = (int) aeu.a("last-synced-id", 0);
        boolean a3 = agw.a();
        boolean c2 = aeu.c("enable-hidden-folders");
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (aeq next : aei.a().b.f()) {
            boolean z = !c2 || agw.a(next);
            i6 += z ? 1 : 0;
            if (!a3 || !z) {
                if (!next.p()) {
                    i2++;
                }
                if (next.h.c(2)) {
                    i3++;
                }
                if (next.a()) {
                    i4++;
                }
            }
            i5 = (next.a > a2 ? 1 : 0) + i5;
        }
        this.e.get(-2).d = i2;
        this.e.get(-3).d = i3;
        this.e.get(-4).d = i4;
        if (c(-6)) {
            this.e.get(-6).d = i5;
        }
        if (c(-5)) {
            this.e.get(-5).d = i6;
        }
    }

    public final boolean c(int i2) {
        return this.e.containsKey(Integer.valueOf(i2));
    }
}
