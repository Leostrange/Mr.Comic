.class public final Landroidx/work/ConfigurationKt;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0008"
    }
    d2 = {
        "DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT",
        "",
        "getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT",
        "()I",
        "createDefaultExecutor",
        "Ljava/util/concurrent/Executor;",
        "isTaskExecutor",
        "",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 462
    const/16 v0, 0x8

    sput v0, Landroidx/work/ConfigurationKt;->DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT:I

    return-void
.end method

.method public static final synthetic access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "isTaskExecutor"    # Z

    .line 1
    invoke-static {p0}, Landroidx/work/ConfigurationKt;->createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method private static final createDefaultExecutor(Z)Ljava/util/concurrent/Executor;
    .locals 3
    .param p0, "isTaskExecutor"    # Z

    .line 465
    new-instance v0, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;

    invoke-direct {v0, p0}, Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;-><init>(Z)V

    .line 475
    .local v0, "factory":Landroidx/work/ConfigurationKt$createDefaultExecutor$factory$1;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 476
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ThreadFactory;

    .line 473
    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string/jumbo v2, "newFixedThreadPool(\n    \u2026)),\n        factory\n    )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/Executor;

    return-object v1
.end method

.method public static final getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT()I
    .locals 1

    .line 462
    sget v0, Landroidx/work/ConfigurationKt;->DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT:I

    return v0
.end method
