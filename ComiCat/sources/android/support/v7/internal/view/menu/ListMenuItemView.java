package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import defpackage.cv;
import defpackage.dz;

public class ListMenuItemView extends LinearLayout implements dz.a {
    private du a;
    private ImageView b;
    private RadioButton c;
    private TextView d;
    private CheckBox e;
    private TextView f;
    private Drawable g;
    private int h;
    private Context i;
    private boolean j;
    private int k;
    private Context l;
    private LayoutInflater m;
    private boolean n;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        this.l = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.MenuView, i2, 0);
        this.g = obtainStyledAttributes.getDrawable(cv.k.MenuView_android_itemBackground);
        this.h = obtainStyledAttributes.getResourceId(cv.k.MenuView_android_itemTextAppearance, -1);
        this.j = obtainStyledAttributes.getBoolean(cv.k.MenuView_preserveIconSpacing, false);
        this.i = context;
        obtainStyledAttributes.recycle();
    }

    private void a() {
        this.c = (RadioButton) getInflater().inflate(cv.h.abc_list_menu_item_radio, this, false);
        addView(this.c);
    }

    private void b() {
        this.e = (CheckBox) getInflater().inflate(cv.h.abc_list_menu_item_checkbox, this, false);
        addView(this.e);
    }

    private LayoutInflater getInflater() {
        if (this.m == null) {
            this.m = LayoutInflater.from(this.l);
        }
        return this.m;
    }

    public du getItemData() {
        return this.a;
    }

    public void initialize(du duVar, int i2) {
        this.a = duVar;
        this.k = i2;
        setVisibility(duVar.isVisible() ? 0 : 8);
        setTitle(duVar.a((dz.a) this));
        setCheckable(duVar.isCheckable());
        setShortcut(duVar.d(), duVar.c());
        setIcon(duVar.getIcon());
        setEnabled(duVar.isEnabled());
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundDrawable(this.g);
        this.d = (TextView) findViewById(cv.f.title);
        if (this.h != -1) {
            this.d.setTextAppearance(this.i, this.h);
        }
        this.f = (TextView) findViewById(cv.f.shortcut);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.b != null && this.j) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i2, i3);
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.c != null || this.e != null) {
            if (this.a.e()) {
                if (this.c == null) {
                    a();
                }
                compoundButton = this.c;
                compoundButton2 = this.e;
            } else {
                if (this.e == null) {
                    b();
                }
                compoundButton = this.e;
                compoundButton2 = this.c;
            }
            if (z) {
                compoundButton.setChecked(this.a.isChecked());
                int i2 = z ? 0 : 8;
                if (compoundButton.getVisibility() != i2) {
                    compoundButton.setVisibility(i2);
                }
                if (compoundButton2 != null && compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.e != null) {
                this.e.setVisibility(8);
            }
            if (this.c != null) {
                this.c.setVisibility(8);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.a.e()) {
            if (this.c == null) {
                a();
            }
            compoundButton = this.c;
        } else {
            if (this.e == null) {
                b();
            }
            compoundButton = this.e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.n = z;
        this.j = z;
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.a.b.i || this.n;
        if (!z && !this.j) {
            return;
        }
        if (this.b != null || drawable != null || this.j) {
            if (this.b == null) {
                this.b = (ImageView) getInflater().inflate(cv.h.abc_list_menu_item_icon, this, false);
                addView(this.b, 0);
            }
            if (drawable != null || this.j) {
                ImageView imageView = this.b;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.b.getVisibility() != 0) {
                    this.b.setVisibility(0);
                    return;
                }
                return;
            }
            this.b.setVisibility(8);
        }
    }

    public void setShortcut(boolean z, char c2) {
        String sb;
        int i2 = (!z || !this.a.d()) ? 8 : 0;
        if (i2 == 0) {
            TextView textView = this.f;
            char c3 = this.a.c();
            if (c3 == 0) {
                sb = "";
            } else {
                StringBuilder sb2 = new StringBuilder(du.f);
                switch (c3) {
                    case 8:
                        sb2.append(du.h);
                        break;
                    case 10:
                        sb2.append(du.g);
                        break;
                    case ' ':
                        sb2.append(du.i);
                        break;
                    default:
                        sb2.append(c3);
                        break;
                }
                sb = sb2.toString();
            }
            textView.setText(sb);
        }
        if (this.f.getVisibility() != i2) {
            this.f.setVisibility(i2);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.d.setText(charSequence);
            if (this.d.getVisibility() != 0) {
                this.d.setVisibility(0);
            }
        } else if (this.d.getVisibility() != 8) {
            this.d.setVisibility(8);
        }
    }
}
