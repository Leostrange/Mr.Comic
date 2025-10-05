package meanlabs.comicreader;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseIntArray;
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
import defpackage.acm;
import defpackage.afw;
import java.util.List;
import meanlabs.comicat.R;

public class BulkMarkRead extends ReaderActivity {
    a a;

    public class a extends BaseAdapter {
        Activity a;
        List<aeq> b = aei.a().b.f();
        SparseIntArray c = new SparseIntArray();

        public a(Activity activity) {
            this.a = activity;
            a();
        }

        public final void a() {
            this.c.clear();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.b.size()) {
                    if (this.b.get(i2).p()) {
                        int i3 = this.b.get(i2).a;
                        this.c.append(i3, i3);
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
            return (long) this.b.get(i).a;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.a.getLayoutInflater().inflate(R.layout.multi_select_list_item, (ViewGroup) null);
            }
            aeq aeq = this.b.get(i);
            view.findViewById(R.id.header).setVisibility(8);
            view.findViewById(R.id.body).setVisibility(0);
            ((TextView) view.findViewById(R.id.itemTitle)).setText(aeq.c);
            ((TextView) view.findViewById(R.id.itemPath)).setText(agv.c(ael.a(aeq)));
            ((TextView) view.findViewById(R.id.itemSize)).setText("");
            ((ImageView) view.findViewById(R.id.itemImage)).setImageBitmap(ahd.a(aeq.a, false));
            ImageView imageView = (ImageView) view.findViewById(R.id.selectionIcon);
            if (this.c.get(aeq.a) != 0) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.checkmark2);
            } else {
                imageView.setVisibility(4);
            }
            return view;
        }

        public final boolean isEnabled(int i) {
            return getItemId(i) > 0;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.multi_select_list);
        String stringExtra = getIntent().getStringExtra("title");
        if (stringExtra != null) {
            setTitle(stringExtra);
        }
        this.a = new a(this);
        ListView listView = (ListView) findViewById(R.id.comicList);
        listView.setAdapter(this.a);
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                a aVar = BulkMarkRead.this.a;
                int i2 = aVar.b.get(i).a;
                if (aVar.c.get(i2) != 0) {
                    aVar.c.delete(i2);
                } else {
                    aVar.c.append(i2, i2);
                }
                BulkMarkRead.this.a.notifyDataSetChanged();
            }
        });
        Button button = (Button) findViewById(R.id.delete);
        button.setText(17039370);
        button.setEnabled(true);
        ((Button) findViewById(R.id.cancel)).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                BulkMarkRead.this.finish();
            }
        });
        button.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                afw.a((Context) BulkMarkRead.this, (String) BulkMarkRead.this.getTitle(), BulkMarkRead.this.getString(R.string.continuePrompt), (afw.a) new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            new acm(BulkMarkRead.this, BulkMarkRead.this.a.c, new acm.a() {
                                public final void a() {
                                    agm.a(false);
                                    BulkMarkRead.this.finish();
                                }
                            }).execute(new Void[]{null});
                        }
                    }
                });
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.bulkmarkreadoptionsmenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.selectAll) {
            a aVar = this.a;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < aVar.b.size()) {
                    int i3 = aVar.b.get(i2).a;
                    aVar.c.append(i3, i3);
                    i = i2 + 1;
                } else {
                    this.a.notifyDataSetChanged();
                    return true;
                }
            }
        } else if (itemId == R.id.deselectAll) {
            this.a.c.clear();
            this.a.notifyDataSetChanged();
            return true;
        } else if (itemId != R.id.reset) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            this.a.a();
            this.a.notifyDataSetChanged();
            return true;
        }
    }
}
