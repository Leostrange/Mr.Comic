// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import aq;
import ci;
import er;
import es;
import eu;
import ex;
import fg;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutCompat, AppCompatAutoCompleteTextView

public class SearchView extends LinearLayoutCompat
    implements ex
{
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView
    {

        private int a;
        private SearchView b;

        static boolean a(SearchAutoComplete searchautocomplete)
        {
            return TextUtils.getTrimmedLength(searchautocomplete.getText()) == 0;
        }

        public boolean enoughToFilter()
        {
            return a <= 0 || super.enoughToFilter();
        }

        protected void onFocusChanged(boolean flag, int i1, Rect rect)
        {
            super.onFocusChanged(flag, i1, rect);
            b.d();
        }

        public boolean onKeyPreIme(int i1, KeyEvent keyevent)
        {
            if (i1 == 4)
            {
                if (keyevent.getAction() == 0 && keyevent.getRepeatCount() == 0)
                {
                    android.view.KeyEvent.DispatcherState dispatcherstate = getKeyDispatcherState();
                    if (dispatcherstate != null)
                    {
                        dispatcherstate.startTracking(keyevent, this);
                    }
                    return true;
                }
                if (keyevent.getAction() == 1)
                {
                    android.view.KeyEvent.DispatcherState dispatcherstate1 = getKeyDispatcherState();
                    if (dispatcherstate1 != null)
                    {
                        dispatcherstate1.handleUpEvent(keyevent);
                    }
                    if (keyevent.isTracking() && !keyevent.isCanceled())
                    {
                        b.clearFocus();
                        SearchView.p(b);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i1, keyevent);
        }

        public void onWindowFocusChanged(boolean flag)
        {
            super.onWindowFocusChanged(flag);
            if (flag && b.hasFocus() && getVisibility() == 0)
            {
                ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.a(getContext()))
                {
                    SearchView.a.a(this);
                }
            }
        }

        public void performCompletion()
        {
        }

        protected void replaceText(CharSequence charsequence)
        {
        }

        void setSearchView(SearchView searchview)
        {
            b = searchview;
        }

        public void setThreshold(int i1)
        {
            super.setThreshold(i1);
            a = i1;
        }

        public SearchAutoComplete(Context context)
        {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeset)
        {
            this(context, attributeset, cv.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeset, int i1)
        {
            super(context, attributeset, i1);
            a = getThreshold();
        }
    }

    static final class a
    {

        Method a;
        Method b;
        Method c;
        private Method d;

        final void a(AutoCompleteTextView autocompletetextview)
        {
            if (d == null)
            {
                break MISSING_BLOCK_LABEL_27;
            }
            d.invoke(autocompletetextview, new Object[] {
                Boolean.valueOf(true)
            });
            return;
            autocompletetextview;
        }

        a()
        {
            try
            {
                a = android/widget/AutoCompleteTextView.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                a.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception3) { }
            try
            {
                b = android/widget/AutoCompleteTextView.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                b.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception2) { }
            try
            {
                d = android/widget/AutoCompleteTextView.getMethod("ensureImeVisible", new Class[] {
                    Boolean.TYPE
                });
                d.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception1) { }
            try
            {
                c = android/view/inputmethod/InputMethodManager.getMethod("showSoftInputUnchecked", new Class[] {
                    Integer.TYPE, android/os/ResultReceiver
                });
                c.setAccessible(true);
                return;
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                return;
            }
        }
    }

    public static interface b
    {

        public abstract boolean a();
    }

    public static interface c
    {

        public abstract boolean a();
    }

    public static interface d
    {

        public abstract boolean a();

        public abstract boolean b();
    }


    static final a a = new a();
    private static final boolean c;
    private ci A;
    private boolean B;
    private CharSequence C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private CharSequence H;
    private CharSequence I;
    private boolean J;
    private int K;
    private SearchableInfo L;
    private Bundle M;
    private final er N;
    private Runnable O = new Runnable() {

        final SearchView a;

        public final void run()
        {
            InputMethodManager inputmethodmanager;
            SearchView searchview;
            a a1;
            inputmethodmanager = (InputMethodManager)a.getContext().getSystemService("input_method");
            if (inputmethodmanager == null)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            a1 = SearchView.a;
            searchview = a;
            if (a1.c == null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            a1.c.invoke(inputmethodmanager, new Object[] {
                Integer.valueOf(0), null
            });
            return;
            Exception exception;
            exception;
            inputmethodmanager.showSoftInput(searchview, 0);
            return;
        }

            
            {
                a = SearchView.this;
                super();
            }
    };
    private final Runnable P;
    private Runnable Q = new Runnable() {

        final SearchView a;

        public final void run()
        {
            if (SearchView.b(a) != null && (SearchView.b(a) instanceof fg))
            {
                SearchView.b(a).a(null);
            }
        }

            
            {
                a = SearchView.this;
                super();
            }
    };
    private final WeakHashMap R;
    private final android.view.View.OnClickListener S;
    private final android.widget.TextView.OnEditorActionListener T;
    private final android.widget.AdapterView.OnItemClickListener U;
    private final android.widget.AdapterView.OnItemSelectedListener V;
    private TextWatcher W = new TextWatcher() {

        final SearchView a;

        public final void afterTextChanged(Editable editable)
        {
        }

        public final void beforeTextChanged(CharSequence charsequence, int j1, int k1, int l1)
        {
        }

        public final void onTextChanged(CharSequence charsequence, int j1, int k1, int l1)
        {
            SearchView.a(a, charsequence);
        }

            
            {
                a = SearchView.this;
                super();
            }
    };
    android.view.View.OnKeyListener b = new android.view.View.OnKeyListener() {

        final SearchView a;

        public final boolean onKey(View view, int j1, KeyEvent keyevent)
        {
            if (SearchView.o(a) != null)
            {
                if (SearchView.m(a).isPopupShowing() && SearchView.m(a).getListSelection() != -1)
                {
                    return SearchView.a(a, j1, keyevent);
                }
                if (!SearchAutoComplete.a(SearchView.m(a)) && aq.b(keyevent) && keyevent.getAction() == 1 && j1 == 66)
                {
                    view.cancelLongPress();
                    SearchView.a(a, SearchView.m(a).getText().toString());
                    return true;
                }
            }
            return false;
        }

            
            {
                a = SearchView.this;
                super();
            }
    };
    private final SearchAutoComplete d;
    private final View e;
    private final View f;
    private final View g;
    private final ImageView h;
    private final ImageView i;
    private final ImageView j;
    private final ImageView k;
    private final View l;
    private final ImageView m;
    private final Drawable n;
    private final int o;
    private final int p;
    private final Intent q;
    private final Intent r;
    private final CharSequence s;
    private c t;
    private b u;
    private android.view.View.OnFocusChangeListener v;
    private d w;
    private android.view.View.OnClickListener x;
    private boolean y;
    private boolean z;

    public SearchView(Context context)
    {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        P = new Runnable() {

            final SearchView a;

            public final void run()
            {
                SearchView.a(a);
            }

            
            {
                a = SearchView.this;
                super();
            }
        };
        R = new WeakHashMap();
        S = new android.view.View.OnClickListener() {

            final SearchView a;

            public final void onClick(View view)
            {
                if (view == SearchView.e(a))
                {
                    SearchView.f(a);
                } else
                {
                    if (view == SearchView.g(a))
                    {
                        SearchView.h(a);
                        return;
                    }
                    if (view == SearchView.i(a))
                    {
                        SearchView.j(a);
                        return;
                    }
                    if (view == SearchView.k(a))
                    {
                        SearchView.l(a);
                        return;
                    }
                    if (view == SearchView.m(a))
                    {
                        SearchView.n(a);
                        return;
                    }
                }
            }

            
            {
                a = SearchView.this;
                super();
            }
        };
        T = new android.widget.TextView.OnEditorActionListener() {

            final SearchView a;

            public final boolean onEditorAction(TextView textview, int j1, KeyEvent keyevent)
            {
                SearchView.j(a);
                return true;
            }

            
            {
                a = SearchView.this;
                super();
            }
        };
        U = new android.widget.AdapterView.OnItemClickListener() {

            final SearchView a;

            public final void onItemClick(AdapterView adapterview, View view, int j1, long l1)
            {
                SearchView.a(a, j1);
            }

            
            {
                a = SearchView.this;
                super();
            }
        };
        V = new android.widget.AdapterView.OnItemSelectedListener() {

            final SearchView a;

            public final void onItemSelected(AdapterView adapterview, View view, int j1, long l1)
            {
                SearchView.b(a, j1);
            }

            public final void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                a = SearchView.this;
                super();
            }
        };
        attributeset = es.a(context, attributeset, cv.k.SearchView, i1);
        N = attributeset.a();
        LayoutInflater.from(context).inflate(attributeset.e(cv.k.SearchView_layout, cv.h.abc_search_view), this, true);
        d = (SearchAutoComplete)findViewById(cv.f.search_src_text);
        d.setSearchView(this);
        e = findViewById(cv.f.search_edit_frame);
        f = findViewById(cv.f.search_plate);
        g = findViewById(cv.f.submit_area);
        h = (ImageView)findViewById(cv.f.search_button);
        i = (ImageView)findViewById(cv.f.search_go_btn);
        j = (ImageView)findViewById(cv.f.search_close_btn);
        k = (ImageView)findViewById(cv.f.search_voice_btn);
        m = (ImageView)findViewById(cv.f.search_mag_icon);
        f.setBackgroundDrawable(attributeset.a(cv.k.SearchView_queryBackground));
        g.setBackgroundDrawable(attributeset.a(cv.k.SearchView_submitBackground));
        h.setImageDrawable(attributeset.a(cv.k.SearchView_searchIcon));
        i.setImageDrawable(attributeset.a(cv.k.SearchView_goIcon));
        j.setImageDrawable(attributeset.a(cv.k.SearchView_closeIcon));
        k.setImageDrawable(attributeset.a(cv.k.SearchView_voiceIcon));
        m.setImageDrawable(attributeset.a(cv.k.SearchView_searchIcon));
        n = attributeset.a(cv.k.SearchView_searchHintIcon);
        o = attributeset.e(cv.k.SearchView_suggestionRowLayout, cv.h.abc_search_dropdown_item_icons_2line);
        p = attributeset.e(cv.k.SearchView_commitIcon, 0);
        h.setOnClickListener(S);
        j.setOnClickListener(S);
        i.setOnClickListener(S);
        k.setOnClickListener(S);
        d.setOnClickListener(S);
        d.addTextChangedListener(W);
        d.setOnEditorActionListener(T);
        d.setOnItemClickListener(U);
        d.setOnItemSelectedListener(V);
        d.setOnKeyListener(b);
        d.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final SearchView a;

            public final void onFocusChange(View view, boolean flag)
            {
                if (SearchView.c(a) != null)
                {
                    SearchView.c(a).onFocusChange(a, flag);
                }
            }

            
            {
                a = SearchView.this;
                super();
            }
        });
        setIconifiedByDefault(attributeset.a(cv.k.SearchView_iconifiedByDefault, true));
        i1 = attributeset.c(cv.k.SearchView_android_maxWidth, -1);
        if (i1 != -1)
        {
            setMaxWidth(i1);
        }
        s = attributeset.c(cv.k.SearchView_defaultQueryHint);
        C = attributeset.c(cv.k.SearchView_queryHint);
        i1 = attributeset.a(cv.k.SearchView_android_imeOptions, -1);
        if (i1 != -1)
        {
            setImeOptions(i1);
        }
        i1 = attributeset.a(cv.k.SearchView_android_inputType, -1);
        if (i1 != -1)
        {
            setInputType(i1);
        }
        setFocusable(attributeset.a(cv.k.SearchView_android_focusable, true));
        ((es) (attributeset)).a.recycle();
        q = new Intent("android.speech.action.WEB_SEARCH");
        q.addFlags(0x10000000);
        q.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        r = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        r.addFlags(0x10000000);
        l = findViewById(d.getDropDownAnchor());
        if (l != null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                l.addOnLayoutChangeListener(new android.view.View.OnLayoutChangeListener() {

                    final SearchView a;

                    public final void onLayoutChange(View view, int j1, int k1, int l1, int i2, int j2, int k2, 
                            int l2, int i3)
                    {
                        SearchView.d(a);
                    }

            
            {
                a = SearchView.this;
                super();
            }
                });
            } else
            {
                l.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final SearchView a;

                    public final void onGlobalLayout()
                    {
                        SearchView.d(a);
                    }

            
            {
                a = SearchView.this;
                super();
            }
                });
            }
        }
        a(y);
        i();
    }

    private Intent a(Cursor cursor)
    {
        Object obj;
        Object obj1;
        Object obj2;
        String s1;
        try
        {
            obj1 = fg.a(cursor, "suggest_intent_action");
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            int i1;
            try
            {
                i1 = cursor.getPosition();
            }
            // Misplaced declaration of an exception variable
            catch (Cursor cursor)
            {
                i1 = -1;
            }
            Log.w("SearchView", (new StringBuilder("Search suggestions cursor at row ")).append(i1).append(" returned exception.").toString(), ((Throwable) (obj)));
            return null;
        }
        obj = obj1;
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        obj = obj1;
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            obj = L.getSuggestIntentAction();
        }
          goto _L2
