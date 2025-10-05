package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.method.DigitsKeyListener;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import defpackage.afw;
import meanlabs.comicat.R;

/* renamed from: ace  reason: default package */
/* compiled from: PasswordDialog */
public final class ace extends Dialog {
    public String a;
    public int b;
    public String c;
    public boolean d;
    Context e;
    afw.a f;
    EditText g;

    public ace(Context context, afw.a aVar) {
        super(context);
        this.e = context;
        this.f = aVar;
    }

    /* access modifiers changed from: protected */
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(this.d);
        setContentView(R.layout.password);
        setTitle(this.a);
        this.g = (EditText) findViewById(R.id.password);
        this.g.setKeyListener(new DigitsKeyListener());
        this.g.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                ace.this.getWindow().setSoftInputMode(5);
            }
        });
        ((Button) findViewById(R.id.cancel)).setVisibility(this.d ? 0 : 8);
        setOnKeyListener(new DialogInterface.OnKeyListener() {
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return i == 84 && keyEvent.getRepeatCount() == 0;
            }
        });
        ((Button) findViewById(R.id.unlock)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                ace ace = ace.this;
                if (aei.a().d.b(ace.c).equals(ace.g.getText().toString())) {
                    if (ace.f != null) {
                        ace.f.a(true);
                    }
                    ace.dismiss();
                    return;
                }
                ((TextView) ace.findViewById(R.id.message)).setText(ace.b);
            }
        });
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                ace.this.dismiss();
            }
        });
    }
}
