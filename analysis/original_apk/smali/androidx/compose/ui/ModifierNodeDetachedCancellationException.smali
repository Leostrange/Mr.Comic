.class final Landroidx/compose/ui/ModifierNodeDetachedCancellationException;
.super Ljava/util/concurrent/CancellationException;
.source "Modifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Modifier.kt\nandroidx/compose/ui/ModifierNodeDetachedCancellationException\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,416:1\n26#2:417\n*S KotlinDebug\n*F\n+ 1 Modifier.kt\nandroidx/compose/ui/ModifierNodeDetachedCancellationException\n*L\n43#1:417\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/ModifierNodeDetachedCancellationException;",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "()V",
        "fillInStackTrace",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    nop

    .line 39
    nop

    .line 38
    const-string/jumbo v0, "The Modifier.Node was detached"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 2

    .line 43
    const/4 v0, 0x0

    .line 417
    .local v0, "$i$f$emptyArray":I
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 43
    .end local v0    # "$i$f$emptyArray":I
    invoke-virtual {p0, v0}, Landroidx/compose/ui/ModifierNodeDetachedCancellationException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 44
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
