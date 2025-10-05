package meanlabs.comicreader;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.acn;
import defpackage.afw;
import defpackage.agw;
import defpackage.ahh;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import meanlabs.comicat.R;
import meanlabs.comicreader.cloud.DownloaderService;

public class CloudSyncSettings extends ReaderActivity implements ahh.a {
    private ahh a;
    /* access modifiers changed from: private */
    public acg b;

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(CloudSyncSettings cloudSyncSettings, byte b) {
            this();
        }

        public final void onItemClick(final AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    agw.b(CloudSyncSettings.this, "download-newly-added-files", new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
                case 1:
                    agw.a((Context) CloudSyncSettings.this, "cloud-include-secondry-formats", (agw.a) new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
                case 2:
                    CloudSyncSettings.a(CloudSyncSettings.this);
                    break;
                case 3:
                    CloudSyncSettings.b(CloudSyncSettings.this);
                    break;
                case 4:
                    agw.a((Context) CloudSyncSettings.this, false, (agw.a) new agw.a() {
                        public final void a(String str) {
                            if (!str.equals("prefDontCreateThumbs")) {
                                afw.a((Context) CloudSyncSettings.this, CloudSyncSettings.this.getString(R.string.createThumbnails), CloudSyncSettings.this.getString(R.string.createCloudThumbEnableWarning), (afw.a) new afw.a() {
                                    public final void a(boolean z) {
                                        if (!z) {
                                            aei.a().d.a("create-cloud-thumbnails", "prefDontCreateThumbs");
                                        }
                                        acg acg = (acg) adapterView.getAdapter();
                                        if (acg != null) {
                                            acg.notifyDataSetInvalidated();
                                            CloudSyncSettings.c();
                                        }
                                    }
                                });
                                return;
                            }
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                                CloudSyncSettings.c();
                            }
                        }
                    });
                    break;
                case 5:
                    aei.a().d.d("remove-local-copies");
                    break;
                case 6:
                    AlertDialog.Builder builder = new AlertDialog.Builder(CloudSyncSettings.this);
                    builder.setTitle(R.string.maxParallelDownloads);
                    builder.setSingleChoiceItems(new CharSequence[]{"1", "2", "3", "4"}, ((int) aei.a().d.a("max-parallel-downloads", 2)) - 1, new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            aei.a().d.a("max-parallel-downloads", String.valueOf(i + 1));
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                            CloudSyncSettings.d();
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    break;
                case 7:
                    aei.a().d.d("download-only-on-wifi");
                    CloudSyncSettings.d();
                    CloudSyncSettings.c();
                    break;
                case 8:
                    aei.a().d.d("dont-download-on-roaming");
                    CloudSyncSettings.d();
                    CloudSyncSettings.c();
                    break;
                case 9:
                    aei.a().d.d("auto-clear-completed");
                    break;
                case 10:
                    CloudSyncSettings cloudSyncSettings = CloudSyncSettings.this;
                    AnonymousClass5 r1 = new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    };
                    CharSequence[] charSequenceArr = {"prefNoNotification", "prefNotifyTextOnly", "prefNotifyTextAndSound"};
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(cloudSyncSettings);
                    builder2.setTitle(R.string.notificationType);
                    builder2.setSingleChoiceItems(agw.a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("notify")), new DialogInterface.OnClickListener(charSequenceArr, r1) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.21.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.21.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:298)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:64)
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
                        	at jadx.core.codegen.ClassGen.addInnerClass(ClassGen.java:249)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:238)
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
                    break;
                case 11:
                    aei.a().d.d("maintain_download_history");
                    break;
                case 12:
                    CloudSyncSettings cloudSyncSettings2 = CloudSyncSettings.this;
                    AnonymousClass6 r12 = new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    };
                    CharSequence[] charSequenceArr2 = {"makeLocalCopy", "prefCacheTemporarily"};
                    new AlertDialog.Builder(cloudSyncSettings2).setSingleChoiceItems(agw.a(charSequenceArr2), agv.a(charSequenceArr2, aei.a().d.b("on-the-fly-reading")), new DialogInterface.OnClickListener(charSequenceArr2, r12) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.9.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.9.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:298)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:64)
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
                        	at jadx.core.codegen.ClassGen.addInnerClass(ClassGen.java:249)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:238)
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
                    break;
                case 14:
                    agw.b(CloudSyncSettings.this, "smb-download-newly-added-files", new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
                case 15:
                    agw.a((Context) CloudSyncSettings.this, true, (agw.a) new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
            }
            acg acg = (acg) adapterView.getAdapter();
            if (acg != null) {
                acg.notifyDataSetInvalidated();
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(acf acf) {
        acf.b = aei.a().d.b("limit-cloud-scan-to");
        if (acf.b == null || acf.b.length() == 0) {
            acf.b = getString(R.string.limitScanToInstruction);
        }
    }

    static /* synthetic */ void a(CloudSyncSettings cloudSyncSettings) {
        cloudSyncSettings.a = ahh.a(cloudSyncSettings.getString(R.string.cloudSync), aei.a().d.b("cloud-sync-download-location"));
        cloudSyncSettings.a.show(cloudSyncSettings.getSupportFragmentManager(), (String) null);
    }

    static /* synthetic */ boolean a(String str, String str2) {
        File file = new File(str);
        long a2 = ahc.a(new File(str2));
        boolean z = a2 == ahc.a(file);
        return !z ? a2 > ahk.c(file) : z;
    }

    static /* synthetic */ void b(CloudSyncSettings cloudSyncSettings) {
        String b2 = aei.a().d.b("limit-cloud-scan-to");
        if (b2 == null || b2.length() == 0) {
            b2 = cloudSyncSettings.getString(R.string.comics);
        }
        afw.a(cloudSyncSettings, R.string.limitScanTo, R.string.limitCloudScanToInstruction, 17039370, b2, true, new afw.b() {
            public final void a(boolean z, String str) {
                if (z) {
                    aei.a().d.a("limit-cloud-scan-to", str);
                    CloudSyncSettings.this.a(CloudSyncSettings.this.b.a.get(3));
                    CloudSyncSettings.this.b.notifyDataSetInvalidated();
                }
            }
        });
    }

    static /* synthetic */ void c() {
        ThumbnailService a2 = ThumbnailService.a();
        if (a2 != null) {
            a2.a(true);
        }
    }

    /* access modifiers changed from: private */
    public static boolean c(String str) {
        File file = new File(str);
        boolean canWrite = file.canWrite();
        if (!canWrite) {
            return canWrite;
        }
        try {
            File createTempFile = File.createTempFile("comicat", (String) null, file);
            boolean z = createTempFile != null && createTempFile.exists();
            if (!z) {
                return z;
            }
            agz.a(createTempFile);
            return z;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    static /* synthetic */ void d() {
        DownloaderService a2 = DownloaderService.a();
        if (a2 != null) {
            a2.b.a();
        }
    }

    public final void a(final String str) {
        final String b2 = aei.a().d.b("cloud-sync-download-location");
        if (str != null && str.length() > 0 && !agp.a(b2, str)) {
            afw.a((Context) this, getString(R.string.comicDownloadFolder), getString(R.string.changeDownloadFolderPrompt), (afw.a) new afw.a() {
                public final void a(boolean z) {
                    if (!z) {
                        return;
                    }
                    if (!CloudSyncSettings.c(str)) {
                        ahf.a((Context) CloudSyncSettings.this, (int) R.string.cannotWriteToLocation);
                    } else if (!CloudSyncSettings.a(b2, str)) {
                        ahf.a((Context) CloudSyncSettings.this, (int) R.string.notEnoughSpaceAtNewLocation);
                    } else {
                        new acn(CloudSyncSettings.this, b2, str, new acn.a(str) {
                            public final void a(boolean z) {
                                if (z) {
                                    aei.a().d.a("cloud-sync-download-location", r6);
                                    ael.a();
                                    agm.a(true);
                                    ((acg) ((ListView) CloudSyncSettings.this.findViewById(R.id.categories)).getAdapter()).notifyDataSetChanged();
                                    ahf.a((Context) CloudSyncSettings.this, CloudSyncSettings.this.getString(R.string.downloadLocationChanged, new Object[]{r6}));
                                    return;
                                }
                                ahf.a((Context) CloudSyncSettings.this, CloudSyncSettings.this.getString(R.string.errorChangingDownloadLocation, new Object[]{r6}));
                            }
                        }).execute(new Void[]{null});
                    }
                }
            });
        }
        this.a.dismiss();
    }

    public final void g() {
        this.a.dismiss();
    }

    @SuppressLint({"NewApi"})
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 42 && i2 == -1) {
            Uri data = intent.getData();
            new StringBuilder("tree uri is: ").append(data.toString());
            new StringBuilder("Path is: ").append(data.getPath());
            File file = new File(data.getPath());
            new StringBuilder("File Path is: ").append(file.getAbsolutePath());
            StringBuilder sb = new StringBuilder("Disk File Path is: ");
            String str = null;
            if (data.getScheme().equals("content") && "com.android.externalstorage.documents".equals(data.getAuthority())) {
                String[] split = data.getPath().split(":");
                if (split.length == 2) {
                    str = Environment.getExternalStorageDirectory() + "/" + split[1];
                }
            }
            sb.append(str);
            new StringBuilder("Recreated tree uri is: ").append(Uri.fromFile(file).getPath());
            getContentResolver().takePersistableUriPermission(data, 3);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.downloadNewFiles, 0, "download-newly-added-files", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.inclSecondryFormats, 0, "cloud-include-secondry-formats", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.comicDownloadFolder, 0, "cloud-sync-download-location", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.limitScanTo, (int) R.string.limitScanToInstruction, "limit-cloud-scan-to", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.createThumbnails, 0, "create-cloud-thumbnails", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.removeLocalCopiesOnServiceDelete, 0, "remove-local-copies", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.maxParallelDownloads, 0, "max-parallel-downloads", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.useOnlyWifi, (int) R.string.useOnlyWifiMsg, "download-only-on-wifi", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.dontDownloadOnRoaming, (int) R.string.dontDownloadOnRoamingMsg, "dont-download-on-roaming", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.clearCompletedDownload, (int) R.string.clearCompletedDownloadMsg, "auto-clear-completed", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.notificationType, 0, "notify", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.maintainDownloadHistory, (int) R.string.maintainDownloadHistoryMsg, "maintain_download_history", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.whenReadingFilesFromServer, 0, "on-the-fly-reading", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.smb, 0, "", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.downloadNewFiles, 0, "smb-download-newly-added-files", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.createSMBThumbnails, 0, "create-smb-sthumbnails", false);
        a((acf) arrayList.get(3));
        acg acg = new acg(this, arrayList);
        this.b = acg;
        listView.setAdapter(acg);
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
