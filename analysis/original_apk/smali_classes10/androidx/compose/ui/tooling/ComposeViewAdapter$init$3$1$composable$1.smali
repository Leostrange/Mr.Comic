.class final Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposeViewAdapter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $className:Ljava/lang/String;

.field final synthetic $composer:Landroidx/compose/runtime/Composer;

.field final synthetic $methodName:Ljava/lang/String;

.field final synthetic $parameterProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic $parameterProviderIndex:I

.field final synthetic this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;Ljava/lang/Class;ILandroidx/compose/ui/tooling/ComposeViewAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
            "*>;>;I",
            "Landroidx/compose/ui/tooling/ComposeViewAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$className:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$methodName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$composer:Landroidx/compose/runtime/Composer;

    iput-object p4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$parameterProvider:Ljava/lang/Class;

    iput p5, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$parameterProviderIndex:I

    iput-object p6, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 502
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 503
    nop

    .line 504
    :try_start_0
    sget-object v0, Landroidx/compose/ui/tooling/ComposableInvoker;->INSTANCE:Landroidx/compose/ui/tooling/ComposableInvoker;

    .line 505
    iget-object v1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$className:Ljava/lang/String;

    .line 506
    iget-object v2, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$methodName:Ljava/lang/String;

    .line 507
    iget-object v3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$composer:Landroidx/compose/runtime/Composer;

    .line 508
    iget-object v4, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$parameterProvider:Ljava/lang/Class;

    iget v5, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->$parameterProviderIndex:I

    invoke-static {v4, v5}, Landroidx/compose/ui/tooling/PreviewUtils_androidKt;->getPreviewProviderParameters(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 504
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/ui/tooling/ComposableInvoker;->invokeComposable(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    return-void

    .line 510
    :catchall_0
    move-exception v0

    .line 513
    .local v0, "t":Ljava/lang/Throwable;
    move-object v1, v0

    .line 515
    .local v1, "exception":Ljava/lang/Throwable;
    :goto_0
    instance-of v2, v1, Ljava/lang/ReflectiveOperationException;

    if-eqz v2, :cond_0

    .line 516
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 518
    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$init$3$1$composable$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    invoke-static {v2}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->access$getDelayedException$p(Landroidx/compose/ui/tooling/ComposeViewAdapter;)Landroidx/compose/ui/tooling/ThreadSafeException;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/compose/ui/tooling/ThreadSafeException;->set(Ljava/lang/Throwable;)V

    .line 519
    throw v0
.end method
