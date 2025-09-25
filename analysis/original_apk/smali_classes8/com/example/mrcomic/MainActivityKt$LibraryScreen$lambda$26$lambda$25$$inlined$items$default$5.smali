.class public final Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGridDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/mrcomic/MainActivityKt;->LibraryScreen(Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5\n+ 2 MainActivity.kt\ncom/example/mrcomic/MainActivityKt\n*L\n1#1,563:1\n588#2,9:564\n688#2:573\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u000b\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
        "it",
        "",
        "invoke",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V",
        "androidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;

.field final synthetic $navController$inlined:Landroidx/navigation/NavController;

.field final synthetic $viewModel$inlined:Lcom/example/mrcomic/ComicViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/navigation/NavController;Lcom/example/mrcomic/ComicViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$navController$inlined:Landroidx/navigation/NavController;

    iput-object p3, p0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$viewModel$inlined:Lcom/example/mrcomic/ComicViewModel;

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 461
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p3

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->invoke(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p1, "$this$items"    # Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;
    .param p2, "it"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "C461@19441L22:LazyGridDsl.kt#7791vq"

    invoke-static {v2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v3, p4

    .local v3, "$dirty":I
    and-int/lit8 v4, p4, 0xe

    const/4 v5, 0x2

    if-nez v4, :cond_1

    move-object/from16 v4, p1

    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    and-int/lit8 v6, p4, 0x70

    if-nez v6, :cond_3

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    .line 462
    :cond_3
    and-int/lit16 v6, v3, 0x2db

    const/16 v7, 0x92

    if-ne v6, v7, :cond_5

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, -0x1

    const-string v7, "androidx.compose.foundation.lazy.grid.items.<anonymous> (LazyGridDsl.kt:461)"

    const v8, 0x29b3c0fe

    invoke-static {v8, v3, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-object v6, v0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$items:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    and-int/lit8 v7, v3, 0xe

    .local v7, "$changed":I
    check-cast v6, Lcom/example/mrcomic/Comic;

    .local v6, "comic":Lcom/example/mrcomic/Comic;
    move-object/from16 v8, p1

    .local v8, "$this$LibraryScreen_u24lambda_u2426_u24lambda_u2425_u24lambda_u2424":Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;
    move-object/from16 v15, p3

    .local v15, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 564
    .local v21, "$i$a$-items$default-MainActivityKt$LibraryScreen$1$3$1":I
    const v9, 0x3dee29d    # 1.3100015E-36f

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "C*587@21961L5483:MainActivity.kt#kb949x"

    invoke-static {v15, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 565
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v9, Landroidx/compose/ui/Modifier;

    .line 566
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    .line 567
    const v10, 0x3f333333    # 0.7f

    const/4 v13, 0x0

    invoke-static {v9, v10, v13, v5, v12}, Landroidx/compose/foundation/layout/AspectRatioKt;->aspectRatio$default(Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 564
    new-instance v5, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;

    iget-object v9, v0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$navController$inlined:Landroidx/navigation/NavController;

    invoke-direct {v5, v9, v6}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$1;-><init>(Landroidx/navigation/NavController;Lcom/example/mrcomic/Comic;)V

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 567
    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 572
    new-instance v14, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2;

    iget-object v13, v0, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$lambda$26$lambda$25$$inlined$items$default$5;->$viewModel$inlined:Lcom/example/mrcomic/ComicViewModel;

    invoke-direct {v14, v6, v13}, Lcom/example/mrcomic/MainActivityKt$LibraryScreen$1$3$1$2;-><init>(Lcom/example/mrcomic/Comic;Lcom/example/mrcomic/ComicViewModel;)V

    const v13, 0x15d67ee0

    invoke-static {v15, v13, v11, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Lkotlin/jvm/functions/Function3;

    const v22, 0x6000030

    const/16 v23, 0xfc

    .line 564
    move v11, v5

    const/4 v5, 0x0

    move-object v13, v5

    const/4 v5, 0x0

    move-object v14, v5

    move-object v5, v15

    .end local v15    # "$composer":Landroidx/compose/runtime/Composer;
    .local v5, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v5

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-static/range {v9 .. v20}, Landroidx/compose/material3/CardKt;->Card(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/CardColors;Landroidx/compose/material3/CardElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 573
    nop

    .line 462
    .end local v5    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "comic":Lcom/example/mrcomic/Comic;
    .end local v7    # "$changed":I
    .end local v8    # "$this$LibraryScreen_u24lambda_u2426_u24lambda_u2425_u24lambda_u2424":Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;
    .end local v21    # "$i$a$-items$default-MainActivityKt$LibraryScreen$1$3$1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 463
    :cond_7
    :goto_4
    return-void
.end method
