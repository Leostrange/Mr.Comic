package defpackage;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import meanlabs.comicat.R;

/* renamed from: acl  reason: default package */
/* compiled from: DuplicateFileFinderTask */
public final class acl extends AsyncTask<Void, Integer, Void> {
    Activity a;
    a b;
    HashMap<String, ArrayList<aeq>> c = new HashMap<>();
    ProgressDialog d;

    /* renamed from: acl$a */
    /* compiled from: DuplicateFileFinderTask */
    public interface a {
        void a(HashMap<String, ArrayList<aeq>> hashMap);
    }

    public acl(Activity activity, a aVar) {
        this.a = activity;
        this.b = aVar;
        this.d = new ProgressDialog(activity);
        this.d.setProgressStyle(1);
        this.d.setIndeterminate(false);
        this.d.setMessage(activity.getString(R.string.findingDuplicates));
        this.d.setMax(5);
        this.d.setProgress(0);
        this.d.setCancelable(false);
        this.d.setCanceledOnTouchOutside(false);
        ahf.a(this.d);
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        HashMap hashMap = new HashMap();
        for (aeq next : ael.d()) {
            Integer valueOf = Integer.valueOf((int) new File(next.d).length());
            ArrayList arrayList = (ArrayList) hashMap.get(valueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                hashMap.put(valueOf, arrayList);
            }
            arrayList.add(next);
        }
        publishProgress(new Integer[]{1});
        HashMap hashMap2 = new HashMap();
        int i = 0;
        for (Map.Entry value : hashMap.entrySet()) {
            ArrayList arrayList2 = (ArrayList) value.getValue();
            if (arrayList2.size() > 1) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    aeq aeq = (aeq) it.next();
                    byte[] a2 = ago.a(aeq.d);
                    String a3 = a2 != null ? ago.a(a2) : null;
                    ArrayList arrayList3 = (ArrayList) hashMap2.get(a3);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                        hashMap2.put(a3, arrayList3);
                    }
                    arrayList3.add(aeq);
                }
            }
            publishProgress(new Integer[]{Integer.valueOf(Math.round((3.0f * ((float) i)) / ((float) hashMap.size())) + 1)});
            i++;
        }
        publishProgress(new Integer[]{4});
        for (Map.Entry entry : hashMap2.entrySet()) {
            if (((ArrayList) entry.getValue()).size() > 1) {
                this.c.put(entry.getKey(), entry.getValue());
            }
        }
        publishProgress(new Integer[]{5});
        return null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onPostExecute(Object obj) {
        try {
            this.d.dismiss();
            this.b.a(this.c);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: protected */
    public final void onPreExecute() {
        this.d.show();
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void onProgressUpdate(Object[] objArr) {
        this.d.setProgress(((Integer[]) objArr)[0].intValue());
    }
}
