.class public final synthetic Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavHostController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    iput-boolean p2, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/NavHostController;

    iget-boolean v1, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-static {v0, v1, v2, p1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$r8$lambda$18Xyad6n1AZ9jjr1DxfCNUxHXis(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
