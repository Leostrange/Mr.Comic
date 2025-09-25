.class final Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->MrComicApp(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
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
.field final synthetic $isDarkTheme:Z

.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic $onThemeChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$18Xyad6n1AZ9jjr1DxfCNUxHXis(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->invoke$lambda$0(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavHostController;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$navController:Landroidx/navigation/NavHostController;

    iput-boolean p2, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$isDarkTheme:Z

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$onThemeChange:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;Landroidx/navigation/NavGraphBuilder;)Lkotlin/Unit;
    .locals 16
    .param p0, "$navController"    # Landroidx/navigation/NavHostController;
    .param p1, "$isDarkTheme"    # Z
    .param p2, "$onThemeChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$this$NavHost"    # Landroidx/navigation/NavGraphBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "$navController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$onThemeChange"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$NavHost"

    move-object/from16 v14, p3

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v4, "library"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v2, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$1;

    invoke-direct {v2, v0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$1;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x3680360

    const/4 v15, 0x1

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function4;

    const/16 v12, 0x7e

    const/4 v13, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v13}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 207
    const-string v4, "settings"

    new-instance v2, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$2;

    move/from16 v13, p1

    invoke-direct {v2, v13, v1}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$2;-><init>(ZLkotlin/jvm/functions/Function1;)V

    const v3, 0x693cb789

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function4;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    move-object v13, v2

    invoke-static/range {v3 .. v13}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 213
    const-string v4, "reader/{comicId}"

    new-instance v2, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$3;

    invoke-direct {v2, v0}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$1$3;-><init>(Landroidx/navigation/NavHostController;)V

    const v3, -0x523a3c18

    invoke-static {v3, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function4;

    const/4 v13, 0x0

    move-object/from16 v3, p3

    invoke-static/range {v3 .. v13}, Landroidx/navigation/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 220
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 198
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .param p1, "innerPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    const-string v2, "innerPadding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "C198@8164L808:MainActivity.kt#kb949x"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0xe

    if-nez v3, :cond_1

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    move/from16 v16, v2

    .line 199
    .end local v2    # "$dirty":I
    .local v16, "$dirty":I
    and-int/lit8 v2, v16, 0x5b

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 220
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 200
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$navController:Landroidx/navigation/NavHostController;

    .line 201
    const-string v3, "library"

    .line 202
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 199
    iget-object v11, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$navController:Landroidx/navigation/NavHostController;

    iget-boolean v12, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$isDarkTheme:Z

    iget-object v13, v0, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2;->$onThemeChange:Lkotlin/jvm/functions/Function1;

    new-instance v14, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;

    invoke-direct {v14, v11, v12, v13}, Lcom/example/mrcomic/MainActivityKt$MrComicApp$2$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;ZLkotlin/jvm/functions/Function1;)V

    const/16 v13, 0x38

    const/16 v17, 0x1f8

    move-object v11, v14

    move-object/from16 v12, p2

    move/from16 v14, v17

    invoke-static/range {v2 .. v14}, Landroidx/navigation/compose/NavHostKt;->NavHost(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 221
    :goto_2
    return-void
.end method
