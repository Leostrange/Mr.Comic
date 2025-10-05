package defpackage;

import android.content.Context;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import defpackage.sz;
import defpackage.tc;
import defpackage.te;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: adz  reason: default package */
/* compiled from: OneDriveService */
public final class adz extends acs {
    sz b;

    protected adz(aev aev) {
        super(aev);
        if (aev != null) {
            this.b = new sz(new aeb(aev));
        }
    }

    public final List<adc> a(adc adc) {
        ArrayList arrayList = new ArrayList();
        try {
            sz szVar = this.b;
            String str = adc.c() + "/files";
            sz.b(str);
            st stVar = new st(szVar.c, szVar.b, str);
            szVar.d.a();
            JSONObject jSONObject = (JSONObject) stVar.a();
            te.a aVar = new te.a(stVar.b(), stVar.b);
            if (te.a.d || jSONObject != null) {
                aVar.b = jSONObject;
                JSONArray jSONArray = aVar.a().a.getJSONArray("data");
                if (jSONArray != null && jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add(new ady(jSONArray.getJSONObject(i), adc.b()));
                    }
                }
                return arrayList;
            }
            throw new AssertionError();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean a(String str, String str2, acy acy) {
        FileOutputStream b2;
        try {
            sz szVar = this.b;
            String str3 = str + "/content";
            tb.a(str3, BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
            sz.a(str3);
            ss ssVar = new ss(szVar.c, szVar.b, str3);
            tc tcVar = new tc(new tc.a("GET", ssVar.b));
            ssVar.a.add(new sz.a(tcVar));
            InputStream inputStream = (InputStream) ssVar.a();
            if (tc.c || inputStream != null) {
                tcVar.b = inputStream;
                if (!(tcVar.b == null || (b2 = agz.b(str2)) == null)) {
                    return aha.a(tcVar.b, b2, acy);
                }
                return false;
            }
            throw new AssertionError();
        } catch (Exception e) {
            e.printStackTrace();
            acy.a(acw.c, agv.a(e));
        }
    }

    public final String b() {
        return "onedrive";
    }

    public final String c() {
        return ComicReaderApp.a().getString(R.string.oneDrive);
    }

    public final int d() {
        return R.drawable.onedrive;
    }

    public final String e() {
        Context a = ComicReaderApp.a();
        return a.getString(R.string.cloudSyncInstruction1, new Object[]{c()}) + "\n\n" + a.getString(R.string.cloudSyncInstruction2) + "\n\n" + a.getString(R.string.cloudSyncInstruction3) + "\n\n" + a.getString(R.string.cloudSyncInstruction4) + "\n\n" + a.getString(R.string.cloudSyncInstruction5) + "\n\n" + a.getString(R.string.cloudSyncInstructionNote) + "\n";
    }

    public final boolean f() {
        return this.b != null;
    }

    public final String g() {
        return "OneDrive";
    }

    public final adc j() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(BoxEntity.FIELD_ID, "/me/skydrive");
            jSONObject.put("type", BoxFolder.TYPE);
            jSONObject.put("name", "");
            return new ady(jSONObject, "/");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean l() {
        return true;
    }
}
