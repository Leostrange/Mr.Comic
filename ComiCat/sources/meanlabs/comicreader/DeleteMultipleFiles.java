package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
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
import defpackage.ack;
import defpackage.afw;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;

public class DeleteMultipleFiles extends ReaderActivity {
    boolean a;
    a b;

    public class a extends BaseAdapter {
        Activity a;
        ArrayList<Integer> b;
        ArrayList<String> c;
        SparseArray<Integer> d = new SparseArray<>();

        public a(Activity activity, ArrayList<Integer> arrayList, ArrayList<String> arrayList2, boolean z) {
            this.a = activity;
            this.b = arrayList;
            this.c = arrayList2;
            if (z) {
                a();
            }
        }

        public final void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.b.size()) {
                    Integer num = this.b.get(i2);
                    if (num.intValue() > 0) {
                        this.d.append(num.intValue(), num);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        public final boolean areAllItemsEnabled() {
            return false;
        }

        public final int getCount() {
            return this.b.size();
        }

        public final Object getItem(int i) {
            return this.b.get(i);
        }

        public final long getItemId(int i) {
            return (long) this.b.get(i).intValue();
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            acs a2;
            if (view == null) {
                view = this.a.getLayoutInflater().inflate(R.layout.multi_select_list_item, (ViewGroup) null);
            }
            Integer num = this.b.get(i);
            if (num.intValue() > 0) {
                view.findViewById(R.id.header).setVisibility(8);
                view.findViewById(R.id.body).setVisibility(0);
                aeq a3 = aei.a().b.a(num.intValue());
                ((TextView) view.findViewById(R.id.itemTitle)).setText(a3.c);
                ((TextView) view.findViewById(R.id.itemPath)).setText(agv.c(ael.a(a3)));
                ((TextView) view.findViewById(R.id.itemSize)).setText(agv.a(new File(a3.d).length()));
                TextView textView = (TextView) view.findViewById(R.id.itemExtraInfo);
                String str = "";
                if (a3.d() && (a2 = act.b().a(a3.g)) != null) {
                    str = a2.k();
                }
                textView.setText(str);
                ((ImageView) view.findViewById(R.id.itemImage)).setImageBitmap(ahd.a(a3.a, false));
                ((ImageView) view.findViewById(R.id.selectionIcon)).setImageResource(this.d.get(num.intValue()) != null ? R.drawable.crossmark : R.drawable.btn_check_off_holo_dark);
            } else {
                view.findViewById(R.id.header).setVisibility(0);
                view.findViewById(R.id.body).setVisibility(8);
                ((TextView) view.findViewById(R.id.header)).setText(this.c.get(Integer.valueOf(-num.intValue()).intValue() - 1));
            }
            return view;
        }

        public final boolean isEnabled(int i) {
            return getItemId(i) > 0;
        }
    }

    /* access modifiers changed from: private */
    public void a(int i) {
        Button button = (Button) findViewById(R.id.delete);
        if (i == 0) {
            button.setText(R.string.delete);
            button.setEnabled(false);
            return;
        }
        button.setEnabled(true);
        button.setText(getString(R.string.delete) + '(' + i + ')');
    }

    public static void a(Activity activity, ArrayList<Integer> arrayList, ArrayList<String> arrayList2, boolean z, int i) {
        Intent intent = new Intent(activity, DeleteMultipleFiles.class);
        intent.putExtra("selectall", z);
        intent.putExtra("warn", true);
        intent.putExtra("title", activity.getString(i));
        intent.putIntegerArrayListExtra("comiclist", arrayList);
        intent.putStringArrayListExtra("headers", arrayList2);
        activity.startActivity(intent);
    }

    public static void a(Activity activity, List<aeq> list, int i) {
        ArrayList arrayList = new ArrayList(list.size());
        for (aeq aeq : list) {
            arrayList.add(Integer.valueOf(aeq.a));
        }
        a(activity, arrayList, (ArrayList<String>) null, true, i);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.multi_select_list);
        Intent intent = getIntent();
        this.a = intent.getBooleanExtra("warn", false);
        String stringExtra = intent.getStringExtra("title");
        if (stringExtra != null) {
            setTitle(stringExtra);
        }
        this.b = new a(this, intent.getIntegerArrayListExtra("comiclist"), intent.getStringArrayListExtra("headers"), intent.getBooleanExtra("selectall", false));
        ListView listView = (ListView) findViewById(R.id.comicList);
        listView.setAdapter(this.b);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                a aVar = DeleteMultipleFiles.this.b;
                Integer num = aVar.b.get(i);
                if (aVar.d.get(num.intValue()) != null) {
                    aVar.d.remove(num.intValue());
                } else {
                    aVar.d.append(num.intValue(), num);
                }
                DeleteMultipleFiles.this.a(DeleteMultipleFiles.this.b.d.size());
                DeleteMultipleFiles.this.b.notifyDataSetChanged();
            }
        });
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                DeleteMultipleFiles.this.finish();
            }
        });
        ((Button) findViewById(R.id.delete)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                a aVar = DeleteMultipleFiles.this.b;
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < aVar.d.size(); i++) {
                    arrayList.add(Integer.valueOf(aVar.d.keyAt(i)));
                }
                final ArrayList arrayList2 = new ArrayList(arrayList.size());
                aek aek = aei.a().b;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    aeq a2 = aek.a(((Integer) it.next()).intValue());
                    if (a2 != null) {
                        arrayList2.add(a2);
                    }
                }
                AnonymousClass1 r3 = new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            new ack(DeleteMultipleFiles.this, arrayList2, new ack.a() {
                                public final void a(int i) {
                                    String string = DeleteMultipleFiles.this.getString(R.string.comicsDeleted, new Object[]{Integer.valueOf(i)});
                                    if (i < arrayList2.size()) {
                                        string = DeleteMultipleFiles.this.getString(R.string.errorDeletingComic) + " " + string;
                                    }
                                    ahf.a((Context) DeleteMultipleFiles.this, string);
                                    DeleteMultipleFiles.this.finish();
                                }
                            }).execute(new Void[]{null});
                        }
                    }
                };
                if (DeleteMultipleFiles.this.a) {
                    afw.a((Context) DeleteMultipleFiles.this, (String) DeleteMultipleFiles.this.getTitle(), DeleteMultipleFiles.this.getString(R.string.deleteComicsPrompt, new Object[]{Integer.valueOf(arrayList2.size()), Build.MODEL, agv.a(agv.a((List<aeq>) arrayList2))}), (afw.a) r3);
                    return;
                }
                r3.a(true);
            }
        });
        a(this.b.d.size());
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.multideleteoptionsmenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.selectAll) {
            this.b.a();
            this.b.notifyDataSetChanged();
            a(this.b.d.size());
            return true;
        } else if (itemId != R.id.deselectAll) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            this.b.d.clear();
            this.b.notifyDataSetChanged();
            a(this.b.d.size());
            return true;
        }
    }
}
