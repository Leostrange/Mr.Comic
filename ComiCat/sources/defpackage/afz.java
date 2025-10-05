package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import defpackage.ew;
import meanlabs.comicat.R;
import meanlabs.comicreader.ReaderActivity;

/* renamed from: afz  reason: default package */
/* compiled from: SearchModeProvider */
public final class afz implements ew.a {
    public ReaderActivity a;
    View b;
    public TextView c;
    public CheckBox d;
    a e;
    ew f;

    /* renamed from: afz$a */
    /* compiled from: SearchModeProvider */
    public interface a {
        void a();

        void b();

        void c();
    }

    public afz(ReaderActivity readerActivity, a aVar) {
        this.a = readerActivity;
        this.e = aVar;
        if (this.c == null) {
            this.b = this.a.getLayoutInflater().inflate(R.layout.actionbarsearchview, (ViewGroup) null);
            this.c = (EditText) this.b.findViewById(R.id.comicSearch);
            this.d = (CheckBox) this.b.findViewById(R.id.searchPrefix);
            if (this.c != null) {
                this.c.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                    public final void onFocusChange(View view, boolean z) {
                        InputMethodManager inputMethodManager;
                        if (z && (inputMethodManager = (InputMethodManager) afz.this.a.getSystemService("input_method")) != null) {
                            inputMethodManager.toggleSoftInput(1, 1);
                        }
                    }
                });
                this.c.addTextChangedListener(new TextWatcher() {
                    public final void afterTextChanged(Editable editable) {
                    }

                    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        afz.this.e.b();
                    }
                });
                this.d.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                        aei.a().d.a("prefix-search", z);
                        afz.this.e.b();
                    }
                });
            }
        }
    }

    public final boolean a() {
        return this.f != null;
    }

    public final void b() {
        if (this.f != null) {
            this.f.c();
        }
    }

    public final boolean onActionItemClicked(ew ewVar, MenuItem menuItem) {
        return false;
    }

    public final boolean onCreateActionMode(ew ewVar, Menu menu) {
        this.f = ewVar;
        this.f.a(this.b);
        this.c.setText("");
        this.c.requestFocus();
        this.d.setChecked(aei.a().d.c("prefix-search"));
        this.e.a();
        return true;
    }

    public final void onDestroyActionMode(ew ewVar) {
        this.f = null;
        InputMethodManager inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
        if (inputMethodManager != null && inputMethodManager.isActive(this.c)) {
            inputMethodManager.hideSoftInputFromWindow(this.c.getWindowToken(), 1);
        }
        this.e.c();
    }

    public final boolean onPrepareActionMode(ew ewVar, Menu menu) {
        return false;
    }
}
