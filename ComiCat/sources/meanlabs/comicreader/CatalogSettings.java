package meanlabs.comicreader;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseBooleanArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import defpackage.acr;
import defpackage.agw;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicFolders;

public class CatalogSettings extends ReaderActivity implements ComicFolders.a {
    private acg a;

    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(CatalogSettings catalogSettings, byte b) {
            this();
        }

        public final void onItemClick(final AdapterView<?> adapterView, View view, int i, long j) {
            switch (i) {
                case 0:
                    CatalogSettings.a(CatalogSettings.this);
                    break;
                case 1:
                    agw.a((Context) CatalogSettings.this, "include-secondry-formats", (agw.a) new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
                case 2:
                    aei.a().d.d("rescan-on-start");
                    break;
                case 3:
                    aei.a().d.d("fix-file-extn");
                    break;
                case 4:
                    CatalogSettings.b(CatalogSettings.this);
                    break;
                case 5:
                    CatalogSettings catalogSettings = CatalogSettings.this;
                    AnonymousClass2 r1 = new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    };
                    CharSequence[] charSequenceArr = {"prefIndividualComics", "prefFlatFolders", "prefNestedFolders"};
                    AlertDialog.Builder builder = new AlertDialog.Builder(catalogSettings);
                    builder.setTitle(R.string.shelfMode);
                    builder.setSingleChoiceItems(agw.a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("shelf-mode")), new DialogInterface.OnClickListener(charSequenceArr, r1) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.8.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.8.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                case 6:
                    agw.a((Context) CatalogSettings.this, (agw.a) new agw.a() {
                        public final void a(String str) {
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    });
                    break;
                case 7:
                    CatalogSettings catalogSettings2 = CatalogSettings.this;
                    AnonymousClass4 r12 = new agw.a() {
                        public final void a(String str) {
                            agm.a();
                            acg acg = (acg) adapterView.getAdapter();
                            if (acg != null) {
                                acg.notifyDataSetInvalidated();
                            }
                        }
                    };
                    CharSequence[] charSequenceArr2 = {"prefBlack", "prefWoodenShelf", "prefSteelMesh", "prefTitanium", "prefCoolBlue", "prefBlackWood"};
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(catalogSettings2);
                    builder2.setTitle(R.string.catalogThemeForThumbView);
                    builder2.setSingleChoiceItems(agw.a(charSequenceArr2), agv.a(charSequenceArr2, aei.a().d.b("gridview-theme")), new DialogInterface.OnClickListener(charSequenceArr2, r12) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        public final void onClick(
/*
Method generation error in method: agw.17.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                        jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.17.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                case 8:
                    aei.a().d.d("use-right-cover-as-thumbnail");
                    break;
                case 9:
                    aei.a().d.d("use-large-thumbnails");
                    agm.a();
                    break;
                case 10:
                    CatalogSettings.c(CatalogSettings.this);
                    break;
                case 11:
                    aei.a().d.d("clear-bookmark-on-read");
                    break;
            }
            acg acg = (acg) adapterView.getAdapter();
            if (acg != null) {
                acg.notifyDataSetInvalidated();
            }
        }
    }

    private void a(acf acf) {
        List<String> b = agw.b();
        if (b == null || b.size() <= 0) {
            acf.b = getString(R.string.limitScanToInstruction);
        } else if (b.size() <= 2) {
            acf.b = aib.a((Iterable<?>) b, ", ");
        } else {
            ArrayList arrayList = new ArrayList(b.size());
            for (String file : b) {
                arrayList.add(new File(file).getName());
            }
            acf.b = aib.a((Iterable<?>) arrayList, ", ");
        }
    }

    static /* synthetic */ void a(CatalogSettings catalogSettings) {
        Intent intent = new Intent(catalogSettings, ComicFolders.class);
        intent.putExtra("warn", true);
        ComicFolders.a = catalogSettings;
        catalogSettings.startActivity(intent);
    }

    static /* synthetic */ void b(CatalogSettings catalogSettings) {
        aes aes = aei.a().e;
        final List<String> b = aes.b();
        CharSequence[] charSequenceArr = new CharSequence[b.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= b.size()) {
                break;
            }
            charSequenceArr[i2] = b.get(i2);
            i = i2 + 1;
        }
        if (b.size() != 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(catalogSettings);
            builder.setTitle(R.string.manageExclusions);
            builder.setMultiChoiceItems(charSequenceArr, (boolean[]) null, new DialogInterface.OnMultiChoiceClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                }
            });
            builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.setPositiveButton(R.string.remove, new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    String str;
                    Integer num;
                    SparseBooleanArray checkedItemPositions = ((AlertDialog) dialogInterface).getListView().getCheckedItemPositions();
                    if (checkedItemPositions != null && checkedItemPositions.size() > 0) {
                        aes aes = aei.a().e;
                        for (int i2 = 0; i2 < b.size(); i2++) {
                            if (checkedItemPositions.get(i2) && (num = aes.b.get(str)) != null) {
                                if (aei.a().a.delete("exclusions", new StringBuilder("exclusionid=").append(num).toString(), (String[]) null) != 0) {
                                    aes.b.remove((str = (String) b.get(i2)));
                                }
                            }
                        }
                        ahf.a((Context) CatalogSettings.this, (int) R.string.resyncToUpdateCatalog);
                    }
                    dialogInterface.dismiss();
                }
            });
            builder.create().show();
            return;
        }
        ahf.a((Context) catalogSettings, (int) R.string.noExclusions);
    }

