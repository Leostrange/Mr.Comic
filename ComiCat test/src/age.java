// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SeekBar;
import java.util.ArrayList;

public final class age
{
    final class a
        implements android.widget.AdapterView.OnItemClickListener
    {

        final age a;

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            boolean flag1 = true;
            switch (i)
            {
            default:
                return;

            case 0: // '\0'
                Object obj = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[3];
                view[0] = "prefSensor";
                view[1] = "prefPortrait";
                view[2] = "prefLandscape";
                obj = new android.app.AlertDialog.Builder(((android.content.Context) (obj)));
                ((android.app.AlertDialog.Builder) (obj)).setTitle(0x7f060260);
                String s = aei.a().d.b("orientation");
                ((android.app.AlertDialog.Builder) (obj)).setSingleChoiceItems(agw.a(view), agv.a(view, s), new agw._cls1(view, adapterview)).create().show();
                return;

            case 1: // '\001'
                Object obj1 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[5];
                view[0] = "prefFitVisible";
                view[1] = "prefFillVisible";
                view[2] = "prefFitWidth";
                view[3] = "prefFitHeight";
                view[4] = "prefOriginalSize";
                obj1 = new android.app.AlertDialog.Builder(((android.content.Context) (obj1)));
                ((android.app.AlertDialog.Builder) (obj1)).setTitle(0x7f06017a);
                String s1 = aei.a().d.b("view-mode");
                ((android.app.AlertDialog.Builder) (obj1)).setSingleChoiceItems(agw.a(view), agv.a(view, s1), new agw._cls12(view, adapterview)).create().show();
                return;

            case 2: // '\002'
                Object obj2 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[4];
                view[0] = "prefNoTransition";
                view[1] = "prefTransitionCurl";
                view[2] = "prefTransitionShift";
                view[3] = "prefTransitionSlide";
                obj2 = new android.app.AlertDialog.Builder(((android.content.Context) (obj2)));
                ((android.app.AlertDialog.Builder) (obj2)).setTitle(0x7f06016c);
                String s2 = aei.a().d.b("transition-mode");
                ((android.app.AlertDialog.Builder) (obj2)).setSingleChoiceItems(agw.a(view), agv.a(view, s2), new agw._cls4(view, adapterview)).create().show();
                return;

            case 3: // '\003'
                Object obj3 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[2];
                view[0] = "prefNormal";
                view[1] = "prefFast";
                obj3 = new android.app.AlertDialog.Builder(((android.content.Context) (obj3)));
                String s3 = aei.a().d.b("animation-speed");
                ((android.app.AlertDialog.Builder) (obj3)).setSingleChoiceItems(agw.a(view), agv.a(view, s3), new agw._cls10(view, adapterview)).create().show();
                return;

            case 4: // '\004'
                aei.a().d.d("fit-width-on-rotate");
                a.a();
                return;

            case 5: // '\005'
                aei.a().d.d("crop-margins");
                a.a();
                return;

            case 6: // '\006'
                aei.a().d.d("image-enhancer");
                a.a();
                return;

            case 7: // '\007'
                Object obj4 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[3];
                view[0] = "prefSplit";
                view[1] = "prefSplitInPortrait";
                view[2] = "prefDoNothing";
                obj4 = new android.app.AlertDialog.Builder(((android.content.Context) (obj4)));
                ((android.app.AlertDialog.Builder) (obj4)).setTitle(0x7f0600c7);
                String s4 = aei.a().d.b("two-page-scans");
                ((android.app.AlertDialog.Builder) (obj4)).setSingleChoiceItems(agw.a(view), agv.a(view, s4), new agw._cls5(view, adapterview)).create().show();
                return;

            case 8: // '\b'
                aei.a().d.d("show-2-pages-in-landscape");
                a.a();
                return;

            case 9: // '\t'
                aei.a().d.d("always-hide-title-bar");
                a.a();
                return;

            case 10: // '\n'
                aei.a().d.d("show-page-numbering");
                a.a();
                return;

            case 11: // '\013'
                aei.a().d.d("right-to-left");
                a.a();
                return;

            case 12: // '\f'
                (new afv(a.a)).a(new android.content.DialogInterface.OnClickListener(this) {

                    final a a;

                    public final void onClick(DialogInterface dialoginterface, int i)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                });
                return;

            case 13: // '\r'
                Object obj5 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[3];
                view[0] = "prefDontLimit";
                view[1] = "prefBottom25";
                view[2] = "prefTop25";
                obj5 = new android.app.AlertDialog.Builder(((android.content.Context) (obj5)));
                ((android.app.AlertDialog.Builder) (obj5)).setTitle(0x7f06013a);
                String s5 = aei.a().d.b("limit-touchzone");
                ((android.app.AlertDialog.Builder) (obj5)).setSingleChoiceItems(agw.a(view), agv.a(view, s5), new agw._cls18(view, adapterview)).create().show();
                return;

            case 14: // '\016'
                (new afs(a.a)).a(new android.content.DialogInterface.OnClickListener(this) {

                    final a a;

                    public final void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface = a.a;
                        ((age) (dialoginterface)).a.setResult(-1);
                        if (((age) (dialoginterface)).c != null)
                        {
                            ((age) (dialoginterface)).c.i();
                        }
                    }

            
            {
                a = a1;
                super();
            }
                });
                return;

            case 15: // '\017'
                Object obj7 = a.a;
                adapterview = new afw.a(this) {

                    final a a;

                    public final void a(boolean flag)
                    {
                        if (flag)
                        {
                            a.a.a();
                        }
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new afl(((Activity) (obj7)));
                view.b();
                LinearLayout linearlayout = (LinearLayout)LayoutInflater.from(((android.content.Context) (obj7))).inflate(0x7f030024, null);
                SeekBar seekbar = (SeekBar)linearlayout.findViewById(0x7f0c0087);
                CheckBox checkbox = (CheckBox)linearlayout.findViewById(0x7f0c0086);
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(((android.content.Context) (obj7)));
                builder.setTitle(0x7f060178).setView(linearlayout).setCancelable(true);
                seekbar.setOnSeekBarChangeListener(new agw._cls13(((Activity) (obj7))));
                checkbox.setOnCheckedChangeListener(new agw._cls14(seekbar));
                obj7 = builder.create();
                ((AlertDialog) (obj7)).setOnDismissListener(new agw._cls15(view, seekbar, checkbox, adapterview));
                i = Integer.parseInt(aei.a().d.b("brightness-level"));
                boolean flag;
                if (i > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                checkbox.setChecked(flag);
                if (i > 0)
                {
                    flag = flag1;
                } else
                {
                    flag = false;
                }
                seekbar.setEnabled(flag);
                seekbar.setProgress(i);
                ((AlertDialog) (obj7)).show();
                return;

            case 16: // '\020'
                Object obj6 = a.a;
                adapterview = new agw.a(this) {

                    final a a;

                    public final void a(String s)
                    {
                        a.a.a();
                    }

            
            {
                a = a1;
                super();
            }
                };
                view = new CharSequence[3];
                view[0] = "prefLow";
                view[1] = "prefNormal";
                view[2] = "prefHigh";
                obj6 = new android.app.AlertDialog.Builder(((android.content.Context) (obj6)));
                ((android.app.AlertDialog.Builder) (obj6)).setTitle(0x7f060238);
                String s6 = aei.a().d.b("swipe-senstivity");
                ((android.app.AlertDialog.Builder) (obj6)).setSingleChoiceItems(agw.a(view), agv.a(view, s6), new agw._cls6(view, adapterview)).create().show();
                return;
            }
        }

        private a()
        {
            a = age.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    public static interface b
    {

        public abstract void g();

        public abstract void i();
    }


    Activity a;
    public ListView b;
    b c;

    public age(Activity activity, ListView listview, b b1)
    {
        b = listview;
        a = activity;
        c = b1;
        activity = a.getResources();
        listview = new ArrayList();
        agw.a(listview, activity, 0x7f060169, 0, "orientation", false);
        agw.a(listview, activity, 0x7f06025d, 0, "view-mode", false);
        agw.a(listview, activity, 0x7f06016c, 0x7f06016d, "transition-mode", false);
        agw.a(listview, activity, 0x7f060245, 0, "animation-speed", false);
        agw.a(listview, activity, 0x7f060100, 0x7f060101, "fit-width-on-rotate", true);
        agw.a(listview, activity, 0x7f0600a9, 0x7f0600aa, "crop-margins", true);
        agw.a(listview, activity, 0x7f060120, 0x7f060121, "image-enhancer", true);
        agw.a(listview, activity, 0x7f0600c7, 0x7f0600c8, "two-page-scans", false);
        agw.a(listview, activity, 0x7f06021f, 0, "show-2-pages-in-landscape", true);
        agw.a(listview, activity, 0x7f060050, 0x7f06011b, "always-hide-title-bar", true);
        agw.a(listview, activity, 0x7f060220, 0, "show-page-numbering", true);
        agw.a(listview, activity, 0x7f0600d7, 0, "right-to-left", true);
        agw.a(listview, activity, 0x7f060141, 0x7f060142, "dummy", false);
        agw.a(listview, activity, 0x7f060137, 0, "limit-touchzone", false);
        agw.a(listview, activity, 0x7f060242, 0x7f060243, "dummy", false);
        agw.a(listview, activity, 0x7f06005e, 0x7f06005f, "no-swipe-on-zoom", false);
        agw.a(listview, activity, 0x7f060238, 0, "swipe-senstivity", false);
        b.setAdapter(new acg(a, listview));
        b.setOnItemClickListener(new a((byte)0));
    }

    final void a()
    {
        agw.a(b);
        a.setResult(-1);
        if (c != null)
        {
            c.g();
        }
    }
}
