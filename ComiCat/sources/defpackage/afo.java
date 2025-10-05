package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import defpackage.acr;
import defpackage.aft;
import defpackage.afw;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.CatalogTools;
import meanlabs.comicreader.Help;
import meanlabs.comicreader.SettingsHome;
import meanlabs.comicreader.cloud.ActiveDownloads;
import meanlabs.comicreader.cloud.CloudSync;

/* renamed from: afo  reason: default package */
/* compiled from: DrawerHandler */
public final class afo extends DrawerLayout.g implements AdapterView.OnItemClickListener {
    Catalog a;
    DrawerLayout b;
    ListView c = ((ListView) this.b.findViewById(R.id.multiList));
    TextView d;
    c e;

    /* renamed from: afo$4  reason: invalid class name */
    /* compiled from: DrawerHandler */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a = new int[a.a().length];

        static {
            try {
                a[a.b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[a.c - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[a.g - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[a.e - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[a.h - 1] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[a.f - 1] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: afo$a */
    /* compiled from: DrawerHandler */
    enum a {
        ;

        static {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = 6;
            g = 7;
            h = 8;
            i = new int[]{a, b, c, d, e, f, g, h};
        }

        public static int[] a() {
            return (int[]) i.clone();
        }
    }

    /* renamed from: afo$b */
    /* compiled from: DrawerHandler */
    class b {
        int a;
        int b;
        String c;
        boolean d;
        aft e;

        public b(int i, int i2, int i3, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = afo.this.a.getString(i3);
            this.d = z;
            this.e = null;
        }

        public b(aft aft) {
            this.b = -1;
            this.c = aft.l();
            this.d = false;
            this.e = aft;
        }
    }

    /* renamed from: afo$c */
    /* compiled from: DrawerHandler */
    class c extends BaseAdapter {
        protected Activity a;
        protected List<b> b;

        /* renamed from: afo$c$a */
        /* compiled from: DrawerHandler */
        class a {
            public TextView a;
            public RelativeLayout b;
            public ImageView c;
            public TextView d;
            public LinearLayout e;
            public ImageView f;

            public a(View view) {
                this.a = (TextView) view.findViewById(R.id.header);
                this.b = (RelativeLayout) view.findViewById(R.id.body);
                this.c = (ImageView) view.findViewById(R.id.icon);
                this.d = (TextView) view.findViewById(R.id.title);
                this.e = (LinearLayout) view.findViewById(R.id.infoView);
                this.f = (ImageView) view.findViewById(R.id.tray);
            }
        }

        public c(Activity activity, List<b> list) {
            this.a = activity;
            this.b = list;
            a(list);
        }

        public final void a(List<b> list) {
            this.b = list;
            notifyDataSetChanged();
        }

        public final boolean areAllItemsEnabled() {
            return false;
        }

        public final int getCount() {
            return this.b.size();
        }

        public final Object getItem(int i) {
            if (i < this.b.size()) {
                return this.b.get(i);
            }
            return null;
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            b bVar = this.b.get(i);
            if (view == null) {
                view = this.a.getLayoutInflater().inflate(R.layout.drawer_item, (ViewGroup) null);
                view.setTag(new a(view));
            }
            if (view != null) {
                a aVar = (a) view.getTag();
                aVar.f.setVisibility(4);
                if (bVar.d) {
                    aVar.a.setVisibility(0);
                    aVar.b.setVisibility(8);
                    aVar.a.setText(bVar.c);
                } else {
                    aVar.a.setVisibility(8);
                    aVar.b.setVisibility(0);
                    aVar.d.setText(bVar.c);
                }
                if (bVar.b == -1 && bVar.e == null) {
                    aVar.c.setVisibility(4);
                } else {
                    aVar.c.setVisibility(0);
                    if (bVar.b != -1) {
                        aVar.c.setImageResource(bVar.b);
                    } else {
                        aVar.c.setImageBitmap(bVar.e.m());
                        if (bVar.e.k() == aft.a.c) {
                            aVar.f.setVisibility(0);
                        }
                    }
                }
            }
            return view;
        }

        public final boolean isEnabled(int i) {
            b bVar = (b) getItem(i);
            if (bVar != null) {
                return !bVar.d;
            }
            return false;
        }
    }

    public afo(final Catalog catalog, DrawerLayout drawerLayout) {
        this.a = catalog;
        this.b = drawerLayout;
        this.b.setDrawerShadow((int) R.drawable.drawer_shadow, 8388611);
        this.b.setDrawerListener(this);
        this.d = (TextView) this.b.findViewById(R.id.lastSyncTime);
        drawerLayout.findViewById(R.id.header).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
            }
        });
        drawerLayout.findViewById(R.id.support_mail).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                agv.a((Activity) catalog);
                afo.this.b.a(false);
            }
        });
        onDrawerOpened(this.b);
    }

