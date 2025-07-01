// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileObserver;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class ahh extends DialogFragment
{
    public static interface a
    {

        public abstract void a(String s);

        public abstract void g();
    }


    static final boolean a;
    private static final String b = ahh.getSimpleName();
    private String c;
    private String d;
    private a e;
    private Button f;
    private Button g;
    private ImageButton h;
    private ImageButton i;
    private TextView j;
    private ListView k;
    private ArrayAdapter l;
    private ArrayList m;
    private File n;
    private File o[];
    private FileObserver p;

    public ahh()
    {
    }

    public static ahh a(String s, String s1)
    {
        ahh ahh1 = new ahh();
        Bundle bundle = new Bundle();
        bundle.putString("NEW_DIRECTORY_NAME", s);
        bundle.putString("INITIAL_DIRECTORY", s1);
        ahh1.setArguments(bundle);
        return ahh1;
    }

    private FileObserver a(String s)
    {
        return new FileObserver(s) {

            final ahh a;

            public final void onEvent(int i1, String s1)
            {
                ahh.a("FileObserver received event %d", new Object[] {
                    Integer.valueOf(i1)
                });
                s1 = a.getActivity();
                if (s1 != null)
                {
                    s1.runOnUiThread(new Runnable(this) {

                        final _cls8 a;

                        public final void run()
                        {
                            ahh.g(a.a);
                        }

            
            {
                a = _pcls8;
                super();
            }
                    });
                }
            }

            
            {
                a = ahh.this;
                super(s, 960);
            }
        };
    }

    static File a(ahh ahh1)
    {
        return ahh1.n;
    }

    private void a()
    {
        (new android.app.AlertDialog.Builder(getActivity())).setTitle(ahi.e.create_folder_label).setMessage(String.format(getString(ahi.e.create_folder_msg), new Object[] {
            c
        })).setNegativeButton(ahi.e.cancel_label, new android.content.DialogInterface.OnClickListener() {

            final ahh a;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.dismiss();
            }

            
            {
                a = ahh.this;
                super();
            }
        }).setPositiveButton(ahi.e.confirm_label, new android.content.DialogInterface.OnClickListener() {

            final ahh a;

            public final void onClick(DialogInterface dialoginterface, int i1)
            {
                dialoginterface.dismiss();
                i1 = ahh.f(a);
                Toast.makeText(a.getActivity(), i1, 0).show();
            }

            
            {
                a = ahh.this;
                super();
            }
        }).create().show();
    }

    static void a(ahh ahh1, File file)
    {
        ahh1.b(file);
    }

    static void a(String s, Object aobj[])
    {
        String.format(s, aobj);
    }

    static boolean a(File file)
    {
        return c(file);
    }

    static void b(ahh ahh1)
    {
        if (ahh1.n != null)
        {
            String.format("Returning %s as result", new Object[] {
                ahh1.n.getAbsolutePath()
            });
            ahh1.e.a(ahh1.n.getAbsolutePath());
            return;
        } else
        {
            ahh1.e.g();
            return;
        }
    }

    private void b(File file)
    {
        if (file == null)
        {
            String.format("Could not change folder: dir was null", new Object[0]);
        } else
        if (!file.isDirectory())
        {
            String.format("Could not change folder: dir is no directory", new Object[0]);
        } else
        {
            File afile[] = file.listFiles();
            if (afile != null)
            {
                int i2 = afile.length;
                int j1 = 0;
                int i1;
                int k1;
                for (i1 = 0; j1 < i2; i1 = k1)
                {
                    k1 = i1;
                    if (afile[j1].isDirectory())
                    {
                        k1 = i1 + 1;
                    }
                    j1++;
                }

                o = new File[i1];
                m.clear();
                j1 = 0;
                int j2;
                for (int l1 = 0; l1 < i1; l1 = j2)
                {
                    j2 = l1;
                    if (afile[j1].isDirectory())
                    {
                        o[l1] = afile[j1];
                        m.add(afile[j1].getName());
                        j2 = l1 + 1;
                    }
                    j1++;
                }

                Arrays.sort(o);
                Collections.sort(m);
                n = file;
                j.setText(file.getAbsolutePath());
                l.notifyDataSetChanged();
                p = a(file.getAbsolutePath());
                p.startWatching();
                String.format("Changed directory to %s", new Object[] {
                    file.getAbsolutePath()
                });
            } else
            {
                m.clear();
                n = file;
                j.setText(file.getAbsolutePath());
                l.notifyDataSetChanged();
                p = a(file.getAbsolutePath());
                p.startWatching();
                String.format("Could not change folder: contents of dir were null", new Object[0]);
            }
        }
        if (getActivity() != null && n != null)
        {
            f.setEnabled(c(n));
            getActivity().supportInvalidateOptionsMenu();
        }
    }

    static a c(ahh ahh1)
    {
        return ahh1.e;
    }

    private static boolean c(File file)
    {
        return file != null && file.isDirectory() && file.canRead();
    }

    static File[] d(ahh ahh1)
    {
        return ahh1.o;
    }

    static void e(ahh ahh1)
    {
        ahh1.a();
    }

    static int f(ahh ahh1)
    {
        if (ahh1.c != null && ahh1.n != null && ahh1.n.canWrite())
        {
            ahh1 = new File(ahh1.n, ahh1.c);
            if (!ahh1.exists())
            {
                if (ahh1.mkdir())
                {
                    return ahi.e.create_folder_success;
                } else
                {
                    return ahi.e.create_folder_error;
                }
            } else
            {
                return ahi.e.create_folder_error_already_exists;
            }
        }
        if (ahh1.n != null && !ahh1.n.canWrite())
        {
            return ahi.e.create_folder_error_no_write_access;
        } else
        {
            return ahi.e.create_folder_error;
        }
    }

    static void g(ahh ahh1)
    {
        if (ahh1.n != null)
        {
            ahh1.b(ahh1.n);
        }
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        try
        {
            e = (a)activity;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException((new StringBuilder()).append(activity.toString()).append(" must implement OnFragmentInteractionListener").toString());
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (getArguments() == null)
        {
            throw new IllegalArgumentException("You must create DirectoryChooserFragment via newInstance().");
        }
        c = getArguments().getString("NEW_DIRECTORY_NAME");
        d = getArguments().getString("INITIAL_DIRECTORY");
        if (bundle != null)
        {
            d = bundle.getString("CURRENT_DIRECTORY");
        }
        if (getShowsDialog())
        {
            setStyle(1, 0);
            return;
        } else
        {
            setHasOptionsMenu(true);
            return;
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuinflater)
    {
        menuinflater.inflate(ahi.d.directory_chooser, menu);
        menu = menu.findItem(ahi.b.new_folder_item);
        if (menu == null)
        {
            return;
        }
        boolean flag;
        if (c(n) && c != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        menu.setVisible(flag);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (!a && getActivity() == null)
        {
            throw new AssertionError();
        }
        viewgroup = layoutinflater.inflate(ahi.c.directory_chooser, viewgroup, false);
        f = (Button)viewgroup.findViewById(ahi.b.btnConfirm);
        g = (Button)viewgroup.findViewById(ahi.b.btnCancel);
        h = (ImageButton)viewgroup.findViewById(ahi.b.btnNavUp);
        i = (ImageButton)viewgroup.findViewById(ahi.b.btnCreateFolder);
        j = (TextView)viewgroup.findViewById(ahi.b.txtvSelectedFolder);
        k = (ListView)viewgroup.findViewById(ahi.b.directoryList);
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final ahh a;

            public final void onClick(View view)
            {
                if (ahh.a(ahh.a(a)))
                {
                    ahh.b(a);
                }
            }

            
            {
                a = ahh.this;
                super();
            }
        });
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final ahh a;

            public final void onClick(View view)
            {
                ahh.c(a).g();
            }

            
            {
                a = ahh.this;
                super();
            }
        });
        k.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ahh a;

            public final void onItemClick(AdapterView adapterview, View view, int j1, long l1)
            {
                ahh.a("Selected index: %d", new Object[] {
                    Integer.valueOf(j1)
                });
                if (ahh.d(a) != null && j1 >= 0 && j1 < ahh.d(a).length)
                {
                    ahh.a(a, ahh.d(a)[j1]);
                }
            }

            
            {
                a = ahh.this;
                super();
            }
        });
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final ahh a;

            public final void onClick(View view)
            {
                if (ahh.a(a) != null)
                {
                    view = ahh.a(a).getParentFile();
                    if (view != null)
                    {
                        ahh.a(a, view);
                    }
                }
            }

            
            {
                a = ahh.this;
                super();
            }
        });
        i.setOnClickListener(new android.view.View.OnClickListener() {

            final ahh a;

            public final void onClick(View view)
            {
                ahh.e(a);
            }

            
            {
                a = ahh.this;
                super();
            }
        });
        if (!getShowsDialog())
        {
            i.setVisibility(8);
        }
        layoutinflater = getActivity().getTheme();
        if (layoutinflater == null) goto _L2; else goto _L1
