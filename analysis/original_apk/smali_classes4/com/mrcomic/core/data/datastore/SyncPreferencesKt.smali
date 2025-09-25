.class public final Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;
.super Ljava/lang/Object;
.source "SyncPreferences.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"%\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "syncDataStore",
        "Landroidx/datastore/core/DataStore;",
        "Landroidx/datastore/preferences/core/Preferences;",
        "Landroid/content/Context;",
        "getSyncDataStore",
        "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;",
        "syncDataStore$delegate",
        "Lkotlin/properties/ReadOnlyProperty;",
        "core-data_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final syncDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 16
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "syncDataStore"

    const-string v4, "getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const-class v5, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;

    invoke-direct {v2, v5, v3, v4, v0}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v3, "sync_prefs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->syncDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    return-void
.end method

.method public static final synthetic access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Context;

    .line 1
    invoke-static {p0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    return-object v0
.end method

.method private static final getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 3
    .param p0, "$this$syncDataStore"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->syncDataStore$delegate:Lkotlin/properties/ReadOnlyProperty;

    sget-object v1, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadOnlyProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/DataStore;

    return-object v0
.end method
