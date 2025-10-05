package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.box.androidsdk.content.BoxConstants;
import meanlabs.comicreader.ComicReaderApp;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: aei  reason: default package */
/* compiled from: AppDatabase */
public final class aei {
    private static aei k = new aei();
    public SQLiteDatabase a = ComicReaderApp.a().openOrCreateDatabase("ComicReaderDB", 0, (SQLiteDatabase.CursorFactory) null);
    public aek b = new aek();
    public aen c = new aen();
    public aeu d = new aeu();
    public aes e = new aes();
    public aer f = new aer();
    public aew g = new aew();
    public aep h = new aep();
    private aej i = new aej();
    private int j = 100;

    public static aei a() {
        return k;
    }

    private boolean a(String str, String str2, String str3, String str4) {
        try {
            return c("ALTER TABLE " + str + " ADD COLUMN " + str2 + " " + str3 + " default " + str4);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean c(String str) {
        try {
            this.a.execSQL(str);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    public final Cursor a(String str, int i2) {
        Cursor cursor;
        Exception e2;
        Cursor cursor2 = null;
        while (true) {
            try {
                cursor = k.b(str + i2 + ',' + this.j);
                if (cursor == null) {
                    break;
                }
                try {
                    if (cursor.getCount() == 0) {
                        cursor.close();
                        return null;
                    }
                    cursor.moveToFirst();
                } catch (Exception e3) {
                    e2 = e3;
                    e2.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                        cursor = null;
                    }
                    this.j /= 2;
                    if (this.j < 25) {
                        return cursor;
                    }
                    cursor2 = cursor;
                }
            } catch (Exception e4) {
                Exception exc = e4;
                cursor = cursor2;
                e2 = exc;
            }
            cursor2 = cursor;
        }
        return cursor;
    }

    public final SQLiteStatement a(String str) {
        try {
            return this.a.compileStatement(str);
        } catch (Exception e2) {
            return null;
        }
    }

    public final Cursor b(String str) {
        try {
            return this.a.rawQuery(str, (String[]) null);
        } catch (Exception e2) {
            return null;
        }
    }

    public final boolean b() {
        String b2;
        int version = this.a.getVersion();
        aeu aeu = this.d;
        if (k.c("CREATE TABLE IF NOT EXISTS settings (    settingId TEXT PRIMARY KEY,     value TEXT)")) {
            aeu.a = k.a("INSERT OR REPLACE INTO settings ('settingId', 'value') VALUES (?, ?)");
        }
        aek aek = this.b;
        if (k.c("CREATE TABLE IF NOT EXISTS catalog (    comicId INTEGER PRIMARY KEY AUTOINCREMENT,     state INTEGER,     readtill INTEGER,     bookmark INTEGER,     pages INTEGER,     name TEXT,     path TEXT,     remotepath TEXT,     remotekey TEXT,     serviceref INTEGER, \t hash TEXT, \t lastread INTEGER, \t added DATETIME DEFAULT CURRENT_TIMESTAMP, \t UNIQUE (path) ON CONFLICT FAIL)")) {
            aek.a();
        }
        aej aej = this.i;
        if (k.c("CREATE TABLE IF NOT EXISTS bookmarks (    bookmarkId INTEGER PRIMARY KEY AUTOINCREMENT,     comicId INTEGER,     location INTEGER, \t comment TEXT, \t FOREIGN KEY(comicId) REFERENCES catalog(comicId) ON DELETE CASCADE)")) {
            aej.a = k.a("INSERT INTO bookmarks ('comicId', 'location', 'comment') VALUES (?, ?, ?)");
        }
        aes aes = this.e;
        if (k.c("CREATE TABLE IF NOT EXISTS exclusions (    exclusionid INTEGER PRIMARY KEY AUTOINCREMENT, \t path TEXT)")) {
            aes.a = k.a("INSERT INTO exclusions ('path') VALUES (?)");
        }
        aew aew = this.g;
        if (k.c("CREATE TABLE IF NOT EXISTS Services (    id INTEGER PRIMARY KEY AUTOINCREMENT,     type TEXT,     name TEXT,     basepath TEXT,     domain TEXT,     user TEXT,     password TEXT,     token TEXT,     expiry INTEGER,     flags INTEGER,     lastsynctime INTEGER )")) {
            aew.a = k.a("INSERT INTO Services ('type', 'name', 'basepath', 'domain' ,'user', 'password', 'token', 'expiry', 'flags', 'lastsynctime') VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        }
        aen aen = this.c;
        if (k.c("CREATE TABLE IF NOT EXISTS folders (    id INTEGER PRIMARY KEY AUTOINCREMENT,     path TEXT,     name TEXT,     serviceref INTEGER,     count INTEGER,     foldercount INTEGER,     flags INTEGER,     lastread INTEGER,     comicinprogress INTEGER,     readcomics INTEGER,  \t UNIQUE (path) ON CONFLICT FAIL)")) {
            aen.a();
        }
        aer aer = this.f;
        if (k.c("CREATE TABLE IF NOT EXISTS download (    downloadid INTEGER PRIMARY KEY AUTOINCREMENT,     downloadref TEXT,     service INTEGER,     path TEXT,     size INTEGER,     flags INTEGER,     hash TEXT,\t comicid INTEGER)")) {
            aer.a = k.a("INSERT INTO download ('downloadref', 'service', 'path', 'size', 'flags', 'hash', 'comicid') VALUES (?, ?, ?, ?, ?, ?, ?)");
        }
        aep aep = this.h;
        if (k.c("CREATE TABLE IF NOT EXISTS cloud_exclusions (    exclusionid INTEGER PRIMARY KEY AUTOINCREMENT, \t downloadref TEXT, \t serviceref INTEGER, \t reason INTEGER)")) {
            aep.a = k.a("INSERT INTO cloud_exclusions ('downloadref', 'serviceref', 'reason') VALUES (?, ?, ?)");
        }
        if (version != 10) {
            if (version != 0) {
                try {
                    aeu aeu2 = this.d;
                    aeu2.a();
                    if (version < 2) {
                        aeu2.a("open-position");
                        aeu2.a("start-in");
                        aeu2.a("view-mode");
                        aeu2.a("orientation");
                        aeu2.a("catalog-sort-order");
                        aeu2.a("gridview-theme");
                        aeu2.a("limit-touchzone");
                    }
                    if (version < 3 && (b2 = aeu2.b("max-image-memory")) != null && b2.equals("5")) {
                        aeu2.a("max-image-memory", String.valueOf(aeu.b()));
                    }
                    if (version < 5) {
                        if (aeu2.a("max-image-memory", 6) > 12) {
                            aeu2.a("max-image-memory", "12");
                        }
                        if ("prefRedVelvet".equals(aeu2.b("gridview-theme"))) {
                            aeu2.a("gridview-theme", "prefWoodenShelf");
                        }
                    }
                    if (version < 6) {
                        if ("prefRedVelvet".equals(aeu2.b("gridview-theme"))) {
                            aeu2.a("gridview-theme", "prefWoodenShelf");
                        }
                        if ("false".equals(aeu2.b("split-2-ups"))) {
                            aeu2.a("two-page-scans", "prefSplitInPortrait");
                        }
                    }
                    if (version < 7) {
                        String str = "prefAddToQueue";
                        if (aeu2.c("add-in-paused-mode")) {
                            str = "prefAddAsPaused";
                        }
                        aeu2.a("download-newly-added-files", str);
                    }
                    if (version < 8) {
                        String str2 = "prefCreateThumbsInBackground";
                        if (!aeu2.c("create-smb-sthumbnails")) {
                            str2 = "prefDontCreateThumbs";
                        }
                        aeu2.a("create-smb-sthumbnails", str2);
                        if (!aeu2.c("use-animation")) {
                            aeu2.a("transition-mode", "prefNoTransition");
                        }
                        if (!aeu2.c("group-by-folders")) {
                            aeu2.a("shelf-mode", "prefIndividualComics");
                        }
                    }
                    aek aek2 = this.b;
                    if (version < 2) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("thumbnail", (byte[]) null);
                        k.a.update("catalog", contentValues, (String) null, (String[]) null);
                    }
                    if (version < 6) {
                        aei aei = k;
                        aei.a("catalog", "remotepath", "TEXT", "''");
                        aei.a("catalog", "serviceref", "INTEGER", "-1");
                        aei.a("catalog", "hash", "TEXT", "''");
                        aei.a("catalog", "lastread", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aek2.a();
                    }
                    if (version < 7) {
                        k.a("catalog", "remotekey", "TEXT", "''");
                        aek2.a();
                    }
                    if (version < 10) {
                        aek.b();
                    }
                    aen aen2 = this.c;
                    if (version < 6) {
                        aei aei2 = k;
                        aei2.a("folders", "foldercount", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aei2.a("folders", "flags", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aei2.a("folders", "serviceref", "INTEGER", "-1");
                        aei2.a("folders", "comicinprogress", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aei2.a("folders", "lastread", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aen2.a();
                        k.b.d();
                        aen2.d();
                        aen2.a(aen2.a, -1, true, true);
                    }
                    if (version < 8) {
                        aen2.b();
                    }
                    if (version < 9) {
                        k.a("folders", "readcomics", "INTEGER", BoxConstants.ROOT_FOLDER_ID);
                        aen2.a();
                        k.b.d();
                        aen2.d();
                        aen2.g();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.a.setVersion(10);
        }
        return true;
    }

    public final byte[] c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_version", agv.e());
            jSONObject.put("schema_version", 10);
            this.d.a(jSONObject);
            this.g.a(jSONObject);
            aes.a(jSONObject);
            this.c.a(jSONObject);
            this.b.a(jSONObject);
            aep.a(jSONObject);
            return jSONObject.toString().getBytes(HTTP.UTF_8);
        } catch (JSONException e2) {
            e2.printStackTrace();
            throw new Exception(e2.getMessage());
        }
    }
}
