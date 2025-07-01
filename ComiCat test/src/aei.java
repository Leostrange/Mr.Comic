// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import meanlabs.comicreader.ComicReaderApp;
import org.json.JSONException;
import org.json.JSONObject;

public final class aei
{

    private static aei k = new aei();
    public SQLiteDatabase a;
    public aek b;
    public aen c;
    public aeu d;
    public aes e;
    public aer f;
    public aew g;
    public aep h;
    private aej i;
    private int j;

    public aei()
    {
        b = new aek();
        c = new aen();
        d = new aeu();
        i = new aej();
        e = new aes();
        f = new aer();
        g = new aew();
        h = new aep();
        j = 100;
        a = ComicReaderApp.a().openOrCreateDatabase("ComicReaderDB", 0, null);
    }

    public static aei a()
    {
        return k;
    }

    private boolean a(String s, String s1, String s2, String s3)
    {
        s = (new StringBuilder("ALTER TABLE ")).append(s).append(" ADD COLUMN ").append(s1).append(" ").append(s2).append(" default ").append(s3).toString();
        boolean flag;
        try
        {
            flag = c(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return false;
        }
        return flag;
    }

    private boolean c(String s)
    {
        try
        {
            a.execSQL(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return true;
    }

    public final Cursor a(String s, int l)
    {
        Object obj = null;
_L4:
        Object obj1;
        obj1 = (new StringBuilder()).append(s).append(l).append(',').append(j).toString();
        obj1 = k.b(((String) (obj1)));
        obj = obj1;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        if (((Cursor) (obj)).getCount() != 0)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        ((Cursor) (obj)).close();
        return null;
        ((Cursor) (obj)).moveToFirst();
        return ((Cursor) (obj));
        Object obj2;
        obj2;
_L2:
        ((Exception) (obj2)).printStackTrace();
        obj2 = obj;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            obj2 = null;
        }
        j = j / 2;
        if (j < 25)
        {
            return ((Cursor) (obj2));
        }
        break MISSING_BLOCK_LABEL_127;
        obj2;
        if (true) goto _L2; else goto _L1
_L1:
        obj = obj2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final SQLiteStatement a(String s)
    {
        try
        {
            s = a.compileStatement(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public final Cursor b(String s)
    {
        try
        {
            s = a.rawQuery(s, null);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public final boolean b()
    {
        int l;
        l = a.getVersion();
        Object obj = d;
        if (k.c("CREATE TABLE IF NOT EXISTS settings (    settingId TEXT PRIMARY KEY,     value TEXT)"))
        {
            obj.a = k.a("INSERT OR REPLACE INTO settings ('settingId', 'value') VALUES (?, ?)");
        }
        obj = b;
        if (k.c("CREATE TABLE IF NOT EXISTS catalog (    comicId INTEGER PRIMARY KEY AUTOINCREMENT,     state INTEGER,     readtill INTEGER,     bookmark INTEGER,     pages INTEGER,     name TEXT,     path TEXT,     remotepath TEXT,     remotekey TEXT,     serviceref INTEGER, \t hash TEXT, \t lastread INTEGER, \t added DATETIME DEFAULT CURRENT_TIMESTAMP, \t UNIQUE (path) ON CONFLICT FAIL)"))
        {
            ((aek) (obj)).a();
        }
        obj = i;
        if (k.c("CREATE TABLE IF NOT EXISTS bookmarks (    bookmarkId INTEGER PRIMARY KEY AUTOINCREMENT,     comicId INTEGER,     location INTEGER, \t comment TEXT, \t FOREIGN KEY(comicId) REFERENCES catalog(comicId) ON DELETE CASCADE)"))
        {
            obj.a = k.a("INSERT INTO bookmarks ('comicId', 'location', 'comment') VALUES (?, ?, ?)");
        }
        obj = e;
        if (k.c("CREATE TABLE IF NOT EXISTS exclusions (    exclusionid INTEGER PRIMARY KEY AUTOINCREMENT, \t path TEXT)"))
        {
            obj.a = k.a("INSERT INTO exclusions ('path') VALUES (?)");
        }
        obj = g;
        if (k.c("CREATE TABLE IF NOT EXISTS Services (    id INTEGER PRIMARY KEY AUTOINCREMENT,     type TEXT,     name TEXT,     basepath TEXT,     domain TEXT,     user TEXT,     password TEXT,     token TEXT,     expiry INTEGER,     flags INTEGER,     lastsynctime INTEGER )"))
        {
            obj.a = k.a("INSERT INTO Services ('type', 'name', 'basepath', 'domain' ,'user', 'password', 'token', 'expiry', 'flags', 'lastsynctime') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        }
        obj = c;
        if (k.c("CREATE TABLE IF NOT EXISTS folders (    id INTEGER PRIMARY KEY AUTOINCREMENT,     path TEXT,     name TEXT,     serviceref INTEGER,     count INTEGER,     foldercount INTEGER,     flags INTEGER,     lastread INTEGER,     comicinprogress INTEGER,     readcomics INTEGER,  \t UNIQUE (path) ON CONFLICT FAIL)"))
        {
            ((aen) (obj)).a();
        }
        obj = f;
        if (k.c("CREATE TABLE IF NOT EXISTS download (    downloadid INTEGER PRIMARY KEY AUTOINCREMENT,     downloadref TEXT,     service INTEGER,     path TEXT,     size INTEGER,     flags INTEGER,     hash TEXT,\t comicid INTEGER)"))
        {
            obj.a = k.a("INSERT INTO download ('downloadref', 'service', 'path', 'size', 'flags', 'hash', 'comicid') VALUES (?, ?, ?, ?, ?, ?, ?)");
        }
        obj = h;
        if (k.c("CREATE TABLE IF NOT EXISTS cloud_exclusions (    exclusionid INTEGER PRIMARY KEY AUTOINCREMENT, \t downloadref TEXT, \t serviceref INTEGER, \t reason INTEGER)"))
        {
            obj.a = k.a("INSERT INTO cloud_exclusions ('downloadref', 'serviceref', 'reason') VALUES (?, ?, ?)");
        }
        if (l == 10)
        {
            break MISSING_BLOCK_LABEL_889;
        }
        if (l == 0)
        {
            break MISSING_BLOCK_LABEL_880;
        }
        aeu aeu1;
        aeu1 = d;
        aeu1.a();
        if (l >= 2)
        {
            break MISSING_BLOCK_LABEL_286;
        }
        aeu1.a("open-position");
        aeu1.a("start-in");
        aeu1.a("view-mode");
        aeu1.a("orientation");
        aeu1.a("catalog-sort-order");
        aeu1.a("gridview-theme");
        aeu1.a("limit-touchzone");
        if (l >= 3)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        Object obj1 = aeu1.b("max-image-memory");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        if (((String) (obj1)).equals("5"))
        {
            aeu1.a("max-image-memory", String.valueOf(aeu.b()));
        }
        if (l >= 5)
        {
            break MISSING_BLOCK_LABEL_375;
        }
        if (aeu1.a("max-image-memory", 6L) > 12L)
        {
            aeu1.a("max-image-memory", "12");
        }
        if ("prefRedVelvet".equals(aeu1.b("gridview-theme")))
        {
            aeu1.a("gridview-theme", "prefWoodenShelf");
        }
        if (l >= 6)
        {
            break MISSING_BLOCK_LABEL_430;
        }
        if ("prefRedVelvet".equals(aeu1.b("gridview-theme")))
        {
            aeu1.a("gridview-theme", "prefWoodenShelf");
        }
        if ("false".equals(aeu1.b("split-2-ups")))
        {
            aeu1.a("two-page-scans", "prefSplitInPortrait");
        }
        if (l >= 7)
        {
            break MISSING_BLOCK_LABEL_462;
        }
        obj1 = "prefAddToQueue";
        if (aeu1.c("add-in-paused-mode"))
        {
            obj1 = "prefAddAsPaused";
        }
        aeu1.a("download-newly-added-files", ((String) (obj1)));
        if (l >= 8)
        {
            break MISSING_BLOCK_LABEL_534;
        }
        obj1 = "prefCreateThumbsInBackground";
        if (!aeu1.c("create-smb-sthumbnails"))
        {
            obj1 = "prefDontCreateThumbs";
        }
        aeu1.a("create-smb-sthumbnails", ((String) (obj1)));
        if (!aeu1.c("use-animation"))
        {
            aeu1.a("transition-mode", "prefNoTransition");
        }
        if (!aeu1.c("group-by-folders"))
        {
            aeu1.a("shelf-mode", "prefIndividualComics");
        }
        obj1 = b;
        if (l >= 2)
        {
            break MISSING_BLOCK_LABEL_576;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("thumbnail", null);
        k.a.update("catalog", contentvalues, null, null);
        if (l >= 6)
        {
            break MISSING_BLOCK_LABEL_658;
        }
        aei aei1 = k;
        aei1.a("catalog", "remotepath", "TEXT", "''");
        aei1.a("catalog", "serviceref", "INTEGER", "-1");
        aei1.a("catalog", "hash", "TEXT", "''");
        aei1.a("catalog", "lastread", "INTEGER", "0");
        ((aek) (obj1)).a();
        if (l >= 7)
        {
            break MISSING_BLOCK_LABEL_687;
        }
        k.a("catalog", "remotekey", "TEXT", "''");
        ((aek) (obj1)).a();
        if (l >= 10)
        {
            break MISSING_BLOCK_LABEL_696;
        }
        aek.b();
        obj1 = c;
        if (l >= 6)
        {
            break MISSING_BLOCK_LABEL_824;
        }
        aei aei2 = k;
        aei2.a("folders", "foldercount", "INTEGER", "0");
        aei2.a("folders", "flags", "INTEGER", "0");
        aei2.a("folders", "serviceref", "INTEGER", "-1");
        aei2.a("folders", "comicinprogress", "INTEGER", "0");
        aei2.a("folders", "lastread", "INTEGER", "0");
        ((aen) (obj1)).a();
        k.b.d();
        ((aen) (obj1)).d();
        ((aen) (obj1)).a(((aen) (obj1)).a, -1, true, true);
        if (l >= 8)
        {
            break MISSING_BLOCK_LABEL_834;
        }
        ((aen) (obj1)).b();
        if (l < 9)
        {
            try
            {
                k.a("folders", "readcomics", "INTEGER", "0");
                ((aen) (obj1)).a();
                k.b.d();
                ((aen) (obj1)).d();
                ((aen) (obj1)).g();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        a.setVersion(10);
        return true;
    }

    public final byte[] c()
    {
        byte abyte0[];
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("app_version", agv.e());
            jsonobject.put("schema_version", 10);
            d.a(jsonobject);
            g.a(jsonobject);
            aes.a(jsonobject);
            c.a(jsonobject);
            b.a(jsonobject);
            aep.a(jsonobject);
            abyte0 = jsonobject.toString().getBytes("UTF-8");
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
            throw new Exception(jsonexception.getMessage());
        }
        return abyte0;
    }

}
