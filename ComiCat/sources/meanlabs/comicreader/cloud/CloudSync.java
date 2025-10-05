package meanlabs.comicreader.cloud;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.afw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.CloudSyncSettings;
import meanlabs.comicreader.ReaderActivity;
import meanlabs.comicreader.utils.ConnectivityReceiver;

public class CloudSync extends ReaderActivity implements ade, AdapterView.OnItemClickListener {
    a a;

    public class a extends BaseAdapter {
        ArrayList<Integer> a;

        public a() {
            a();
        }

        public final void a() {
            this.a = new ArrayList<>();
            ArrayList<acs> arrayList = new ArrayList<>(act.b().c);
            Collections.sort(arrayList, new Comparator<acs>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    return ((acs) obj).k().compareTo(((acs) obj2).k());
                }
            });
            for (acs a2 : arrayList) {
                this.a.add(Integer.valueOf(a2.a()));
            }
        }

        public final boolean areAllItemsEnabled() {
            return false;
        }

        public final int getCount() {
            return this.a.size();
        }

        public final Object getItem(int i) {
            return this.a.get(i);
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = CloudSync.this.getLayoutInflater().inflate(R.layout.cloud_service_list_item, (ViewGroup) null);
            }
            int intValue = this.a.get(i).intValue();
            TextView textView = (TextView) view.findViewById(R.id.platformTitle);
            ImageView imageView = (ImageView) view.findViewById(R.id.platformImage);
            TextView textView2 = (TextView) view.findViewById(R.id.platformStatus);
            TextView textView3 = (TextView) view.findViewById(R.id.lastSynced);
            acs a2 = act.b().a(intValue);
            if (a2 != null) {
                textView.setText(a2.k());
                imageView.setImageResource(a2.d());
                textView2.setText(CloudSync.this.getString(R.string.serviceActivated));
                aev a3 = aei.a().g.a(intValue);
                if (a3 != null) {
                    textView3.setText(CloudSync.this.getString(R.string.lastSynced) + " " + agv.a((Activity) CloudSync.this, a3.k));
                }
            }
            return view;
        }

        public final boolean isEnabled(int i) {
            return !aci.a();
        }
    }

    /* access modifiers changed from: private */
    public void a(int i) {
        acs a2 = act.b().a(i);
        if (a2 != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(a2);
            b(arrayList);
        }
    }

    private static CharSequence[] a(List<add> list) {
        CharSequence[] charSequenceArr = new CharSequence[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return charSequenceArr;
            }
            charSequenceArr[i2] = list.get(i2).a((aev) null).c();
            i = i2 + 1;
        }
    }

    private void b(List<acs> list) {
        if (aci.a()) {
            ahf.b(this, R.string.backgroundSyncInProgress);
        } else if (ConnectivityReceiver.a().c) {
            new aci(this, list).execute(new Void[]{null});
        } else {
            ahf.b(this, R.string.noDataConnection);
        }
    }

    private void c() {
        runOnUiThread(new Runnable() {
            public final void run() {
                CloudSync.this.a.a();
                CloudSync.this.a.notifyDataSetChanged();
            }
        });
    }

    public final void a(final int i, boolean z) {
        c();
        if (z) {
            runOnUiThread(new Runnable() {
                public final void run() {
                    afw.a(CloudSync.this, CloudSync.this.getString(R.string.cloudSync), CloudSync.this.getString(R.string.syncNewService), R.string.sync, 17039360, new afw.a() {
                        public final void a(boolean z) {
                            if (z) {
                                CloudSync.this.a(i);
                            }
                        }
                    });
                }
            });
        }
    }

    public final void b(int i, boolean z) {
        c();
    }

    public final void d(int i) {
        c();
    }

    public final void e(int i) {
        c();
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        final int intValue = ((Integer) this.a.getItem(((AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo()).position)).intValue();
        switch (menuItem.getItemId()) {
            case R.id.sync /*2131493134*/:
                a(intValue);
                return true;
            case R.id.reauthorize /*2131493167*/:
                act.b().a(intValue).a((Activity) this);
                return true;
            case R.id.deactivate /*2131493168*/:
                afw.a((Context) this, getString(R.string.deleteAccount), getString(R.string.deleteCloudAccountMsg), (afw.a) new afw.a() {
                    public final void a(boolean z) {
                        if (z) {
                            act.b().b(intValue);
                        }
                    }
                });
                return true;
            case R.id.instructions /*2131493169*/:
                acs a2 = act.b().a(intValue);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getString(R.string.instructionsTitle, new Object[]{a2.c()}));
                builder.setMessage(a2.e());
                builder.setCancelable(true);
                builder.setIcon(a2.d());
                builder.create().show();
                return true;
            default:
                return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0093 A[EDGE_INSN: B:13:0x0093->B:12:0x0093 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x0052  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onCreate(android.os.Bundle r7) {
        /*
            r6 = this;
            r1 = 1
            r2 = 0
            super.onCreate(r7)
            r0 = 2130903081(0x7f030029, float:1.741297E38)
            r6.setContentView((int) r0)
            meanlabs.comicreader.cloud.CloudSync$a r0 = new meanlabs.comicreader.cloud.CloudSync$a
            r0.<init>()
            r6.a = r0
            r0 = 2131493010(0x7f0c0092, float:1.8609488E38)
            android.view.View r0 = r6.findViewById(r0)
            android.widget.ListView r0 = (android.widget.ListView) r0
            meanlabs.comicreader.cloud.CloudSync$a r3 = r6.a
            r0.setAdapter(r3)
            r6.registerForContextMenu(r0)
            r0.setOnItemClickListener(r6)
            r3 = 16908292(0x1020004, float:2.387724E-38)
            android.view.View r3 = r6.findViewById(r3)
            r0.setEmptyView(r3)
            act r0 = defpackage.act.b()
            r0.a = r6
            aei r0 = defpackage.aei.a()
            aew r0 = r0.g
            java.lang.String r3 = "box"
            java.util.List r0 = r0.a((java.lang.String) r3)
            int r3 = r0.size()
            if (r3 <= 0) goto L_0x0093
            java.util.Iterator r3 = r0.iterator()
        L_0x004c:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L_0x0093
            java.lang.Object r0 = r3.next()
            aev r0 = (defpackage.aev) r0
            java.lang.String r4 = r0.g
            if (r4 == 0) goto L_0x0064
            java.lang.String r0 = r0.g
            int r0 = r0.length()
            if (r0 != 0) goto L_0x004c
        L_0x0064:
            r0 = r1
        L_0x0065:
            if (r0 == 0) goto L_0x0092
            r0 = 2131100276(0x7f060274, float:1.7812929E38)
            java.lang.String r0 = r6.getString(r0)
            r3 = 2131100250(0x7f06025a, float:1.7812876E38)
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r5 = 17039370(0x104000a, float:2.42446E-38)
            java.lang.String r5 = r6.getString(r5)
            r4[r2] = r5
            r2 = 2131099729(0x7f060051, float:1.781182E38)
            java.lang.String r2 = r6.getString(r2)
            r4[r1] = r2
            java.lang.String r1 = r6.getString(r3, r4)
            meanlabs.comicreader.cloud.CloudSync$1 r2 = new meanlabs.comicreader.cloud.CloudSync$1
            r2.<init>()
            defpackage.afw.a((android.content.Context) r6, (java.lang.String) r0, (java.lang.String) r1, (defpackage.afw.a) r2)
        L_0x0092:
            return
        L_0x0093:
            r0 = r2
            goto L_0x0065
        */
        throw new UnsupportedOperationException("Method not decompiled: meanlabs.comicreader.cloud.CloudSync.onCreate(android.os.Bundle):void");
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        MenuInflater menuInflater = getMenuInflater();
        contextMenu.setHeaderTitle(R.string.options);
        Integer num = (Integer) this.a.getItem(((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position);
        if (num != null && act.b().a(num.intValue()) != null) {
            menuInflater.inflate(R.menu.cloudsyncitemmenu, contextMenu);
            if (aci.a()) {
                contextMenu.findItem(R.id.sync).setVisible(false);
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.cloudsyncoptionsmenu, menu);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        act.b().a = null;
        super.onDestroy();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Integer num = (Integer) this.a.getItem(i);
        if (num != null) {
            a(num.intValue());
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.downloadSettings /*2131493128*/:
                startActivity(new Intent(this, CloudSyncSettings.class));
                return true;
            case R.id.addService /*2131493170*/:
                final List<add> list = act.b().b;
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(R.string.selectServiceType);
                builder.setSingleChoiceItems(a(list), 0, new DialogInterface.OnClickListener() {
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        act b2 = act.b();
                        CloudSync cloudSync = CloudSync.this;
                        add a2 = b2.a(((add) list.get(i)).a());
                        if (a2 != null) {
                            a2.a(cloudSync, -1);
                        }
                        dialogInterface.dismiss();
                    }
                }).create().show();
                return true;
            case R.id.activeDownloads /*2131493171*/:
                startActivity(new Intent(this, ActiveDownloads.class));
                return true;
            case R.id.syncAll /*2131493172*/:
                List<acs> list2 = act.b().c;
                if (list2.size() > 0) {
                    b(list2);
                    return true;
                }
                ahf.b(this, R.string.noActivatedServices);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
    }
}
