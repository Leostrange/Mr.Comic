package meanlabs.comicreader;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.afw;
import java.util.ArrayList;
import meanlabs.comicat.R;
import meanlabs.comicreader.cloud.CloudSync;

public class SettingsHome extends ReaderActivity {

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(SettingsHome settingsHome, byte b) {
            this();
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, GeneralSettings.class));
                    return;
                case 1:
                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, CatalogSettings.class));
                    return;
                case 2:
                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, ViewerSettings.class));
                    return;
                case 3:
                    if (aei.a().d.c("enable-hidden-folders")) {
                        afw.a(SettingsHome.this, new afw.a() {
                            public final void a(boolean z) {
                                if (z) {
                                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, HiddenFolderSettings.class));
                                }
                            }
                        });
                        return;
                    } else {
                        SettingsHome.this.startActivity(new Intent(SettingsHome.this, HiddenFolderSettings.class));
                        return;
                    }
                case 4:
                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, CloudSync.class));
                    return;
                case 5:
                    SettingsHome.this.startActivity(new Intent(SettingsHome.this, CloudSyncSettings.class));
                    return;
                case 6:
                    agt a2 = agt.a();
                    SettingsHome settingsHome = SettingsHome.this;
                    try {
                        if (a2.a != null) {
                            try {
                                a2.a("********************* END OF LOG ***************************");
                                a2.a.flush();
                                a2.a.close();
                                a2.a = null;
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        new agu("support@meanlabs.com", "ComiCat Log", agv.a(a2.b)).a(settingsHome);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private void a(ArrayList<acf> arrayList, int i, int i2) {
        agw.a(arrayList, getResources(), i, i2);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        a(arrayList, R.string.generalSettings, R.string.generalMsg);
        a(arrayList, R.string.catalogSettings, R.string.catalogMsg);
        a(arrayList, R.string.viewerSettings, R.string.viewerMsg);
        a(arrayList, R.string.privateFolders, R.string.privateFoldersMsg);
        a(arrayList, R.string.cloudSync, R.string.cloudSyncMsg);
        a(arrayList, R.string.cloudSyncSettings, R.string.cloudSyncSettingsMsg);
        if (agt.c) {
            a(arrayList, R.string.emailLogs, R.string.emailLogsMsg);
        }
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
