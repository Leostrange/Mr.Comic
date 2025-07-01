// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.SparseArray;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class er
{
    static final class a extends af
    {

        static int a(int i1, android.graphics.PorterDuff.Mode mode)
        {
            return (i1 + 31) * 31 + mode.hashCode();
        }

        public a()
        {
        }
    }


    public static final boolean a;
    private static final android.graphics.PorterDuff.Mode b;
    private static final WeakHashMap c = new WeakHashMap();
    private static final a d = new a();
    private static final int e[];
    private static final int f[];
    private static final int g[];
    private static final int h[];
    private static final int i[];
    private static final int j[];
    private final WeakReference k;
    private SparseArray l;
    private ColorStateList m;

    private er(Context context)
    {
        k = new WeakReference(context);
    }

    public static Drawable a(Context context, int i1)
    {
        boolean flag;
        if (a(f, i1) || a(e, i1) || a(g, i1) || a(i, i1) || a(h, i1) || a(j, i1) || i1 == cv.e.abc_cab_background_top_material)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return a(context).a(i1, false);
        } else
        {
            return e.getDrawable(context, i1);
        }
    }

    public static er a(Context context)
    {
        er er2 = (er)c.get(context);
        er er1 = er2;
        if (er2 == null)
        {
            er1 = new er(context);
            c.put(context, er1);
        }
        return er1;
    }

    private static void a(Drawable drawable, int i1, android.graphics.PorterDuff.Mode mode)
    {
        android.graphics.PorterDuff.Mode mode1 = mode;
        if (mode == null)
        {
            mode1 = b;
        }
        PorterDuffColorFilter porterduffcolorfilter = (PorterDuffColorFilter)d.a(Integer.valueOf(a.a(i1, mode1)));
        mode = porterduffcolorfilter;
        if (porterduffcolorfilter == null)
        {
            mode = new PorterDuffColorFilter(i1, mode1);
            d.a(Integer.valueOf(a.a(i1, mode1)), mode);
        }
        drawable.setColorFilter(mode);
    }

    public static void a(View view, eq eq1)
    {
        Drawable drawable = view.getBackground();
        if (eq1.d)
        {
            int i1 = eq1.a.getColorForState(view.getDrawableState(), eq1.a.getDefaultColor());
            if (eq1.c)
            {
                eq1 = eq1.b;
            } else
            {
                eq1 = null;
            }
            a(drawable, i1, ((android.graphics.PorterDuff.Mode) (eq1)));
        } else
        {
            drawable.clearColorFilter();
        }
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            view.invalidate();
        }
    }

    private static boolean a(int ai[], int i1)
    {
        boolean flag1 = false;
        int k1 = ai.length;
        int j1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (j1 < k1)
                {
                    if (ai[j1] != i1)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while (true);
    }

    public final ColorStateList a(int i1)
    {
        Context context = (Context)k.get();
        if (context == null)
        {
            context = null;
        } else
        {
            Object obj;
            if (l != null)
            {
                obj = (ColorStateList)l.get(i1);
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                if (i1 == cv.e.abc_edit_text_material)
                {
                    obj = eo.a;
                    int j1 = eo.c(context, cv.a.colorControlNormal);
                    int ai[] = eo.g;
                    int l2 = eo.a(context, cv.a.colorControlNormal);
                    int ai6[] = eo.h;
                    int j4 = eo.a(context, cv.a.colorControlActivated);
                    obj = new ColorStateList(new int[][] {
                        obj, ai, ai6
                    }, new int[] {
                        j1, l2, j4
                    });
                } else
                if (i1 == cv.e.abc_switch_track_mtrl_alpha)
                {
                    obj = eo.a;
                    int k1 = eo.a(context, 0x1010030, 0.1F);
                    int ai1[] = eo.e;
                    int i3 = eo.a(context, cv.a.colorControlActivated, 0.3F);
                    int ai7[] = eo.h;
                    int k4 = eo.a(context, 0x1010030, 0.3F);
                    obj = new ColorStateList(new int[][] {
                        obj, ai1, ai7
                    }, new int[] {
                        k1, i3, k4
                    });
                } else
                if (i1 == cv.e.abc_switch_thumb_material)
                {
                    obj = new int[3][];
                    int ai2[] = new int[3];
                    ColorStateList colorstatelist = eo.b(context, cv.a.colorSwitchThumbNormal);
                    if (colorstatelist != null && colorstatelist.isStateful())
                    {
                        obj[0] = eo.a;
                        ai2[0] = colorstatelist.getColorForState(obj[0], 0);
                        obj[1] = eo.e;
                        ai2[1] = eo.a(context, cv.a.colorControlActivated);
                        obj[2] = eo.h;
                        ai2[2] = colorstatelist.getDefaultColor();
                    } else
                    {
                        obj[0] = eo.a;
                        ai2[0] = eo.c(context, cv.a.colorSwitchThumbNormal);
                        obj[1] = eo.e;
                        ai2[1] = eo.a(context, cv.a.colorControlActivated);
                        obj[2] = eo.h;
                        ai2[2] = eo.a(context, cv.a.colorSwitchThumbNormal);
                    }
                    obj = new ColorStateList(((int [][]) (obj)), ai2);
                } else
                if (i1 == cv.e.abc_btn_default_mtrl_shape || i1 == cv.e.abc_btn_borderless_material)
                {
                    int l1 = eo.a(context, cv.a.colorButtonNormal);
                    int l5 = eo.a(context, cv.a.colorControlHighlight);
                    obj = eo.a;
                    int j3 = eo.c(context, cv.a.colorButtonNormal);
                    context = eo.d;
                    int l4 = h.a(l5, l1);
                    int ai3[] = eo.b;
                    l5 = h.a(l5, l1);
                    obj = new ColorStateList(new int[][] {
                        obj, context, ai3, eo.h
                    }, new int[] {
                        j3, l4, l5, l1
                    });
                } else
                if (i1 == cv.e.abc_spinner_mtrl_am_alpha || i1 == cv.e.abc_spinner_textfield_background_material)
                {
                    obj = eo.a;
                    int i2 = eo.c(context, cv.a.colorControlNormal);
                    int ai4[] = eo.g;
                    int k3 = eo.a(context, cv.a.colorControlNormal);
                    int ai8[] = eo.h;
                    int i5 = eo.a(context, cv.a.colorControlActivated);
                    obj = new ColorStateList(new int[][] {
                        obj, ai4, ai8
                    }, new int[] {
                        i2, k3, i5
                    });
                } else
                if (a(f, i1))
                {
                    obj = eo.b(context, cv.a.colorControlNormal);
                } else
                if (a(i, i1))
                {
                    if (m == null)
                    {
                        int j2 = eo.a(context, cv.a.colorControlNormal);
                        int l3 = eo.a(context, cv.a.colorControlActivated);
                        obj = eo.a;
                        int j5 = eo.c(context, cv.a.colorControlNormal);
                        m = new ColorStateList(new int[][] {
                            obj, eo.b, eo.c, eo.d, eo.e, eo.f, eo.h
                        }, new int[] {
                            j5, l3, l3, l3, l3, l3, j2
                        });
                    }
                    obj = m;
                } else
                if (a(j, i1))
                {
                    obj = eo.a;
                    int k2 = eo.c(context, cv.a.colorControlNormal);
                    int ai5[] = eo.e;
                    int i4 = eo.a(context, cv.a.colorControlActivated);
                    int ai9[] = eo.h;
                    int k5 = eo.a(context, cv.a.colorControlNormal);
                    obj = new ColorStateList(new int[][] {
                        obj, ai5, ai9
                    }, new int[] {
                        k2, i4, k5
                    });
                }
                context = ((Context) (obj));
                if (obj != null)
                {
                    if (l == null)
                    {
                        l = new SparseArray();
                    }
                    l.append(i1, obj);
                    return ((ColorStateList) (obj));
                }
            } else
            {
                return ((ColorStateList) (obj));
            }
        }
        return context;
    }

    public final Drawable a(int i1, boolean flag)
    {
        Object obj;
        Drawable drawable;
        Object obj2;
        obj2 = null;
        obj = (Context)k.get();
        if (obj == null)
        {
            return null;
        }
        drawable = e.getDrawable(((Context) (obj)), i1);
        obj = drawable;
        if (drawable == null) goto _L2; else goto _L1
_L1:
        Object obj1;
        obj1 = drawable;
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            obj1 = drawable.mutate();
        }
        obj = a(i1);
        if (obj == null) goto _L4; else goto _L3
_L3:
        Drawable drawable1 = i.c(((Drawable) (obj1)));
        i.a(drawable1, ((ColorStateList) (obj)));
        obj1 = obj2;
        if (i1 == cv.e.abc_switch_thumb_material)
        {
            obj1 = android.graphics.PorterDuff.Mode.MULTIPLY;
        }
        obj = drawable1;
        if (obj1 != null)
        {
            i.a(drawable1, ((android.graphics.PorterDuff.Mode) (obj1)));
            obj = drawable1;
        }
_L2:
        return ((Drawable) (obj));
_L4:
        if (i1 == cv.e.abc_cab_background_top_material)
        {
            return new LayerDrawable(new Drawable[] {
                a(cv.e.abc_cab_background_internal_bg, false), a(cv.e.abc_cab_background_top_mtrl_alpha, false)
            });
        }
        obj = obj1;
        if (!a(i1, ((Drawable) (obj1))))
        {
            obj = obj1;
            if (flag)
            {
                obj = null;
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final boolean a(int i1, Drawable drawable)
    {
        Context context = (Context)k.get();
        if (context == null)
        {
            return false;
        }
        android.graphics.PorterDuff.Mode mode;
        int j1;
        boolean flag;
        if (a(e, i1))
        {
            j1 = cv.a.colorControlNormal;
            mode = null;
            flag = true;
            i1 = -1;
        } else
        if (a(g, i1))
        {
            j1 = cv.a.colorControlActivated;
            mode = null;
            flag = true;
            i1 = -1;
        } else
        if (a(h, i1))
        {
            mode = android.graphics.PorterDuff.Mode.MULTIPLY;
            flag = true;
            j1 = 0x1010031;
            i1 = -1;
        } else
        if (i1 == cv.e.abc_list_divider_mtrl_alpha)
        {
            j1 = 0x1010030;
            i1 = Math.round(40.8F);
            mode = null;
            flag = true;
        } else
        {
            i1 = -1;
            j1 = 0;
            mode = null;
            flag = false;
        }
        if (flag)
        {
            a(drawable, eo.a(context, j1), mode);
            if (i1 != -1)
            {
                drawable.setAlpha(i1);
            }
            return true;
        } else
        {
            return false;
        }
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        b = android.graphics.PorterDuff.Mode.SRC_IN;
        e = (new int[] {
            cv.e.abc_textfield_search_default_mtrl_alpha, cv.e.abc_textfield_default_mtrl_alpha, cv.e.abc_ab_share_pack_mtrl_alpha
        });
        f = (new int[] {
            cv.e.abc_ic_ab_back_mtrl_am_alpha, cv.e.abc_ic_go_search_api_mtrl_alpha, cv.e.abc_ic_search_api_mtrl_alpha, cv.e.abc_ic_commit_search_api_mtrl_alpha, cv.e.abc_ic_clear_mtrl_alpha, cv.e.abc_ic_menu_share_mtrl_alpha, cv.e.abc_ic_menu_copy_mtrl_am_alpha, cv.e.abc_ic_menu_cut_mtrl_alpha, cv.e.abc_ic_menu_selectall_mtrl_alpha, cv.e.abc_ic_menu_paste_mtrl_am_alpha, 
            cv.e.abc_ic_menu_moreoverflow_mtrl_alpha, cv.e.abc_ic_voice_search_api_mtrl_alpha
        });
        g = (new int[] {
            cv.e.abc_textfield_activated_mtrl_alpha, cv.e.abc_textfield_search_activated_mtrl_alpha, cv.e.abc_cab_background_top_mtrl_alpha, cv.e.abc_text_cursor_mtrl_alpha
        });
        h = (new int[] {
            cv.e.abc_popup_background_mtrl_mult, cv.e.abc_cab_background_internal_bg, cv.e.abc_menu_hardkey_panel_mtrl_mult
        });
        i = (new int[] {
            cv.e.abc_edit_text_material, cv.e.abc_tab_indicator_material, cv.e.abc_textfield_search_material, cv.e.abc_spinner_mtrl_am_alpha, cv.e.abc_spinner_textfield_background_material, cv.e.abc_ratingbar_full_material, cv.e.abc_switch_track_mtrl_alpha, cv.e.abc_switch_thumb_material, cv.e.abc_btn_default_mtrl_shape, cv.e.abc_btn_borderless_material
        });
        j = (new int[] {
            cv.e.abc_btn_check_material, cv.e.abc_btn_radio_material
        });
    }
}
