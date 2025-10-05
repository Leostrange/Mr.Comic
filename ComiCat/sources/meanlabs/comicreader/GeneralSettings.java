package meanlabs.comicreader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.afw;
import defpackage.agw;
import java.util.ArrayList;
import meanlabs.comicat.R;

public final class GeneralSettings extends ReaderActivity {

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(GeneralSettings generalSettings, byte b) {
            this();
        }

        public final void onItemClick(final AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    GeneralSettings generalSettings = GeneralSettings.this;
                    AnonymousClass1 r1 = new agw.a() {
                        public final void a(String str) {
                            agw.a((AdapterView<?>) adapterView);
                        }
                    };
                    CharSequence[] charSequenceArr = {"prefCatalog", "prefLastIncompleteComic"};
                    AlertDialog.Builder builder = new AlertDialog.Builder(generalSettings);
                    builder.setTitle(R.string.startAppIn);
                    builder.setSingleChoiceItems(agw.a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("start-in")), new DialogInterface.OnClickListener(charSequenceArr, r1) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.19.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.19.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                    return;
                case 1:
                    GeneralSettings generalSettings2 = GeneralSettings.this;
                    AnonymousClass2 r12 = new agw.a() {
                        public final void a(String str) {
                            agw.a((AdapterView<?>) adapterView);
                        }
                    };
                    CharSequence[] charSequenceArr2 = {"prefLastReadPage", "prefBookmark", "prefStart"};
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(generalSettings2);
                    builder2.setTitle(R.string.openFrom);
                    builder2.setSingleChoiceItems(agw.a(charSequenceArr2), agv.a(charSequenceArr2, aei.a().d.b("open-position")), new DialogInterface.OnClickListener(charSequenceArr2, r12) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.20.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.20.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                    return;
                case 2:
                    if (!aei.a().d.c("password-protect")) {
                        afw.a((Context) GeneralSettings.this, (int) R.string.passwordWarning, "unlock-code", (afw.a) new afw.a() {
                            public final void a(boolean z) {
                                if (z) {
                                    aei.a().d.a("password-protect", true);
                                    agw.a((AdapterView<?>) adapterView);
                                }
                            }
                        });
                        return;
                    }
                    aei.a().d.a("password-protect", false);
                    agw.a(adapterView);
                    return;
                case 3:
                    aei.a().d.d("show-reading-history");
                    agw.a(adapterView);
                    return;
                case 5:
                    long b = (agv.b() / 10) + 3;
                    if (b > 24) {
                        b = 24;
                    } else if (b < 6) {
                        b = 6;
                    }
                    int i2 = (int) (b - 3);
                    CharSequence[] charSequenceArr3 = new CharSequence[(i2 + 1)];
                    for (int i3 = 0; i3 <= i2; i3++) {
                        charSequenceArr3[i3] = String.valueOf(i3 + 3) + " MB";
                    }
                    AlertDialog.Builder builder3 = new AlertDialog.Builder(GeneralSettings.this);
                    builder3.setTitle(GeneralSettings.this.getResources().getString(R.string.maxImgSize));
                    int a2 = (int) aei.a().d.a("max-image-memory", 6);
                    if (a2 < 3) {
                        a2 = 3;
                    }
                    builder3.setSingleChoiceItems(charSequenceArr3, a2 - 3, new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            aei.a().d.a("max-image-memory", String.valueOf(i + 3));
                            agw.a((AdapterView<?>) adapterView);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 6:
                    aei.a().d.d("use-fast-page-split");
                    agw.a(adapterView);
                    return;
                case 7:
                    aei.a().d.d("aggressive-caching");
                    agw.a(adapterView);
                    return;
                default:
                    return;
            }
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.settingshome);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.startAppIn, 0, "start-in", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.openFrom, 0, "open-position", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.passProtect, (int) R.string.passProtectMsg, "password-protect", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.showReadingHistory, (int) R.string.showReadingHistoryMsg, "show-reading-history", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.performanceSettings, 0, "", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.maxImgSize, (int) R.string.maxImgSizeMsg, "max-image-memory", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.useFastSplit, (int) R.string.useFastSplitMsg, "use-fast-page-split", true);
        if (agv.c()) {
            agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.aggressiveCaching, (int) R.string.aggressiveCachingMsg, "aggressive-caching", true);
        }
        listView.setAdapter(new acg(this, arrayList));
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }
}
