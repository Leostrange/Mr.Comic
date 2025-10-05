package android.support.v7.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
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
import defpackage.cv;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView extends LinearLayoutCompat implements ex {
    static final a a = new a();
    private static final boolean c = (Build.VERSION.SDK_INT >= 8);
    /* access modifiers changed from: private */
    public ci A;
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
    /* access modifiers changed from: private */
    public SearchableInfo L;
    private Bundle M;
    private final er N;
    private Runnable O;
    private final Runnable P;
    private Runnable Q;
    private final WeakHashMap<String, Drawable.ConstantState> R;
    private final View.OnClickListener S;
    private final TextView.OnEditorActionListener T;
    private final AdapterView.OnItemClickListener U;
    private final AdapterView.OnItemSelectedListener V;
    private TextWatcher W;
    View.OnKeyListener b;
    /* access modifiers changed from: private */
    public final SearchAutoComplete d;
    private final View e;
    private final View f;
    private final View g;
    /* access modifiers changed from: private */
    public final ImageView h;
    /* access modifiers changed from: private */
    public final ImageView i;
    /* access modifiers changed from: private */
    public final ImageView j;
    /* access modifiers changed from: private */
    public final ImageView k;
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
    /* access modifiers changed from: private */
    public View.OnFocusChangeListener v;
    private d w;
    private View.OnClickListener x;
    private boolean y;
    private boolean z;

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        private int a;
        private SearchView b;

        public SearchAutoComplete(Context context) {
            this(context, (AttributeSet) null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, cv.a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.a = getThreshold();
        }

        static /* synthetic */ boolean a(SearchAutoComplete searchAutoComplete) {
            return TextUtils.getTrimmedLength(searchAutoComplete.getText()) == 0;
        }

        public boolean enoughToFilter() {
            return this.a <= 0 || super.enoughToFilter();
        }

        /* access modifiers changed from: protected */
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.b.d();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.b.clearFocus();
                        this.b.setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.b.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.a(getContext())) {
                    SearchView.a.a(this);
                }
            }
        }

        public void performCompletion() {
        }

        /* access modifiers changed from: protected */
        public void replaceText(CharSequence charSequence) {
        }

        /* access modifiers changed from: package-private */
        public void setSearchView(SearchView searchView) {
            this.b = searchView;
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.a = i;
        }
    }

    static class a {
        Method a;
        Method b;
        Method c;
        private Method d;

        a() {
            try {
                this.a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            Class<AutoCompleteTextView> cls = AutoCompleteTextView.class;
            try {
                this.d = cls.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.d.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
            Class<InputMethodManager> cls2 = InputMethodManager.class;
            try {
                this.c = cls2.getMethod("showSoftInputUnchecked", new Class[]{Integer.TYPE, ResultReceiver.class});
                this.c.setAccessible(true);
            } catch (NoSuchMethodException e4) {
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(AutoCompleteTextView autoCompleteTextView) {
            if (this.d != null) {
                try {
                    this.d.invoke(autoCompleteTextView, new Object[]{true});
                } catch (Exception e) {
                }
            }
        }
    }

    public interface b {
        boolean a();
    }

    public interface c {
        boolean a();
    }

    public interface d {
        boolean a();

        boolean b();
    }

    public SearchView(Context context) {
        this(context, (AttributeSet) null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.O = new Runnable() {
            public final void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    a aVar = SearchView.a;
                    SearchView searchView = SearchView.this;
                    if (aVar.c != null) {
                        try {
                            aVar.c.invoke(inputMethodManager, new Object[]{0, null});
                            return;
                        } catch (Exception e) {
                        }
                    }
                    inputMethodManager.showSoftInput(searchView, 0);
                }
            }
        };
        this.P = new Runnable() {
            public final void run() {
                SearchView.a(SearchView.this);
            }
        };
        this.Q = new Runnable() {
            public final void run() {
                if (SearchView.this.A != null && (SearchView.this.A instanceof fg)) {
                    SearchView.this.A.a((Cursor) null);
                }
            }
        };
        this.R = new WeakHashMap<>();
        this.S = new View.OnClickListener() {
            public final void onClick(View view) {
                if (view == SearchView.this.h) {
                    SearchView.this.l();
                } else if (view == SearchView.this.j) {
                    SearchView.this.k();
                } else if (view == SearchView.this.i) {
                    SearchView.this.j();
                } else if (view == SearchView.this.k) {
                    SearchView.l(SearchView.this);
                } else if (view == SearchView.this.d) {
                    SearchView.this.m();
                }
            }
        };
        this.b = new View.OnKeyListener() {
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (SearchView.this.L == null) {
                    return false;
                }
                if (SearchView.this.d.isPopupShowing() && SearchView.this.d.getListSelection() != -1) {
                    return SearchView.this.a(i, keyEvent);
                }
                if (SearchAutoComplete.a(SearchView.this.d) || !aq.b(keyEvent) || keyEvent.getAction() != 1 || i != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView.this.a(SearchView.this.d.getText().toString());
                return true;
            }
        };
        this.T = new TextView.OnEditorActionListener() {
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                SearchView.this.j();
                return true;
            }
        };
        this.U = new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean unused = SearchView.this.a(i);
            }
        };
        this.V = new AdapterView.OnItemSelectedListener() {
            public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                SearchView.b(SearchView.this, i);
            }

            public final void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.W = new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchView.a(SearchView.this, charSequence);
            }
        };
        es a2 = es.a(context, attributeSet, cv.k.SearchView, i2);
        this.N = a2.a();
        LayoutInflater.from(context).inflate(a2.e(cv.k.SearchView_layout, cv.h.abc_search_view), this, true);
        this.d = (SearchAutoComplete) findViewById(cv.f.search_src_text);
        this.d.setSearchView(this);
        this.e = findViewById(cv.f.search_edit_frame);
        this.f = findViewById(cv.f.search_plate);
        this.g = findViewById(cv.f.submit_area);
        this.h = (ImageView) findViewById(cv.f.search_button);
        this.i = (ImageView) findViewById(cv.f.search_go_btn);
        this.j = (ImageView) findViewById(cv.f.search_close_btn);
        this.k = (ImageView) findViewById(cv.f.search_voice_btn);
        this.m = (ImageView) findViewById(cv.f.search_mag_icon);
        this.f.setBackgroundDrawable(a2.a(cv.k.SearchView_queryBackground));
        this.g.setBackgroundDrawable(a2.a(cv.k.SearchView_submitBackground));
        this.h.setImageDrawable(a2.a(cv.k.SearchView_searchIcon));
        this.i.setImageDrawable(a2.a(cv.k.SearchView_goIcon));
        this.j.setImageDrawable(a2.a(cv.k.SearchView_closeIcon));
        this.k.setImageDrawable(a2.a(cv.k.SearchView_voiceIcon));
        this.m.setImageDrawable(a2.a(cv.k.SearchView_searchIcon));
        this.n = a2.a(cv.k.SearchView_searchHintIcon);
        this.o = a2.e(cv.k.SearchView_suggestionRowLayout, cv.h.abc_search_dropdown_item_icons_2line);
        this.p = a2.e(cv.k.SearchView_commitIcon, 0);
        this.h.setOnClickListener(this.S);
        this.j.setOnClickListener(this.S);
        this.i.setOnClickListener(this.S);
        this.k.setOnClickListener(this.S);
        this.d.setOnClickListener(this.S);
        this.d.addTextChangedListener(this.W);
        this.d.setOnEditorActionListener(this.T);
        this.d.setOnItemClickListener(this.U);
        this.d.setOnItemSelectedListener(this.V);
        this.d.setOnKeyListener(this.b);
        this.d.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                if (SearchView.this.v != null) {
                    SearchView.this.v.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(cv.k.SearchView_iconifiedByDefault, true));
        int c2 = a2.c(cv.k.SearchView_android_maxWidth, -1);
        if (c2 != -1) {
            setMaxWidth(c2);
        }
        this.s = a2.c(cv.k.SearchView_defaultQueryHint);
        this.C = a2.c(cv.k.SearchView_queryHint);
        int a3 = a2.a(cv.k.SearchView_android_imeOptions, -1);
        if (a3 != -1) {
            setImeOptions(a3);
        }
        int a4 = a2.a(cv.k.SearchView_android_inputType, -1);
        if (a4 != -1) {
            setInputType(a4);
        }
        setFocusable(a2.a(cv.k.SearchView_android_focusable, true));
        a2.a.recycle();
        this.q = new Intent("android.speech.action.WEB_SEARCH");
        this.q.addFlags(268435456);
        this.q.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.r = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.r.addFlags(268435456);
        this.l = findViewById(this.d.getDropDownAnchor());
        if (this.l != null) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.l.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        SearchView.d(SearchView.this);
                    }
                });
            } else {
                this.l.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                    public final void onGlobalLayout() {
                        SearchView.d(SearchView.this);
                    }
                });
            }
        }
        a(this.y);
        i();
    }

    private Intent a(Cursor cursor) {
        int i2;
        String a2;
        try {
            String a3 = fg.a(cursor, "suggest_intent_action");
            if (a3 == null && Build.VERSION.SDK_INT >= 8) {
                a3 = this.L.getSuggestIntentAction();
            }
            String str = a3 == null ? "android.intent.action.SEARCH" : a3;
            String a4 = fg.a(cursor, "suggest_intent_data");
            if (c && a4 == null) {
                a4 = this.L.getSuggestIntentData();
            }
            if (!(a4 == null || (a2 = fg.a(cursor, "suggest_intent_data_id")) == null)) {
                a4 = a4 + "/" + Uri.encode(a2);
            }
            return a(str, a4 == null ? null : Uri.parse(a4), fg.a(cursor, "suggest_intent_extra_data"), fg.a(cursor, "suggest_intent_query"));
        } catch (RuntimeException e2) {
            RuntimeException runtimeException = e2;
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException e3) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", runtimeException);
            return null;
        }
    }

    private Intent a(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.I);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.M != null) {
            intent.putExtra("app_data", this.M);
        }
        if (c) {
            intent.setComponent(this.L.getSearchActivity());
        }
        return intent;
    }

    static /* synthetic */ void a(SearchView searchView) {
        int[] iArr = searchView.d.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = searchView.f.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = searchView.g.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        searchView.invalidate();
    }

    static /* synthetic */ void a(SearchView searchView, CharSequence charSequence) {
        boolean z2 = true;
        Editable text = searchView.d.getText();
        searchView.I = text;
        boolean z3 = !TextUtils.isEmpty(text);
        searchView.b(z3);
        if (z3) {
            z2 = false;
        }
        searchView.c(z2);
        searchView.g();
        searchView.f();
        if (searchView.t != null && !TextUtils.equals(charSequence, searchView.H)) {
            charSequence.toString();
        }
        searchView.H = charSequence.toString();
    }

    /* access modifiers changed from: private */
    public void a(String str) {
        getContext().startActivity(a("android.intent.action.SEARCH", (Uri) null, (String) null, str));
    }

    private void a(boolean z2) {
        boolean z3 = true;
        int i2 = 8;
        this.z = z2;
        int i3 = z2 ? 0 : 8;
        boolean z4 = !TextUtils.isEmpty(this.d.getText());
        this.h.setVisibility(i3);
        b(z4);
        this.e.setVisibility(z2 ? 8 : 0);
        ImageView imageView = this.m;
        if (!this.y) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
        g();
        if (z4) {
            z3 = false;
        }
        c(z3);
        f();
    }

    /* access modifiers changed from: private */
    public boolean a(int i2) {
        Intent a2;
        if (this.w != null && this.w.b()) {
            return false;
        }
        Cursor a3 = this.A.a();
        if (!(a3 == null || !a3.moveToPosition(i2) || (a2 = a(a3)) == null)) {
            try {
                getContext().startActivity(a2);
            } catch (RuntimeException e2) {
                Log.e("SearchView", "Failed launch activity: " + a2, e2);
            }
        }
        setImeVisibility(false);
        this.d.dismissDropDown();
        return true;
    }

    /* access modifiers changed from: private */
    public boolean a(int i2, KeyEvent keyEvent) {
        if (this.L == null || this.A == null || keyEvent.getAction() != 0 || !aq.b(keyEvent)) {
            return false;
        }
        if (i2 == 66 || i2 == 84 || i2 == 61) {
            return a(this.d.getListSelection());
        }
        if (i2 == 21 || i2 == 22) {
            this.d.setSelection(i2 == 21 ? 0 : this.d.length());
            this.d.setListSelection(0);
            this.d.clearListSelection();
            a.a(this.d);
            return true;
        }
        if (!(i2 == 19 && this.d.getListSelection() == 0)) {
        }
        return false;
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private void b(boolean z2) {
        int i2 = 8;
        if (this.B && e() && hasFocus() && (z2 || !this.G)) {
            i2 = 0;
        }
        this.i.setVisibility(i2);
    }

    static /* synthetic */ boolean b(SearchView searchView, int i2) {
        if (searchView.w != null && searchView.w.a()) {
            return false;
        }
        Editable text = searchView.d.getText();
        Cursor a2 = searchView.A.a();
        if (a2 != null) {
            if (a2.moveToPosition(i2)) {
                CharSequence b2 = searchView.A.b(a2);
                if (b2 != null) {
                    searchView.setQuery(b2);
                } else {
                    searchView.setQuery(text);
                }
            } else {
                searchView.setQuery(text);
            }
        }
        return true;
    }

    private void c(boolean z2) {
        int i2;
        if (!this.G || this.z || !z2) {
            i2 = 8;
        } else {
            i2 = 0;
            this.i.setVisibility(8);
        }
        this.k.setVisibility(i2);
    }

    static /* synthetic */ void d(SearchView searchView) {
        if (searchView.l.getWidth() > 1) {
            Resources resources = searchView.getContext().getResources();
            int paddingLeft = searchView.f.getPaddingLeft();
            Rect rect = new Rect();
            boolean a2 = eu.a(searchView);
            int dimensionPixelSize = searchView.y ? resources.getDimensionPixelSize(cv.d.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(cv.d.abc_dropdownitem_icon_width) : 0;
            searchView.d.getDropDownBackground().getPadding(rect);
            searchView.d.setDropDownHorizontalOffset(a2 ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            searchView.d.setDropDownWidth((dimensionPixelSize + ((searchView.l.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    private boolean e() {
        return (this.B || this.G) && !this.z;
    }

    private void f() {
        int i2 = 8;
        if (e() && (this.i.getVisibility() == 0 || this.k.getVisibility() == 0)) {
            i2 = 0;
        }
        this.g.setVisibility(i2);
    }

    private void g() {
        boolean z2 = true;
        int i2 = 0;
        boolean z3 = !TextUtils.isEmpty(this.d.getText());
        if (!z3 && (!this.y || this.J)) {
            z2 = false;
        }
        ImageView imageView = this.j;
        if (!z2) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.j.getDrawable();
        if (drawable != null) {
            drawable.setState(z3 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(cv.d.abc_search_view_preferred_width);
    }

    private void h() {
        post(this.P);
    }

    private void i() {
        SpannableStringBuilder queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.d;
        if (queryHint == null) {
            queryHint = "";
        }
        if (this.y && this.n != null) {
            int textSize = (int) (((double) this.d.getTextSize()) * 1.25d);
            this.n.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.n), 1, 2, 33);
            spannableStringBuilder.append(queryHint);
            queryHint = spannableStringBuilder;
        }
        searchAutoComplete.setHint(queryHint);
    }

    /* access modifiers changed from: private */
    public void j() {
        Editable text = this.d.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.t != null) {
                c cVar = this.t;
                text.toString();
                if (cVar.a()) {
                    return;
                }
            }
            if (this.L != null) {
                a(text.toString());
            }
            setImeVisibility(false);
            this.d.dismissDropDown();
        }
    }

    /* access modifiers changed from: private */
    public void k() {
        if (!TextUtils.isEmpty(this.d.getText())) {
            this.d.setText("");
            this.d.requestFocus();
            setImeVisibility(true);
        } else if (!this.y) {
        } else {
            if (this.u == null || !this.u.a()) {
                clearFocus();
                a(true);
            }
        }
    }

    /* access modifiers changed from: private */
    public void l() {
        a(false);
        this.d.requestFocus();
        setImeVisibility(true);
        if (this.x != null) {
            this.x.onClick(this);
        }
    }

    static /* synthetic */ void l(SearchView searchView) {
        String str;
        String str2;
        String str3;
        String str4 = null;
        if (searchView.L != null) {
            SearchableInfo searchableInfo = searchView.L;
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    Intent intent = new Intent(searchView.q);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    if (searchActivity != null) {
                        str4 = searchActivity.flattenToShortString();
                    }
                    intent.putExtra("calling_package", str4);
                    searchView.getContext().startActivity(intent);
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    Intent intent2 = searchView.r;
                    ComponentName searchActivity2 = searchableInfo.getSearchActivity();
                    Intent intent3 = new Intent("android.intent.action.SEARCH");
                    intent3.setComponent(searchActivity2);
                    PendingIntent activity = PendingIntent.getActivity(searchView.getContext(), 0, intent3, 1073741824);
                    Bundle bundle = new Bundle();
                    if (searchView.M != null) {
                        bundle.putParcelable("app_data", searchView.M);
                    }
                    Intent intent4 = new Intent(intent2);
                    int i2 = 1;
                    if (Build.VERSION.SDK_INT >= 8) {
                        Resources resources = searchView.getResources();
                        str2 = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
                        str = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
                        str3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
                        if (searchableInfo.getVoiceMaxResults() != 0) {
                            i2 = searchableInfo.getVoiceMaxResults();
                        }
                    } else {
                        str = null;
                        str2 = "free_form";
                        str3 = null;
                    }
                    intent4.putExtra("android.speech.extra.LANGUAGE_MODEL", str2);
                    intent4.putExtra("android.speech.extra.PROMPT", str);
                    intent4.putExtra("android.speech.extra.LANGUAGE", str3);
                    intent4.putExtra("android.speech.extra.MAX_RESULTS", i2);
                    if (searchActivity2 != null) {
                        str4 = searchActivity2.flattenToShortString();
                    }
                    intent4.putExtra("calling_package", str4);
                    intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
                    intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
                    searchView.getContext().startActivity(intent4);
                }
            } catch (ActivityNotFoundException e2) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* access modifiers changed from: private */
    public void m() {
        a aVar = a;
        SearchAutoComplete searchAutoComplete = this.d;
        if (aVar.a != null) {
            try {
                aVar.a.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception e2) {
            }
        }
        a aVar2 = a;
        SearchAutoComplete searchAutoComplete2 = this.d;
        if (aVar2.b != null) {
            try {
                aVar2.b.invoke(searchAutoComplete2, new Object[0]);
            } catch (Exception e3) {
            }
        }
    }

    /* access modifiers changed from: private */
    public void setImeVisibility(boolean z2) {
        if (z2) {
            post(this.O);
            return;
        }
        removeCallbacks(this.O);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    public final void a() {
        if (!this.J) {
            this.J = true;
            this.K = this.d.getImeOptions();
            this.d.setImeOptions(this.K | 33554432);
            this.d.setText("");
            setIconified(false);
        }
    }

    public final void b() {
        setQuery("", false);
        clearFocus();
        a(true);
        this.d.setImeOptions(this.K);
        this.J = false;
    }

    public void clearFocus() {
        this.E = true;
        setImeVisibility(false);
        super.clearFocus();
        this.d.clearFocus();
        this.E = false;
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        a(this.z);
        h();
        if (this.d.hasFocus()) {
            m();
        }
    }

    public int getImeOptions() {
        return this.d.getImeOptions();
    }

    public int getInputType() {
        return this.d.getInputType();
    }

    public int getMaxWidth() {
        return this.F;
    }

    public CharSequence getQuery() {
        return this.d.getText();
    }

    public CharSequence getQueryHint() {
        return this.C != null ? this.C : (!c || this.L == null || this.L.getHintId() == 0) ? this.s : getContext().getText(this.L.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.p;
    }

    public int getSuggestionRowLayout() {
        return this.o;
    }

    public ci getSuggestionsAdapter() {
        return this.A;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.P);
        post(this.Q);
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.z) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                if (this.F <= 0) {
                    size = Math.min(getPreferredWidth(), size);
                    break;
                } else {
                    size = Math.min(this.F, size);
                    break;
                }
            case 0:
                if (this.F <= 0) {
                    size = getPreferredWidth();
                    break;
                } else {
                    size = this.F;
                    break;
                }
            case 1073741824:
                if (this.F > 0) {
                    size = Math.min(this.F, size);
                    break;
                }
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), i3);
    }

    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        h();
    }

    public boolean requestFocus(int i2, Rect rect) {
        if (this.E || !isFocusable()) {
            return false;
        }
        if (this.z) {
            return super.requestFocus(i2, rect);
        }
        boolean requestFocus = this.d.requestFocus(i2, rect);
        if (requestFocus) {
            a(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.M = bundle;
    }

    public void setIconified(boolean z2) {
        if (z2) {
            k();
        } else {
            l();
        }
    }

    public void setIconifiedByDefault(boolean z2) {
        if (this.y != z2) {
            this.y = z2;
            a(z2);
            i();
        }
    }

    public void setImeOptions(int i2) {
        this.d.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.d.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.F = i2;
        requestLayout();
    }

    public void setOnCloseListener(b bVar) {
        this.u = bVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.v = onFocusChangeListener;
    }

    public void setOnQueryTextListener(c cVar) {
        this.t = cVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.x = onClickListener;
    }

    public void setOnSuggestionListener(d dVar) {
        this.w = dVar;
    }

    public void setQuery(CharSequence charSequence) {
        this.d.setText(charSequence);
        this.d.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public void setQuery(CharSequence charSequence, boolean z2) {
        this.d.setText(charSequence);
        if (charSequence != null) {
            this.d.setSelection(this.d.length());
            this.I = charSequence;
        }
        if (z2 && !TextUtils.isEmpty(charSequence)) {
            j();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.C = charSequence;
        i();
    }

    public void setQueryRefinementEnabled(boolean z2) {
        this.D = z2;
        if (this.A instanceof fg) {
            ((fg) this.A).j = z2 ? 2 : 1;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00a4, code lost:
        if (r0 == false) goto L_0x00ca;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setSearchableInfo(android.app.SearchableInfo r9) {
        /*
            r8 = this;
            r4 = 0
            r7 = 65536(0x10000, float:9.18355E-41)
            r3 = 0
            r2 = 1
            r8.L = r9
            android.app.SearchableInfo r0 = r8.L
            if (r0 == 0) goto L_0x0079
            boolean r0 = c
            if (r0 == 0) goto L_0x0076
            android.support.v7.widget.SearchView$SearchAutoComplete r0 = r8.d
            android.app.SearchableInfo r1 = r8.L
            int r1 = r1.getSuggestThreshold()
            r0.setThreshold(r1)
            android.support.v7.widget.SearchView$SearchAutoComplete r0 = r8.d
            android.app.SearchableInfo r1 = r8.L
            int r1 = r1.getImeOptions()
            r0.setImeOptions(r1)
            android.app.SearchableInfo r0 = r8.L
            int r0 = r0.getInputType()
            r1 = r0 & 15
            if (r1 != r2) goto L_0x003f
            r1 = -65537(0xfffffffffffeffff, float:NaN)
            r0 = r0 & r1
            android.app.SearchableInfo r1 = r8.L
            java.lang.String r1 = r1.getSuggestAuthority()
            if (r1 == 0) goto L_0x003f
            r0 = r0 | r7
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 | r1
        L_0x003f:
            android.support.v7.widget.SearchView$SearchAutoComplete r1 = r8.d
            r1.setInputType(r0)
            ci r0 = r8.A
            if (r0 == 0) goto L_0x004d
            ci r0 = r8.A
            r0.a((android.database.Cursor) r4)
        L_0x004d:
            android.app.SearchableInfo r0 = r8.L
            java.lang.String r0 = r0.getSuggestAuthority()
            if (r0 == 0) goto L_0x0076
            fg r0 = new fg
            android.content.Context r1 = r8.getContext()
            android.app.SearchableInfo r5 = r8.L
            java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable$ConstantState> r6 = r8.R
            r0.<init>(r1, r8, r5, r6)
            r8.A = r0
            android.support.v7.widget.SearchView$SearchAutoComplete r0 = r8.d
            ci r1 = r8.A
            r0.setAdapter(r1)
            ci r0 = r8.A
            fg r0 = (defpackage.fg) r0
            boolean r1 = r8.D
            if (r1 == 0) goto L_0x00b9
            r1 = 2
        L_0x0074:
            r0.j = r1
        L_0x0076:
            r8.i()
        L_0x0079:
            boolean r0 = c
            if (r0 == 0) goto L_0x00ca
            android.app.SearchableInfo r0 = r8.L
            if (r0 == 0) goto L_0x00c8
            android.app.SearchableInfo r0 = r8.L
            boolean r0 = r0.getVoiceSearchEnabled()
            if (r0 == 0) goto L_0x00c8
            android.app.SearchableInfo r0 = r8.L
            boolean r0 = r0.getVoiceSearchLaunchWebSearch()
            if (r0 == 0) goto L_0x00bb
            android.content.Intent r0 = r8.q
        L_0x0093:
            if (r0 == 0) goto L_0x00c8
            android.content.Context r1 = r8.getContext()
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            android.content.pm.ResolveInfo r0 = r1.resolveActivity(r0, r7)
            if (r0 == 0) goto L_0x00c6
            r0 = r2
        L_0x00a4:
            if (r0 == 0) goto L_0x00ca
        L_0x00a6:
            r8.G = r2
            boolean r0 = r8.G
            if (r0 == 0) goto L_0x00b3
            android.support.v7.widget.SearchView$SearchAutoComplete r0 = r8.d
            java.lang.String r1 = "nm"
            r0.setPrivateImeOptions(r1)
        L_0x00b3:
            boolean r0 = r8.z
            r8.a((boolean) r0)
            return
        L_0x00b9:
            r1 = r2
            goto L_0x0074
        L_0x00bb:
            android.app.SearchableInfo r0 = r8.L
            boolean r0 = r0.getVoiceSearchLaunchRecognizer()
            if (r0 == 0) goto L_0x00cc
            android.content.Intent r0 = r8.r
            goto L_0x0093
        L_0x00c6:
            r0 = r3
            goto L_0x00a4
        L_0x00c8:
            r0 = r3
            goto L_0x00a4
        L_0x00ca:
            r2 = r3
            goto L_0x00a6
        L_0x00cc:
            r0 = r4
            goto L_0x0093
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z2) {
        this.B = z2;
        a(this.z);
    }

    public void setSuggestionsAdapter(ci ciVar) {
        this.A = ciVar;
        this.d.setAdapter(this.A);
    }
}
