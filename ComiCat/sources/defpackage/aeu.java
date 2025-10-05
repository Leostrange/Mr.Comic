package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.box.androidsdk.content.BoxConstants;
import java.util.HashMap;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aeu  reason: default package */
/* compiled from: Preferences */
public final class aeu {
    SQLiteStatement a = null;
    private HashMap<String, String> b = new HashMap<>();

    static int b() {
        long b2 = agv.b() - 32;
        if (b2 <= 0) {
            return 6;
        }
        int i = (int) ((b2 / 24) + 6);
        if (i > 12) {
            return 12;
        }
        return i;
    }

    private void b(String str, String str2) {
        if (b(str) == null) {
            a(str, str2);
        }
    }

    public final long a(String str, long j) {
        String b2 = b(str);
        if (b2 == null || b2.length() <= 0) {
            return j;
        }
        try {
            return Long.parseLong(b2);
        } catch (Exception e) {
            e.printStackTrace();
            return j;
        }
    }

    public final void a() {
        this.b.clear();
        Cursor b2 = aei.a().b("SELECT settingId, value FROM settings");
        if (b2 != null) {
            if (b2.moveToFirst()) {
                do {
                    this.b.put(b2.getString(0), b2.getString(1));
                } while (b2.moveToNext());
            }
            b2.close();
        }
        b("open-position", "prefLastReadPage");
        b("show-reading-history", "true");
        b("use-fast-page-split", "false");
        b("use-large-thumbnails", "false");
        b("shelf-mode", "prefFlatFolders");
        b("fit-width-on-rotate", "true");
        b("start-in", "prefLastIncompleteComic");
        b("use-animation", "true");
        b("view-mode", "prefFitVisible");
        b("crop-margins", "false");
        b("right-to-left", "false");
        b("page-navigation-rtl", "true");
        b("double-page-rtl", "true");
        b("start-from-tr", "true");
        b("orientation", "prefSensor");
        b("max-image-memory", String.valueOf(b()));
        b("catalog-folders", "");
        b("limit-cloud-scan-to", "");
        b("include-secondry-formats", "prefAlwaysInclude");
        b("cloud-include-secondry-formats", "prefConditionallyInclude");
        b("rescan-on-start", "false");
        b("catalog-sort-order", "prefSortByFilePath");
        b("fix-file-extn", "true");
        b("lock-zoom-level", "false");
        b("always-hide-title-bar", "true");
        b("show-page-numbering", "true");
        b("password-protect", "false");
        b("unlock-code", "");
        b("gridview-theme", "prefWoodenShelf");
        b("clear-bookmark-on-read", "true");
        b("enable-hidden-folders", "false");
        b("unhide-code", "");
        b("hide-on-relaunch", "true");
        b("folders-hidden", "");
        b("current-hidden-state", "true");
        b("brightness-level", BoxConstants.ROOT_FOLDER_ID);
        b("aggressive-caching", "false");
        b("limit-touchzone", "prefDontLimit");
        b("image-enhancer", "false");
        b("transition-mode", "prefTransitionSlide");
        b("animation-speed", "prefNormal");
        b("two-page-scans", "prefSplit");
        b("swipe-senstivity", "prefNormal");
        b("use-right-cover-as-thumbnail", "false");
        b("showInbuiltFolder", "30");
        b("create-thumbnails-in-background", "false");
        b("show-2-pages-in-landscape", "false");
        b("no-swipe-on-zoom", "false");
        b("swipe-for-page-turn", "true");
        b("tap-for-page-turn", "true");
        b("doubletap-for-page-fitting", "true");
        b("press-and-hold-for-seek", "true");
        b("press-and-hold-for-menu", "true");
        b("left-press-and-hold-for-prefs", "true");
        b("right-press-and-hold-for-tools", "true");
        b("left-edge-swipe-for-settings", "false");
        b("right-edge-swipe-for-tools", "false");
        b("fb_update_on_complete", "true");
        b("fb_update_on_start", "true");
        b("fb_post_images", "false");
        b("cloud-sync-download-location", agw.d());
        b("max-parallel-downloads", "2");
        b("download-only-on-wifi", "false");
        b("dont-download-on-roaming", "true");
        b("add-in-paused-mode", "false");
        b("sort-downloads-by", "prefSortByService");
        b("auto-clear-completed", "false");
        b("notify", "prefNotifyTextOnly");
        b("maintain_download_history", "true");
        b("create-cloud-thumbnails", "prefDontCreateThumbs");
        b("create-smb-sthumbnails", "prefCreateThumbsInBackground");
        b("download-newly-added-files", ComicReaderApp.a ? "prefDontDownload" : "prefAddToQueue");
        b("smb-download-newly-added-files", "prefDontDownload");
        b("remove-local-copies", "false");
        b("on-the-fly-reading", "makeLocalCopy");
        b("strip-mode", "false");
        b("no-of-strips", "3");
        b("prefix-search", "false");
        b("app-state-flags", BoxConstants.ROOT_FOLDER_ID);
        b("comic-since-prompt", BoxConstants.ROOT_FOLDER_ID);
        b("should-prompt-again", "true");
        b("should-prompt-again", BoxConstants.ROOT_FOLDER_ID);
    }

    public final void a(int i) {
        a("app-state-flags", i, true);
    }

    public final void a(String str) {
        String b2 = b(str);
        if (b2 != null && b2.length() > 0 && !b2.startsWith("pref")) {
            a(str, "pref" + b2.replaceAll("[^A-Za-z0-9]", ""));
        }
    }

    public final void a(String str, int i, boolean z) {
        long a2 = a(str, 0);
        a(str, String.valueOf(z ? a2 | ((long) i) : a2 & ((long) (i ^ -1))));
    }

    public final void a(String str, String str2) {
        synchronized (this.a) {
            this.b.put(str, str2);
            this.a.clearBindings();
            this.a.bindString(1, str);
            this.a.bindString(2, str2);
            this.a.execute();
        }
    }

    public final void a(String str, boolean z) {
        a(str, z ? "true" : "false");
    }

    public final void a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            for (String next : this.b.keySet()) {
                jSONObject2.put(next, this.b.get(next));
            }
            jSONObject.put("preferences", jSONObject2);
        } catch (JSONException e) {
            throw new Exception(e.getMessage());
        }
    }

    public final boolean a(String str, int i) {
        return (a(str, 0) & ((long) i)) == ((long) i);
    }

    public final String b(String str) {
        return this.b.get(str);
    }

    public final boolean c(String str) {
        return "true".equals(this.b.get(str));
    }

    public final void d(String str) {
        a(str, !c(str));
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        if (this.a != null) {
            this.a.close();
        }
    }
}
