.class public final synthetic Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/example/mrcomic/ComicViewModel;

.field public final synthetic f$1:Lcom/example/mrcomic/Comic;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$0:Lcom/example/mrcomic/ComicViewModel;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$1:Lcom/example/mrcomic/Comic;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$0:Lcom/example/mrcomic/ComicViewModel;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$1:Lcom/example/mrcomic/Comic;

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1$$ExternalSyntheticLambda0;->f$3:Landroidx/compose/runtime/MutableState;

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/example/mrcomic/MainActivityKt$ReaderScreen$5$1;->$r8$lambda$RPVJSfcCliR6xnaB1f_R3IGzQEA(Lcom/example/mrcomic/ComicViewModel;Lcom/example/mrcomic/Comic;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputChange;F)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