_L1:
        layoutinflater = layoutinflater.obtainStyledAttributes(new int[] {
            0x1010031
        });
        if (layoutinflater == null) goto _L2; else goto _L3
_L3:
        int i1;
        i1 = layoutinflater.getColor(0, 0xffffff);
        layoutinflater.recycle();
_L5:
        if (i1 != 0xffffff)
        {
            double d1 = Color.red(i1);
            double d2 = Color.green(i1);
            if ((double)Color.blue(i1) * 0.070000000000000007D + (0.20999999999999999D * d1 + 0.71999999999999997D * d2) < 128D)
            {
                h.setImageResource(ahi.a.navigation_up_light);
                i.setImageResource(ahi.a.ic_action_create_light);
            }
        }
        m = new ArrayList();
        l = new ArrayAdapter(getActivity(), 0x1090003, m);
        k.setAdapter(l);
        if (d != null && c(new File(d)))
        {
            layoutinflater = new File(d);
        } else
        {
            layoutinflater = Environment.getExternalStorageDirectory();
        }
        b(layoutinflater);
        return viewgroup;
_L2:
        i1 = 0xffffff;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void onDetach()
    {
        super.onDetach();
        e = null;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == ahi.b.new_folder_item)
        {
            a();
            return true;
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    public void onPause()
    {
        super.onPause();
        if (p != null)
        {
            p.stopWatching();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (p != null)
        {
            p.startWatching();
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("CURRENT_DIRECTORY", n.getAbsolutePath());
    }

    static 
    {
        boolean flag;
        if (!ahh.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
