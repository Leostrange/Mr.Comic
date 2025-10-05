package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import meanlabs.comicat.R;

/* renamed from: agf  reason: default package */
/* compiled from: ViewerToolsHandler */
public final class agf {
    Activity a;
    ListView b;
    c c;
    a d;

    /* renamed from: agf$a */
    /* compiled from: ViewerToolsHandler */
    class a {
        public int a;
        public int b;
        public int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* renamed from: agf$b */
    /* compiled from: ViewerToolsHandler */
    public class b extends BaseAdapter {
        ArrayList<a> a;
        Activity b;

        public b(Activity activity, ArrayList<a> arrayList) {
            this.b = activity;
            this.a = arrayList;
        }

        public final boolean areAllItemsEnabled() {
            return true;
        }

        public final int getCount() {
            return this.a.size();
        }

        public final Object getItem(int i) {
            return this.a.get(i);
        }

        public final long getItemId(int i) {
            return 0;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.b.getLayoutInflater().inflate(R.layout.viewer_tool, (ViewGroup) null);
            }
            a aVar = this.a.get(i);
            ((TextView) view.findViewById(R.id.itemTitle)).setText(aVar.b);
            ((ImageView) view.findViewById(R.id.icon)).setImageResource(aVar.c);
            return view;
        }

        public final boolean isEnabled(int i) {
            return true;
        }
    }

    /* renamed from: agf$c */
    /* compiled from: ViewerToolsHandler */
    public interface c {
        void c(int i);

        boolean h();
    }

    public agf(Activity activity, ListView listView, final c cVar) {
        this.b = listView;
        this.a = activity;
        this.c = cVar;
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new a(R.id.gotoPage, R.string.goTo, R.drawable.ic_action_directions));
        a aVar = new a(R.id.setFrame, R.string.setFrame, R.drawable.ic_action_return_from_full_screen);
        this.d = aVar;
        arrayList.add(aVar);
        arrayList.add(new a(R.id.share, R.string.share, R.drawable.ic_action_share));
        arrayList.add(new a(R.id.save, R.string.save, R.drawable.ic_action_save));
        arrayList.add(new a(R.id.bookmark, R.string.bookmark, R.drawable.ic_action_make_available_offline));
        arrayList.add(new a(R.id.touchOptions, R.string.touchOptions, R.drawable.ic_action_location_found));
        arrayList.add(new a(R.id.viewerSettings, R.string.settings, R.drawable.ic_action_settings));
        if (agv.a()) {
            arrayList.add(new a(R.id.makeWallpaper, R.string.setAsWallpaper, R.drawable.ic_action_picture));
        }
        arrayList.add(new a(R.id.openNext, R.string.nextComic, R.drawable.ic_action_next));
        arrayList.add(new a(R.id.openPrevious, R.string.previousComic, R.drawable.ic_action_previous));
        arrayList.add(new a(R.id.exit, R.string.backToCatalog, R.drawable.ic_action_back1));
        this.b.setAdapter(new b(this.a, arrayList));
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                int i2 = ((a) arrayList.get(i)).a;
                cVar.c(i2);
                if (i2 == R.id.setFrame) {
                    agf.this.a();
                }
            }
        });
    }

    public final void a() {
        this.d.b = this.c.h() ? R.string.resetFrame : R.string.setFrame;
        this.d.c = this.c.h() ? R.drawable.ic_action_full_screen : R.drawable.ic_action_return_from_full_screen;
        ((b) this.b.getAdapter()).notifyDataSetInvalidated();
    }
}
