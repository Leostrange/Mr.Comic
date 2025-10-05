package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import defpackage.cv;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* renamed from: er  reason: default package */
/* compiled from: TintManager */
public final class er {
    public static final boolean a = (Build.VERSION.SDK_INT < 21);
    private static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    private static final WeakHashMap<Context, er> c = new WeakHashMap<>();
    private static final a d = new a();
    private static final int[] e = {cv.e.abc_textfield_search_default_mtrl_alpha, cv.e.abc_textfield_default_mtrl_alpha, cv.e.abc_ab_share_pack_mtrl_alpha};
    private static final int[] f = {cv.e.abc_ic_ab_back_mtrl_am_alpha, cv.e.abc_ic_go_search_api_mtrl_alpha, cv.e.abc_ic_search_api_mtrl_alpha, cv.e.abc_ic_commit_search_api_mtrl_alpha, cv.e.abc_ic_clear_mtrl_alpha, cv.e.abc_ic_menu_share_mtrl_alpha, cv.e.abc_ic_menu_copy_mtrl_am_alpha, cv.e.abc_ic_menu_cut_mtrl_alpha, cv.e.abc_ic_menu_selectall_mtrl_alpha, cv.e.abc_ic_menu_paste_mtrl_am_alpha, cv.e.abc_ic_menu_moreoverflow_mtrl_alpha, cv.e.abc_ic_voice_search_api_mtrl_alpha};
    private static final int[] g = {cv.e.abc_textfield_activated_mtrl_alpha, cv.e.abc_textfield_search_activated_mtrl_alpha, cv.e.abc_cab_background_top_mtrl_alpha, cv.e.abc_text_cursor_mtrl_alpha};
    private static final int[] h = {cv.e.abc_popup_background_mtrl_mult, cv.e.abc_cab_background_internal_bg, cv.e.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] i = {cv.e.abc_edit_text_material, cv.e.abc_tab_indicator_material, cv.e.abc_textfield_search_material, cv.e.abc_spinner_mtrl_am_alpha, cv.e.abc_spinner_textfield_background_material, cv.e.abc_ratingbar_full_material, cv.e.abc_switch_track_mtrl_alpha, cv.e.abc_switch_thumb_material, cv.e.abc_btn_default_mtrl_shape, cv.e.abc_btn_borderless_material};
    private static final int[] j = {cv.e.abc_btn_check_material, cv.e.abc_btn_radio_material};
    private final WeakReference<Context> k;
    private SparseArray<ColorStateList> l;
    private ColorStateList m;

    /* renamed from: er$a */
    /* compiled from: TintManager */
    static class a extends af<Integer, PorterDuffColorFilter> {
        static int a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    private er(Context context) {
        this.k = new WeakReference<>(context);
    }

    public static Drawable a(Context context, int i2) {
        return a(f, i2) || a(e, i2) || a(g, i2) || a(i, i2) || a(h, i2) || a(j, i2) || i2 == cv.e.abc_cab_background_top_material ? a(context).a(i2, false) : e.getDrawable(context, i2);
    }

    public static er a(Context context) {
        er erVar = c.get(context);
        if (erVar != null) {
            return erVar;
        }
        er erVar2 = new er(context);
        c.put(context, erVar2);
        return erVar2;
    }

