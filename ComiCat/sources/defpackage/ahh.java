package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
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
import defpackage.ahi;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* renamed from: ahh  reason: default package */
/* compiled from: DirectoryChooserFragment */
public class ahh extends DialogFragment {
    static final /* synthetic */ boolean a = (!ahh.class.desiredAssertionStatus());
    private static final String b = ahh.class.getSimpleName();
    private String c;
    private String d;
    /* access modifiers changed from: private */
    public a e;
    private Button f;
    private Button g;
    private ImageButton h;
    private ImageButton i;
    private TextView j;
    private ListView k;
    private ArrayAdapter<String> l;
    private ArrayList<String> m;
    /* access modifiers changed from: private */
    public File n;
    /* access modifiers changed from: private */
    public File[] o;
    private FileObserver p;

    /* renamed from: ahh$a */
    /* compiled from: DirectoryChooserFragment */
    public interface a {
        void a(String str);

        void g();
    }

    public static ahh a(String str, String str2) {
        ahh ahh = new ahh();
        Bundle bundle = new Bundle();
        bundle.putString("NEW_DIRECTORY_NAME", str);
        bundle.putString("INITIAL_DIRECTORY", str2);
        ahh.setArguments(bundle);
        return ahh;
    }

    private FileObserver a(String str) {
        return new FileObserver(str) {
            public final void onEvent(int i, String str) {
                String.format("FileObserver received event %d", new Object[]{Integer.valueOf(i)});
                FragmentActivity activity = ahh.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() {
                        public final void run() {
                            ahh.g(ahh.this);
                        }
                    });
                }
            }
        };
    }

    /* access modifiers changed from: private */
    public void a() {
        new AlertDialog.Builder(getActivity()).setTitle(ahi.e.create_folder_label).setMessage(String.format(getString(ahi.e.create_folder_msg), new Object[]{this.c})).setNegativeButton(ahi.e.cancel_label, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).setPositiveButton(ahi.e.confirm_label, new DialogInterface.OnClickListener() {
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                Toast.makeText(ahh.this.getActivity(), ahh.f(ahh.this), 0).show();
            }
        }).create().show();
    }

    static /* synthetic */ void b(ahh ahh) {
        if (ahh.n != null) {
            String.format("Returning %s as result", new Object[]{ahh.n.getAbsolutePath()});
            ahh.e.a(ahh.n.getAbsolutePath());
            return;
        }
        ahh.e.g();
    }

    /* access modifiers changed from: private */
    public void b(File file) {
        if (file == null) {
            String.format("Could not change folder: dir was null", new Object[0]);
        } else if (!file.isDirectory()) {
            String.format("Could not change folder: dir is no directory", new Object[0]);
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                int i2 = 0;
                for (File isDirectory : listFiles) {
                    if (isDirectory.isDirectory()) {
                        i2++;
                    }
                }
                this.o = new File[i2];
                this.m.clear();
                int i3 = 0;
                int i4 = 0;
                while (i4 < i2) {
                    if (listFiles[i3].isDirectory()) {
                        this.o[i4] = listFiles[i3];
                        this.m.add(listFiles[i3].getName());
                        i4++;
                    }
                    i3++;
                }
                Arrays.sort(this.o);
                Collections.sort(this.m);
                this.n = file;
                this.j.setText(file.getAbsolutePath());
                this.l.notifyDataSetChanged();
                this.p = a(file.getAbsolutePath());
                this.p.startWatching();
                String.format("Changed directory to %s", new Object[]{file.getAbsolutePath()});
            } else {
                this.m.clear();
                this.n = file;
                this.j.setText(file.getAbsolutePath());
                this.l.notifyDataSetChanged();
                this.p = a(file.getAbsolutePath());
                this.p.startWatching();
                String.format("Could not change folder: contents of dir were null", new Object[0]);
            }
        }
        if (getActivity() != null && this.n != null) {
            this.f.setEnabled(c(this.n));
            getActivity().supportInvalidateOptionsMenu();
        }
    }

    /* access modifiers changed from: private */
    public static boolean c(File file) {
        return file != null && file.isDirectory() && file.canRead();
    }

    static /* synthetic */ int f(ahh ahh) {
        if (ahh.c == null || ahh.n == null || !ahh.n.canWrite()) {
            return (ahh.n == null || ahh.n.canWrite()) ? ahi.e.create_folder_error : ahi.e.create_folder_error_no_write_access;
        }
        File file = new File(ahh.n, ahh.c);
        return !file.exists() ? file.mkdir() ? ahi.e.create_folder_success : ahi.e.create_folder_error : ahi.e.create_folder_error_already_exists;
    }

    static /* synthetic */ void g(ahh ahh) {
        if (ahh.n != null) {
            ahh.b(ahh.n);
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.e = (a) activity;
        } catch (ClassCastException e2) {
            throw new ClassCastException(activity.toString() + " must implement OnFragmentInteractionListener");
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() == null) {
            throw new IllegalArgumentException("You must create DirectoryChooserFragment via newInstance().");
        }
        this.c = getArguments().getString("NEW_DIRECTORY_NAME");
        this.d = getArguments().getString("INITIAL_DIRECTORY");
        if (bundle != null) {
            this.d = bundle.getString("CURRENT_DIRECTORY");
        }
        if (getShowsDialog()) {
            setStyle(1, 0);
        } else {
            setHasOptionsMenu(true);
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(ahi.d.directory_chooser, menu);
        MenuItem findItem = menu.findItem(ahi.b.new_folder_item);
        if (findItem != null) {
            findItem.setVisible(c(this.n) && this.c != null);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        TypedArray obtainStyledAttributes;
        if (a || getActivity() != null) {
            View inflate = layoutInflater.inflate(ahi.c.directory_chooser, viewGroup, false);
            this.f = (Button) inflate.findViewById(ahi.b.btnConfirm);
            this.g = (Button) inflate.findViewById(ahi.b.btnCancel);
            this.h = (ImageButton) inflate.findViewById(ahi.b.btnNavUp);
            this.i = (ImageButton) inflate.findViewById(ahi.b.btnCreateFolder);
            this.j = (TextView) inflate.findViewById(ahi.b.txtvSelectedFolder);
            this.k = (ListView) inflate.findViewById(ahi.b.directoryList);
            this.f.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (ahh.c(ahh.this.n)) {
                        ahh.b(ahh.this);
                    }
                }
            });
            this.g.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    ahh.this.e.g();
                }
            });
            this.k.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    String.format("Selected index: %d", new Object[]{Integer.valueOf(i)});
                    if (ahh.this.o != null && i >= 0 && i < ahh.this.o.length) {
                        ahh.this.b(ahh.this.o[i]);
                    }
                }
            });
            this.h.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    File parentFile;
                    if (ahh.this.n != null && (parentFile = ahh.this.n.getParentFile()) != null) {
                        ahh.this.b(parentFile);
                    }
                }
            });
            this.i.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    ahh.this.a();
                }
            });
            if (!getShowsDialog()) {
                this.i.setVisibility(8);
            }
            Resources.Theme theme = getActivity().getTheme();
            if (theme == null || (obtainStyledAttributes = theme.obtainStyledAttributes(new int[]{16842801})) == null) {
                i2 = 16777215;
            } else {
                i2 = obtainStyledAttributes.getColor(0, 16777215);
                obtainStyledAttributes.recycle();
            }
            if (i2 != 16777215) {
                if ((((double) Color.blue(i2)) * 0.07d) + (0.21d * ((double) Color.red(i2))) + (0.72d * ((double) Color.green(i2))) < 128.0d) {
                    this.h.setImageResource(ahi.a.navigation_up_light);
                    this.i.setImageResource(ahi.a.ic_action_create_light);
                }
            }
            this.m = new ArrayList<>();
            this.l = new ArrayAdapter<>(getActivity(), 17367043, this.m);
            this.k.setAdapter(this.l);
            b((this.d == null || !c(new File(this.d))) ? Environment.getExternalStorageDirectory() : new File(this.d));
            return inflate;
        }
        throw new AssertionError();
    }

    public void onDetach() {
        super.onDetach();
        this.e = null;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != ahi.b.new_folder_item) {
            return super.onOptionsItemSelected(menuItem);
        }
        a();
        return true;
    }

    public void onPause() {
        super.onPause();
        if (this.p != null) {
            this.p.stopWatching();
        }
    }

    public void onResume() {
        super.onResume();
        if (this.p != null) {
            this.p.startWatching();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("CURRENT_DIRECTORY", this.n.getAbsolutePath());
    }
}
