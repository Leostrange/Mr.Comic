// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONException;
import org.json.JSONObject;

public final class aeu
{

    SQLiteStatement a;
    private HashMap b;

    public aeu()
    {
        a = null;
        b = new HashMap();
    }

    static int b()
    {
        long l = agv.b() - 32L;
        if (l > 0L)
        {
            int i = (int)(l / 24L + 6L);
            if (i > 12)
            {
                return 12;
            } else
            {
                return i;
            }
        } else
        {
            return 6;
        }
    }

    private void b(String s, String s1)
    {
        if (b(s) == null)
        {
            a(s, s1);
        }
    }

    public final long a(String s, long l)
    {
        s = b(s);
        long l1 = l;
        if (s != null)
        {
            l1 = l;
            if (s.length() > 0)
            {
                try
                {
                    l1 = Long.parseLong(s);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                    return l;
                }
            }
        }
        return l1;
    }

    public final void a()
    {
        b.clear();
        Object obj = aei.a().b("SELECT settingId, value FROM settings");
        if (obj != null)
        {
            if (((Cursor) (obj)).moveToFirst())
            {
                do
                {
                    b.put(((Cursor) (obj)).getString(0), ((Cursor) (obj)).getString(1));
                } while (((Cursor) (obj)).moveToNext());
            }
            ((Cursor) (obj)).close();
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
        b("brightness-level", "0");
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
        if (ComicReaderApp.a)
        {
            obj = "prefDontDownload";
        } else
        {
            obj = "prefAddToQueue";
        }
        b("download-newly-added-files", ((String) (obj)));
        b("smb-download-newly-added-files", "prefDontDownload");
        b("remove-local-copies", "false");
        b("on-the-fly-reading", "makeLocalCopy");
        b("strip-mode", "false");
        b("no-of-strips", "3");
        b("prefix-search", "false");
        b("app-state-flags", "0");
        b("comic-since-prompt", "0");
        b("should-prompt-again", "true");
        b("should-prompt-again", "0");
    }

    public final void a(int i)
    {
        a("app-state-flags", i, true);
    }

    public final void a(String s)
    {
        String s1 = b(s);
        if (s1 != null && s1.length() > 0 && !s1.startsWith("pref"))
        {
            a(s, (new StringBuilder("pref")).append(s1.replaceAll("[^A-Za-z0-9]", "")).toString());
        }
    }

    public final void a(String s, int i, boolean flag)
    {
        long l = a(s, 0L);
        if (flag)
        {
            l |= i;
        } else
        {
            l &= ~i;
        }
        a(s, String.valueOf(l));
    }

    public final void a(String s, String s1)
    {
        synchronized (a)
        {
            b.put(s, s1);
            a.clearBindings();
            a.bindString(1, s);
            a.bindString(2, s1);
            a.execute();
        }
        return;
        s;
        sqlitestatement;
        JVM INSTR monitorexit ;
        throw s;
    }

    public final void a(String s, boolean flag)
    {
        String s1;
        if (flag)
        {
            s1 = "true";
        } else
        {
            s1 = "false";
        }
        a(s, s1);
    }

    public final void a(JSONObject jsonobject)
    {
        JSONObject jsonobject1;
        try
        {
            jsonobject1 = new JSONObject();
            String s;
            for (Iterator iterator = b.keySet().iterator(); iterator.hasNext(); jsonobject1.put(s, b.get(s)))
            {
                s = (String)iterator.next();
            }

        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            throw new Exception(jsonobject.getMessage());
        }
        jsonobject.put("preferences", jsonobject1);
        return;
    }

    public final boolean a(String s, int i)
    {
        return (a(s, 0L) & (long)i) == (long)i;
    }

    public final String b(String s)
    {
        return (String)b.get(s);
    }

    public final boolean c(String s)
    {
        return "true".equals(b.get(s));
    }

    public final void d(String s)
    {
        boolean flag;
        if (!c(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(s, flag);
    }

    protected final void finalize()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
