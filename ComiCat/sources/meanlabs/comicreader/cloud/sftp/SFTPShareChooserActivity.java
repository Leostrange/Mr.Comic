package meanlabs.comicreader.cloud.sftp;

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

public class SFTPShareChooserActivity extends ReaderActivity {
    aev a;
    boolean b;

    public class a extends AsyncTask<String, Void, Integer> {
        Context a;
        ProgressDialog b = new ProgressDialog(this.a);

        public a(Context context) {
            this.a = context;
            this.b.setProgressStyle(1);
            this.b.setIndeterminate(true);
            this.b.setMessage(this.a.getString(R.string.validatingSFTPShare));
            this.b.setProgress(0);
            this.b.setCancelable(false);
            this.b.setCanceledOnTouchOutside(false);
            ahf.a(this.b);
            this.b.show();
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ Object doInBackground(Object[] objArr) {
            int i = 0;
            String[] strArr = (String[]) objArr;
            aev aev = new aev();
            aev.c = strArr[0];
            aev.d = strArr[0];
            aev.b = "sftp";
            aev.e = strArr[1];
            aev.f = strArr[2];
            aev.g = strArr[3];
            qh a2 = aec.a(aev.d, aev.e, aev.f, aev.g);
            if (a2 == null || !a2.g()) {
                i = -1;
            } else if (SFTPShareChooserActivity.this.b) {
                SFTPShareChooserActivity.this.a.e = aev.e;
                SFTPShareChooserActivity.this.a.f = aev.f;
                SFTPShareChooserActivity.this.a.g = aev.g;
                aew aew = aei.a().g;
                aew.c(SFTPShareChooserActivity.this.a);
            } else if (aei.a().g.a(aev)) {
                SFTPShareChooserActivity.this.a = aev;
            }
            return Integer.valueOf(i);
        }

        /* access modifiers changed from: protected */
        public final /* synthetic */ void onPostExecute(Object obj) {
            boolean z = true;
            Integer num = (Integer) obj;
            try {
                this.b.dismiss();
            } catch (Exception e) {
                agt.a(e);
            }
            if (num.intValue() == 0) {
                if (SFTPShareChooserActivity.this.a != null) {
                    act b2 = act.b();
                    int i = SFTPShareChooserActivity.this.a.a;
                    if (SFTPShareChooserActivity.this.b) {
                        z = false;
                    }
                    b2.a(i, z);
                } else {
                    act.b().a(-1, false);
                }
                SFTPShareChooserActivity.this.finish();
                return;
            }
            Toast makeText = Toast.makeText(this.a, R.string.errorValidatingHost, 1);
            makeText.setGravity(48, 0, 100);
            makeText.show();
        }
    }

    static /* synthetic */ void a(SFTPShareChooserActivity sFTPShareChooserActivity, String str, String str2, String str3, String str4) {
        if (str == null || str.length() == 0) {
            ahf.a((Context) sFTPShareChooserActivity, (int) R.string.shareUrlRequired);
            return;
        }
        new a(sFTPShareChooserActivity).execute(new String[]{str, str2, str3, str4});
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.add_sftp_share);
        int intExtra = getIntent().getIntExtra("serviecid", -1);
        if (intExtra != -1) {
            this.b = true;
            this.a = aei.a().g.a(intExtra);
            if (this.a != null) {
                findViewById(R.id.sftpHost).setEnabled(false);
                ahf.a((Activity) this, (int) R.id.sftpHost, this.a.d);
                ahf.a((Activity) this, (int) R.id.port, this.a.e);
                ahf.a((Activity) this, (int) R.id.username, this.a.f);
                ahf.a((Activity) this, (int) R.id.password, this.a.g);
            }
        }
        ((Button) findViewById(R.id.add)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                SFTPShareChooserActivity.a(SFTPShareChooserActivity.this, ahf.a((Activity) SFTPShareChooserActivity.this, (int) R.id.sftpHost), ahf.a((Activity) SFTPShareChooserActivity.this, (int) R.id.port), ahf.a((Activity) SFTPShareChooserActivity.this, (int) R.id.username), ahf.a((Activity) SFTPShareChooserActivity.this, (int) R.id.password));
            }
        });
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                SFTPShareChooserActivity.this.finish();
            }
        });
    }
}
