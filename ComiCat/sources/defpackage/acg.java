package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import meanlabs.comicat.R;

/* renamed from: acg  reason: default package */
/* compiled from: PreferenceListAdapter */
public final class acg extends BaseAdapter {
    public ArrayList<acf> a;
    Activity b;

    public acg(Activity activity, ArrayList<acf> arrayList) {
        this.b = activity;
        this.a = arrayList;
    }

    public final boolean areAllItemsEnabled() {
        return false;
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
        int i2;
        boolean z = true;
        int i3 = -7829368;
        int i4 = 0;
        if (view == null) {
            view = this.b.getLayoutInflater().inflate(R.layout.settingslistitem, (ViewGroup) null);
        }
        acf acf = this.a.get(i);
        TextView textView = (TextView) view.findViewById(R.id.header);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.body);
        if (acf.c == null || acf.c.length() != 0) {
            textView.setVisibility(8);
            linearLayout.setVisibility(0);
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            TextView textView3 = (TextView) view.findViewById(R.id.text2);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            textView2.setTextColor(acf.e ? -1 : -7829368);
            if (!acf.e) {
                i3 = -12303292;
            }
            textView3.setTextColor(i3);
            imageView.setAlpha(acf.e ? 255 : 50);
            textView2.setText(acf.a);
            boolean z2 = acf.b != null;
            textView3.setText(acf.b != null ? acf.b : "");
            if (acf.c == null) {
                i2 = 0;
            } else if (acf.d) {
                i2 = aei.a().d.c(acf.c) ? R.drawable.btn_check_on_holo_dark : R.drawable.btn_check_off_holo_dark;
            } else if (acf.b == null) {
                String b2 = aei.a().d.b(acf.c);
                if (b2 != null) {
                    textView3.setText(agw.a((CharSequence) b2));
                } else {
                    z = z2;
                }
                i2 = R.drawable.ic_action_next_item_grey;
                z2 = z;
            } else {
                i2 = R.drawable.ic_action_next_item_grey;
            }
            imageView.setImageResource(i2);
            if (!z2) {
                i4 = 8;
            }
            textView3.setVisibility(i4);
        } else {
            textView.setVisibility(0);
            linearLayout.setVisibility(8);
            textView.setText(acf.a);
        }
        return view;
    }

    public final boolean isEnabled(int i) {
        return this.a.get(i).e;
    }
}
