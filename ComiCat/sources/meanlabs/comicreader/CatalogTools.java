package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.acl;
import defpackage.afw;
import defpackage.ahh;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipFile;
import meanlabs.comicat.R;

public class CatalogTools extends ReaderActivity implements ahh.a {
    ahh a;

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(CatalogTools catalogTools, byte b) {
            this();
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    CatalogTools catalogTools = CatalogTools.this;
                    catalogTools.startActivity(new Intent(catalogTools, BulkMarkRead.class));
                    return;
                case 1:
                    afw.a((Activity) CatalogTools.this);
                    return;
                case 2:
                    CatalogTools.this.d();
                    return;
                case 3:
                    CatalogTools catalogTools2 = CatalogTools.this;
                    new acl(catalogTools2, new acl.a() {
                        public final void a(HashMap<String, ArrayList<aeq>> hashMap) {
                            if (hashMap.size() > 0) {
                                ArrayList arrayList = new ArrayList();
                                ArrayList arrayList2 = new ArrayList();
                                CatalogTools.a(CatalogTools.this, hashMap, arrayList, arrayList2);
                                DeleteMultipleFiles.a(CatalogTools.this, arrayList, arrayList2, false, R.string.duplicateComics);
                                return;
                            }
                            ahf.a((Context) CatalogTools.this, (int) R.string.noDuplicatesFound);
                        }
                    }).execute(new Void[]{null});
                    return;
                case 4:
                    CatalogTools.this.e();
                    return;
                case 5:
                    CatalogTools.this.f();
                    return;
                case 6:
                    CatalogTools.this.c();
                    return;
                case 7:
                    new acp(CatalogTools.this, aei.a().b.f(), aei.a().c.e()).execute(new Void[]{null});
                    return;
                case 9:
                    CatalogTools.b(CatalogTools.this);
                    return;
                case 10:
                    afw.a((Context) CatalogTools.this, CatalogTools.this.getString(R.string.loadCatalog), CatalogTools.this.getString(R.string.loadCatalogPrompt), (afw.a) new afw.a() {
                        public final void a(boolean z) {
                            if (z) {
                                CatalogTools.this.a = ahh.a((String) null, (String) null);
                                CatalogTools.this.a.show(CatalogTools.this.getSupportFragmentManager(), (String) null);
                            }
                        }
                    });
                    return;
                default:
                    return;
            }
        }
    }

    static /* synthetic */ void a(CatalogTools catalogTools, HashMap hashMap, List list, List list2) {
        for (Map.Entry value : hashMap.entrySet()) {
            ArrayList arrayList = (ArrayList) value.getValue();
            list2.add(catalogTools.getString(R.string.duplicates, new Object[]{Integer.valueOf(arrayList.size())}));
            list.add(Integer.valueOf(-list2.size()));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                list.add(Integer.valueOf(((aeq) it.next()).a));
            }
        }
    }

    static /* synthetic */ void b(CatalogTools catalogTools) {
        File dataDirectory = Environment.getDataDirectory();
        if (!dataDirectory.canWrite()) {
            dataDirectory = Environment.getRootDirectory();
            if (!dataDirectory.canWrite()) {
                dataDirectory = catalogTools.getApplicationContext().getFilesDir();
            }
        }
        new ach(catalogTools, dataDirectory.getPath() + "/comicat.bak").execute(new Void[]{null});
    }

    private boolean b(String str) {
        try {
            if (new ZipFile(new File(str)).getEntry("database") != null) {
                new acq(this).execute(new Void[]{null});
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public final void a(String str) {
        this.a.dismiss();
        if (str != null && !b(str)) {
            ahf.a((Context) this, (int) R.string.invalidBackup);
        }
    }

    public final void c() {
        ArrayList<aeq> f = ael.f();
        ArrayList<aeq> c = ael.c();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        if (c.size() > 0) {
            arrayList2.add(getString(R.string.readComics));
            arrayList.add(Integer.valueOf(-arrayList2.size()));
            ael.a((List<aeq>) c, "prefSortByFilePathEx");
            for (aeq aeq : c) {
                arrayList.add(Integer.valueOf(aeq.a));
            }
        }
        if (f.size() > 0) {
            arrayList2.add(getString(R.string.remoteCopies));
            arrayList.add(Integer.valueOf(-arrayList2.size()));
            ael.a((List<aeq>) f, "prefSortByFilePathEx");
            for (aeq aeq2 : f) {
                arrayList.add(Integer.valueOf(aeq2.a));
            }
        }
        new acl(this, new acl.a() {
            public final void a(HashMap<String, ArrayList<aeq>> hashMap) {
                if (hashMap.size() > 0 || arrayList.size() > 0) {
                    CatalogTools.a(CatalogTools.this, hashMap, arrayList, arrayList2);
                    DeleteMultipleFiles.a(CatalogTools.this, arrayList, arrayList2, false, R.string.freeSpace);
                    return;
                }
                ahf.a((Context) CatalogTools.this, (int) R.string.noEligibleFilesFound);
            }
        }).execute(new Void[]{null});
    }

    public final void d() {
        List<aeq> f = aei.a().b.f();
        ael.a(f, "prefSortByFilePathEx");
        ArrayList arrayList = new ArrayList();
        for (aeq next : f) {
            if (!next.d() || next.h.c(16)) {
                arrayList.add(Integer.valueOf(next.a));
            }
        }
        DeleteMultipleFiles.a(this, arrayList, (ArrayList<String>) null, false, R.string.deleteMultipleComics);
    }

    public final void e() {
        List<aeq> f = aei.a().b.f();
        ArrayList arrayList = new ArrayList();
        for (aeq next : f) {
            if (next.d() && !next.g() && next.h.c(2)) {
                arrayList.add(next);
            }
        }
        if (arrayList.size() == 0) {
            ahf.a((Context) this, (int) R.string.noRemoteFilesInReadingList);
            return;
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = adh.a((aeq) it.next()) ? i + 1 : i;
        }
        ahf.a((Context) this, getString(R.string.comicsAddedToDownloadQueue, new Object[]{Integer.valueOf(i)}));
    }

    public final void f() {
        ArrayList<aeq> f = ael.f();
        ael.a((List<aeq>) f, "prefSortByFilePathEx");
        if (f.size() > 0) {
            DeleteMultipleFiles.a(this, f, R.string.removeLocalCopies);
        } else {
            ahf.a((Context) this, (int) R.string.noCachedComics);
        }
    }

    public final void g() {
        this.a.dismiss();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a(arrayList, getResources(), R.string.markMultipleComicRead, R.string.markMultipleComicReadMsg);
        agw.a(arrayList, getResources(), R.string.deleteReadComics, R.string.deleteReadComicsMsg);
        agw.a(arrayList, getResources(), R.string.deleteMultipleComics, R.string.deleteMultipleComicsMsg);
        agw.a(arrayList, getResources(), R.string.findDuplicates, R.string.findDuplicatesMsg);
        agw.a(arrayList, getResources(), R.string.cacheReadingList, R.string.cacheReadingListMsg);
        agw.a(arrayList, getResources(), R.string.removeLocalCopies, R.string.removeLocalCopiesMsg);
        agw.a(arrayList, getResources(), R.string.freeSpace, R.string.freeSpaceMsg);
        agw.a(arrayList, getResources(), R.string.recreateThumbnails, R.string.recreateThumbnailsMsg);
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