    public final void onDrawerOpened(View view) {
        this.d.setText(agv.a((Activity) this.a, aei.a().d.b("last-sync-time")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b(a.g, R.drawable.wrench, R.string.settings, false));
        arrayList.add(new b(a.b, R.drawable.sync, R.string.sync, false));
        arrayList.add(new b(a.c, R.drawable.cloud_drive, R.string.cloudSync, false));
        if (aei.a().d.c("enable-hidden-folders")) {
            arrayList.add(new b(a.d, R.drawable.private_box, aei.a().d.c("current-hidden-state") ? R.string.showPrivateFolders : R.string.hidePrivateFolders, false));
        }
        arrayList.add(new b(a.e, R.drawable.download_box, R.string.activeDownloads, false));
        arrayList.add(new b(a.f, R.drawable.tools, R.string.catalogTools, false));
        arrayList.add(new b(a.h, R.drawable.khelpcenter, R.string.help, false));
        if (aei.a().d.c("show-reading-history")) {
            ArrayList<aft> arrayList2 = new ArrayList<>(5);
            ArrayList<aft> arrayList3 = new ArrayList<>(5);
            ael.a((List<aft>) arrayList2, (List<aft>) arrayList3);
            if (arrayList2.size() > 0) {
                arrayList.add(new b(a.a, -1, R.string.readingHistory, true));
                for (aft bVar : arrayList2) {
                    arrayList.add(new b(bVar));
                }
            }
            if (arrayList3.size() > 0) {
                arrayList.add(new b(a.a, -1, R.string.recentlyCompleted, true));
                for (aft bVar2 : arrayList3) {
                    arrayList.add(new b(bVar2));
                }
            }
        }
        if (this.e == null) {
            this.e = new c(this.a, arrayList);
            this.c.setAdapter(this.e);
            this.c.setOnItemClickListener(this);
            return;
        }
        this.e.a(arrayList);
    }

    public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        b bVar = (b) this.e.getItem(i);
        if (bVar != null) {
            if (bVar.e == null) {
                switch (AnonymousClass4.a[bVar.a - 1]) {
                    case 1:
                        agm.a((Activity) this.a, (acr.a) this.a);
                        break;
                    case 2:
                        this.a.startActivity(new Intent(this.a, CloudSync.class));
                        break;
                    case 3:
                        if (!aei.a().d.c("current-hidden-state")) {
                            aei.a().d.a("current-hidden-state", true);
                            this.a.f();
                            break;
                        } else {
                            afw.a(this.a, new afw.a() {
                                public final void a(boolean z) {
                                    if (z) {
                                        aei.a().d.a("current-hidden-state", false);
                                        afo.this.a.c();
                                    }
                                }
                            });
                            break;
                        }
                    case 4:
                        this.a.startActivity(new Intent(this.a, SettingsHome.class));
                        break;
                    case 5:
                        this.a.startActivity(new Intent(this.a, ActiveDownloads.class));
                        break;
                    case 6:
                        this.a.startActivity(new Intent(this.a, Help.class));
                        break;
                    case 7:
                        this.a.startActivity(new Intent(this.a, CatalogTools.class));
                        break;
                }
            } else {
                bVar.e.n().a((Activity) this.a);
            }
            this.b.a();
        }
    }
}
