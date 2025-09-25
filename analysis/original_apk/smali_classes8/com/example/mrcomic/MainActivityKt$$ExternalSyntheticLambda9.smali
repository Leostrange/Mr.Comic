.class public final synthetic Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/State;

.field public final synthetic f$1:Landroidx/navigation/NavController;

.field public final synthetic f$2:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$1:Landroidx/navigation/NavController;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$2:Lcom/example/mrcomic/ComicViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$0:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$1:Landroidx/navigation/NavController;

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$$ExternalSyntheticLambda9;->f$2:Lcom/example/mrcomic/ComicViewModel;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    invoke-static {v0, v1, v2, p1}, Lcom/example/mrcomic/MainActivityKt;->$r8$lambda$_Vnqz1AvMvZHrVdY_uO8HQU1Vho(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/foundation/lazy/grid/LazyGridScope;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
