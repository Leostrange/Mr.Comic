.class final Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isDarkTheme$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cAib3SiRXhoSJ4ddMKIQ4VGPkgk(Landroid/content/Context;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->invoke$lambda$0(Landroid/content/Context;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->$isDarkTheme$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroid/content/Context;Z)Lkotlin/Unit;
    .locals 3
    .param p0, "$context"    # Landroid/content/Context;
    .param p1, "newTheme"    # Z

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$1$1;-><init>(Landroid/content/Context;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 127
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const-string v0, "C127@5584L448:MainActivity.kt#kb949x"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 128
    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->$isDarkTheme$delegate:Landroidx/compose/runtime/State;

    invoke-static {v0}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1;->access$invoke$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1;->$context:Landroid/content/Context;

    new-instance v2, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/example/mrcomic/ComposableSingletons$MainActivityKt$lambda-1$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/example/mrcomic/MainActivityKt;->MrComicApp(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 138
    :goto_1
    return-void
.end method
