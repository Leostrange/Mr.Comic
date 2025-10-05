package defpackage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.amazon.identity.auth.device.dataobject.RequestedScope;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* renamed from: gg  reason: default package */
/* compiled from: DatabaseHelper */
public final class gg extends SQLiteOpenHelper {
    public static final SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    private static final String b = gg.class.getName();
    private static final long c = TimeUnit.MILLISECONDS.convert(1, TimeUnit.SECONDS);

    public gg(Context context) {
        super(context, "MAPDataStore.db", (SQLiteDatabase.CursorFactory) null, 6);
        gz.a(b, "DatabaseHelper created", "MAP_DB_NAME=MAPDataStore.db, MAP_DB_VERSION=6");
    }

    public static Date a(Date date) {
        if (date == null) {
            return null;
        }
        date.setTime((date.getTime() / c) * c);
        return date;
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        gz.c(b, "onCreate called");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS AppInfo (AppFamilyId TEXT NOT NULL, PackageName TEXT NOT NULL, AllowedScopes TEXT, GrantedPermissions TEXT, ClientId TEXT NOT NULL, AppVariantId TEXT,Payload TEXT,UNIQUE (PackageName), PRIMARY KEY (AppVariantId))");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_pkg_name ON AppInfo (PackageName)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_app_variant_id ON AppInfo (AppVariantId)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS RequestedScope (Scope TEXT NOT NULL, AppId TEXT NOT NULL, DirectedId TEXT, AtzAccessTokenId INTEGER NOT NULL, AtzRefreshTokenId INTEGER NOT NULL, PRIMARY KEY (Scope,AppId,AtzAccessTokenId,AtzRefreshTokenId))");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_scope ON RequestedScope (Scope)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_app_id ON RequestedScope (AppId)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_access_token_id ON RequestedScope (AtzAccessTokenId)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_refresh_token_id ON RequestedScope (AtzRefreshTokenId)");
        sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_access_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzAccessTokenId != " + RequestedScope.b.UNKNOWN.d + " AND new.AtzAccessTokenId != " + RequestedScope.b.REJECTED.d + " AND new.AtzAccessTokenId < " + RequestedScope.b.GRANTED_LOCALLY.d + ") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;");
        sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_refresh_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzRefreshTokenId != " + RequestedScope.b.UNKNOWN.d + " AND new.AtzRefreshTokenId != " + RequestedScope.b.REJECTED.d + " AND new.AtzRefreshTokenId < " + RequestedScope.b.GRANTED_LOCALLY.d + ") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;");
        gz.a(b, "Attempting to create authorizationTokenTable TABLE");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationToken (Id INTEGER PRIMARY KEY AUTOINCREMENT, AppId TEXT NOT NULL, Token TEXT NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, MiscData BLOB, type INTEGER NOT NULL, directedId TEXT )");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_token_index_app_id ON AuthorizationToken (AppId)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationCode (Id INTEGER PRIMARY KEY AUTOINCREMENT, Code TEXT NOT NULL, AppId TEXT NOT NULL, AuthorizationTokenId INTEGER NOT NULL )");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_app_id ON AuthorizationCode (AppId)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_token_id ON AuthorizationCode (AuthorizationTokenId)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS Profile (Id INTEGER PRIMARY KEY AUTOINCREMENT, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Data TEXT NOT NULL )");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS profile_index_app_id ON Profile (AppId)");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        gz.c(b, "onUpgrade called old=" + i + " new=" + i2);
        if (i < 4 && i2 >= 4) {
            gz.c(b, "Doing upgrades for 4");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS AuthorizationToken");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS RequestedScope");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
            sQLiteDatabase.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_directed_id");
            sQLiteDatabase.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_atz_token_id");
            sQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS requested_scope_valid_atz_token_id");
        }
        if (i < 5 && i2 >= 5) {
            gz.c(b, "Doing upgrades for 5");
        }
        if (i < 6 && i2 >= 6) {
            gz.c(b, "Doing upgrades for 6");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
        }
        if (i2 > 6) {
            throw new IllegalStateException("Database version was updated, but no upgrade was done");
        }
        onCreate(sQLiteDatabase);
    }
}
