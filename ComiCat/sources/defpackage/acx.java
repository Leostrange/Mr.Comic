package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import defpackage.acv;
import defpackage.aer;
import defpackage.aft;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;

/* renamed from: acx  reason: default package */
/* compiled from: DownloadListAdapter */
public final class acx extends BaseAdapter {
    protected Activity a;
    protected List<a> b;

    /* renamed from: acx$4  reason: invalid class name */
    /* compiled from: DownloadListAdapter */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a = new int[acv.a.a().length];

        static {
            try {
                a[acv.a.f - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[acv.a.e - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[acv.a.d - 1] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[acv.a.g - 1] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[acv.a.b - 1] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[acv.a.c - 1] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[acv.a.h - 1] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: acx$a */
    /* compiled from: DownloadListAdapter */
    public class a {
        public acv a;
        public View b = null;

        public a(acv acv) {
            this.a = acv;
        }
    }

    /* renamed from: acx$b */
    /* compiled from: DownloadListAdapter */
    class b extends acv {
        public b(String str) {
            super((aer.a) null);
            this.c = str;
        }

        public final void i() {
        }
    }

    /* renamed from: acx$c */
    /* compiled from: DownloadListAdapter */
    public class c {
        public TextView a;
        public RelativeLayout b;
        public ImageView c;
        public TextView d;
        public TextView e;
        public TextView f;
        public TextView g;
        public ProgressBar h;

        public c(View view) {
            this.a = (TextView) view.findViewById(R.id.header);
            this.b = (RelativeLayout) view.findViewById(R.id.body);
            this.c = (ImageView) view.findViewById(R.id.thumb);
            this.d = (TextView) view.findViewById(R.id.title);
            this.e = (TextView) view.findViewById(R.id.totalSize);
            this.f = (TextView) view.findViewById(R.id.status);
            this.g = (TextView) view.findViewById(R.id.progressText);
            this.h = (ProgressBar) view.findViewById(R.id.progress);
        }
    }

    public acx(Activity activity, List<acv> list) {
        this.a = activity;
        this.b = new ArrayList(list.size());
        a(list);
    }

    private void a(c cVar, int i, int i2) {
        TextView textView = cVar.e;
        Activity activity = this.a;
        Object[] objArr = new Object[2];
        objArr[0] = agv.a((long) i2);
        objArr[1] = i <= 0 ? this.a.getString(R.string.unknown) : agv.a((long) i);
        textView.setText(activity.getString(R.string.downloadSize, objArr));
    }

    private void a(List<acv> list, String str) {
        b bVar = new b(str);
        bVar.a = null;
        bVar.c = str;
        list.add(bVar);
    }

    private String b(int i) {
        int i2 = R.string.waiting;
        switch (AnonymousClass4.a[i - 1]) {
            case 2:
                i2 = R.string.error;
                break;
            case 3:
                i2 = R.string.paused;
                break;
            case 4:
                i2 = R.string.downloading;
                break;
            case 5:
                i2 = R.string.cancelled;
                break;
            case 6:
                i2 = R.string.completed;
                break;
            case 7:
                i2 = R.string.processing;
                break;
        }
        return this.a.getString(i2);
    }

    private List<acv> b(List<acv> list) {
        ArrayList arrayList = new ArrayList();
        char c2 = 0;
        for (acv next : list) {
            if (next.c.charAt(0) != c2) {
                c2 = next.c.charAt(0);
                a((List<acv>) arrayList, String.valueOf(c2).toUpperCase());
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    private List<acv> c(List<acv> list) {
        ArrayList arrayList = new ArrayList();
        int i = acv.a.a;
        int i2 = i;
        for (acv next : list) {
            if (next.e != i2) {
                i2 = next.e;
                a((List<acv>) arrayList, b(i2));
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    private List<acv> d(List<acv> list) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (acv next : list) {
            if (next.a.c != i) {
                int i2 = next.a.c;
                acs a2 = act.b().a(i2);
                a((List<acv>) arrayList, a2 != null ? a2.k() : "");
                i = i2;
            }
            arrayList.add(next);
        }
        return arrayList;
    }

    public final a a(int i) {
        for (a next : this.b) {
            if (next.a.a != null && next.a.a.a == i) {
                return next;
            }
        }
        return null;
    }

    public final void a(c cVar, int i, int i2, int i3, int i4) {
        if (i2 > 0) {
            if (i4 == acv.a.c) {
                i = i2;
            }
            a(cVar, i2, i);
            cVar.h.setProgress((int) ((((long) i) * 100) / ((long) i2)));
            int i5 = i2 - i;
            String str = "";
            if (i5 > 0) {
                str = this.a.getString(R.string.remaining) + ": " + agv.a((long) i5);
                if (i4 == acv.a.g && i3 > 0) {
                    cVar.f.setText(this.a.getString(R.string.downloadSpeedMsg, new Object[]{agv.a((long) i3)}));
                    StringBuilder append = new StringBuilder().append(str).append(", ").append(this.a.getString(R.string.timeRemainingTitle)).append(": ");
                    String str2 = " Sec";
                    double d = (double) (i5 / i3);
                    if (d > 60.0d) {
                        d = Math.ceil(d / 60.0d);
                        str2 = " Min";
                    }
                    if (d > 60.0d) {
                        d = Math.ceil(d / 60.0d);
                        str2 = " Hr";
                    }
                    str = append.append(String.valueOf((int) d) + str2).toString();
                }
            }
            cVar.g.setText(str);
            return;
        }
        cVar.h.setProgress(i4 == acv.a.c ? 100 : 0);
        cVar.g.setText("");
    }

    public final void a(c cVar, acv acv) {
        TextView textView = cVar.f;
        String b2 = b(acv.e);
        if (acv.e == acv.a.e && acv.f != null && acv.f.length() > 0) {
            b2 = b2 + ": " + acv.f;
        }
        textView.setText(b2);
    }

    public final void a(List<acv> list) {
        this.b.clear();
        ArrayList arrayList = new ArrayList(list);
        String b2 = aei.a().d.b("sort-downloads-by");
        if ("prefSortByDownloadStatus".equals(b2)) {
            Collections.sort(arrayList, new Comparator<acv>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    int i = 1000;
                    int i2 = 100;
                    acv acv = (acv) obj;
                    acv acv2 = (acv) obj2;
                    int i3 = acv.e == acv.a.g ? 1000 : 0;
                    if (acv.e != acv.a.c) {
                        i3 += acv.a.d() ? 100 : 0;
                    }
                    int i4 = i3 + (acv.e - 1);
                    if (acv2.e != acv.a.g) {
                        i = 0;
                    }
                    if (acv2.e != acv.a.c) {
                        if (!acv2.a.d()) {
                            i2 = 0;
                        }
                        i += i2;
                    }
                    return (i + (acv2.e - 1)) - i4;
                }
            });
        } else if ("prefSortAlphabetically".equals(b2)) {
            Collections.sort(arrayList, new Comparator<acv>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    return ((acv) obj).c.compareToIgnoreCase(((acv) obj2).c);
                }
            });
        } else if ("prefSortByService".equals(b2)) {
            Collections.sort(arrayList, new Comparator<acv>() {
                public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
                    return ((acv) obj).a.c - ((acv) obj2).a.c;
                }
            });
        }
        String b3 = aei.a().d.b("sort-downloads-by");
        for (acv aVar : "prefSortByDownloadStatus".equals(b3) ? c(arrayList) : "prefSortAlphabetically".equals(b3) ? b((List<acv>) arrayList) : d(arrayList)) {
            this.b.add(new a(aVar));
        }
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
            return this.b.get(i).a;
        }
        return null;
    }

    public final long getItemId(int i) {
        acv acv = (acv) getItem(i);
        if (acv == null || acv.a == null) {
            return -1;
        }
        return (long) this.b.get(i).a.a.a;
    }

    public final View getView(int i, View view, ViewGroup viewGroup) {
        acv acv = this.b.get(i).a;
        if (view == null) {
            view = this.a.getLayoutInflater().inflate(R.layout.downloaditem, (ViewGroup) null);
            view.setTag(new c(view));
        }
        if (view != null) {
            c cVar = (c) view.getTag();
            if (acv.a != null) {
                cVar.a.setVisibility(8);
                cVar.b.setVisibility(0);
                cVar.d.setText(acv.c.toUpperCase());
                Bitmap a2 = acv.a.h != 0 ? ahd.a(acv.a.h, aft.a.b, false) : null;
                ImageView imageView = cVar.c;
                if (a2 == null) {
                    a2 = ahd.b();
                }
                imageView.setImageBitmap(a2);
                a(cVar, acv.a.e, acv.d);
                a(cVar, acv);
                a(cVar, acv.d, acv.a.e, -1, acv.e);
            } else {
                cVar.a.setVisibility(0);
                cVar.b.setVisibility(8);
                cVar.a.setText(acv.c);
            }
            Iterator<a> it = this.b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a next = it.next();
                if (next.b == view && next.a.a != acv.a) {
                    next.b = null;
                    break;
                }
            }
            this.b.get(i).b = view;
        }
        return view;
    }

    public final boolean isEnabled(int i) {
        acv acv = (acv) getItem(i);
        if (acv == null || acv.a == null) {
            return false;
        }
        return acv.e != acv.a.h;
    }
}
