package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import defpackage.cv;
import defpackage.eh;

public class ActivityChooserView extends ViewGroup {
    ao a;
    /* access modifiers changed from: private */
    public final a b;
    private final b c;
    private final LinearLayoutCompat d;
    private final Drawable e;
    /* access modifiers changed from: private */
    public final FrameLayout f;
    private final ImageView g;
    /* access modifiers changed from: private */
    public final FrameLayout h;
    private final ImageView i;
    private final int j;
    private final DataSetObserver k;
    private final ViewTreeObserver.OnGlobalLayoutListener l;
    private ListPopupWindow m;
    /* access modifiers changed from: private */
    public PopupWindow.OnDismissListener n;
    /* access modifiers changed from: private */
    public boolean o;
    /* access modifiers changed from: private */
    public int p;
    private boolean q;
    private int r;

    public static class InnerLayout extends LinearLayoutCompat {
        private static final int[] a = {16842964};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            es a2 = es.a(context, attributeSet, a);
            setBackgroundDrawable(a2.a(0));
            a2.a.recycle();
        }
    }

    class a extends BaseAdapter {
        eh a;
        boolean b;
        private int d;
        private boolean e;
        private boolean f;

        private a() {
            this.d = 4;
        }

        /* synthetic */ a(ActivityChooserView activityChooserView, byte b2) {
            this();
        }

        public final int a() {
            int i = this.d;
            this.d = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            View view = null;
            int i2 = 0;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, (ViewGroup) null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.d = i;
            return i2;
        }

        public final void a(int i) {
            if (this.d != i) {
                this.d = i;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean z) {
            if (this.f != z) {
                this.f = z;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean z, boolean z2) {
            if (this.b != z || this.e != z2) {
                this.b = z;
                this.e = z2;
                notifyDataSetChanged();
            }
        }

        public final int getCount() {
            int a2 = this.a.a();
            if (!this.b && this.a.b() != null) {
                a2--;
            }
            int min = Math.min(a2, this.d);
            return this.f ? min + 1 : min;
        }

        public final Object getItem(int i) {
            switch (getItemViewType(i)) {
                case 0:
                    if (!this.b && this.a.b() != null) {
                        i++;
                    }
                    return this.a.a(i);
                case 1:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final int getItemViewType(int i) {
            return (!this.f || i != getCount() + -1) ? 0 : 1;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case 0:
                    if (view == null || view.getId() != cv.f.list_item) {
                        view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(cv.h.abc_activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    ((ImageView) view.findViewById(cv.f.icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(cv.f.title)).setText(resolveInfo.loadLabel(packageManager));
                    if (!this.b || i != 0 || !this.e) {
                        bh.b(view, false);
                        return view;
                    }
                    bh.b(view, true);
                    return view;
                case 1:
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(cv.h.abc_activity_chooser_view_list_item, viewGroup, false);
                    inflate.setId(1);
                    ((TextView) inflate.findViewById(cv.f.title)).setText(ActivityChooserView.this.getContext().getString(cv.i.abc_activity_chooser_view_see_all));
                    return inflate;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public final int getViewTypeCount() {
            return 3;
        }
    }

    class b implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener {
        private b() {
        }

        /* synthetic */ b(ActivityChooserView activityChooserView, byte b) {
            this();
        }

        public final void onClick(View view) {
            if (view == ActivityChooserView.this.h) {
                ActivityChooserView.this.b();
                Intent b = ActivityChooserView.this.b.a.b(ActivityChooserView.this.b.a.a(ActivityChooserView.this.b.a.b()));
                if (b != null) {
                    b.addFlags(524288);
                    ActivityChooserView.this.getContext().startActivity(b);
                }
            } else if (view == ActivityChooserView.this.f) {
                boolean unused = ActivityChooserView.this.o = false;
                ActivityChooserView.this.a(ActivityChooserView.this.p);
            } else {
                throw new IllegalArgumentException();
            }
        }

        public final void onDismiss() {
            if (ActivityChooserView.this.n != null) {
                ActivityChooserView.this.n.onDismiss();
            }
            if (ActivityChooserView.this.a != null) {
                ActivityChooserView.this.a.a(false);
            }
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (((a) adapterView.getAdapter()).getItemViewType(i)) {
                case 0:
                    ActivityChooserView.this.b();
                    if (!ActivityChooserView.this.o) {
                        if (!ActivityChooserView.this.b.b) {
                            i++;
                        }
                        Intent b = ActivityChooserView.this.b.a.b(i);
                        if (b != null) {
                            b.addFlags(524288);
                            ActivityChooserView.this.getContext().startActivity(b);
                            return;
                        }
                        return;
                    } else if (i > 0) {
                        eh ehVar = ActivityChooserView.this.b.a;
                        synchronized (ehVar.a) {
                            ehVar.d();
                            eh.a aVar = ehVar.b.get(i);
                            eh.a aVar2 = ehVar.b.get(0);
                            ehVar.a(new eh.c(new ComponentName(aVar.a.activityInfo.packageName, aVar.a.activityInfo.name), System.currentTimeMillis(), aVar2 != null ? (aVar2.b - aVar.b) + 5.0f : 1.0f));
                        }
                        return;
                    } else {
                        return;
                    }
                case 1:
                    ActivityChooserView.this.a(Integer.MAX_VALUE);
                    return;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public final boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.h) {
                if (ActivityChooserView.this.b.getCount() > 0) {
                    boolean unused = ActivityChooserView.this.o = true;
                    ActivityChooserView.this.a(ActivityChooserView.this.p);
                }
                return true;
            }
            throw new IllegalArgumentException();
        }
    }

    public ActivityChooserView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = new DataSetObserver() {
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.this.b.notifyDataSetChanged();
            }

            public final void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.b.notifyDataSetInvalidated();
            }
        };
        this.l = new ViewTreeObserver.OnGlobalLayoutListener() {
            public final void onGlobalLayout() {
                if (!ActivityChooserView.this.c()) {
                    return;
                }
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().a();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().c();
                if (ActivityChooserView.this.a != null) {
                    ActivityChooserView.this.a.a(true);
                }
            }
        };
        this.p = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.ActivityChooserView, i2, 0);
        this.p = obtainStyledAttributes.getInt(cv.k.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(cv.k.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(cv.h.abc_activity_chooser_view, this, true);
        this.c = new b(this, (byte) 0);
        this.d = (LinearLayoutCompat) findViewById(cv.f.activity_chooser_view_content);
        this.e = this.d.getBackground();
        this.h = (FrameLayout) findViewById(cv.f.default_activity_button);
        this.h.setOnClickListener(this.c);
        this.h.setOnLongClickListener(this.c);
        this.i = (ImageView) this.h.findViewById(cv.f.image);
        FrameLayout frameLayout = (FrameLayout) findViewById(cv.f.expand_activities_button);
        frameLayout.setOnClickListener(this.c);
        frameLayout.setOnTouchListener(new ListPopupWindow.b(frameLayout) {
            public final ListPopupWindow a() {
                return ActivityChooserView.this.getListPopupWindow();
            }

            /* access modifiers changed from: protected */
            public final boolean b() {
                ActivityChooserView.this.a();
                return true;
            }

            /* access modifiers changed from: protected */
            public final boolean c() {
                ActivityChooserView.this.b();
                return true;
            }
        });
        this.f = frameLayout;
        this.g = (ImageView) frameLayout.findViewById(cv.f.image);
        this.g.setImageDrawable(drawable);
        this.b = new a(this, (byte) 0);
        this.b.registerDataSetObserver(new DataSetObserver() {
            public final void onChanged() {
                super.onChanged();
                ActivityChooserView.c(ActivityChooserView.this);
            }
        });
        Resources resources = context.getResources();
        this.j = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(cv.d.abc_config_prefDialogWidth));
    }

    /* access modifiers changed from: private */
    public void a(int i2) {
        if (this.b.a == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.l);
        boolean z = this.h.getVisibility() == 0;
        int a2 = this.b.a.a();
        int i3 = z ? 1 : 0;
        if (i2 == Integer.MAX_VALUE || a2 <= i3 + i2) {
            this.b.a(false);
            this.b.a(i2);
        } else {
            this.b.a(true);
            this.b.a(i2 - 1);
        }
        ListPopupWindow listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.b.isShowing()) {
            if (this.o || !z) {
                this.b.a(true, z);
            } else {
                this.b.a(false, false);
            }
            listPopupWindow.a(Math.min(this.b.a(), this.j));
            listPopupWindow.c();
            if (this.a != null) {
                this.a.a(true);
            }
            listPopupWindow.c.setContentDescription(getContext().getString(cv.i.abc_activitychooserview_choose_application));
        }
    }

    static /* synthetic */ void c(ActivityChooserView activityChooserView) {
        if (activityChooserView.b.getCount() > 0) {
            activityChooserView.f.setEnabled(true);
        } else {
            activityChooserView.f.setEnabled(false);
        }
        int a2 = activityChooserView.b.a.a();
        int c2 = activityChooserView.b.a.c();
        if (a2 == 1 || (a2 > 1 && c2 > 0)) {
            activityChooserView.h.setVisibility(0);
            ResolveInfo b2 = activityChooserView.b.a.b();
            PackageManager packageManager = activityChooserView.getContext().getPackageManager();
            activityChooserView.i.setImageDrawable(b2.loadIcon(packageManager));
            if (activityChooserView.r != 0) {
                CharSequence loadLabel = b2.loadLabel(packageManager);
                activityChooserView.h.setContentDescription(activityChooserView.getContext().getString(activityChooserView.r, new Object[]{loadLabel}));
            }
        } else {
            activityChooserView.h.setVisibility(8);
        }
        if (activityChooserView.h.getVisibility() == 0) {
            activityChooserView.d.setBackgroundDrawable(activityChooserView.e);
        } else {
            activityChooserView.d.setBackgroundDrawable((Drawable) null);
        }
    }

    /* access modifiers changed from: private */
    public ListPopupWindow getListPopupWindow() {
        if (this.m == null) {
            this.m = new ListPopupWindow(getContext());
            this.m.a((ListAdapter) this.b);
            this.m.g = this;
            this.m.d();
            this.m.h = this.c;
            this.m.a((PopupWindow.OnDismissListener) this.c);
        }
        return this.m;
    }

    public final boolean a() {
        if (getListPopupWindow().b.isShowing() || !this.q) {
            return false;
        }
        this.o = false;
        a(this.p);
        return true;
    }

    public final boolean b() {
        if (!getListPopupWindow().b.isShowing()) {
            return true;
        }
        getListPopupWindow().a();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        return true;
    }

    public final boolean c() {
        return getListPopupWindow().b.isShowing();
    }

    public eh getDataModel() {
        return this.b.a;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        eh ehVar = this.b.a;
        if (ehVar != null) {
            ehVar.registerObserver(this.k);
        }
        this.q = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eh ehVar = this.b.a;
        if (ehVar != null) {
            ehVar.unregisterObserver(this.k);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.l);
        }
        if (c()) {
            b();
        }
        this.q = false;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        this.d.layout(0, 0, i4 - i2, i5 - i3);
        if (!c()) {
            b();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        LinearLayoutCompat linearLayoutCompat = this.d;
        if (this.h.getVisibility() != 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), 1073741824);
        }
        measureChild(linearLayoutCompat, i2, i3);
        setMeasuredDimension(linearLayoutCompat.getMeasuredWidth(), linearLayoutCompat.getMeasuredHeight());
    }

    public void setActivityChooserModel(eh ehVar) {
        a aVar = this.b;
        eh ehVar2 = ActivityChooserView.this.b.a;
        if (ehVar2 != null && ActivityChooserView.this.isShown()) {
            ehVar2.unregisterObserver(ActivityChooserView.this.k);
        }
        aVar.a = ehVar;
        if (ehVar != null && ActivityChooserView.this.isShown()) {
            ehVar.registerObserver(ActivityChooserView.this.k);
        }
        aVar.notifyDataSetChanged();
        if (getListPopupWindow().b.isShowing()) {
            b();
            a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i2) {
        this.r = i2;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i2) {
        this.g.setContentDescription(getContext().getString(i2));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.g.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i2) {
        this.p = i2;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.n = onDismissListener;
    }

    public void setProvider(ao aoVar) {
        this.a = aoVar;
    }
}
