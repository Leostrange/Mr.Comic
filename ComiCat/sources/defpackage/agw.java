package defpackage;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.widget.AdapterView;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: agw  reason: default package */
/* compiled from: PreferenceUtils */
public final class agw {

    /* renamed from: agw$a */
    /* compiled from: PreferenceUtils */
    public interface a {
        void a(String str);
    }

    public static int a(String str, String str2) {
        try {
            return Integer.parseInt(str.substring(str2.length()));
        } catch (Exception e) {
            return -1;
        }
    }

    public static String a(CharSequence charSequence) {
        String str = (String) charSequence;
        Resources resources = ComicReaderApp.a().getResources();
        int identifier = !Character.isDigit(charSequence.charAt(0)) ? resources.getIdentifier(str, "string", ComicReaderApp.a().getPackageName()) : -1;
        return identifier > 0 ? resources.getString(identifier) : str;
    }

    public static void a(Context context, final a aVar) {
        final CharSequence[] charSequenceArr = {"prefSortByFilePath", "prefSortAlphabetically", "prefSortReverseAlphabetically", "prefSortByAddedFirst", "prefSortByAddedLast"};
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.sortCatalogBy);
        builder.setSingleChoiceItems(a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("catalog-sort-order")), new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                String str = (String) charSequenceArr[i];
                aei.a().d.a("catalog-sort-order", str);
                aVar.a(str);
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static void a(Context context, final String str, final a aVar) {
        final CharSequence[] charSequenceArr = {"prefAlwaysInclude", "prefConditionallyInclude", "prefDontInclude"};
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.inclSecondryFormats);
        builder.setSingleChoiceItems(a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b(str)), new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                String str = (String) charSequenceArr[i];
                aei.a().d.a(str, str);
                aVar.a(str);
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static void a(Context context, boolean z, final a aVar) {
        final String str = z ? "create-smb-sthumbnails" : "create-cloud-thumbnails";
        final CharSequence[] charSequenceArr = new CharSequence[(z ? 3 : 2)];
        charSequenceArr[0] = "prefDontCreateThumbs";
        if (z) {
            charSequenceArr[1] = "prefCreateThumbs";
        }
        charSequenceArr[charSequenceArr.length - 1] = "prefCreateThumbsInBackground";
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.createThumbnails);
        builder.setSingleChoiceItems(a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b(str)), new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                String str = (String) charSequenceArr[i];
                aei.a().d.a(str, str);
                aVar.a(str);
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static void a(AdapterView<?> adapterView) {
        acg acg = (acg) adapterView.getAdapter();
        if (acg != null) {
            acg.notifyDataSetInvalidated();
        }
    }

    public static void a(ArrayList<acf> arrayList, Resources resources, int i, int i2) {
        acf acf = new acf();
        acf.a = resources.getString(i);
        acf.b = resources.getString(i2);
        arrayList.add(acf);
    }

    public static void a(ArrayList<acf> arrayList, Resources resources, int i, int i2, String str, boolean z) {
        a(arrayList, resources.getString(i), i2 != 0 ? resources.getString(i2) : null, str, z, str.length() > 0);
    }

    public static void a(ArrayList<acf> arrayList, String str, String str2, String str3, boolean z, boolean z2) {
        acf acf = new acf();
        acf.a = str;
        acf.b = str2;
        acf.c = str3;
        acf.d = z;
        acf.e = z2;
        arrayList.add(acf);
    }

    public static void a(List<String> list) {
        String str = "";
        if (list != null && list.size() > 0) {
            str = aib.a((Iterable<?>) list, "#,#");
        }
        aei.a().d.a("catalog-folders", str);
    }

    public static boolean a() {
        aeu aeu = aei.a().d;
        return aeu.c("enable-hidden-folders") && aeu.c("current-hidden-state");
    }

    public static boolean a(aeq aeq) {
        aem b = ael.b(aeq);
        if (b != null) {
            return b.c();
        }
        return false;
    }

    public static CharSequence[] a(CharSequence[] charSequenceArr) {
        CharSequence[] charSequenceArr2 = new CharSequence[charSequenceArr.length];
        for (int i = 0; i < charSequenceArr.length; i++) {
            charSequenceArr2[i] = a(charSequenceArr[i]);
        }
        return charSequenceArr2;
    }

    public static List<String> b() {
        ArrayList arrayList = new ArrayList();
        String b = aei.a().d.b("catalog-folders");
        return (b == null || b.length() <= 0) ? arrayList : Arrays.asList(b.split("#,#"));
    }

    public static void b(Context context, final String str, final a aVar) {
        final CharSequence[] charSequenceArr = {"prefDontDownload", "prefAddToQueue", "prefAddAsPaused"};
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.downloadNewFiles);
        builder.setSingleChoiceItems(a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b(str)), new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                String str = (String) charSequenceArr[i];
                aei.a().d.a(str, str);
                aVar.a(str);
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static int c() {
        return ((int) aei.a().d.a("max-image-memory", 12)) * 1048576;
    }

    @SuppressLint({"NewApi"})
    public static String d() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        if (externalStorageDirectory == null) {
            return null;
        }
        String b = agp.b(externalStorageDirectory.getAbsolutePath(), "/meanlabs/comicat/");
        File file = new File(b);
        if (!file.exists()) {
            file.mkdirs();
        }
        return Build.VERSION.SDK_INT > 7 ? ((!file.exists() || !file.isDirectory()) && ComicReaderApp.a().getExternalFilesDir((String) null) == null) ? ComicReaderApp.a().getFilesDir().getAbsolutePath() : b : b;
    }

    public static boolean e() {
        return !"prefIndividualComics".equals(aei.a().d.b("shelf-mode"));
    }

    public static boolean f() {
        return "prefNestedFolders".equals(aei.a().d.b("shelf-mode"));
    }
}
