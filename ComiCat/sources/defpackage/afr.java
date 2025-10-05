package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.ContextMenu;
import android.view.MenuInflater;
import android.view.MenuItem;
import defpackage.ack;
import defpackage.acr;
import defpackage.afw;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.Catalog;

/* renamed from: afr  reason: default package */
/* compiled from: FolderItemEventHandler */
public final class afr implements afu {
    aem a;

    public afr(aem aem) {
        this.a = aem;
    }

    public final void a(Activity activity) {
        agm.a(activity, this.a.a);
    }

    public final void a(Catalog catalog) {
        catalog.h.a(this.a.a);
    }

    public final void a(Catalog catalog, ContextMenu contextMenu) {
        boolean z = false;
        MenuInflater menuInflater = catalog.getMenuInflater();
        contextMenu.setHeaderTitle(R.string.folderOptions);
        if (!this.a.f()) {
            boolean z2 = this.a.d > 0;
            menuInflater.inflate(R.menu.folderitemcontextmenu, contextMenu);
            MenuItem findItem = contextMenu.findItem(R.id.hide);
            if (aei.a().d.c("enable-hidden-folders")) {
                findItem.setVisible(true);
                findItem.setTitle(catalog.getString(this.a.c() ? R.string.unmarkPrivate : R.string.markPrivate));
            } else {
                findItem.setVisible(false);
            }
            contextMenu.findItem(R.id.startReading).setVisible(z2 && !this.a.o());
            contextMenu.findItem(R.id.continueReading).setVisible(z2 && this.a.o());
            contextMenu.findItem(R.id.addToReadingList).setVisible(z2);
            contextMenu.findItem(R.id.markRead).setVisible(z2);
            contextMenu.findItem(R.id.rename).setVisible(!this.a.d());
            contextMenu.findItem(R.id.delete).setVisible(!this.a.d());
            contextMenu.findItem(R.id.excludeFolder).setVisible(!this.a.d());
            contextMenu.findItem(R.id.removeFromCatalog).setVisible(this.a.d());
            if (this.a.d()) {
                boolean z3 = false;
                for (aeq aeq : ael.a(this.a, false)) {
                    if (aeq.h.c(16)) {
                        z3 = true;
                    } else {
                        z = true;
                    }
                }
                contextMenu.findItem(R.id.makeLocalCopies).setVisible(z);
                contextMenu.findItem(R.id.removeLocalCopies).setVisible(z3);
                return;
            }
            contextMenu.findItem(R.id.makeLocalCopies).setVisible(false);
            contextMenu.findItem(R.id.removeLocalCopies).setVisible(false);
            return;
        }
        menuInflater.inflate(R.menu.builtinfolderitemcontextmenu, contextMenu);
        boolean z4 = false;
        for (aeq aeq2 : ael.a(this.a, false)) {
            if (aeq2.h.c(16)) {
                z = true;
            } else {
                z4 = true;
            }
        }
        contextMenu.findItem(R.id.makeLocalCopies).setVisible(z4);
        contextMenu.findItem(R.id.removeLocalCopies).setVisible(z);
    }

