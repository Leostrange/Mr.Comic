.class public final Landroidx/compose/ui/tooling/ThreadSafeException;
.super Ljava/lang/Object;
.source "PreviewUtils.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/tooling/ThreadSafeException;",
        "",
        "()V",
        "exception",
        "",
        "lock",
        "set",
        "",
        "throwable",
        "throwIfPresent",
        "ui-tooling_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/tooling/ThreadSafeException;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->lock:Ljava/lang/Object;

    .line 146
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 155
    iget-object v0, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 156
    .local v1, "$i$a$-synchronized-ThreadSafeException$set$1":I
    :try_start_0
    iput-object p1, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->exception:Ljava/lang/Throwable;

    .line 157
    nop

    .end local v1    # "$i$a$-synchronized-ThreadSafeException$set$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit v0

    .line 158
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final throwIfPresent()V
    .locals 5

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 162
    .local v1, "$i$a$-synchronized-ThreadSafeException$throwIfPresent$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->exception:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 164
    nop

    .line 161
    .end local v1    # "$i$a$-synchronized-ThreadSafeException$throwIfPresent$1":I
    monitor-exit v0

    .line 167
    return-void

    .line 162
    .restart local v1    # "$i$a$-synchronized-ThreadSafeException$throwIfPresent$1":I
    .local v2, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    .line 163
    .local v3, "$i$a$-let-ThreadSafeException$throwIfPresent$1$1":I
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Landroidx/compose/ui/tooling/ThreadSafeException;->exception:Ljava/lang/Throwable;

    .line 164
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v1    # "$i$a$-synchronized-ThreadSafeException$throwIfPresent$1":I
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-ThreadSafeException$throwIfPresent$1$1":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
