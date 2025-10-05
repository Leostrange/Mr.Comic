package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import defpackage.aco;
import defpackage.acr;
import defpackage.afw;
import java.io.File;
import meanlabs.comicat.R;
import meanlabs.comicreader.Catalog;
import meanlabs.comicreader.ui.PageChooserView;

/* renamed from: afn  reason: default package */
/* compiled from: ComicItemEventHandler */
public final class afn implements afu {
    aeq a;

    public afn(aeq aeq) {
        this.a = aeq;
    }

    public final void a(Activity activity) {
        agm.a(activity, this.a.a, false);
    }

    public final void a(Catalog catalog) {
        agm.a((Activity) catalog, this.a.a, false);
    }

    public final void a(Catalog catalog, ContextMenu contextMenu) {
        boolean z = true;
        catalog.getMenuInflater().inflate(R.menu.catalogitemcontextmenu, contextMenu);
        contextMenu.setHeaderTitle(R.string.comicOptions);
        if (this.a.h.c(1)) {
            contextMenu.findItem(R.id.markRead).setTitle(R.string.markUnread);
        }
        contextMenu.findItem(R.id.openFromBookmark).setVisible(this.a.b());
        contextMenu.findItem(R.id.clearBookmark).setVisible(this.a.b());
        if (this.a.h.c(2)) {
            contextMenu.findItem(R.id.addToReadingList).setTitle(R.string.removeFromReadingList);
        }
        contextMenu.findItem(R.id.rename).setVisible(!this.a.d());
        contextMenu.findItem(R.id.delete).setVisible(!this.a.d());
        contextMenu.findItem(R.id.changeCover).setVisible(!this.a.d() || this.a.g());
        contextMenu.findItem(R.id.excludeFile).setVisible(!this.a.d());
        contextMenu.findItem(R.id.excludeFolder).setVisible(!this.a.d());
        contextMenu.findItem(R.id.makeLocalCopy).setVisible(this.a.d() && !this.a.h.c(16));
        MenuItem findItem = contextMenu.findItem(R.id.removeLocalCopy);
        if (!this.a.d() || !this.a.h.c(16)) {
            z = false;
        }
        findItem.setVisible(z);
        contextMenu.findItem(R.id.removeFromCatalog).setVisible(this.a.d());
    }

