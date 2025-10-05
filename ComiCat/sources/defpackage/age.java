package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SeekBar;
import defpackage.afw;
import defpackage.agw;
import java.util.ArrayList;
import meanlabs.comicat.R;

/* renamed from: age  reason: default package */
/* compiled from: ViewerSettingsHandler */
public final class age {
    Activity a;
    public ListView b;
    b c;

    /* renamed from: age$a */
    /* compiled from: ViewerSettingsHandler */
    class a implements AdapterView.OnItemClickListener {
        private a() {
        }

        /* synthetic */ a(age age, byte b) {
            this();
        }

        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            boolean z = true;
            switch (i) {
                case 0:
                    Activity activity = age.this.a;
                    AnonymousClass1 r1 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr = {"prefSensor", "prefPortrait", "prefLandscape"};
                    AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                    builder.setTitle(R.string.viewerOrientation);
                    builder.setSingleChoiceItems(agw.a(charSequenceArr), agv.a(charSequenceArr, aei.a().d.b("orientation")), new DialogInterface.OnClickListener(charSequenceArr, r1) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("orientation", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 1:
                    Activity activity2 = age.this.a;
                    AnonymousClass3 r12 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr2 = {"prefFitVisible", "prefFillVisible", "prefFitWidth", "prefFitHeight", "prefOriginalSize"};
                    AlertDialog.Builder builder2 = new AlertDialog.Builder(activity2);
                    builder2.setTitle(R.string.pickViewMode);
                    builder2.setSingleChoiceItems(agw.a(charSequenceArr2), agv.a(charSequenceArr2, aei.a().d.b("view-mode")), new DialogInterface.OnClickListener(charSequenceArr2, r12) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("view-mode", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 2:
                    Activity activity3 = age.this.a;
                    AnonymousClass4 r13 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr3 = {"prefNoTransition", "prefTransitionCurl", "prefTransitionShift", "prefTransitionSlide"};
                    AlertDialog.Builder builder3 = new AlertDialog.Builder(activity3);
                    builder3.setTitle(R.string.pageTransitions);
                    builder3.setSingleChoiceItems(agw.a(charSequenceArr3), agv.a(charSequenceArr3, aei.a().d.b("transition-mode")), new DialogInterface.OnClickListener(charSequenceArr3, r13) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("transition-mode", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 3:
                    CharSequence[] charSequenceArr4 = {"prefNormal", "prefFast"};
                    new AlertDialog.Builder(age.this.a).setSingleChoiceItems(agw.a(charSequenceArr4), agv.a(charSequenceArr4, aei.a().d.b("animation-speed")), new DialogInterface.OnClickListener(charSequenceArr4, new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    }) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("animation-speed", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 4:
                    aei.a().d.d("fit-width-on-rotate");
                    age.this.a();
                    return;
                case 5:
                    aei.a().d.d("crop-margins");
                    age.this.a();
                    return;
                case 6:
                    aei.a().d.d("image-enhancer");
                    age.this.a();
                    return;
                case 7:
                    Activity activity4 = age.this.a;
                    AnonymousClass6 r14 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr5 = {"prefSplit", "prefSplitInPortrait", "prefDoNothing"};
                    AlertDialog.Builder builder4 = new AlertDialog.Builder(activity4);
                    builder4.setTitle(R.string.doublePageScans);
                    builder4.setSingleChoiceItems(agw.a(charSequenceArr5), agv.a(charSequenceArr5, aei.a().d.b("two-page-scans")), new DialogInterface.OnClickListener(charSequenceArr5, r14) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("two-page-scans", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 8:
                    aei.a().d.d("show-2-pages-in-landscape");
                    age.this.a();
                    return;
                case 9:
                    aei.a().d.d("always-hide-title-bar");
                    age.this.a();
                    return;
                case 10:
                    aei.a().d.d("show-page-numbering");
                    age.this.a();
                    return;
                case 11:
                    aei.a().d.d("right-to-left");
                    age.this.a();
                    return;
                case 12:
                    new afv(age.this.a).a(new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            age.this.a();
                        }
                    });
                    return;
                case 13:
                    Activity activity5 = age.this.a;
                    AnonymousClass8 r15 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr6 = {"prefDontLimit", "prefBottom25", "prefTop25"};
                    AlertDialog.Builder builder5 = new AlertDialog.Builder(activity5);
                    builder5.setTitle(R.string.limitTouchZone);
                    builder5.setSingleChoiceItems(agw.a(charSequenceArr6), agv.a(charSequenceArr6, aei.a().d.b("limit-touchzone")), new DialogInterface.OnClickListener(charSequenceArr6, r15) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("limit-touchzone", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                case 14:
                    new afs(age.this.a).a(new DialogInterface.OnClickListener() {
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            age age = age.this;
                            age.a.setResult(-1);
                            if (age.c != null) {
                                age.c.i();
                            }
                        }
                    });
                    return;
                case 15:
                    Activity activity6 = age.this.a;
                    AnonymousClass10 r6 = new afw.a() {
                        public final void a(boolean z) {
                            if (z) {
                                age.this.a();
                            }
                        }
                    };
                    afl afl = new afl(activity6);
                    afl.b();
                    LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(activity6).inflate(R.layout.brightnesslevel, (ViewGroup) null);
                    SeekBar seekBar = (SeekBar) linearLayout.findViewById(R.id.brightnessLevel);
                    CheckBox checkBox = (CheckBox) linearLayout.findViewById(R.id.manageBrightness);
                    AlertDialog.Builder builder6 = new AlertDialog.Builder(activity6);
                    builder6.setTitle(R.string.pickBrightnessLevel).setView(linearLayout).setCancelable(true);
                    seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(activity6) {
                        final /* synthetic */ Activity a;

                        {
                            this.a = r1;
                        }

                        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                            if (i == 0) {
                                i = 1;
                            }
                            afl.a(this.a, i);
                        }

                        public final void onStartTrackingTouch(SeekBar seekBar) {
                        }

                        public final void onStopTrackingTouch(SeekBar seekBar) {
                        }
                    });
                    checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(seekBar) {
                        final /* synthetic */ SeekBar a;

                        {
                            this.a = r1;
                        }

                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            this.a.setEnabled(z);
                        }
                    });
                    AlertDialog create = builder6.create();
                    create.setOnDismissListener(new DialogInterface.OnDismissListener(afl, seekBar, checkBox, r6) {
                        final /* synthetic */ afl a;
                        final /* synthetic */ SeekBar b;
                        final /* synthetic */ CheckBox c;
                        final /* synthetic */ afw.a d;

                        {
                            this.a = r1;
                            this.b = r2;
                            this.c = r3;
                            this.d = r4;
                        }

                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.a.c();
                            int progress = this.b.getProgress();
                            if (progress == 0) {
                                progress = 1;
                            }
                            aeu aeu = aei.a().d;
                            if (!this.c.isChecked()) {
                                progress = 0;
                            }
                            aeu.a("brightness-level", String.valueOf(progress));
                            if (this.d != null) {
                                this.d.a(true);
                            }
                        }
                    });
                    int parseInt = Integer.parseInt(aei.a().d.b("brightness-level"));
                    checkBox.setChecked(parseInt > 0);
                    if (parseInt <= 0) {
                        z = false;
                    }
                    seekBar.setEnabled(z);
                    seekBar.setProgress(parseInt);
                    create.show();
                    return;
                case 16:
                    Activity activity7 = age.this.a;
                    AnonymousClass2 r16 = new agw.a() {
                        public final void a(String str) {
                            age.this.a();
                        }
                    };
                    CharSequence[] charSequenceArr7 = {"prefLow", "prefNormal", "prefHigh"};
                    AlertDialog.Builder builder7 = new AlertDialog.Builder(activity7);
                    builder7.setTitle(R.string.swipeSenstivity);
                    builder7.setSingleChoiceItems(agw.a(charSequenceArr7), agv.a(charSequenceArr7, aei.a().d.b("swipe-senstivity")), new DialogInterface.OnClickListener(charSequenceArr7, r16) {
                        final /* synthetic */ CharSequence[] a;
                        final /* synthetic */ a b;

                        {
                            this.a = r1;
                            this.b = r2;
                        }

                        public final void onClick(DialogInterface dialogInterface, int i) {
                            String str = (String) this.a[i];
                            aei.a().d.a("swipe-senstivity", str);
                            this.b.a(str);
                            dialogInterface.dismiss();
                        }
                    }).create().show();
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: age$b */
    /* compiled from: ViewerSettingsHandler */
    public interface b {
        void g();

        void i();
    }

    public age(Activity activity, ListView listView, b bVar) {
        this.b = listView;
        this.a = activity;
        this.c = bVar;
        Resources resources = this.a.getResources();
        ArrayList arrayList = new ArrayList();
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.orientation, 0, "orientation", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.viewMode, 0, "view-mode", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.pageTransitions, (int) R.string.pageTransitionsMsg, "transition-mode", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.transitionAnimationSpeed, 0, "animation-speed", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.fitWidth, (int) R.string.fitWidthMsg, "fit-width-on-rotate", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.cropMargin, (int) R.string.cropMarginMsg, "crop-margins", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.imageEnhancer, (int) R.string.imageEnhancerMsg, "image-enhancer", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.doublePageScans, (int) R.string.doublePageScansMsg, "two-page-scans", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.show2PageInLandscape, 0, "show-2-pages-in-landscape", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.alwaysHideTitle, (int) R.string.hideTitleMsg, "always-hide-title-bar", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.showPageNumbering, 0, "show-page-numbering", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.enableManga, 0, "right-to-left", true);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.mangaOptions, (int) R.string.mangaOptionsMsg, "dummy", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.limitGesture, 0, "limit-touchzone", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.touchOptions, (int) R.string.touchOptionsMsg, "dummy", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.brightnessLevel, (int) R.string.brightnessLevelMsg, "no-swipe-on-zoom", false);
        agw.a((ArrayList<acf>) arrayList, resources, (int) R.string.swipeSenstivity, 0, "swipe-senstivity", false);
        this.b.setAdapter(new acg(this.a, arrayList));
        this.b.setOnItemClickListener(new a(this, (byte) 0));
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        agw.a((AdapterView<?>) this.b);
        this.a.setResult(-1);
        if (this.c != null) {
            this.c.g();
        }
    }
}
