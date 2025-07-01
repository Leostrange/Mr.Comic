// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader;

import ace;
import acr;
import aei;
import aek;
import aen;
import aeu;
import afw;
import agv;
import ahe;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import java.util.Locale;

// Referenced classes of package meanlabs.comicreader:
//            ComicReaderApp

public class ReaderActivity extends AppCompatActivity
{

    private static long a = 8000L;
    static boolean o = false;
    static boolean p = false;
    protected ActionBar n;

    public ReaderActivity()
    {
    }

    public void a_()
    {
    }

    protected void b()
    {
        p = false;
        if (aei.a().d.c("rescan-on-start"))
        {
            (new acr(this, null, true)).execute(new Void[] {
                null
            });
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        n = getSupportActionBar();
        if (n == null)
        {
            throw new IllegalStateException("Action Bar could not be created");
        } else
        {
            n.setDisplayUseLogoEnabled(false);
            n.setDisplayHomeAsUpEnabled(true);
            n.setHomeButtonEnabled(true);
            return;
        }
    }

    public void onLowMemory()
    {
        p = true;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        switch (menuitem.getItemId())
        {
        default:
            return false;

        case 16908332: 
            break;
        }
        if (!isTaskRoot())
        {
            finish();
        }
        return true;
    }

    public void onPause()
    {
        ComicReaderApp.b();
        super.onPause();
    }

    public void onResume()
    {
        Object obj = new ahe(this, ComicReaderApp.a);
        int i;
        if (ComicReaderApp.a)
        {
            Locale locale = Locale.getDefault();
            if (locale.equals(Locale.JAPAN) || locale.equals(Locale.JAPANESE))
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i != 0)
            {
                Object obj1 = getText(0x7f060133);
                CharSequence charsequence = getText(0x7f0601f5);
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
                boolean flag = aei.a().d.c("right-to-left");
                builder.setTitle((new StringBuilder()).append(getString(0x7f0600d7)).append('?').toString());
                agw._cls22 _lcls22;
                if (flag)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                _lcls22 = new agw._cls22();
                builder.setSingleChoiceItems(new CharSequence[] {
                    obj1, charsequence
                }, i, _lcls22).create().show();
            }
            ComicReaderApp.a = false;
        }
        if (!((ahe) (obj)).c && ((ahe) (obj)).b != ((ahe) (obj)).a)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            obj1 = aei.a();
            if (((aei) (obj1)).b.c() && ((aei) (obj1)).c.c())
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i != 0)
            {
                if (((ahe) (obj)).b < 48)
                {
                    obj1 = ((ahe) (obj)).d.getString(0x7f06014f).replace("\n", "\n- ");
                    obj1 = (new StringBuilder("\n- ")).append(((String) (obj1))).append("\n").toString();
                    afw.a(((ahe) (obj)).d, ((ahe) (obj)).d.getString(0x7f06014e, new Object[] {
                        agv.d()
                    }), ((String) (obj1)));
                }
            } else
            {
                afw.a(((ahe) (obj)).d, ((ahe) (obj)).d.getString(0x7f060251), ((ahe) (obj)).d.getString(0x7f060252));
            }
        }
        if (!o && System.currentTimeMillis() - ComicReaderApp.c() > a)
        {
            obj = aei.a().d;
            if (((aeu) (obj)).c("enable-hidden-folders") && ((aeu) (obj)).c("hide-on-relaunch"))
            {
                ((aeu) (obj)).a("current-hidden-state", true);
            }
            if (((aeu) (obj)).c("password-protect"))
            {
                o = true;
                obj = new ace(this, new afw.a() {

                    final ReaderActivity a;

                    public final void a(boolean flag1)
                    {
                        ReaderActivity.o = false;
                        a.b();
                        a.a_();
                    }

            
            {
                a = ReaderActivity.this;
                super();
            }
                });
                obj.a = getString(0x7f06024d);
                obj.b = 0x7f060128;
                obj.c = "unlock-code";
                obj.d = false;
                ((ace) (obj)).show();
            } else
            {
                b();
            }
        }
        if (!o)
        {
            a_();
        }
        super.onResume();
    }

}
