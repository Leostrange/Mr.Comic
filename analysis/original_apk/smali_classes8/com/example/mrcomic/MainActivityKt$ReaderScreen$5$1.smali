.class final Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->ReaderScreen(JLkotlin/jvm/functions/Function0;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.example.mrcomic.MainActivityKt$ReaderScreen$5$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x430
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $comicData:Lcom/example/mrcomic/Comic;

.field final synthetic $currentPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pages$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/example/mrcomic/ComicViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$RPVJSfcCliR6xnaB1f_R3IGzQEA(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;F)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->invokeSuspend$lambda$0(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/mrcomic/ComicViewModel;",
            "Lcom/example/mrcomic/Comic;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/example/mrcomic/ComicArchiveReader$ComicPage;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$comicData:Lcom/example/mrcomic/Comic;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;F)Lkotlin/Unit;
    .locals 2
    .param p0, "$viewModel"    # Lcom/example/mrcomic/ComicViewModel;
    .param p1, "$comicData"    # Lcom/example/mrcomic/Comic;
    .param p2, "$currentPage$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p3, "$pages$delegate"    # Landroidx/compose/runtime/MutableState;
    .param p5, "dragAmount"    # F

    .line 1073
    const/high16 p4, 0x42480000    # 50.0f

    cmpl-float p4, p5, p4

    const/4 v0, 0x1

    if-lez p4, :cond_0

    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    if-le p4, v0, :cond_0

    .line 1074
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-static {p2, p4}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$51(Landroidx/compose/runtime/MutableState;I)V

    .line 1075
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/example/mrcomic/ComicViewModel;->updateComicProgress(Lcom/example/mrcomic/Comic;I)V

    goto :goto_0

    .line 1076
    :cond_0
    const/high16 p4, -0x3db80000    # -50.0f

    cmpg-float p4, p5, p4

    if-gez p4, :cond_1

    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    invoke-static {p3}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$53(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_1

    .line 1077
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    add-int/2addr p4, v0

    invoke-static {p2, p4}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$51(Landroidx/compose/runtime/MutableState;I)V

    .line 1078
    invoke-static {p2}, Lcom/example/mrcomic/MainActivityKt;->access$ReaderScreen$lambda$50(Landroidx/compose/runtime/MutableState;)I

    move-result p4

    invoke-virtual {p0, p1, p4}, Lcom/example/mrcomic/ComicViewModel;->updateComicProgress(Lcom/example/mrcomic/Comic;I)V

    .line 1080
    :cond_1
    :goto_0
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p4
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$comicData:Lcom/example/mrcomic/Comic;

    iget-object v3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1071
    iget v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1072
    .local v2, "$this$pointerInput":Landroidx/compose/ui/input/pointer/PointerInputScope;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$viewModel:Lcom/example/mrcomic/ComicViewModel;

    iget-object v7, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$comicData:Lcom/example/mrcomic/Comic;

    iget-object v8, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$pages$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v10, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;

    invoke-direct {v10, v3, v7, v8, v9}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;-><init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x7

    const/4 v11, 0x0

    const/4 v3, 0x1

    iput v3, v1, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->label:I

    move-object v3, v2

    move-object v7, v10

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectHorizontalDragGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$pointerInput":Landroidx/compose/ui/input/pointer/PointerInputScope;
    if-ne v2, v0, :cond_0

    .line 1071
    return-object v0

    .line 1072
    :cond_0
    move-object v0, v1

    .line 1081
    .end local v1    # "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
    .restart local v0    # "this":Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
