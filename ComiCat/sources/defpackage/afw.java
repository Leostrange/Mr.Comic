package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.method.DigitsKeyListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import defpackage.ack;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.DeleteMultipleFiles;

/* renamed from: afw  reason: default package */
/* compiled from: MiscDialogs */
public final class afw {

    /* renamed from: afw$a */
    /* compiled from: MiscDialogs */
    public interface a {
        void a(boolean z);
    }

    /* renamed from: afw$b */
    /* compiled from: MiscDialogs */
    public interface b {
        void a(boolean z, String str);
    }

    public static void a(final Activity activity) {
        final ArrayList<aeq> c = ael.c();
        ael.a((List<aeq>) c, "prefSortByFilePathEx");
        if (c.size() == 0) {
            ahf.a((Context) activity, (int) R.string.noReadComics);
            return;
        }
        long a2 = agv.a((List<aeq>) c);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage(activity.getString(R.string.deleteComicsPrompt, new Object[]{Integer.valueOf(c.size()), Build.MODEL, agv.a(a2)})).setCancelable(true).setTitle(R.string.deleteReadComics).setPositiveButton(17039379, new DialogInterface.OnClickListener() {
            public final void onClick(final DialogInterface dialogInterface, int i) {
                new ack(activity, c, new ack.a() {
                    public final void a(int i) {
                        String string = activity.getString(R.string.readComicsDeleted, new Object[]{Integer.valueOf(i)});
                        if (i < c.size()) {
                            string = activity.getString(R.string.errorDeletingComic) + " " + string;
                        }
                        ahf.a((Context) activity, string);
                        dialogInterface.dismiss();
                    }
                }).execute(new Void[]{null});
            }
        }).setNeutralButton(R.string.letMeChoose, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                DeleteMultipleFiles.a(activity, c, R.string.deleteReadComics);
            }
        }).setNegativeButton(17039369, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        });
        builder.create().show();
    }

    public static void a(Context context) {
        int i;
        long j;
        int i2;
        int i3;
        int i4;
        int i5;
        List<aeq> f = aei.a().b.f();
        if (f == null || f.size() <= 0) {
            i = 0;
            j = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            int size = f.size();
            i = 0;
            j = 0;
            i2 = 0;
            i3 = 0;
            for (aeq next : f) {
                File file = new File(next.d);
                if (file.exists()) {
                    j += file.length();
                }
                i += next.b;
                if (next.h.c(1)) {
                    i2++;
                    i5 = next.b;
                } else {
                    i5 = next.j != -1 ? next.j : next.i != -1 ? next.i : 0;
                }
                i2 = i2;
                i3 = i5 + i3;
            }
            i4 = size;
        }
        String str = "1.0";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.getMessage();
        }
        String string = context.getString(R.string.statsMessage, new Object[]{Integer.valueOf(i4), agv.a(j), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        if (i > 0) {
            string = string + context.getString(R.string.statsPercentReadMessage, new Object[]{agv.a((((double) i3) * 100.0d) / ((double) i))});
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(string).setCancelable(true).setTitle(context.getString(R.string.comicatVersion, new Object[]{str}));
        builder.create().show();
    }

    public static void a(Context context, int i, int i2, int i3, String str, final boolean z, final b bVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        final TextView textView = (TextView) LayoutInflater.from(context).inflate(R.layout.text_input, (ViewGroup) null);
        builder.setTitle(i).setView(textView).setMessage(i2).setCancelable(true).setPositiveButton(i3, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                String charSequence = textView.getText().toString();
                if (charSequence.length() > 0 || z) {
                    bVar.a(true, charSequence);
                    dialogInterface.dismiss();
                }
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                bVar.a(false, (String) null);
                dialogInterface.cancel();
            }
        });
        final AlertDialog create = builder.create();
        textView.setText(str);
        textView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                create.getWindow().setSoftInputMode(5);
            }
        });
        create.show();
    }

    public static void a(Context context, int i, final String str, final a aVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        final TextView textView = (TextView) LayoutInflater.from(context).inflate(R.layout.text_input, (ViewGroup) null);
        textView.setInputType(146);
        textView.setKeyListener(new DigitsKeyListener());
        builder.setTitle(R.string.pickCode).setView(textView).setMessage(i).setCancelable(false).setPositiveButton(17039370, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                aei.a().d.a(str, textView.getText().toString());
                aVar.a(true);
                dialogInterface.dismiss();
            }
        }).setNegativeButton(17039360, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                aVar.a(false);
                dialogInterface.cancel();
            }
        });
        final AlertDialog create = builder.create();
        textView.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                create.getWindow().setSoftInputMode(5);
            }
        });
        create.show();
    }

    public static void a(Context context, a aVar) {
        ace ace = new ace(context, aVar);
        ace.a = context.getString(R.string.enterCode);
        ace.b = R.string.incorrectPass;
        ace.c = "unhide-code";
        ace.d = true;
        ace.show();
    }

    public static void a(Context context, String str, String str2) {
        new AlertDialog.Builder(context).setMessage(str2).setTitle(str).setCancelable(true).create().show();
    }

    public static void a(Context context, String str, String str2, int i, int i2, final a aVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str).setMessage(str2).setCancelable(false).setPositiveButton(i, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                aVar.a(true);
            }
        }).setNegativeButton(i2, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
                aVar.a(false);
            }
        });
        AlertDialog create = builder.create();
        agd.a(create);
        create.show();
    }

    public static void a(Context context, String str, String str2, a aVar) {
        a(context, str, str2, 17039370, 17039360, aVar);
    }
}
