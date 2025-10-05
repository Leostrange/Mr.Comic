package meanlabs.comicreader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;
import defpackage.afw;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;

public class HiddenFolderSettings extends ReaderActivity {

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(HiddenFolderSettings hiddenFolderSettings, byte b) {
            this();
        }

        public final void onItemClick(final AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    if (aei.a().d.c("enable-hidden-folders")) {
                        aei.a().d.a("enable-hidden-folders", false);
                        HiddenFolderSettings.this.a(false);
                        break;
                    } else {
                        afw.a((Context) HiddenFolderSettings.this, (int) R.string.unhideCodeWarning, "unhide-code", (afw.a) new afw.a() {
                            public final void a(boolean z) {
                                if (z) {
                                    aei.a().d.a("enable-hidden-folders", true);
                                    HiddenFolderSettings.this.a(true);
                                    acg acg = (acg) adapterView.getAdapter();
                                    if (acg != null) {
                                        acg.notifyDataSetInvalidated();
                                    }
                                }
                            }
                        });
                        break;
                    }
                case 1:
                    final List<aem> e = aei.a().c.e();
                    if (e != null && e.size() > 0) {
                        int size = e.size();
                        CharSequence[] charSequenceArr = new CharSequence[size];
                        boolean[] zArr = new boolean[size];
                        for (int i2 = 0; i2 < size; i2++) {
                            aem aem = e.get(i2);
                            charSequenceArr[i2] = aem.b;
                            zArr[i2] = aem.c();
                        }
                        AlertDialog.Builder builder = new AlertDialog.Builder(HiddenFolderSettings.this);
                        builder.setTitle(HiddenFolderSettings.this.getResources().getString(R.string.selectPrivateFolders));
                        builder.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() {
                            public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                                aem aem = (aem) e.get(i);
                                aem.b(z);
                                aen aen = aei.a().c;
                                aen.b(aem);
                            }
                        }).create().show();
                        break;
                    } else {
                        Toast.makeText(HiddenFolderSettings.this, R.string.noFolders, 0).show();
                        break;
                    }
                    break;
                case 2:
                    aei.a().d.d("hide-on-relaunch");
                    break;
                case 3:
                    aei.a().d.d("current-hidden-state");
                    break;
            }
            acg acg = (acg) adapterView.getAdapter();
            if (acg != null) {
                acg.notifyDataSetInvalidated();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z) {
        ListView listView = (ListView) findViewById(R.id.categories);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 < 4) {
                ((acf) listView.getAdapter().getItem(i2)).e = z;
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        boolean c = aei.a().d.c("enable-hidden-folders");
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.enablePrivateFolders, (int) R.string.enablePrivateFoldersMsg, "enable-hidden-folders", true);
        agw.a((ArrayList<acf>) arrayList, getResources().getString(R.string.selectPrivateFolders), getResources().getString(R.string.selectPrivateFoldersMsg), "folders-hidden", false, c);
        agw.a((ArrayList<acf>) arrayList, getResources().getString(R.string.hideOnRelauch), getResources().getString(R.string.hideOnRelaunchMsg), "hide-on-relaunch", true, c);
        agw.a((ArrayList<acf>) arrayList, getResources().getString(R.string.currentlyHidden), getResources().getString(R.string.currentlyHiddenMsg), "current-hidden-state", true, c);
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