    public final boolean a(final Catalog catalog, int i) {
        boolean z = false;
        switch (i) {
            case R.id.delete /*2131493055*/:
                aeq aeq = this.a;
                AlertDialog.Builder builder = new AlertDialog.Builder(catalog);
                builder.setMessage(catalog.getString(R.string.deleteComicPrompt, new Object[]{aeq.c, Build.MODEL})).setCancelable(false).setPositiveButton(17039379, new DialogInterface.OnClickListener(aeq, catalog, catalog) {
                    final /* synthetic */ aeq a;
                    final /* synthetic */ Context b;
                    final /* synthetic */ a c;

                    {
                        this.a = r1;
                        this.b = r2;
                        this.c = r3;
                    }

                    public final void onClick(DialogInterface dialogInterface, int i) {
                        boolean a2 = agm.a(this.a, true);
                        ahf.a(this.b, a2 ? R.string.comicDeleted : R.string.errorDeletingComic);
                        ael.a();
                        this.c.a(a2);
                        dialogInterface.dismiss();
                    }
                }).setNegativeButton(17039369, new DialogInterface.OnClickListener(catalog) {
                    final /* synthetic */ a a;

                    {
                        this.a = r1;
                    }

                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.a.a(false);
                        dialogInterface.cancel();
                    }
                });
                builder.create().show();
                return true;
            case R.id.open /*2131493149*/:
                agm.a((Activity) catalog, this.a.a, false);
                return true;
            case R.id.openFromBookmark /*2131493150*/:
                agm.a((Activity) catalog, this.a.a, true);
                return true;
            case R.id.clearBookmark /*2131493151*/:
                aeq aeq2 = this.a;
                aeq2.i = -1;
                aek aek = aei.a().b;
                aek.c(aeq2);
                catalog.e();
                ahf.a((Context) catalog, (int) R.string.bookmarkCleared);
                return true;
            case R.id.addToReadingList /*2131493152*/:
                aeq aeq3 = this.a;
                if (!this.a.h.c(2)) {
                    z = true;
                }
                agm.c(aeq3, z);
                catalog.e();
                return true;
            case R.id.markRead /*2131493153*/:
                aeq aeq4 = this.a;
                if (!this.a.h.c(1)) {
                    z = true;
                }
                aeq4.b(z);
                catalog.e();
                return true;
            case R.id.rename /*2131493154*/:
                aeq aeq5 = this.a;
                File file = new File(aeq5.d);
                String a2 = agv.a(file.getName());
                String name = file.getName();
                String substring = name.substring(0, name.lastIndexOf(46));
                afw.a(catalog, R.string.renameComic, R.string.renamePrompt, R.string.renameComic, substring, false, new afw.b(substring, file, a2, aeq5, catalog, catalog) {
                    final /* synthetic */ String a;
                    final /* synthetic */ File b;
                    final /* synthetic */ String c;
                    final /* synthetic */ aeq d;
                    final /* synthetic */ a e;
                    final /* synthetic */ Context f;

                    {
                        this.a = r1;
                        this.b = r2;
                        this.c = r3;
                        this.d = r4;
                        this.e = r5;
                        this.f = r6;
                    }

                    public final void a(boolean z, String str) {
                        boolean z2;
                        String string;
                        if (z) {
                            String trim = str.trim();
                            if (!trim.equals(this.a)) {
                                File file = new File(this.b.getParent(), trim + '.' + this.c);
                                if (this.b.renameTo(file)) {
                                    this.d.d = file.getPath();
                                    this.d.c = afa.a(file.getName());
                                    this.d.k = agm.a(this.d.d);
                                    aek aek = aei.a().b;
                                    z2 = aek.d(this.d);
                                } else {
                                    z2 = false;
                                }
                                this.e.a(z2);
                                Context context = this.f;
                                if (z2) {
                                    string = this.f.getString(R.string.comicRenamed, new Object[]{file.getName()});
                                } else {
                                    string = this.f.getString(R.string.errorRenamingComic);
                                }
                                ahf.a(context, string);
                            }
                        }
                    }
                });
                return true;
            case R.id.changeCover /*2131493155*/:
                new aco(catalog, this.a, false, new aco.a() {
                    public final void a(final afa afa, String str, boolean z) {
                        final PageChooserView pageChooserView = (PageChooserView) catalog.getLayoutInflater().inflate(R.layout.page_chooser_view, (ViewGroup) null);
                        AlertDialog.Builder builder = new AlertDialog.Builder(catalog);
                        builder.setView(pageChooserView);
                        builder.setCancelable(true);
                        builder.setTitle(R.string.changeCoverImage);
                        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
                            public final void onCancel(DialogInterface dialogInterface) {
                                pageChooserView.a();
                                afa.a();
                            }
                        });
                        final AlertDialog show = builder.show();
                        pageChooserView.a(afa, new AdapterView.OnItemClickListener() {
                            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                                ahd.a(afn.this.a.a, agm.a(afa.a((int) j)));
                                afn.this.a.h.a(64);
                                aek aek = aei.a().b;
                                aek.b(afn.this.a);
                                aem b2 = ael.b(afn.this.a);
                                if (b2 != null) {
                                    agm.a(b2, 0, 0);
                                }
                                agm.a(false);
                                show.dismiss();
                                pageChooserView.a();
                                afa.a();
                            }
                        });
                    }

                    public final void e() {
                    }
                }).execute(new Void[]{null});
                return true;
            case R.id.makeLocalCopy /*2131493156*/:
                adh.a(this.a);
                ahf.a((Context) catalog, catalog.getString(R.string.comicsAddedToDownloadQueue, new Object[]{1}));
                return true;
            case R.id.removeLocalCopy /*2131493157*/:
                agm.a(this.a, true);
                ael.b();
                return true;
            case R.id.excludeFile /*2131493158*/:
                aeq aeq6 = this.a;
                if (aei.a().e.a(aeq6.d) && aei.a().b.g(aeq6)) {
                    agm.a(agv.c(aeq6.d), -1);
                }
                ael.b();
                return true;
            case R.id.excludeFolder /*2131493159*/:
                aem a3 = aei.a().c.a(agv.c(this.a.d));
                if (a3 == null) {
                    return true;
                }
                agm.a(a3, (Activity) catalog, (acr.a) catalog);
                return true;
            case R.id.removeFromCatalog /*2131493160*/:
                agm.b(this.a, true);
                ael.b();
                break;
        }
        return false;
    }
}
