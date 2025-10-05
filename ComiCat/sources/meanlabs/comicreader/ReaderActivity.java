package meanlabs.comicreader;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import defpackage.acr;
import defpackage.afw;
import java.util.Locale;
import meanlabs.comicat.R;

public class ReaderActivity extends AppCompatActivity {
    private static long a = 8000;
    static boolean o = false;
    static boolean p = false;
    protected ActionBar n;

    public void a_() {
    }

    /* access modifiers changed from: protected */
    public void b() {
        p = false;
        if (aei.a().d.c("rescan-on-start")) {
            new acr(this, (acr.a) null, true).execute(new Void[]{null});
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.n = getSupportActionBar();
        if (this.n == null) {
            throw new IllegalStateException("Action Bar could not be created");
        }
        this.n.setDisplayUseLogoEnabled(false);
        this.n.setDisplayHomeAsUpEnabled(true);
        this.n.setHomeButtonEnabled(true);
    }

    public void onLowMemory() {
        p = true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                if (!isTaskRoot()) {
                    finish();
                }
                return true;
            default:
                return false;
        }
    }

    public void onPause() {
        ComicReaderApp.b();
        super.onPause();
    }

    public void onResume() {
        ahe ahe = new ahe(this, ComicReaderApp.a);
        if (ComicReaderApp.a) {
            Locale locale = Locale.getDefault();
            if (locale.equals(Locale.JAPAN) || locale.equals(Locale.JAPANESE)) {
                CharSequence[] charSequenceArr = {getText(R.string.left2Right), getText(R.string.right2Left)};
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                boolean c = aei.a().d.c("right-to-left");
                builder.setTitle(getString(R.string.enableManga) + '?');
                builder.setSingleChoiceItems(charSequenceArr, c ? 1 : 0, new DialogInterface.OnClickListener() {
                    public final void onClick(
/*
Method generation error in method: agw.22.onClick(android.content.DialogInterface, int):void, dex: classes.dex
                    jadx.core.utils.exceptions.JadxRuntimeException: Method args not loaded: agw.22.onClick(android.content.DialogInterface, int):void, class status: UNLOADED
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
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                    	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:142)
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
            }
            ComicReaderApp.a = false;
        }
        if (!ahe.c && ahe.b != ahe.a) {
            aei a2 = aei.a();
            if (!(a2.b.c() && a2.c.c())) {
                afw.a(ahe.d, ahe.d.getString(R.string.upgradeError), ahe.d.getString(R.string.upgradeFailMessage));
            } else if (ahe.b < 48) {
                afw.a(ahe.d, ahe.d.getString(R.string.newInVersion, new Object[]{agv.d()}), "\n- " + ahe.d.getString(R.string.newInVersion48).replace("\n", "\n- ") + "\n");
            }
        }
        if (!o && System.currentTimeMillis() - ComicReaderApp.c() > a) {
            aeu aeu = aei.a().d;
            if (aeu.c("enable-hidden-folders") && aeu.c("hide-on-relaunch")) {
                aeu.a("current-hidden-state", true);
            }
            if (aeu.c("password-protect")) {
                o = true;
                ace ace = new ace(this, new afw.a() {
                    public final void a(boolean z) {
                        ReaderActivity.o = false;
                        ReaderActivity.this.b();
                        ReaderActivity.this.a_();
                    }
                });
                ace.a = getString(R.string.unlockComicat);
                ace.b = R.string.incorrectPass;
                ace.c = "unlock-code";
                ace.d = false;
                ace.show();
            } else {
                b();
            }
        }
        if (!o) {
            a_();
        }
        super.onResume();
    }
}
