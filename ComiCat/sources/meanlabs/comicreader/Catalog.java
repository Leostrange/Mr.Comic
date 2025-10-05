package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.widget.DrawerLayout;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.Toast;
import defpackage.acr;
import defpackage.afw;
import defpackage.afz;
import defpackage.agw;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;

public class Catalog extends ReaderActivity implements acr.a, afw.a {
    static boolean l = true;
    FrameLayout a;
    public GridView b;
    public GridView c;
    Button d;
    LinearLayout e;
    Drawable f;
    afz g;
    public afq h;
    DrawerLayout i;
    afo j;
    long k = 0;
    boolean m = false;

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (j != -1) {
                aft a2 = Catalog.this.a(view, i);
                new StringBuilder("Item found: ").append(a2.l());
                a2.n().a(Catalog.this);
            }
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0011, code lost:
        r0 = (defpackage.afm) k().getAdapter();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.aft a(android.view.View r3, int r4) {
        /*
            r2 = this;
            r1 = 0
            if (r3 == 0) goto L_0x000f
            java.lang.Object r0 = r3.getTag()
            agc r0 = (defpackage.agc) r0
            if (r0 == 0) goto L_0x000f
            aft r1 = r0.a()
        L_0x000f:
            if (r1 != 0) goto L_0x0024
            android.widget.GridView r0 = r2.k()
            android.widget.ListAdapter r0 = r0.getAdapter()
            afm r0 = (defpackage.afm) r0
            if (r0 == 0) goto L_0x0024
            java.lang.Object r0 = r0.getItem(r4)
            aft r0 = (defpackage.aft) r0
        L_0x0023:
            return r0
        L_0x0024:
            r0 = r1
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.Catalog.a(android.view.View, int):aft");
    }

    private List<aeq> a(List<aeq> list) {
        if (!this.g.a()) {
            return list;
        }
        String lowerCase = this.g.c.getText().toString().toLowerCase();
        if (lowerCase.length() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        boolean isChecked = this.g.d.isChecked();
        for (aeq next : list) {
            if (isChecked ? next.c.toLowerCase().startsWith(lowerCase) : next.c.toLowerCase().contains(lowerCase)) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    private void b(List<aft> list) {
        GridView k2 = k();
        k2.setAdapter(new agb(this, this, list, k2, this.f));
    }

    private void g() {
        this.h.a(false);
    }

    private List<aeq> h() {
        List<aeq> f2 = aei.a().b.f();
        if (f2 == null || f2.size() == 0) {
            return null;
        }
        this.e.setVisibility(8);
        aem a2 = this.h.a();
        if (a2 != null && (agw.e() || a2.a != 0 || this.g.a())) {
            ArrayList arrayList = new ArrayList();
            if (!a2.f()) {
                f2 = ael.a(f2, a2, false);
            } else if (a2.a != 0) {
                f2 = agy.a(f2, a2.a);
            } else if (!this.g.a()) {
                f2 = arrayList;
            }
            f2 = a(f2);
        }
        List<aeq> b2 = ael.b(f2);
        ael.a(b2, aei.a().d.b("catalog-sort-order"));
        return b2;
    }

    private List<aem> i() {
        List<aem> list;
        aem aem;
        aem aem2 = null;
        int b2 = this.h.b();
        if (agw.f()) {
            if (!this.g.a() && (b2 <= 0 || b2 >= this.h.e.size())) {
                if (b2 == 0) {
                    List<aem> f2 = aei.a().c.f();
                    if (f2 == null || f2.size() == 0) {
                        aem = null;
                    } else if (f2.size() > 1 || f2.get(0).d != 0) {
                        list = f2;
                    } else {
                        aem = f2.get(0);
                    }
                    aem aem3 = aem;
                    list = null;
                    aem2 = aem3;
                } else {
                    list = null;
                    aem2 = this.h.a();
                }
                if (aem2 != null) {
                    new StringBuilder("Folder to display is: ").append(aem2.a()).append(", \n ").append(aem2.j);
                    list = ael.b(aei.a().c.e(), aem2, false);
                }
            }
            list = null;
        } else {
            if (b2 == 0) {
                ArrayList arrayList = new ArrayList();
                for (aem next : aei.a().c.e()) {
                    if (next.d > 0) {
                        arrayList.add(next);
                    }
                }
                list = arrayList;
            }
            list = null;
        }
        if (list != null && list.size() > 0) {
            list = ael.a((List<aem>) new ArrayList(list));
            ael.b(list, aei.a().d.b("catalog-sort-order"));
            if (b2 == 0) {
                afq afq = this.h;
                ArrayList arrayList2 = new ArrayList(afq.e.size());
                aeu aeu = aei.a().d;
                if (aeu.a("showInbuiltFolder", 1)) {
                    arrayList2.add(afq.e.get(-2));
                }
                if (aeu.a("showInbuiltFolder", 8)) {
                    arrayList2.add(afq.e.get(-3));
                }
                if (aeu.a("showInbuiltFolder", 16)) {
                    arrayList2.add(afq.e.get(-4));
                }
                if (afq.c(-6) && aeu.a("showInbuiltFolder", 4)) {
                    arrayList2.add(afq.e.get(-6));
                }
                if (afq.c(-5) && aeu.a("showInbuiltFolder", 2)) {
                    arrayList2.add(afq.e.get(-5));
                }
                list.addAll(0, arrayList2);
            }
        }
        return list != null ? list : new ArrayList();
    }

    private List<aft> j() {
        List<aem> i2 = (!agw.e() || this.g.a()) ? null : i();
        List<aeq> h2 = h();
        ArrayList arrayList = i2 == null ? new ArrayList() : i2;
        if (h2 == null) {
            h2 = new ArrayList<>();
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size() + h2.size());
        for (aem add : arrayList) {
            arrayList2.add(add);
        }
        for (aeq add2 : h2) {
            arrayList2.add(add2);
        }
        return arrayList2;
    }

    private GridView k() {
        return (!m() || this.g.a()) ? this.c : this.b;
    }

    private void l() {
        if (!m() || this.g.a()) {
            this.b.setVisibility(8);
            this.c.setVisibility(0);
            return;
        }
        this.b.setVisibility(0);
        this.c.setVisibility(8);
    }

    private boolean m() {
        return agw.e() && this.h.a().a == 0;
    }

    public final void a(boolean z) {
        e();
    }

    /* access modifiers changed from: protected */
    public final void a_() {
        int a2;
        aem a3;
        aeq a4;
        e();
        if (l) {
            l = false;
            if ("prefLastIncompleteComic".equals(aei.a().d.b("start-in"))) {
                String b2 = aei.a().d.b("prefLastIncompleteComic");
                aei.a().d.a("prefLastIncompleteComic", "");
                if (b2 != null && b2.length() > 0) {
                    if (b2.startsWith("cmc_")) {
                        int a5 = agw.a(b2, "cmc_");
                        if (!(a5 == -1 || (a4 = aei.a().b.a(a5)) == null || (agw.a() && agw.a(a4)))) {
                            agm.a((Activity) this, a5, false);
                        }
                    } else if (b2.startsWith("fldr_") && (a2 = agw.a(b2, "fldr_")) != -1 && (a3 = aei.a().c.a(a2)) != null && (!agw.a() || !a3.c())) {
                        agm.a((Activity) this, a2);
                    }
                }
            }
        }
        if (!this.m) {
            this.h.a(true);
        }
        this.m = false;
    }

    /* access modifiers changed from: protected */
    public final void b() {
        c();
        super.b();
    }

    public final void c() {
        int i2 = 0;
        LinearLayout linearLayout = this.e;
        aek aek = aei.a().b;
        if (!(aek.b == null || aek.b.size() == 0)) {
            i2 = 8;
        }
        linearLayout.setVisibility(i2);
        g();
        d();
    }

    public final void d() {
        b(j());
        l();
    }

    public final void e() {
        afm afm = (afm) k().getAdapter();
        this.h.c();
        if (afm != null) {
            afm.a(j());
            afm.notifyDataSetChanged();
            l();
            return;
        }
        b(j());
        l();
    }

    public final void f() {
        c();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i2, int i3, Intent intent) {
        if (i2 == 1) {
            c();
        }
    }

    public void onBackPressed() {
        afz afz = this.g;
        boolean a2 = afz.a();
        if (a2) {
            afz.b();
        }
        if (!a2 && this.i.b()) {
            this.i.c(8388611);
            a2 = true;
        }
        if (!a2 && agw.e()) {
            if (agw.f()) {
                aem a3 = this.h.a();
                if (a3.a != 0) {
                    aem b2 = ael.b(a3);
                    this.h.a(b2 != null ? b2.a : 0);
                    a2 = true;
                }
            } else if (this.h.b() != 0) {
                this.h.b(0);
                e();
                a2 = true;
            }
        }
        if (!a2) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.k <= 2500) {
                super.onBackPressed();
                return;
            }
            this.k = currentTimeMillis;
            Toast makeText = Toast.makeText(this, R.string.exitPrompt, 0);
            makeText.setGravity(17, 0, 0);
            makeText.show();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        aft a2 = a(adapterContextMenuInfo.targetView, adapterContextMenuInfo.position);
        boolean a3 = a2 != null ? a2.n().a(this, menuItem.getItemId()) : false;
        return a3 ? a3 : super.onContextItemSelected(menuItem);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = true;
        acr.a((acr.a) this);
        ComicReaderApp.a(this);
        setContentView((int) R.layout.main);
        this.a = (FrameLayout) findViewById(R.id.catalogContainer);
        this.b = (GridView) findViewById(R.id.catalogFolderGrid);
        this.c = (GridView) findViewById(R.id.catalogFileGrid);
        this.d = (Button) findViewById(R.id.buildCatalog);
        this.e = (LinearLayout) findViewById(R.id.buildCatalogView);
        this.i = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.h = new afq(this);
        g();
        this.f = this.b.getSelector();
        this.n.setDisplayShowTitleEnabled(false);
        this.g = new afz(this, new afz.a() {
            public final void a() {
                Catalog.this.e();
            }

            public final void b() {
                Catalog.this.e();
            }

            public final void c() {
                Catalog.this.e();
            }
        });
        this.j = new afo(this, this.i);
        this.d.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                agm.a((Activity) Catalog.this, (acr.a) Catalog.this);
            }
        });
        registerForContextMenu(this.b);
        registerForContextMenu(this.c);
        this.b.setOnItemClickListener(new a());
        this.c.setOnItemClickListener(new a());
        Intent intent = getIntent();
        if (intent.getAction() != null && intent.getAction().equals("android.intent.action.VIEW")) {
            l = false;
            String path = intent.getData().getPath();
            if (path != null && path != "") {
                String d2 = agv.d(path);
                Intent intent2 = new Intent(this, Viewer.class);
                intent2.putExtra("comicpath", d2);
                startActivity(intent2);
            }
        }
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) contextMenuInfo;
        aft a2 = a(adapterContextMenuInfo.targetView, adapterContextMenuInfo.position);
        if (a2 != null) {
            a2.n().a(this, contextMenu);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.catalogviewoptionsmenu, menu);
        if (Build.VERSION.SDK_INT >= 11) {
            return true;
        }
        menu.findItem(R.id.search).setVisible(false);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        acr.a((acr.a) null);
        ComicReaderApp.a((Catalog) null);
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                if (this.i.b()) {
                    this.i.c(8388611);
                    return true;
                }
                this.i.b(8388611);
                return true;
            case R.id.settings /*2131493118*/:
                startActivityForResult(new Intent(this, CatalogSettings.class), 1);
                return true;
            case R.id.search /*2131493162*/:
                onSearchRequested();
                return true;
            case R.id.sortBy /*2131493163*/:
                agw.a((Context) this, (agw.a) new agw.a() {
                    public final void a(String str) {
                        Catalog.this.d();
                    }
                });
                return true;
            case R.id.showStats /*2131493164*/:
                afw.a((Context) this);
                return true;
            case R.id.resync /*2131493165*/:
                agm.a((Activity) this, (acr.a) this);
                return true;
            case R.id.deleteRead /*2131493166*/:
                afw.a((Activity) this);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    public boolean onSearchRequested() {
        if (this.g.a()) {
            this.g.b();
            return true;
        }
        afz afz = this.g;
        afz.a.startSupportActionMode(afz);
        return true;
    }
}