    public final boolean a(final Catalog catalog, int i) {
        boolean z = false;
        switch (i) {
            case R.id.delete /*2131493055*/:
            case R.id.removeFromCatalog /*2131493160*/:
                List<aem> a2 = ael.a(this.a);
                List<aeq> a3 = ael.a(this.a, true);
                String string = a2.size() > 0 ? catalog.getString(R.string.deleteFolderTreePrompt, new Object[]{this.a.b, Integer.valueOf(a2.size()), Integer.valueOf(a3.size()), Build.MODEL}) : catalog.getString(R.string.deleteFolderPrompt, new Object[]{this.a.b, Integer.valueOf(a3.size()), Build.MODEL});
                AlertDialog.Builder builder = new AlertDialog.Builder(catalog);
                builder.setTitle(catalog.getString(R.string.deleteFolderTitle)).setMessage(string).setCancelable(false);
                builder.setPositiveButton(R.string.deleteFolderTitle, new DialogInterface.OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        String string;
                        boolean a2 = agm.a(afr.this.a, false);
                        Catalog catalog = catalog;
                        if (a2) {
                            string = catalog.getString(R.string.comicsfromFolderDeleted, new Object[]{afr.this.a.b});
                        } else {
                            string = catalog.getString(R.string.errorDeletingFolder);
                        }
                        ahf.a((Context) catalog, string);
                        dialogInterface.dismiss();
                        ael.a();
                        agm.a(true);
                    }
                });
                if (a2.size() > 0) {
                    builder.setNeutralButton(R.string.deleteTree, new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String string;
                            boolean a2 = agm.a(afr.this.a, true);
                            Catalog catalog = catalog;
                            if (a2) {
                                string = catalog.getString(R.string.folderDeleted, new Object[]{afr.this.a.b});
                            } else {
                                string = catalog.getString(R.string.errorDeletingFolder);
                            }
                            ahf.a((Context) catalog, string);
                            dialogInterface.dismiss();
                            ael.a();
                            agm.a(true);
                        }
                    });
                }
                builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        dialogInterface.cancel();
                    }
                });
                AlertDialog create = builder.create();
                agd.a(create);
                create.show();
                return true;
            case R.id.makeLocalCopies /*2131493129*/:
                ArrayList arrayList = new ArrayList();
                for (aeq next : ael.a(this.a, false)) {
                    if (next.d() && !next.h.c(16)) {
                        arrayList.add(next);
                    }
                }
                if (arrayList.size() > 0) {
                    Iterator it = arrayList.iterator();
                    int i2 = 0;
                    while (it.hasNext()) {
                        i2 = adh.a((aeq) it.next()) ? i2 + 1 : i2;
                    }
                    ahf.a((Context) catalog, catalog.getString(R.string.comicsAddedToDownloadQueue, new Object[]{Integer.valueOf(i2)}));
                    return true;
                }
                ahf.a((Context) catalog, (int) R.string.allComicsAlreadyDownloaded);
                return true;
            case R.id.removeLocalCopies /*2131493130*/:
                final ArrayList arrayList2 = new ArrayList();
                for (aeq next2 : ael.a(this.a, false)) {
                    if (next2.d() && next2.h.c(16)) {
                        arrayList2.add(next2);
                    }
                }
                afw.a((Context) catalog, catalog.getString(R.string.removeLocalCopy), catalog.getString(R.string.deleteComicsPrompt, new Object[]{Integer.valueOf(arrayList2.size()), Build.MODEL, agv.a(agv.a((List<aeq>) arrayList2))}), (afw.a) new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            new ack(catalog, arrayList2, new ack.a() {
                                public final void a(int i) {
                                    ahf.a((Context) catalog, catalog.getString(R.string.comicsDeleted, new Object[]{Integer.valueOf(i)}));
                                }
                            }).execute(new Void[]{null});
                        }
                    }
                });
                return true;
            case R.id.addToReadingList /*2131493152*/:
                final List<aeq> a4 = ael.a(this.a, false);
                if (a4.size() <= 0) {
                    return true;
                }
                afw.a((Context) catalog, catalog.getString(R.string.addToReadingList), catalog.getString(R.string.addToReadingListPrompt, new Object[]{Integer.valueOf(a4.size())}), (afw.a) new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            for (aeq aeq : a4) {
                                if (!aeq.h.c(2)) {
                                    agm.c(aeq, true);
                                }
                            }
                            catalog.e();
                        }
                    }
                });
                return true;
            case R.id.markRead /*2131493153*/:
                aem aem = this.a;
                List<aeq> a5 = ael.a(aem, false);
                if (a5 == null || a5.size() <= 0) {
                    return true;
                }
                for (aeq next3 : a5) {
                    if (!next3.p()) {
                        next3.b(true);
                    }
                }
                aem.h();
                agm.a(false);
                return true;
            case R.id.rename /*2131493154*/:
                aem aem2 = this.a;
                afw.a(catalog, R.string.rename, R.string.renamePrompt, R.string.rename, aem2.b, false, new afw.b(aem2, new File(aem2.j), new afw.a() {
                    public final void a(boolean z) {
                        ael.a();
                        agm.a(true);
                    }
                }, catalog) {
                    final /* synthetic */ aem a;
                    final /* synthetic */ File b;
                    final /* synthetic */ a c;
                    final /* synthetic */ Context d;

                    {
                        this.a = r1;
                        this.b = r2;
                        this.c = r3;
                        this.d = r4;
                    }

                    public final void a(boolean z, String str) {
                        boolean z2;
                        String string;
                        if (z) {
                            String trim = str.trim();
                            if (!trim.equals(this.a.b)) {
                                File file = new File(this.b.getParent(), trim);
                                String str2 = this.a.j;
                                if (this.b.renameTo(file)) {
                                    List<aem> a2 = ael.a(this.a);
                                    List<aeq> a3 = ael.a(this.a, true);
                                    aek aek = aei.a().b;
                                    aen aen = aei.a().c;
                                    String path = file.getPath();
                                    this.a.j = file.getPath();
                                    this.a.b = trim;
                                    boolean d2 = aen.d(this.a);
                                    for (aem next : a2) {
                                        if (this.a.a != next.a) {
                                            next.j = next.j.replace(str2, path);
                                            aen.d(next);
                                        }
                                    }
                                    for (aeq next2 : a3) {
                                        next2.d = next2.d.replace(str2, path);
                                        aek.d(next2);
                                    }
                                    z2 = d2;
                                } else {
                                    z2 = false;
                                }
                                this.c.a(z2);
                                Context context = this.d;
                                if (z2) {
                                    string = this.d.getString(R.string.folderRenamed, new Object[]{file.getName()});
                                } else {
                                    string = this.d.getString(R.string.errorRenamingFolder);
                                }
                                ahf.a(context, string);
                            }
                        }
                    }
                });
                return true;
            case R.id.excludeFolder /*2131493159*/:
                agm.a(this.a, (Activity) catalog, (acr.a) catalog);
                return true;
            case R.id.startReading /*2131493181*/:
            case R.id.continueReading /*2131493182*/:
                agm.a((Activity) catalog, this.a.a);
                return true;
            case R.id.recreateCovers /*2131493183*/:
                List<aeq> a6 = ael.a(this.a, false);
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(this.a);
                new acp(catalog, a6, arrayList3).execute(new Void[]{null});
                return true;
            case R.id.hide /*2131493184*/:
                aem aem3 = this.a;
                if (!this.a.c()) {
                    z = true;
                }
                aem3.b(z);
                aen aen = aei.a().c;
                aen.b(this.a);
                if (agw.a()) {
                    catalog.f();
                    return true;
                }
                catalog.e();
                return true;
            default:
                return false;
        }
    }
}