    private static void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
        if (mode == null) {
            mode = b;
        }
        PorterDuffColorFilter porterDuffColorFilter = (PorterDuffColorFilter) d.a(Integer.valueOf(a.a(i2, mode)));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            d.a(Integer.valueOf(a.a(i2, mode)), porterDuffColorFilter);
        }
        drawable.setColorFilter(porterDuffColorFilter);
    }

    public static void a(View view, eq eqVar) {
        Drawable background = view.getBackground();
        if (eqVar.d) {
            a(background, eqVar.a.getColorForState(view.getDrawableState(), eqVar.a.getDefaultColor()), eqVar.c ? eqVar.b : null);
        } else {
            background.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 10) {
            view.invalidate();
        }
    }

    private static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public final ColorStateList a(int i2) {
        ColorStateList colorStateList;
        Context context = (Context) this.k.get();
        if (context == null) {
            return null;
        }
        ColorStateList colorStateList2 = this.l != null ? this.l.get(i2) : null;
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        if (i2 == cv.e.abc_edit_text_material) {
            colorStateList = new ColorStateList(new int[][]{eo.a, eo.g, eo.h}, new int[]{eo.c(context, cv.a.colorControlNormal), eo.a(context, cv.a.colorControlNormal), eo.a(context, cv.a.colorControlActivated)});
        } else if (i2 == cv.e.abc_switch_track_mtrl_alpha) {
            colorStateList = new ColorStateList(new int[][]{eo.a, eo.e, eo.h}, new int[]{eo.a(context, 16842800, 0.1f), eo.a(context, cv.a.colorControlActivated, 0.3f), eo.a(context, 16842800, 0.3f)});
        } else if (i2 == cv.e.abc_switch_thumb_material) {
            int[][] iArr = new int[3][];
            int[] iArr2 = new int[3];
            ColorStateList b2 = eo.b(context, cv.a.colorSwitchThumbNormal);
            if (b2 == null || !b2.isStateful()) {
                iArr[0] = eo.a;
                iArr2[0] = eo.c(context, cv.a.colorSwitchThumbNormal);
                iArr[1] = eo.e;
                iArr2[1] = eo.a(context, cv.a.colorControlActivated);
                iArr[2] = eo.h;
                iArr2[2] = eo.a(context, cv.a.colorSwitchThumbNormal);
            } else {
                iArr[0] = eo.a;
                iArr2[0] = b2.getColorForState(iArr[0], 0);
                iArr[1] = eo.e;
                iArr2[1] = eo.a(context, cv.a.colorControlActivated);
                iArr[2] = eo.h;
                iArr2[2] = b2.getDefaultColor();
            }
            colorStateList = new ColorStateList(iArr, iArr2);
        } else if (i2 == cv.e.abc_btn_default_mtrl_shape || i2 == cv.e.abc_btn_borderless_material) {
            int a2 = eo.a(context, cv.a.colorButtonNormal);
            int a3 = eo.a(context, cv.a.colorControlHighlight);
            colorStateList = new ColorStateList(new int[][]{eo.a, eo.d, eo.b, eo.h}, new int[]{eo.c(context, cv.a.colorButtonNormal), h.a(a3, a2), h.a(a3, a2), a2});
        } else if (i2 == cv.e.abc_spinner_mtrl_am_alpha || i2 == cv.e.abc_spinner_textfield_background_material) {
            colorStateList = new ColorStateList(new int[][]{eo.a, eo.g, eo.h}, new int[]{eo.c(context, cv.a.colorControlNormal), eo.a(context, cv.a.colorControlNormal), eo.a(context, cv.a.colorControlActivated)});
        } else if (a(f, i2)) {
            colorStateList = eo.b(context, cv.a.colorControlNormal);
        } else if (a(i, i2)) {
            if (this.m == null) {
                int a4 = eo.a(context, cv.a.colorControlNormal);
                int a5 = eo.a(context, cv.a.colorControlActivated);
                this.m = new ColorStateList(new int[][]{eo.a, eo.b, eo.c, eo.d, eo.e, eo.f, eo.h}, new int[]{eo.c(context, cv.a.colorControlNormal), a5, a5, a5, a5, a5, a4});
            }
            colorStateList = this.m;
        } else {
            colorStateList = a(j, i2) ? new ColorStateList(new int[][]{eo.a, eo.e, eo.h}, new int[]{eo.c(context, cv.a.colorControlNormal), eo.a(context, cv.a.colorControlActivated), eo.a(context, cv.a.colorControlNormal)}) : colorStateList2;
        }
        if (colorStateList == null) {
            return colorStateList;
        }
        if (this.l == null) {
            this.l = new SparseArray<>();
        }
        this.l.append(i2, colorStateList);
        return colorStateList;
    }

    public final Drawable a(int i2, boolean z) {
        PorterDuff.Mode mode = null;
        Context context = (Context) this.k.get();
        if (context == null) {
            return null;
        }
        Drawable drawable = e.getDrawable(context, i2);
        if (drawable != null) {
            if (Build.VERSION.SDK_INT >= 8) {
                drawable = drawable.mutate();
            }
            ColorStateList a2 = a(i2);
            if (a2 != null) {
                drawable = i.c(drawable);
                i.a(drawable, a2);
                if (i2 == cv.e.abc_switch_thumb_material) {
                    mode = PorterDuff.Mode.MULTIPLY;
                }
                if (mode != null) {
                    i.a(drawable, mode);
                }
            } else if (i2 == cv.e.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{a(cv.e.abc_cab_background_internal_bg, false), a(cv.e.abc_cab_background_top_mtrl_alpha, false)});
            } else if (!a(i2, drawable) && z) {
                drawable = null;
            }
        }
        return drawable;
    }

    public final boolean a(int i2, Drawable drawable) {
        int i3;
        int i4;
        PorterDuff.Mode mode;
        boolean z;
        Context context = (Context) this.k.get();
        if (context == null) {
            return false;
        }
        if (a(e, i2)) {
            i4 = cv.a.colorControlNormal;
            mode = null;
            z = true;
            i3 = -1;
        } else if (a(g, i2)) {
            i4 = cv.a.colorControlActivated;
            mode = null;
            z = true;
            i3 = -1;
        } else if (a(h, i2)) {
            z = true;
            mode = PorterDuff.Mode.MULTIPLY;
            i4 = 16842801;
            i3 = -1;
        } else if (i2 == cv.e.abc_list_divider_mtrl_alpha) {
            i4 = 16842800;
            i3 = Math.round(40.8f);
            mode = null;
            z = true;
        } else {
            i3 = -1;
            i4 = 0;
            mode = null;
            z = false;
        }
        if (!z) {
            return false;
        }
        a(drawable, eo.a(context, i4), mode);
        if (i3 != -1) {
            drawable.setAlpha(i3);
        }
        return true;
    }
}
