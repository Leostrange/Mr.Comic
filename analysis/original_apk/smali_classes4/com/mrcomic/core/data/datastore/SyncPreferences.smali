.class public final Lcom/mrcomic/core/data/datastore/SyncPreferences;
.super Ljava/lang/Object;
.source "SyncPreferences.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrcomic/core/data/datastore/SyncPreferences$Keys;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncPreferences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,86:1\n53#2:87\n55#2:91\n53#2:92\n55#2:96\n53#2:97\n55#2:101\n53#2:102\n55#2:106\n53#2:107\n55#2:111\n53#2:112\n55#2:116\n53#2:117\n55#2:121\n50#3:88\n55#3:90\n50#3:93\n55#3:95\n50#3:98\n55#3:100\n50#3:103\n55#3:105\n50#3:108\n55#3:110\n50#3:113\n55#3:115\n50#3:118\n55#3:120\n107#4:89\n107#4:94\n107#4:99\n107#4:104\n107#4:109\n107#4:114\n107#4:119\n*S KotlinDebug\n*F\n+ 1 SyncPreferences.kt\ncom/mrcomic/core/data/datastore/SyncPreferences\n*L\n32#1:87\n32#1:91\n37#1:92\n37#1:96\n41#1:97\n41#1:101\n46#1:102\n46#1:106\n47#1:107\n47#1:111\n48#1:112\n48#1:116\n49#1:117\n49#1:121\n32#1:88\n32#1:90\n37#1:93\n37#1:95\n41#1:98\n41#1:100\n46#1:103\n46#1:105\n47#1:108\n47#1:110\n48#1:113\n48#1:115\n49#1:118\n49#1:120\n32#1:89\n37#1:94\n41#1:99\n46#1:104\n47#1:109\n48#1:114\n49#1:119\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001)B\u0013\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u001fJ \u0010 \u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J\u0016\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010&\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010\'\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0016\u0010(\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000f0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\nR\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/mrcomic/core/data/datastore/SyncPreferences;",
        "",
        "appContext",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "lastSyncTime",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getLastSyncTime",
        "()Lkotlinx/coroutines/flow/Flow;",
        "periodicEnabled",
        "",
        "getPeriodicEnabled",
        "syncHistory",
        "",
        "getSyncHistory",
        "wifiOnly",
        "getWifiOnly",
        "requireCharging",
        "getRequireCharging",
        "intervalMinutes",
        "getIntervalMinutes",
        "forceRtl",
        "getForceRtl",
        "setLastSync",
        "",
        "ts",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setPeriodicEnabled",
        "enabled",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addHistory",
        "maxItems",
        "",
        "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setWifiOnly",
        "value",
        "setRequireCharging",
        "setIntervalMinutes",
        "setForceRtlEnabled",
        "Keys",
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


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final forceRtl:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final intervalMinutes:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final lastSyncTime:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final periodicEnabled:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final requireCharging:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final syncHistory:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wifiOnly:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 87
    .local v1, "$i$f$map":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 88
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 90
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 91
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 32
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->lastSyncTime:Lkotlinx/coroutines/flow/Flow;

    .line 37
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 92
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 93
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 94
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$2;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 95
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 96
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 37
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->periodicEnabled:Lkotlinx/coroutines/flow/Flow;

    .line 41
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 97
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 98
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 99
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 100
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 101
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 41
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->syncHistory:Lkotlinx/coroutines/flow/Flow;

    .line 46
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 102
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 103
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 104
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$4;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 105
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 106
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 46
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->wifiOnly:Lkotlinx/coroutines/flow/Flow;

    .line 47
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 107
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 108
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 109
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$5;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 110
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 111
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 47
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->requireCharging:Lkotlinx/coroutines/flow/Flow;

    .line 48
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 112
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 113
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 114
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$6;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 115
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 116
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 48
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->intervalMinutes:Lkotlinx/coroutines/flow/Flow;

    .line 49
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .restart local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 117
    .restart local v1    # "$i$f$map":I
    move-object v2, v0

    .restart local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 118
    .restart local v3    # "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 119
    .restart local v4    # "$i$f$unsafeFlow":I
    new-instance v5, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$7;

    invoke-direct {v5, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 120
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 121
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 49
    .end local v0    # "$this$map$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map":I
    iput-object v5, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->forceRtl:Lkotlinx/coroutines/flow/Flow;

    .line 19
    return-void
.end method

.method public static synthetic addHistory$default(Lcom/mrcomic/core/data/datastore/SyncPreferences;JILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mrcomic/core/data/datastore/SyncPreferences;->addHistory(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addHistory(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "ts"    # J
    .param p3, "maxItems"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$addHistory$2;-><init>(JILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 66
    return-object v0
.end method

.method public final getForceRtl()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->forceRtl:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getIntervalMinutes()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->intervalMinutes:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getLastSyncTime()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->lastSyncTime:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getPeriodicEnabled()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->periodicEnabled:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getRequireCharging()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->requireCharging:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getSyncHistory()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->syncHistory:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getWifiOnly()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->wifiOnly:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final setForceRtlEnabled(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setForceRtlEnabled$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setForceRtlEnabled$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    return-object v0
.end method

.method public final setIntervalMinutes(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setIntervalMinutes$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setIntervalMinutes$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    return-object v0
.end method

.method public final setLastSync(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "ts"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setLastSync$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setLastSync$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    return-object v0
.end method

.method public final setPeriodicEnabled(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setPeriodicEnabled$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setPeriodicEnabled$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    return-object v0
.end method

.method public final setRequireCharging(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setRequireCharging$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setRequireCharging$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    return-object v0
.end method

.method public final setWifiOnly(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mrcomic/core/data/datastore/SyncPreferences;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mrcomic/core/data/datastore/SyncPreferencesKt;->access$getSyncDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lcom/mrcomic/core/data/datastore/SyncPreferences$setWifiOnly$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/mrcomic/core/data/datastore/SyncPreferences$setWifiOnly$2;-><init>(ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    return-object v0
.end method