_L7:
        obj2 = fg.a(cursor, "suggest_intent_data");
        obj = obj2;
        if (!c)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj = obj2;
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        obj = L.getSuggestIntentData();
        obj2 = obj;
        if (obj == null) goto _L4; else goto _L3
_L3:
        s1 = fg.a(cursor, "suggest_intent_data_id");
        obj2 = obj;
        if (s1 == null) goto _L4; else goto _L5
_L5:
        obj2 = (new StringBuilder()).append(((String) (obj))).append("/").append(Uri.encode(s1)).toString();
          goto _L4
_L6:
        obj2 = fg.a(cursor, "suggest_intent_query");
        return a(((String) (obj1)), ((Uri) (obj)), fg.a(cursor, "suggest_intent_extra_data"), ((String) (obj2)));
_L11:
        obj = Uri.parse(((String) (obj2)));
          goto _L6
_L9:
        obj1 = obj;
          goto _L7
_L2:
        if (obj != null) goto _L9; else goto _L8
_L8:
        obj1 = "android.intent.action.SEARCH";
          goto _L7
_L4:
        if (obj2 != null) goto _L11; else goto _L10
_L10:
        obj = null;
          goto _L6
    }

    private Intent a(String s1, Uri uri, String s2, String s3)
    {
        s1 = new Intent(s1);
        s1.addFlags(0x10000000);
        if (uri != null)
        {
            s1.setData(uri);
        }
        s1.putExtra("user_query", I);
        if (s3 != null)
        {
            s1.putExtra("query", s3);
        }
        if (s2 != null)
        {
            s1.putExtra("intent_extra_data_key", s2);
        }
        if (M != null)
        {
            s1.putExtra("app_data", M);
        }
        if (c)
        {
            s1.setComponent(L.getSearchActivity());
        }
        return s1;
    }

    static void a(SearchView searchview)
    {
        int ai[];
        Drawable drawable;
        if (searchview.d.hasFocus())
        {
            ai = FOCUSED_STATE_SET;
        } else
        {
            ai = EMPTY_STATE_SET;
        }
        drawable = searchview.f.getBackground();
        if (drawable != null)
        {
            drawable.setState(ai);
        }
        drawable = searchview.g.getBackground();
        if (drawable != null)
        {
            drawable.setState(ai);
        }
        searchview.invalidate();
    }

    static void a(SearchView searchview, CharSequence charsequence)
    {
        boolean flag1 = true;
        Editable editable = searchview.d.getText();
        searchview.I = editable;
        boolean flag;
        if (!TextUtils.isEmpty(editable))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        searchview.b(flag);
        if (!flag)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        searchview.c(flag);
        searchview.g();
        searchview.f();
        if (searchview.t != null && !TextUtils.equals(charsequence, searchview.H))
        {
            charsequence.toString();
        }
        searchview.H = charsequence.toString();
    }

    static void a(SearchView searchview, String s1)
    {
        searchview.a(s1);
    }

    private void a(String s1)
    {
        s1 = a("android.intent.action.SEARCH", null, null, s1);
        getContext().startActivity(s1);
    }

    private void a(boolean flag)
    {
        boolean flag2 = true;
        byte byte0 = 8;
        z = flag;
        Object obj;
        int i1;
        boolean flag1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        if (!TextUtils.isEmpty(d.getText()))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        h.setVisibility(i1);
        b(flag1);
        obj = e;
        if (flag)
        {
            i1 = 8;
        } else
        {
            i1 = 0;
        }
        ((View) (obj)).setVisibility(i1);
        obj = m;
        if (y)
        {
            i1 = byte0;
        } else
        {
            i1 = 0;
        }
        ((ImageView) (obj)).setVisibility(i1);
        g();
        if (!flag1)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        c(flag);
        f();
    }

    private boolean a(int i1)
    {
        boolean flag = false;
        if (w == null || !w.b())
        {
            Object obj = A.a();
            if (obj != null && ((Cursor) (obj)).moveToPosition(i1))
            {
                obj = a(((Cursor) (obj)));
                if (obj != null)
                {
                    try
                    {
                        getContext().startActivity(((Intent) (obj)));
                    }
                    catch (RuntimeException runtimeexception)
                    {
                        Log.e("SearchView", (new StringBuilder("Failed launch activity: ")).append(obj).toString(), runtimeexception);
                    }
                }
            }
            setImeVisibility(false);
            d.dismissDropDown();
            flag = true;
        }
        return flag;
    }

    private boolean a(int i1, KeyEvent keyevent)
    {
        if (L != null && A != null && keyevent.getAction() == 0 && aq.b(keyevent))
        {
            if (i1 == 66 || i1 == 84 || i1 == 61)
            {
                return a(d.getListSelection());
            }
            if (i1 == 21 || i1 == 22)
            {
                if (i1 == 21)
                {
                    i1 = 0;
                } else
                {
                    i1 = d.length();
                }
                d.setSelection(i1);
                d.setListSelection(0);
                d.clearListSelection();
                a.a(d);
                return true;
            }
            if (i1 == 19 && d.getListSelection() == 0)
            {
                return false;
            }
        }
        return false;
    }

    static boolean a(Context context)
    {
        return context.getResources().getConfiguration().orientation == 2;
    }

    static boolean a(SearchView searchview, int i1)
    {
        return searchview.a(i1);
    }

    static boolean a(SearchView searchview, int i1, KeyEvent keyevent)
    {
        return searchview.a(i1, keyevent);
    }

    static ci b(SearchView searchview)
    {
        return searchview.A;
    }

    private void b(boolean flag)
    {
        byte byte0;
label0:
        {
            byte byte1 = 8;
            byte0 = byte1;
            if (!B)
            {
                break label0;
            }
            byte0 = byte1;
            if (!e())
            {
                break label0;
            }
            byte0 = byte1;
            if (!hasFocus())
            {
                break label0;
            }
            if (!flag)
            {
                byte0 = byte1;
                if (G)
                {
                    break label0;
                }
            }
            byte0 = 0;
        }
        i.setVisibility(byte0);
    }

    static boolean b(SearchView searchview, int i1)
    {
        if (searchview.w == null || !searchview.w.a())
        {
            Editable editable = searchview.d.getText();
            Object obj = searchview.A.a();
            if (obj != null)
            {
                if (((Cursor) (obj)).moveToPosition(i1))
                {
                    obj = searchview.A.b(((Cursor) (obj)));
                    if (obj != null)
                    {
                        searchview.setQuery(((CharSequence) (obj)));
                    } else
                    {
                        searchview.setQuery(editable);
                    }
                } else
                {
                    searchview.setQuery(editable);
                }
            }
            return true;
        } else
        {
            return false;
        }
    }

    static android.view.View.OnFocusChangeListener c(SearchView searchview)
    {
        return searchview.v;
    }

    private void c(boolean flag)
    {
        int i1;
        if (G && !z && flag)
        {
            i1 = 0;
            i.setVisibility(8);
        } else
        {
            i1 = 8;
        }
        k.setVisibility(i1);
    }

    static void d(SearchView searchview)
    {
        if (searchview.l.getWidth() > 1)
        {
            Resources resources = searchview.getContext().getResources();
            int k1 = searchview.f.getPaddingLeft();
            Rect rect = new Rect();
            boolean flag = eu.a(searchview);
            int i1;
            int j1;
            int l1;
            int i2;
            if (searchview.y)
            {
                i1 = resources.getDimensionPixelSize(cv.d.abc_dropdownitem_icon_width);
                i1 = resources.getDimensionPixelSize(cv.d.abc_dropdownitem_text_padding_left) + i1;
            } else
            {
                i1 = 0;
            }
            searchview.d.getDropDownBackground().getPadding(rect);
            if (flag)
            {
                j1 = -rect.left;
            } else
            {
                j1 = k1 - (rect.left + i1);
            }
            searchview.d.setDropDownHorizontalOffset(j1);
            j1 = searchview.l.getWidth();
            l1 = rect.left;
            i2 = rect.right;
            searchview.d.setDropDownWidth((i1 + (j1 + l1 + i2)) - k1);
        }
    }

    static ImageView e(SearchView searchview)
    {
        return searchview.h;
    }

    private boolean e()
    {
        return (B || G) && !z;
    }

    private void f()
    {
        byte byte0;
label0:
        {
            byte byte1 = 8;
            byte0 = byte1;
            if (!e())
            {
                break label0;
            }
            if (i.getVisibility() != 0)
            {
                byte0 = byte1;
                if (k.getVisibility() != 0)
                {
                    break label0;
                }
            }
            byte0 = 0;
        }
        g.setVisibility(byte0);
    }

    static void f(SearchView searchview)
    {
        searchview.l();
    }

    static ImageView g(SearchView searchview)
    {
        return searchview.j;
    }

    private void g()
    {
        boolean flag2 = true;
        boolean flag1 = false;
        ImageView imageview;
        Drawable drawable;
        boolean flag;
        int i1;
        if (!TextUtils.isEmpty(d.getText()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = ((flag2) ? 1 : 0);
        if (!flag)
        {
            if (y && !J)
            {
                i1 = ((flag2) ? 1 : 0);
            } else
            {
                i1 = 0;
            }
        }
        imageview = j;
        if (i1 != 0)
        {
            i1 = ((flag1) ? 1 : 0);
        } else
        {
            i1 = 8;
        }
        imageview.setVisibility(i1);
        drawable = j.getDrawable();
        if (drawable != null)
        {
            int ai[];
            if (flag)
            {
                ai = ENABLED_STATE_SET;
            } else
            {
                ai = EMPTY_STATE_SET;
            }
            drawable.setState(ai);
        }
    }

    private int getPreferredWidth()
    {
        return getContext().getResources().getDimensionPixelSize(cv.d.abc_search_view_preferred_width);
    }

    private void h()
    {
        post(P);
    }

    static void h(SearchView searchview)
    {
        searchview.k();
    }

    static ImageView i(SearchView searchview)
    {
        return searchview.i;
    }

    private void i()
    {
        Object obj1 = getQueryHint();
        SearchAutoComplete searchautocomplete = d;
        Object obj = obj1;
        if (obj1 == null)
        {
            obj = "";
        }
        obj1 = obj;
        if (y)
        {
            if (n == null)
            {
                obj1 = obj;
            } else
            {
                int i1 = (int)((double)d.getTextSize() * 1.25D);
                n.setBounds(0, 0, i1, i1);
                obj1 = new SpannableStringBuilder("   ");
                ((SpannableStringBuilder) (obj1)).setSpan(new ImageSpan(n), 1, 2, 33);
                ((SpannableStringBuilder) (obj1)).append(((CharSequence) (obj)));
            }
        }
        searchautocomplete.setHint(((CharSequence) (obj1)));
    }

    private void j()
    {
label0:
        {
            Editable editable = d.getText();
            if (editable == null || TextUtils.getTrimmedLength(editable) <= 0)
            {
                break label0;
            }
            if (t != null)
            {
                c c1 = t;
                editable.toString();
                if (c1.a())
                {
                    break label0;
                }
            }
            if (L != null)
            {
                a(editable.toString());
            }
            setImeVisibility(false);
            d.dismissDropDown();
        }
    }

    static void j(SearchView searchview)
    {
        searchview.j();
    }

    static ImageView k(SearchView searchview)
    {
        return searchview.k;
    }

    private void k()
    {
        if (TextUtils.isEmpty(d.getText()))
        {
            if (y && (u == null || !u.a()))
            {
                clearFocus();
                a(true);
            }
            return;
        } else
        {
            d.setText("");
            d.requestFocus();
            setImeVisibility(true);
            return;
        }
    }

    private void l()
    {
        a(false);
        d.requestFocus();
        setImeVisibility(true);
        if (x != null)
        {
            x.onClick(this);
        }
    }

    static void l(SearchView searchview)
    {
        Object obj;
        Object obj3;
        SearchableInfo searchableinfo;
        obj3 = null;
        obj = null;
        if (searchview.L == null)
        {
            break MISSING_BLOCK_LABEL_413;
        }
        searchableinfo = searchview.L;
        Object obj1;
        Object obj2;
        if (!searchableinfo.getVoiceSearchLaunchWebSearch())
        {
            break MISSING_BLOCK_LABEL_74;
        }
        obj1 = new Intent(searchview.q);
        obj2 = searchableinfo.getSearchActivity();
        if (obj2 != null) goto _L2; else goto _L1
_L2:
        obj = ((ComponentName) (obj2)).flattenToShortString();
          goto _L1
        ComponentName componentname;
        if (!searchableinfo.getVoiceSearchLaunchRecognizer())
        {
            break MISSING_BLOCK_LABEL_413;
        }
        obj = searchview.r;
        componentname = searchableinfo.getSearchActivity();
        obj1 = new Intent("android.intent.action.SEARCH");
        ((Intent) (obj1)).setComponent(componentname);
        pendingintent = PendingIntent.getActivity(searchview.getContext(), 0, ((Intent) (obj1)), 0x40000000);
        bundle = new Bundle();
        if (searchview.M != null)
        {
            bundle.putParcelable("app_data", searchview.M);
        }
        intent = new Intent(((Intent) (obj)));
        i1 = 1;
        if (android.os.Build.VERSION.SDK_INT < 8) goto _L4; else goto _L3
_L3:
        obj2 = searchview.getResources();
        if (searchableinfo.getVoiceLanguageModeId() == 0) goto _L6; else goto _L5
_L5:
        obj = ((Resources) (obj2)).getString(searchableinfo.getVoiceLanguageModeId());
_L16:
        if (searchableinfo.getVoicePromptTextId() == 0) goto _L8; else goto _L7
_L7:
        obj1 = ((Resources) (obj2)).getString(searchableinfo.getVoicePromptTextId());
_L15:
        if (searchableinfo.getVoiceLanguageId() == 0) goto _L10; else goto _L9
_L9:
        obj2 = ((Resources) (obj2)).getString(searchableinfo.getVoiceLanguageId());
_L14:
        String s1;
        String s2;
        String s3;
        s1 = ((String) (obj2));
        s2 = ((String) (obj1));
        s3 = ((String) (obj));
        if (searchableinfo.getVoiceMaxResults() == 0)
        {
            break MISSING_BLOCK_LABEL_267;
        }
        i1 = searchableinfo.getVoiceMaxResults();
        s3 = ((String) (obj));
        s2 = ((String) (obj1));
        s1 = ((String) (obj2));
_L17:
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", s3);
        intent.putExtra("android.speech.extra.PROMPT", s2);
        intent.putExtra("android.speech.extra.LANGUAGE", s1);
        intent.putExtra("android.speech.extra.MAX_RESULTS", i1);
        if (componentname != null) goto _L12; else goto _L11
_L11:
        obj = obj3;
_L13:
        intent.putExtra("calling_package", ((String) (obj)));
        intent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", pendingintent);
        intent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        searchview.getContext().startActivity(intent);
        return;
_L1:
        PendingIntent pendingintent;
        Bundle bundle;
        Intent intent;
        int i1;
        try
        {
            ((Intent) (obj1)).putExtra("calling_package", ((String) (obj)));
            searchview.getContext().startActivity(((Intent) (obj1)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SearchView searchview)
        {
            Log.w("SearchView", "Could not find voice search activity");
        }
        return;
_L12:
        obj = componentname.flattenToShortString();
        if (true) goto _L13; else goto _L10
_L10:
        obj2 = null;
          goto _L14
_L8:
        obj1 = null;
          goto _L15
_L6:
        obj = "free_form";
          goto _L16
_L4:
        s2 = null;
        s3 = "free_form";
        s1 = null;
          goto _L17
          goto _L14
    }

    static SearchAutoComplete m(SearchView searchview)
    {
        return searchview.d;
    }

    private void m()
    {
        a a1 = a;
        SearchAutoComplete searchautocomplete = d;
        Exception exception;
        if (a1.a != null)
        {
            try
            {
                a1.a.invoke(searchautocomplete, new Object[0]);
            }
            catch (Exception exception1) { }
        }
        a1 = a;
        searchautocomplete = d;
        if (a1.b == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        a1.b.invoke(searchautocomplete, new Object[0]);
        return;
        exception;
    }

    static void n(SearchView searchview)
    {
        searchview.m();
    }

    static SearchableInfo o(SearchView searchview)
    {
        return searchview.L;
    }

    static void p(SearchView searchview)
    {
        searchview.setImeVisibility(false);
    }

    private void setImeVisibility(boolean flag)
    {
        if (flag)
        {
            post(O);
        } else
        {
            removeCallbacks(O);
            InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
            if (inputmethodmanager != null)
            {
                inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
                return;
            }
        }
    }

    public final void a()
    {
        if (J)
        {
            return;
        } else
        {
            J = true;
            K = d.getImeOptions();
            d.setImeOptions(K | 0x2000000);
            d.setText("");
            setIconified(false);
            return;
        }
    }

    public final void b()
    {
        setQuery("", false);
        clearFocus();
        a(true);
        d.setImeOptions(K);
        J = false;
    }

    public void clearFocus()
    {
        E = true;
        setImeVisibility(false);
        super.clearFocus();
        d.clearFocus();
        E = false;
    }

    final void d()
    {
        a(z);
        h();
        if (d.hasFocus())
        {
            m();
        }
    }

    public int getImeOptions()
    {
        return d.getImeOptions();
    }

    public int getInputType()
    {
        return d.getInputType();
    }

    public int getMaxWidth()
    {
        return F;
    }

    public CharSequence getQuery()
    {
        return d.getText();
    }

    public CharSequence getQueryHint()
    {
        if (C != null)
        {
            return C;
        }
        if (c && L != null && L.getHintId() != 0)
        {
            return getContext().getText(L.getHintId());
        } else
        {
            return s;
        }
    }

    public int getSuggestionCommitIconResId()
    {
        return p;
    }

    public int getSuggestionRowLayout()
    {
        return o;
    }

    public ci getSuggestionsAdapter()
    {
        return A;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(P);
        post(Q);
        super.onDetachedFromWindow();
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        if (z)
        {
            super.onMeasure(i1, j1);
            return;
        }
        l1 = android.view.View.MeasureSpec.getMode(i1);
        k1 = android.view.View.MeasureSpec.getSize(i1);
        l1;
        JVM INSTR lookupswitch 3: default 60
    //                   -2147483648: 75
    //                   0: 127
    //                   1073741824: 106;
           goto _L1 _L2 _L3 _L4
_L1:
        i1 = k1;
_L6:
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000), j1);
        return;
_L2:
        if (F > 0)
        {
            i1 = Math.min(F, k1);
        } else
        {
            i1 = Math.min(getPreferredWidth(), k1);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        i1 = k1;
        if (F > 0)
        {
            i1 = Math.min(F, k1);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (F > 0)
        {
            i1 = F;
        } else
        {
            i1 = getPreferredWidth();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        h();
    }

    public boolean requestFocus(int i1, Rect rect)
    {
        while (E || !isFocusable()) 
        {
            return false;
        }
        if (!z)
        {
            boolean flag = d.requestFocus(i1, rect);
            if (flag)
            {
                a(false);
            }
            return flag;
        } else
        {
            return super.requestFocus(i1, rect);
        }
    }

    public void setAppSearchData(Bundle bundle)
    {
        M = bundle;
    }

    public void setIconified(boolean flag)
    {
        if (flag)
        {
            k();
            return;
        } else
        {
            l();
            return;
        }
    }

    public void setIconifiedByDefault(boolean flag)
    {
        if (y == flag)
        {
            return;
        } else
        {
            y = flag;
            a(flag);
            i();
            return;
        }
    }

    public void setImeOptions(int i1)
    {
        d.setImeOptions(i1);
    }

    public void setInputType(int i1)
    {
        d.setInputType(i1);
    }

    public void setMaxWidth(int i1)
    {
        F = i1;
        requestLayout();
    }

    public void setOnCloseListener(b b1)
    {
        u = b1;
    }

    public void setOnQueryTextFocusChangeListener(android.view.View.OnFocusChangeListener onfocuschangelistener)
    {
        v = onfocuschangelistener;
    }

    public void setOnQueryTextListener(c c1)
    {
        t = c1;
    }

    public void setOnSearchClickListener(android.view.View.OnClickListener onclicklistener)
    {
        x = onclicklistener;
    }

    public void setOnSuggestionListener(d d1)
    {
        w = d1;
    }

    public void setQuery(CharSequence charsequence)
    {
        d.setText(charsequence);
        SearchAutoComplete searchautocomplete = d;
        int i1;
        if (TextUtils.isEmpty(charsequence))
        {
            i1 = 0;
        } else
        {
            i1 = charsequence.length();
        }
        searchautocomplete.setSelection(i1);
    }

    public void setQuery(CharSequence charsequence, boolean flag)
    {
        d.setText(charsequence);
        if (charsequence != null)
        {
            d.setSelection(d.length());
            I = charsequence;
        }
        if (flag && !TextUtils.isEmpty(charsequence))
        {
            j();
        }
    }

    public void setQueryHint(CharSequence charsequence)
    {
        C = charsequence;
        i();
    }

    public void setQueryRefinementEnabled(boolean flag)
    {
        D = flag;
        if (A instanceof fg)
        {
            fg fg1 = (fg)A;
            int i1;
            if (flag)
            {
                i1 = 2;
            } else
            {
                i1 = 1;
            }
            fg1.j = i1;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableinfo)
    {
        int i1;
        boolean flag;
        flag = true;
        L = searchableinfo;
        if (L != null)
        {
            if (c)
            {
                d.setThreshold(L.getSuggestThreshold());
                d.setImeOptions(L.getImeOptions());
                int j1 = L.getInputType();
                i1 = j1;
                if ((j1 & 0xf) == 1)
                {
                    j1 &= 0xfffeffff;
                    i1 = j1;
                    if (L.getSuggestAuthority() != null)
                    {
                        i1 = j1 | 0x10000 | 0x80000;
                    }
                }
                d.setInputType(i1);
                if (A != null)
                {
                    A.a(null);
                }
                if (L.getSuggestAuthority() != null)
                {
                    A = new fg(getContext(), this, L, R);
                    d.setAdapter(A);
                    searchableinfo = (fg)A;
                    if (D)
                    {
                        i1 = 2;
                    } else
                    {
                        i1 = 1;
                    }
                    searchableinfo.j = i1;
                }
            }
            i();
        }
        if (!c)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        if (L == null || !L.getVoiceSearchEnabled()) goto _L2; else goto _L1
_L1:
        if (L.getVoiceSearchLaunchWebSearch())
        {
            searchableinfo = q;
        } else
        if (L.getVoiceSearchLaunchRecognizer())
        {
            searchableinfo = r;
        } else
        {
            searchableinfo = null;
        }
        if (searchableinfo == null) goto _L2; else goto _L3
_L3:
        if (getContext().getPackageManager().resolveActivity(searchableinfo, 0x10000) != null)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
_L4:
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_319;
        }
_L5:
        G = flag;
        if (G)
        {
            d.setPrivateImeOptions("nm");
        }
        a(z);
        return;
_L2:
        i1 = 0;
          goto _L4
        flag = false;
          goto _L5
    }

    public void setSubmitButtonEnabled(boolean flag)
    {
        B = flag;
        a(z);
    }

    public void setSuggestionsAdapter(ci ci1)
    {
        A = ci1;
        d.setAdapter(A);
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }
}