    static /* synthetic */ void c(CatalogSettings catalogSettings) {
        final aeu aeu = aei.a().d;
        CharSequence[] charSequenceArr = {catalogSettings.getString(R.string.readingList), catalogSettings.getString(R.string.privateComics), catalogSettings.getString(R.string.unread), catalogSettings.getString(R.string.incompleteBookmarked), catalogSettings.getString(R.string.recentlyAdded)};
        boolean[] zArr = {aeu.a("showInbuiltFolder", 8), aeu.a("showInbuiltFolder", 2), aeu.a("showInbuiltFolder", 1), aeu.a("showInbuiltFolder", 16), aeu.a("showInbuiltFolder", 4)};
        AlertDialog.Builder builder = new AlertDialog.Builder(catalogSettings);
        builder.setMultiChoiceItems(charSequenceArr, zArr, new DialogInterface.OnMultiChoiceClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
                switch (i) {
                    case 0:
                        aeu.a("showInbuiltFolder", 8, z);
                        break;
                    case 1:
                        aeu.a("showInbuiltFolder", 2, z);
                        break;
                    case 2:
                        aeu.a("showInbuiltFolder", 1, z);
                        break;
                    case 3:
                        aeu.a("showInbuiltFolder", 16, z);
                        break;
                    case 4:
                        aeu.a("showInbuiltFolder", 4, z);
                        break;
                }
                agm.a(false);
            }
        });
        builder.create().show();
    }

    public final void c() {
        a(this.a.a.get(0));
        this.a.notifyDataSetChanged();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.catalogsettings);
        ListView listView = (ListView) findViewById(R.id.categories);
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.limitScanTo, (int) R.string.limitScanToInstruction, "catalog-folders", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.inclSecondryFormats, 0, "include-secondry-formats", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.rescanOnStart, (int) R.string.rescanOnStartMsg, "rescan-on-start", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.fixExtn, (int) R.string.fixExtnMsg, "fix-file-extn", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.exclusions, (int) R.string.manageExclusions, "dummy", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.shelfMode, 0, "shelf-mode", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.sortBy, 0, "catalog-sort-order", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.theme, 0, "gridview-theme", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.rightPageAsCover, (int) R.string.rightPageAsCoverMsg, "use-right-cover-as-thumbnail", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.largeThumbnails, 0, "use-large-thumbnails", true);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.showSpecialFolders, (int) R.string.showSpecialFoldersInstruction, "showInbuiltFolder", false);
        agw.a((ArrayList<acf>) arrayList, getResources(), (int) R.string.clrBookmarks, (int) R.string.clrBookmarksMsg, "clear-bookmark-on-read", true);
        a((acf) arrayList.get(0));
        acg acg = new acg(this, arrayList);
        this.a = acg;
        listView.setAdapter(acg);
        listView.setOnItemClickListener(new a(this, (byte) 0));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.catalogsettingsoptionsmenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.resyncCatalog) {
            return super.onOptionsItemSelected(menuItem);
        }
        agm.a((Activity) this, (acr.a) null);
        return true;
    }
}
