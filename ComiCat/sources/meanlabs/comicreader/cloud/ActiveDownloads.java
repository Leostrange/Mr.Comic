package meanlabs.comicreader.cloud;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import defpackage.acv;
import defpackage.acx;
import defpackage.afw;
import defpackage.agw;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.CloudSyncSettings;
import meanlabs.comicreader.ReaderActivity;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class ActiveDownloads extends ReaderActivity implements adf {
    acx a;
    ListView b;
    DownloaderService c;

    static /* synthetic */ void a(ActiveDownloads activeDownloads, int i) {
        acv acv;
        if (activeDownloads.a.isEnabled(i) && (acv = (acv) activeDownloads.a.getItem(i)) != null) {
            if (acv.e == acv.a.c && acv.a.h > 0) {
                agm.a((Activity) activeDownloads, acv.a.h, false);
            } else if (acv.e == acv.a.d || acv.e == acv.a.e) {
                activeDownloads.c.b(acv);
            }
        }
    }

    /* access modifiers changed from: private */
    public void c() {
        this.b.post(new Runnable() {
            public final void run() {
                ActiveDownloads.this.a.a(ActiveDownloads.this.c.b());
                ActiveDownloads.this.d();
            }
        });
    }

    /* access modifiers changed from: private */
    public void d() {
        int i;
        if (this.a != null) {
            ConnectivityReceiver a2 = ConnectivityReceiver.a();
            TextView textView = (TextView) findViewById(R.id.downloadStatus);
            List<acv> b2 = this.c.b();
            long j = 0;
            if (b2.size() > 0) {
                i = 0;
                for (acv next : b2) {
                    if (!(next.e == acv.a.c || next.e == acv.a.h)) {
                        j += (long) next.a.e;
                        i++;
                    }
                    i = i;
                }
            } else {
                i = 0;
            }
            String string = getString(a2.c() == ConnectivityReceiver.a.a ? R.string.preferredNetworkAvailable : R.string.preferredNetworkUnavailable);
            textView.setText(i > 0 ? string + " " + getString(R.string.downloadsQueueSizeMsg, new Object[]{Integer.valueOf(i), agv.a(j)}) : string + " " + getString(R.string.noDownloadsInQueue));
        }
    }

    public final void a(int i) {
        c();
    }

    public final void a(int i, int i2) {
        acx acx = this.a;
        acx.a a2 = acx.a(i);
        if (!(a2 == null || a2.b == null)) {
            acx.a((acx.c) a2.b.getTag(), a2.a);
        }
        d();
        c();
    }

    public final void a(int i, int i2, int i3) {
        acx acx = this.a;
        acx.a a2 = acx.a(i);
        if (a2 != null && a2.b != null) {
            acx.a((acx.c) a2.b.getTag(), i2, a2.a.a.e, i3, a2.a.e);
        }
    }

    public final void a(acv acv) {
        c();
    }

    public final void a_() {
        if (this.c != null) {
            this.c.a = this;
        }
        c();
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        final acv acv = (acv) this.a.getItem(((AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo()).position);
        if (acv == null) {
            return false;
        }
        if (this.c == null) {
            return false;
        }
        int itemId = menuItem.getItemId();
        if (itemId == R.id.pause) {
            this.c.c(acv);
            return true;
        } else if (itemId == R.id.start) {
            this.c.b(acv);
            return true;
        } else if (itemId == R.id.cancel) {
            String string = getString(17039360);
            afw.a((Context) this, string, getString(R.string.stopMsg, new Object[]{string}), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        ActiveDownloads.this.c.a(acv, false);
                    }
                }
            });
            return true;
        } else if (itemId == R.id.cancelAndIgnore) {
            afw.a((Context) this, getString(R.string.cancelAndIgnore), getString(R.string.cancelAndIgnorePromptMsg), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        ActiveDownloads.this.c.a(acv, false);
                        aei.a().h.a(acv.a.b, acv.a.c, 2);
                    }
                }
            });
            return true;
        } else if (itemId == R.id.retry) {
            DownloaderService.d(acv);
            return true;
        } else if (itemId == R.id.priority) {
            acv.a.f.a ^= NotificationCompat.FLAG_HIGH_PRIORITY;
            aer aer = aei.a().f;
            aer.a(acv.a);
            this.c.b.a();
            c();
            return true;
        } else if (itemId == R.id.open) {
            agm.a((Activity) this, acv.a.h, false);
            return true;
        } else if (itemId != R.id.clear) {
            return super.onContextItemSelected(menuItem);
        } else {
            this.c.e(acv);
            return true;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activedownloads);
        this.b = (ListView) findViewById(R.id.downloadQueue);
        this.c = DownloaderService.a();
        List b2 = this.c.b();
        if (b2 == null) {
            b2 = new ArrayList();
        }
        this.a = new acx(this, b2);
        this.b.setAdapter(this.a);
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                ActiveDownloads.a(ActiveDownloads.this, i);
            }
        });
        this.b.setEmptyView(findViewById(16908292));
        d();
        this.c.a = this;
        registerForContextMenu(this.b);
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        boolean z = true;
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        acv acv = (acv) this.a.getItem(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position);
        if (acv != null) {
            MenuInflater menuInflater = getMenuInflater();
            if (!acv.g()) {
                menuInflater.inflate(R.menu.downloaditemcontextmenu, contextMenu);
                contextMenu.setHeaderTitle(R.string.downloadOptions);
                boolean z2 = (acv.e == acv.a.d || acv.e == acv.a.e) ? false : true;
                contextMenu.findItem(R.id.pause).setVisible(z2);
                MenuItem findItem = contextMenu.findItem(R.id.start);
                if (z2) {
                    z = false;
                }
                findItem.setVisible(z);
                if (acv.a.d()) {
                    contextMenu.findItem(R.id.priority).setTitle(R.string.setNormalPriority);
                    return;
                }
                return;
            }
            menuInflater.inflate(R.menu.completeddownloadcontextmenu, contextMenu);
            contextMenu.setHeaderTitle(R.string.downloadOptions);
            contextMenu.findItem(R.id.open).setVisible(acv.a.h > 0);
            MenuItem findItem2 = contextMenu.findItem(R.id.retry);
            if (acv.e != acv.a.e) {
                z = false;
            }
            findItem2.setVisible(z);
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activedownloadsoptionsmenu, menu);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        if (this.c != null) {
            this.c.a = null;
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.downloadSettings) {
            startActivity(new Intent(this, CloudSyncSettings.class));
            return true;
        } else if (itemId == R.id.pauseAll) {
            String string = getString(R.string.pauseAll);
            afw.a((Context) this, string, getString(R.string.stopMsg, new Object[]{string}), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        DownloaderService downloaderService = ActiveDownloads.this.c;
                        downloaderService.b.b = true;
                        try {
                            for (acv c : downloaderService.b()) {
                                downloaderService.c(c);
                            }
                        } finally {
                            downloaderService.b.b = false;
                        }
                    }
                }
            });
            return true;
        } else if (itemId == R.id.cancelAll) {
            String string2 = getString(R.string.cancelAll);
            afw.a((Context) this, string2, getString(R.string.stopMsg, new Object[]{string2}), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        DownloaderService downloaderService = ActiveDownloads.this.c;
                        downloaderService.b.b = true;
                        try {
                            for (acv a2 : new ArrayList(downloaderService.b())) {
                                downloaderService.a(a2, false);
                            }
                        } finally {
                            downloaderService.b.b = false;
                        }
                    }
                }
            });
            return true;
        } else if (itemId == R.id.resumeAll) {
            this.c.c();
            return true;
        } else if (itemId == R.id.clearDownloaded) {
            this.c.d();
            return true;
        } else if (itemId == R.id.sortDownloads) {
            AnonymousClass4 r1 = new agw.a() {
                public final void a(String str) {
                    ActiveDownloads.this.c();
                }
            };
            CharSequence[] charSequenceArr = {"prefSortByService", "prefSortByDownloadStatus", "prefSortAlphabetically"};
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(R.string.sortDownloads);
            builder.setSingleChoiceItems(agw.a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("sort-downloads-by")), new DialogInterface.OnClickListener(charSequenceArr, r1) {
                final /* synthetic */ CharSequence[] a;
                final /* synthetic */ a b;

                public final void onClick(
/*
Method generation error in method: agw.2.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.2.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
                	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:278)
                	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:116)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:676)
                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:607)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:364)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:787)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:728)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:231)
                	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:123)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:107)
                	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:91)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:697)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:368)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:221)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
                	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:175)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:152)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:211)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:204)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:318)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
                	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
                	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
                	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
                	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
                	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
                	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
                	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
                
*/
            }).create().show();
            return true;
        } else if (itemId == R.id.retryFailed) {
            this.c.e();
            return true;
        } else if (itemId != R.id.removeAll) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            String string3 = getString(R.string.removeAll);
            afw.a((Context) this, string3, getString(R.string.stopMsg, new Object[]{string3}), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (z) {
                        DownloaderService downloaderService = ActiveDownloads.this.c;
                        downloaderService.b.b = true;
                        try {
                            for (acv acv : new ArrayList(downloaderService.b())) {
                                if (acv.g()) {
                                    downloaderService.e(acv);
                                } else {
                                    downloaderService.a(acv, true);
                                }
                            }
                        } finally {
                            downloaderService.b.b = false;
                        }
                    }
                }
            });
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        if (this.c != null) {
            this.c.a = null;
        }
        super.onPause();
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z = this.a.getCount() > 0;
        menu.findItem(R.id.pauseAll).setEnabled(z);
        menu.findItem(R.id.resumeAll).setEnabled(z);
        menu.findItem(R.id.cancelAll).setEnabled(z);
        menu.findItem(R.id.removeAll).setEnabled(z);
        menu.findItem(R.id.retryFailed).setEnabled(z);
        return true;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("restarted", true);
    }
}
