package meanlabs.comicreader.cloud.smb;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import meanlabs.comicat.R;
import meanlabs.comicreader.ReaderActivity;

public class SMBShareChooserActivity extends ReaderActivity {
    aev a;
    boolean b;

    public class a extends AsyncTask<String, Void, Integer> {
        Context a;
        ProgressDialog b = new ProgressDialog(this.a);

        public a(Context context) {
            this.a = context;
            this.b.setProgressStyle(1);
            this.b.setIndeterminate(true);
            this.b.setMessage(this.a.getString(R.string.validatingSMBShare));
            this.b.setProgress(0);
            this.b.setCancelable(false);
            this.b.setCanceledOnTouchOutside(false);
            ahf.a(this.b);
            this.b.show();
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ Object doInBackground(Object[] objArr) {
            String[] strArr = (String[]) objArr;
            aev aev = new aev();
            aev.c = strArr[0];
            aev.d = strArr[0];
            aev.b = "smb";
            aev.e = strArr[1];
            aev.f = strArr[2];
            aev.g = strArr[3];
            Integer valueOf = Integer.valueOf(aef.a(aev));
            if (valueOf.intValue() == 0) {
                if (SMBShareChooserActivity.this.b) {
                    SMBShareChooserActivity.this.a.e = aev.e;
                    SMBShareChooserActivity.this.a.f = aev.f;
                    SMBShareChooserActivity.this.a.g = aev.g;
                    aew aew = aei.a().g;
                    aew.c(SMBShareChooserActivity.this.a);
                } else if (aei.a().g.a(aev)) {
                    SMBShareChooserActivity.this.a = aev;
                }
            }
            return valueOf;
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ void onPostExecute(Object obj) {
            int i = R.string.shareNotFound;
            boolean z = true;
            Integer num = (Integer) obj;
            try {
                this.b.dismiss();
            } catch (Exception e) {
                agt.a(e);
            }
            if (num.intValue() == 0) {
                if (SMBShareChooserActivity.this.a != null) {
                    act b2 = act.b();
                    int i2 = SMBShareChooserActivity.this.a.a;
                    if (SMBShareChooserActivity.this.b) {
                        z = false;
                    }
                    b2.a(i2, z);
                } else {
                    act.b().a(-1, false);
                }
                SMBShareChooserActivity.this.finish();
                return;
            }
            switch (num.intValue()) {
                case 1:
                    i = R.string.cantConnetToShare;
                    break;
                case 3:
                    i = R.string.shareInvalid;
                    break;
            }
            Toast makeText = Toast.makeText(this.a, i, 1);
            makeText.setGravity(48, 0, 100);
            makeText.show();
        }
    }

    static /* synthetic */ void a(SMBShareChooserActivity sMBShareChooserActivity, String str, String str2, String str3, String str4) {
        if (str == null || str.length() == 0) {
            ahf.a((Context) sMBShareChooserActivity, (int) R.string.shareUrlRequired);
            return;
        }
        new a(sMBShareChooserActivity).execute(new String[]{str, str2, str3, str4});
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.add_smb_share);
        int intExtra = getIntent().getIntExtra("serviecid", -1);
        if (intExtra != -1) {
            this.b = true;
            this.a = aei.a().g.a(intExtra);
            if (this.a != null) {
                String replace = this.a.d.replace("smb://", "");
                findViewById(R.id.smbUrl).setEnabled(false);
                ahf.a((Activity) this, (int) R.id.smbUrl, replace);
                ahf.a((Activity) this, (int) R.id.domain, this.a.e);
                ahf.a((Activity) this, (int) R.id.username, this.a.f);
                ahf.a((Activity) this, (int) R.id.password, this.a.g);
            }
        }
        ((Button) findViewById(R.id.add)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                String a2 = ahf.a((Activity) SMBShareChooserActivity.this, (int) R.id.smbUrl);
                if (!a2.startsWith("smb://")) {
                    a2 = "smb://" + a2;
                }
                if (!a2.endsWith("/")) {
                    a2 = a2 + "/";
                }
                SMBShareChooserActivity.a(SMBShareChooserActivity.this, a2, ahf.a((Activity) SMBShareChooserActivity.this, (int) R.id.domain), ahf.a((Activity) SMBShareChooserActivity.this, (int) R.id.username), ahf.a((Activity) SMBShareChooserActivity.this, (int) R.id.password));
            }
        });
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                SMBShareChooserActivity.this.finish();
            }
        });
    }
}
