package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import defpackage.afw;
import defpackage.ahh;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import meanlabs.comicat.R;

public class ComicFolders extends ReaderActivity implements ahh.a {
    public static a a;
    /* access modifiers changed from: private */
    public boolean b;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public b d;
    private ahh e;

    public interface a {
        void c();
    }

    public class b extends BaseAdapter {
        Activity a;
        List<String> b;
        HashMap<String, Boolean> c = new HashMap<>();

        public b(Activity activity, List<String> list) {
            this.a = activity;
            this.b = new ArrayList(list);
        }

        public final boolean areAllItemsEnabled() {
            return true;
        }

        public final int getCount() {
            return this.b.size();
        }

        public final Object getItem(int i) {
            return this.b.get(i);
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.a.getLayoutInflater().inflate(R.layout.multi_select_list_item, (ViewGroup) null);
                view.findViewById(R.id.header).setVisibility(8);
                view.findViewById(R.id.body).setVisibility(0);
            }
            String str = this.b.get(i);
            if (str != null) {
                File file = new File(str);
                ((TextView) view.findViewById(R.id.itemTitle)).setText(file.getName());
                ((TextView) view.findViewById(R.id.itemPath)).setText(file.getAbsolutePath());
                ((ImageView) view.findViewById(R.id.itemImage)).setImageResource(R.drawable.folder_blue);
                ImageView imageView = (ImageView) view.findViewById(R.id.selectionIcon);
                String str2 = (String) getItem(i);
                imageView.setImageResource(str2 != null ? this.c.get(str2) != null : false ? R.drawable.crossmark : R.drawable.btn_check_off_holo_dark);
            }
            return view;
        }
    }

    static /* synthetic */ void b(ComicFolders comicFolders) {
        if (a != null) {
            a.c();
            a = null;
        }
        comicFolders.finish();
    }

    public final void a(String str) {
        if (str != null) {
            b bVar = this.d;
            if (!bVar.b.contains(str)) {
                bVar.b.add(str);
            }
            this.c = true;
        }
        this.e.dismiss();
        this.d.notifyDataSetChanged();
    }

    public final void g() {
        this.e.dismiss();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.comic_folders);
        this.b = getIntent().getBooleanExtra("warn", false);
        this.d = new b(this, agw.b());
        ListView listView = (ListView) findViewById(R.id.folderList);
        listView.setEmptyView(findViewById(16908292));
        listView.setAdapter(this.d);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                b a2 = ComicFolders.this.d;
                String str = (String) a2.getItem(i);
                if (str != null) {
                    if (a2.c.get(str) != null) {
                        a2.c.remove(str);
                    } else {
                        a2.c.put(str, true);
                    }
                }
                ComicFolders.this.d.notifyDataSetChanged();
            }
        });
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                ComicFolders.b(ComicFolders.this);
            }
        });
        ((Button) findViewById(R.id.ok)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                if (!ComicFolders.this.c || !ComicFolders.this.b) {
                    if (ComicFolders.this.c) {
                        agw.a(ComicFolders.this.d.b);
                    }
                    ComicFolders.b(ComicFolders.this);
                    return;
                }
                ComicFolders comicFolders = ComicFolders.this;
                afw.a((Context) comicFolders, comicFolders.getString(R.string.limitScanTo), comicFolders.getString(R.string.saveChangesToComicFoldersPrompt), (afw.a) new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            agw.a(ComicFolders.this.d.b);
                        }
                        ComicFolders.b(ComicFolders.this);
                    }
                });
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.comicfoldersoptionsmenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = false;
        int itemId = menuItem.getItemId();
        if (itemId == R.id.add) {
            if (Build.VERSION.SDK_INT >= 23) {
                z = true;
            }
            this.e = ahh.a(getString(R.string.comic), z ? "/" : null);
            this.e.show(getSupportFragmentManager(), (String) null);
            return true;
        } else if (itemId != R.id.remove) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            b bVar = this.d;
            int size = bVar.c.size();
            bVar.b.removeAll(bVar.c.keySet());
            bVar.c.clear();
            if (this.c || size > 0) {
                z = true;
            }
            this.c = z;
            this.d.notifyDataSetChanged();
            return true;
        }
    }
}
