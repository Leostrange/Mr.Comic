// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class gg extends SQLiteOpenHelper
{

    public static final SimpleDateFormat a;
    private static final String b = gg.getName();
    private static final long c;

    public gg(Context context)
    {
        super(context, "MAPDataStore.db", null, 6);
        gz.a(b, "DatabaseHelper created", "MAP_DB_NAME=MAPDataStore.db, MAP_DB_VERSION=6");
    }

    public static Date a(Date date)
    {
        if (date != null)
        {
            date.setTime((date.getTime() / c) * c);
            return date;
        } else
        {
            return null;
        }
    }

    public final void onCreate(SQLiteDatabase sqlitedatabase)
    {
        gz.c(b, "onCreate called");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS AppInfo (AppFamilyId TEXT NOT NULL, PackageName TEXT NOT NULL, AllowedScopes TEXT, GrantedPermissions TEXT, ClientId TEXT NOT NULL, AppVariantId TEXT,Payload TEXT,UNIQUE (PackageName), PRIMARY KEY (AppVariantId))");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_pkg_name ON AppInfo (PackageName)");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS app_info_index_app_variant_id ON AppInfo (AppVariantId)");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS RequestedScope (Scope TEXT NOT NULL, AppId TEXT NOT NULL, DirectedId TEXT, AtzAccessTokenId INTEGER NOT NULL, AtzRefreshTokenId INTEGER NOT NULL, PRIMARY KEY (Scope,AppId,AtzAccessTokenId,AtzRefreshTokenId))");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_scope ON RequestedScope (Scope)");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_app_id ON RequestedScope (AppId)");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_access_token_id ON RequestedScope (AtzAccessTokenId)");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS requested_scope_index_atz_refresh_token_id ON RequestedScope (AtzRefreshTokenId)");
        sqlitedatabase.execSQL((new StringBuilder("CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_access_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzAccessTokenId != ")).append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.a.d).append(" AND new.AtzAccessTokenId != ").append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.b.d).append(" AND new.AtzAccessTokenId < ").append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.c.d).append(") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;").toString());
        sqlitedatabase.execSQL((new StringBuilder("CREATE TRIGGER IF NOT EXISTS requested_scope_valid_atz_refresh_token_id BEFORE INSERT ON RequestedScope FOR EACH ROW BEGIN SELECT CASE WHEN (new.AtzRefreshTokenId != ")).append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.a.d).append(" AND new.AtzRefreshTokenId != ").append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.b.d).append(" AND new.AtzRefreshTokenId < ").append(com.amazon.identity.auth.device.dataobject.RequestedScope.b.c.d).append(") THEN RAISE(ABORT, 'Invalid authorization token ID') END; END;").toString());
        gz.a(b, "Attempting to create authorizationTokenTable TABLE");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationToken (Id INTEGER PRIMARY KEY AUTOINCREMENT, AppId TEXT NOT NULL, Token TEXT NOT NULL, CreationTime DATETIME NOT NULL, ExpirationTime DATETIME NOT NULL, MiscData BLOB, type INTEGER NOT NULL, directedId TEXT )");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_token_index_app_id ON AuthorizationToken (AppId)");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS AuthorizationCode (Id INTEGER PRIMARY KEY AUTOINCREMENT, Code TEXT NOT NULL, AppId TEXT NOT NULL, AuthorizationTokenId INTEGER NOT NULL )");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_app_id ON AuthorizationCode (AppId)");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS authz_code_index_token_id ON AuthorizationCode (AuthorizationTokenId)");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS Profile (Id INTEGER PRIMARY KEY AUTOINCREMENT, ExpirationTime DATETIME NOT NULL, AppId TEXT NOT NULL, Data TEXT NOT NULL )");
        sqlitedatabase.execSQL("CREATE INDEX IF NOT EXISTS profile_index_app_id ON Profile (AppId)");
    }

    public final void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        gz.c(b, (new StringBuilder("onUpgrade called old=")).append(i).append(" new=").append(j).toString());
        if (i < 4 && j >= 4)
        {
            gz.c(b, "Doing upgrades for 4");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS AuthorizationToken");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS RequestedScope");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
            sqlitedatabase.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_directed_id");
            sqlitedatabase.execSQL("DROP INDEX IF EXISTS RequestedScope.requested_scope_index_atz_token_id");
            sqlitedatabase.execSQL("DROP TRIGGER IF EXISTS requested_scope_valid_atz_token_id");
        }
        if (i < 5 && j >= 5)
        {
            gz.c(b, "Doing upgrades for 5");
        }
        if (i < 6 && j >= 6)
        {
            gz.c(b, "Doing upgrades for 6");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS AppInfo");
        }
        if (j > 6)
        {
            throw new IllegalStateException("Database version was updated, but no upgrade was done");
        } else
        {
            onCreate(sqlitedatabase);
            return;
        }
    }

    static 
    {
        c = TimeUnit.MILLISECONDS.convert(1L, TimeUnit.SECONDS);
        a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
    }
}
