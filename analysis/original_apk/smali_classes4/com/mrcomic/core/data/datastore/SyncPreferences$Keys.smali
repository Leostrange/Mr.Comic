.class public final Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;
.super Ljava/lang/Object;
.source "SyncPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrcomic/core/data/datastore/SyncPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Keys"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;",
        "",
        "<init>",
        "()V",
        "LAST_SYNC",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "getLAST_SYNC",
        "()Landroidx/datastore/preferences/core/Preferences$Key;",
        "PERIODIC_ENABLED",
        "",
        "getPERIODIC_ENABLED",
        "SYNC_HISTORY",
        "",
        "getSYNC_HISTORY",
        "WIFI_ONLY",
        "getWIFI_ONLY",
        "REQUIRE_CHARGING",
        "getREQUIRE_CHARGING",
        "INTERVAL_MINUTES",
        "getINTERVAL_MINUTES",
        "FORCE_RTL",
        "getFORCE_RTL",
        "core-data_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FORCE_RTL:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

.field private static final INTERVAL_MINUTES:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAST_SYNC:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERIODIC_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUIRE_CHARGING:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_HISTORY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIFI_ONLY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    invoke-direct {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;-><init>()V

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INSTANCE:Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;

    .line 23
    const-string v0, "last_sync"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->LAST_SYNC:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 24
    const-string v0, "periodic_enabled"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->PERIODIC_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 25
    const-string v0, "sync_history"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->SYNC_HISTORY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 26
    const-string v0, "wifi_only"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->WIFI_ONLY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 27
    const-string v0, "require_charging"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->REQUIRE_CHARGING:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 28
    const-string v0, "sync_interval_minutes"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INTERVAL_MINUTES:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 29
    const-string v0, "force_rtl"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->booleanKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->FORCE_RTL:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFORCE_RTL()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->FORCE_RTL:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getINTERVAL_MINUTES()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->INTERVAL_MINUTES:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getLAST_SYNC()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->LAST_SYNC:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getPERIODIC_ENABLED()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->PERIODIC_ENABLED:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getREQUIRE_CHARGING()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->REQUIRE_CHARGING:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getSYNC_HISTORY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->SYNC_HISTORY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public final getWIFI_ONLY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;->WIFI_ONLY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method
