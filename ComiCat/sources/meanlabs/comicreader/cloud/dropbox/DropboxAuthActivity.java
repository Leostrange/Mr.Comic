package meanlabs.comicreader.cloud.dropbox;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.dropbox.core.android.AuthActivity;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import meanlabs.comicreader.ReaderActivity;

public class DropboxAuthActivity extends ReaderActivity {
    ado a;

    static /* synthetic */ void a(DropboxAuthActivity dropboxAuthActivity, String str, kb kbVar) {
        kd kdVar = null;
        int intExtra = dropboxAuthActivity.getIntent().getIntExtra("serviecid", -1);
        if (intExtra == -1) {
            aev aev = new aev();
            aev.b = "dropbox";
            aev.h = str;
            aev.g = "";
            if (kbVar != null) {
                kdVar = kbVar.a();
            }
            aev.f = kdVar != null ? kdVar.a() : "";
            aev.c = aev.f;
            if (aei.a().g.a(aev)) {
                act.b().a(aev.a, true);
            } else {
                dropboxAuthActivity.runOnUiThread(new Runnable() {
                    public final void run() {
                        DropboxAuthActivity.this.c();
                    }
                });
            }
        } else {
            aev a2 = aei.a().g.a(intExtra);
            if (a2 != null) {
                a2.h = str;
                a2.g = "";
                if (kbVar != null) {
                    kdVar = kbVar.a();
                }
                a2.f = kdVar != null ? kdVar.a() : "";
                a2.c = a2.f;
                aew aew = aei.a().g;
                if (aew.c(a2)) {
                    act.b().a(intExtra, false);
                }
            }
        }
        dropboxAuthActivity.finish();
    }

    /* access modifiers changed from: private */
    public void c() {
        Toast.makeText(ComicReaderApp.a(), getString(R.string.unableToLogIntoService, new Object[]{getString(R.string.dropbox)}), 1).show();
        act.b().a(-1, false);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new ado((aev) null);
        if (AuthActivity.a((Context) this, "76weop5hf3hiwxu")) {
            Intent a2 = AuthActivity.a(this, "76weop5hf3hiwxu", "www.dropbox.com", "1");
            if (!(this instanceof Activity)) {
                a2.addFlags(268435456);
            }
            startActivity(a2);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0037, code lost:
        if (r2.equals("") == false) goto L_0x0039;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onRestart() {
        /*
            r5 = this;
            super.onRestart()
            ado r1 = r5.a
            android.content.Intent r2 = com.dropbox.core.android.AuthActivity.a
            if (r2 == 0) goto L_0x004e
            java.lang.String r0 = "ACCESS_TOKEN"
            java.lang.String r3 = r2.getStringExtra(r0)
            java.lang.String r0 = "ACCESS_SECRET"
            java.lang.String r0 = r2.getStringExtra(r0)
            java.lang.String r4 = "UID"
            java.lang.String r2 = r2.getStringExtra(r4)
            if (r3 == 0) goto L_0x004e
            java.lang.String r4 = ""
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x004e
            if (r0 == 0) goto L_0x004e
            java.lang.String r3 = ""
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto L_0x004e
            if (r2 == 0) goto L_0x004e
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L_0x004e
        L_0x0039:
            if (r0 == 0) goto L_0x0050
            r1.b(r0)
        L_0x003e:
            if (r0 == 0) goto L_0x0058
            java.lang.Thread r1 = new java.lang.Thread
            meanlabs.comicreader.cloud.dropbox.DropboxAuthActivity$1 r2 = new meanlabs.comicreader.cloud.dropbox.DropboxAuthActivity$1
            r2.<init>(r0)
            r1.<init>(r2)
            r1.start()
        L_0x004d:
            return
        L_0x004e:
            r0 = 0
            goto L_0x0039
        L_0x0050:
            java.lang.String r1 = "DropboxSync"
            java.lang.String r2 = "Error authenticating"
            android.util.Log.i(r1, r2)
            goto L_0x003e
        L_0x0058:
            r5.c()
            r5.finish()
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.cloud.dropbox.DropboxAuthActivity.onRestart():void");
    }
}
