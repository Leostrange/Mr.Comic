package defpackage;

import android.content.Context;
import com.box.androidsdk.content.BoxApiFile;
import com.box.androidsdk.content.BoxApiFolder;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.listeners.ProgressListener;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.requests.BoxRequestsFile;
import com.box.androidsdk.content.requests.BoxRequestsFolder;
import defpackage.acy;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import meanlabs.comicat.R;
import meanlabs.comicreader.ComicReaderApp;

/* renamed from: adm  reason: default package */
/* compiled from: BoxContentService */
public final class adm extends acs implements BoxAuthentication.AuthListener {
    private BoxSession b;
    private BoxApiFolder c;
    private BoxApiFile d;

    /* renamed from: adm$a */
    /* compiled from: BoxContentService */
    class a implements ProgressListener {
        long a = 0;
        acy b;

        public a(acy acy) {
            this.b = acy;
        }

        public final void onProgressChanged(long j, long j2) {
            this.b.a((int) (j - this.a), 0);
            this.a = j;
        }
    }

    public adm(aev aev) {
        super(aev);
        if (aev != null && aev.g != null && aev.g.length() > 0) {
            o();
        }
    }

    private boolean a(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        return (boxAuthenticationInfo.getUser() != null ? boxAuthenticationInfo.getUser().getLogin() : "").compareToIgnoreCase(this.a.f) == 0;
    }

    private void o() {
        BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo = new BoxAuthentication.BoxAuthenticationInfo();
        boxAuthenticationInfo.setAccessToken(this.a.h);
        boxAuthenticationInfo.setRefreshToken(this.a.g);
        boxAuthenticationInfo.setRefreshTime(Long.valueOf(this.a.i));
        boxAuthenticationInfo.setClientId("hlwu9uterchhjxtxivzrbri7qffefrrm");
        if (this.a.e.startsWith("uid:")) {
            String substring = this.a.e.substring(4);
            if (substring.length() != 0) {
                boxAuthenticationInfo.setUser(BoxUser.createFromId(substring));
            }
        }
        this.b = new BoxSession(ComicReaderApp.a(), boxAuthenticationInfo, null);
        this.b.setSessionAuthListener(this);
        this.c = new BoxApiFolder(this.b);
        this.d = new BoxApiFile(this.b);
    }

    public final List<adc> a(adc adc) {
        if (!adc.e()) {
            return null;
        }
        adl adl = (adl) adc;
        ArrayList<adc> arrayList = adl.c;
        if (arrayList != null) {
            return arrayList;
        }
        boolean z = true;
        while (z) {
            BoxRequestsFolder.GetFolderItems itemsRequest = this.c.getItemsRequest(adl.a.getId());
            itemsRequest.setOffset(0);
            itemsRequest.setLimit(1000);
            itemsRequest.setFields("name", "size", "type", BoxEntity.FIELD_ID, "sha1");
            try {
                BoxIteratorItems boxIteratorItems = (BoxIteratorItems) itemsRequest.send();
                z = boxIteratorItems.size() == 1000;
                if (boxIteratorItems != null) {
                    if (adl.c == null) {
                        adl.c = new ArrayList<>();
                    }
                    Iterator it = boxIteratorItems.iterator();
                    while (it.hasNext()) {
                        BoxItem boxItem = (BoxItem) it.next();
                        if (boxItem instanceof BoxFolder) {
                            adl.c.add(new adl((BoxFolder) boxItem, adl.b()));
                        } else if (boxItem instanceof BoxFile) {
                            adl.c.add(new adk((BoxFile) boxItem, adl.b()));
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
        }
        return adl.c;
    }

    public final boolean a(String str, String str2, acy acy) {
        if (!f()) {
            return false;
        }
        try {
            a aVar = new a(acy);
            BoxRequestsFile.DownloadFile downloadRequest = this.d.getDownloadRequest((OutputStream) agz.b(str2), str);
            downloadRequest.setProgressListener(aVar);
            downloadRequest.send();
            acy.a(acy.a.SUCCESS);
            return true;
        } catch (BoxException e) {
            e.printStackTrace();
            acy.a(acw.f, agv.a((Exception) e));
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            acy.a(acw.c, agv.a(e2));
            return false;
        }
    }

    public final String b() {
        return "box";
    }

    public final String c() {
        return ComicReaderApp.a().getString(R.string.box);
    }

    public final int d() {
        return R.drawable.box;
    }

    public final String e() {
        Context a2 = ComicReaderApp.a();
        return a2.getString(R.string.cloudSyncInstruction1, new Object[]{c()}) + "\n\n" + a2.getString(R.string.cloudSyncInstruction2) + "\n\n" + a2.getString(R.string.cloudSyncInstruction3) + "\n\n" + a2.getString(R.string.cloudSyncInstruction4) + "\n\n" + a2.getString(R.string.cloudSyncInstruction5) + "\n\n" + a2.getString(R.string.cloudSyncInstructionNote) + "\n";
    }

    public final boolean f() {
        return this.b != null;
    }

    public final String g() {
        return "box";
    }

    public final void i() {
        this.b.logout();
        super.i();
    }

    public final adc j() {
        if (!f()) {
            return null;
        }
        try {
            BoxFolder boxFolder = (BoxFolder) new BoxApiFolder(this.b).getInfoRequest(BoxConstants.ROOT_FOLDER_ID).send();
            return boxFolder != null ? new adl(boxFolder, "") : null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final boolean l() {
        return true;
    }

    public final void onAuthCreated(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        if (!a(boxAuthenticationInfo)) {
            o();
        }
    }

    public final void onAuthFailure(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        if (!a(boxAuthenticationInfo)) {
            o();
        }
    }

    public final void onLoggedOut(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo, Exception exc) {
        if (!a(boxAuthenticationInfo)) {
            o();
        }
    }

    public final void onRefreshed(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        this.a.h = boxAuthenticationInfo.accessToken();
        this.a.g = boxAuthenticationInfo.refreshToken();
        this.a.i = boxAuthenticationInfo.getRefreshTime().longValue();
        aew aew = aei.a().g;
        aew.c(this.a);
    }
}
