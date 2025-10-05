package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ListPopupWindow;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import defpackage.cv;
import defpackage.ds;
import defpackage.dz;

public class ActionMenuItemView extends AppCompatTextView implements ActionMenuView.a, View.OnClickListener, View.OnLongClickListener, dz.a {
    /* access modifiers changed from: private */
    public du a;
    private CharSequence b;
    private Drawable c;
    /* access modifiers changed from: private */
    public ds.b d;
    private ListPopupWindow.b e;
    /* access modifiers changed from: private */
    public b f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private int k;

    class a extends ListPopupWindow.b {
        public a() {
            super(ActionMenuItemView.this);
        }

        public final ListPopupWindow a() {
            if (ActionMenuItemView.this.f != null) {
                return ActionMenuItemView.this.f.a();
            }
            return null;
        }

        /* access modifiers changed from: protected */
        /* JADX WARNING: Code restructure failed: missing block: B:4:0x001b, code lost:
            r1 = a();
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean b() {
            /*
                r3 = this;
                r0 = 0
                android.support.v7.internal.view.menu.ActionMenuItemView r1 = android.support.v7.internal.view.menu.ActionMenuItemView.this
                ds$b r1 = r1.d
                if (r1 == 0) goto L_0x002a
                android.support.v7.internal.view.menu.ActionMenuItemView r1 = android.support.v7.internal.view.menu.ActionMenuItemView.this
                ds$b r1 = r1.d
                android.support.v7.internal.view.menu.ActionMenuItemView r2 = android.support.v7.internal.view.menu.ActionMenuItemView.this
                du r2 = r2.a
                boolean r1 = r1.a(r2)
                if (r1 == 0) goto L_0x002a
                android.support.v7.widget.ListPopupWindow r1 = r3.a()
                if (r1 == 0) goto L_0x002a
                android.widget.PopupWindow r1 = r1.b
                boolean r1 = r1.isShowing()
                if (r1 == 0) goto L_0x002a
                r0 = 1
            L_0x002a:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v7.internal.view.menu.ActionMenuItemView.a.b():boolean");
        }
    }

    public static abstract class b {
        public abstract ListPopupWindow a();
    }

    public ActionMenuItemView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.g = resources.getBoolean(cv.b.abc_config_allowActionMenuItemTextWithIcon);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.ActionMenuItemView, i2, 0);
        this.i = obtainStyledAttributes.getDimensionPixelSize(cv.k.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.k = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setOnLongClickListener(this);
        this.j = -1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0021, code lost:
        if (r5.h != false) goto L_0x0023;
     */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0027  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void d() {
        /*
            r5 = this;
            r1 = 1
            r2 = 0
            java.lang.CharSequence r0 = r5.b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002d
            r0 = r1
        L_0x000b:
            android.graphics.drawable.Drawable r3 = r5.c
            if (r3 == 0) goto L_0x0023
            du r3 = r5.a
            int r3 = r3.c
            r3 = r3 & 4
            r4 = 4
            if (r3 != r4) goto L_0x002f
            r3 = r1
        L_0x0019:
            if (r3 == 0) goto L_0x0024
            boolean r3 = r5.g
            if (r3 != 0) goto L_0x0023
            boolean r3 = r5.h
            if (r3 == 0) goto L_0x0024
        L_0x0023:
            r2 = r1
        L_0x0024:
            r0 = r0 & r2
            if (r0 == 0) goto L_0x0031
            java.lang.CharSequence r0 = r5.b
        L_0x0029:
            r5.setText(r0)
            return
        L_0x002d:
            r0 = r2
            goto L_0x000b
        L_0x002f:
            r3 = r2
            goto L_0x0019
        L_0x0031:
            r0 = 0
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.internal.view.menu.ActionMenuItemView.d():void");
    }

    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean b() {
        return a() && this.a.getIcon() == null;
    }

    public final boolean c() {
        return a();
    }

    public du getItemData() {
        return this.a;
    }

    public void initialize(du duVar, int i2) {
        this.a = duVar;
        setIcon(duVar.getIcon());
        setTitle(duVar.a((dz.a) this));
        setId(duVar.getItemId());
        setVisibility(duVar.isVisible() ? 0 : 8);
        setEnabled(duVar.isEnabled());
        if (duVar.hasSubMenu() && this.e == null) {
            this.e = new a();
        }
    }

    public void onClick(View view) {
        if (this.d != null) {
            this.d.a(this.a);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.g = getContext().getResources().getBoolean(cv.b.abc_config_allowActionMenuItemTextWithIcon);
        d();
    }

    public boolean onLongClick(View view) {
        if (a()) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i2 = iArr[1] + (height / 2);
        int i3 = iArr[0] + (width / 2);
        if (bh.h(view) == 0) {
            i3 = context.getResources().getDisplayMetrics().widthPixels - i3;
        }
        Toast makeText = Toast.makeText(context, this.a.getTitle(), 0);
        if (i2 < rect.height()) {
            makeText.setGravity(8388661, i3, height);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
        return true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        boolean a2 = a();
        if (a2 && this.j >= 0) {
            super.setPadding(this.j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.i) : this.i;
        if (mode != 1073741824 && this.i > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i3);
        }
        if (!a2 && this.c != null) {
            super.setPadding((getMeasuredWidth() - this.c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.a.hasSubMenu() || this.e == null || !this.e.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.h != z) {
            this.h = z;
            if (this.a != null) {
                this.a.b.g();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.c = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > this.k) {
                float f2 = ((float) this.k) / ((float) intrinsicWidth);
                intrinsicWidth = this.k;
                intrinsicHeight = (int) (((float) intrinsicHeight) * f2);
            }
            if (intrinsicHeight > this.k) {
                float f3 = ((float) this.k) / ((float) intrinsicHeight);
                intrinsicHeight = this.k;
                intrinsicWidth = (int) (((float) intrinsicWidth) * f3);
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        d();
    }

    public void setItemInvoker(ds.b bVar) {
        this.d = bVar;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        this.j = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(b bVar) {
        this.f = bVar;
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTitle(CharSequence charSequence) {
        this.b = charSequence;
        setContentDescription(this.b);
        d();
    }
}
