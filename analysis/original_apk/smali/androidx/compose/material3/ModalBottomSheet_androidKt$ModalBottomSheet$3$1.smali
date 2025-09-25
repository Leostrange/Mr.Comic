.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1\n+ 2 Strings.android.kt\nandroidx/compose/material3/Strings$Companion\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,702:1\n125#2:703\n1116#3,6:704\n1116#3,6:710\n1116#3,6:716\n1116#3,6:722\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1\n*L\n191#1:703\n197#1:704,6\n198#1:710,6\n207#1:716,6\n220#1:722,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $animateToDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $dragHandle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $scrimColor:J

.field final synthetic $settleToDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetMaxWidth:F

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$scrimColor:J

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$modifier:Landroidx/compose/ui/Modifier;

    move/from16 v6, p6

    iput v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetMaxWidth:F

    move-object/from16 v7, p7

    iput-object v7, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    move-object/from16 v8, p8

    iput-object v8, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$containerColor:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$contentColor:J

    move/from16 v13, p13

    iput v13, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$tonalElevation:F

    move-object/from16 v14, p14

    iput-object v14, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$dragHandle:Lkotlin/jvm/functions/Function2;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$content:Lkotlin/jvm/functions/Function3;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 184
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 28
    .param p1, "$this$BoxWithConstraints"    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    const-string v2, "C185@8729L168,190@8937L48,196@9208L36,197@9273L244,206@9577L348,219@10319L23,191@8998L4403:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v15, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p3

    .local v2, "$dirty":I
    and-int/lit8 v3, p3, 0x6

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
    move v14, v2

    .line 185
    .end local v2    # "$dirty":I
    .local v14, "$dirty":I
    and-int/lit8 v2, v14, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 277
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v18, v14

    goto/16 :goto_b

    .line 185
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.ModalBottomSheet.<anonymous>.<anonymous> (ModalBottomSheet.android.kt:184)"

    const v4, 0x77b745df

    invoke-static {v4, v14, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v13

    .line 187
    .local v13, "fullHeight":I
    iget-wide v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$scrimColor:J

    .line 188
    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    .line 189
    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v5}, Landroidx/compose/material3/SheetState;->getTargetValue()Landroidx/compose/material3/SheetValue;

    move-result-object v5

    sget-object v6, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v6, :cond_5

    move v5, v10

    goto :goto_2

    :cond_5
    move v5, v9

    :goto_2
    const/4 v7, 0x0

    .line 186
    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 191
    sget-object v2, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v2, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v3, 0x0

    .line 703
    .local v3, "$i$f$getBottomSheetPaneTitle-adMyvUU":I
    sget v4, Landroidx/compose/material3/R$string;->m3c_bottom_sheet_pane_title:I

    invoke-static {v4}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v2

    .line 191
    .end local v2    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v3    # "$i$f$getBottomSheetPaneTitle-adMyvUU":I
    invoke-static {v2, v15, v9}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "bottomSheetPaneTitle":Ljava/lang/String;
    nop

    .line 193
    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 194
    iget v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetMaxWidth:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v10, v5}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 195
    invoke-static {v2, v4, v10, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 196
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 197
    const v3, -0x585f5af0

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):ModalBottomSheet.android.kt#9igjgp"

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv":Z
    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 704
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 705
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_7

    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v11, v8, :cond_6

    goto :goto_3

    .line 709
    :cond_6
    move-object v5, v11

    goto :goto_4

    .line 706
    :cond_7
    :goto_3
    const/4 v8, 0x0

    .line 197
    .local v8, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$1":I
    new-instance v5, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$1$1;

    invoke-direct {v5, v12}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$1$1;-><init>(Ljava/lang/String;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 706
    .end local v8    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$1":I
    nop

    .line 707
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 708
    nop

    .line 705
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 704
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 197
    .end local v4    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    invoke-static {v2, v9, v5, v10, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, -0x585f5aaf

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 198
    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    move-object/from16 v6, p2

    .restart local v4    # "invalid$iv":Z
    .restart local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 710
    .restart local v7    # "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 711
    .local v9, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_9

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v8, v11, :cond_8

    goto :goto_5

    .line 715
    :cond_8
    move-object v5, v8

    goto :goto_6

    .line 712
    :cond_9
    :goto_5
    const/4 v11, 0x0

    .line 198
    .local v11, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$2":I
    new-instance v10, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$2$1;

    invoke-direct {v10, v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$2$1;-><init>(Landroidx/compose/material3/SheetState;)V

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 712
    .end local v11    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$2":I
    move-object v5, v10

    .line 713
    .restart local v5    # "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 714
    nop

    .line 711
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 710
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v9    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 198
    .end local v4    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, -0x585f597f

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 207
    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .restart local v4    # "invalid$iv":Z
    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    move-object/from16 v7, p2

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 716
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 717
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_b

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_a

    goto :goto_7

    .line 721
    :cond_a
    move-object v1, v9

    goto :goto_8

    .line 718
    :cond_b
    :goto_7
    const/4 v11, 0x0

    .line 209
    .local v11, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$3":I
    nop

    .line 210
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 211
    nop

    .line 208
    invoke-static {v5, v1, v6}, Landroidx/compose/material3/SheetDefaultsKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v1

    .line 718
    .end local v11    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$3":I
    nop

    .line 719
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 720
    nop

    .line 717
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 716
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 207
    .end local v4    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 206
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v1, v5, v4, v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 216
    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v2}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/AnchoredDraggableState;->getDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v18

    .line 217
    sget-object v19, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 218
    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v2}, Landroidx/compose/material3/SheetState;->isVisible()Z

    move-result v20

    .line 215
    const/16 v21, 0x0

    .line 219
    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    invoke-virtual {v2}, Landroidx/compose/material3/SheetState;->getAnchoredDraggableState$material3_release()Landroidx/compose/material3/AnchoredDraggableState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material3/AnchoredDraggableState;->isAnimationRunning()Z

    move-result v22

    .line 215
    const/16 v23, 0x0

    const v2, -0x585f5699

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v15, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 220
    iget-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    move-object/from16 v4, p2

    .local v2, "invalid$iv":Z
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 722
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 723
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_d

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_c

    goto :goto_9

    .line 727
    :cond_c
    move-object v3, v6

    goto :goto_a

    .line 724
    :cond_d
    :goto_9
    const/4 v8, 0x0

    .line 220
    .local v8, "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$4":I
    new-instance v9, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$4$1;

    const/4 v10, 0x0

    invoke-direct {v9, v3, v10}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$4$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 724
    .end local v8    # "$i$a$-cache-ModalBottomSheet_androidKt$ModalBottomSheet$3$1$4":I
    move-object v3, v9

    .line 725
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 726
    nop

    .line 723
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 722
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 220
    .end local v2    # "invalid$iv":Z
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    move-object/from16 v24, v3

    check-cast v24, Lkotlin/jvm/functions/Function3;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 215
    const/16 v25, 0x0

    const/16 v26, 0xa8

    const/16 v27, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v17 .. v27}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 223
    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 224
    int-to-float v3, v13

    .line 222
    invoke-static {v1, v2, v3}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$modalBottomSheetAnchors(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 226
    iget-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 227
    iget-wide v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$containerColor:J

    .line 228
    iget-wide v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$contentColor:J

    .line 229
    iget v8, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$tonalElevation:F

    .line 230
    new-instance v1, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$5;

    iget-object v11, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v9, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v12

    .end local v12    # "bottomSheetPaneTitle":Ljava/lang/String;
    .local v25, "bottomSheetPaneTitle":Ljava/lang/String;
    iget-object v12, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move/from16 v26, v13

    .end local v13    # "fullHeight":I
    .local v26, "fullHeight":I
    iget-object v13, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1;->$content:Lkotlin/jvm/functions/Function3;

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move-object/from16 v20, v9

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-direct/range {v17 .. v22}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$3$1$5;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function3;)V

    const v9, 0x415c57e4

    const/4 v10, 0x1

    invoke-static {v15, v9, v10, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/high16 v13, 0xc00000

    const/16 v1, 0x60

    .line 192
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v25

    .end local v25    # "bottomSheetPaneTitle":Ljava/lang/String;
    .local v16, "bottomSheetPaneTitle":Ljava/lang/String;
    move-object/from16 v12, p2

    move/from16 v17, v26

    .end local v26    # "fullHeight":I
    .local v17, "fullHeight":I
    move/from16 v18, v14

    .end local v14    # "$dirty":I
    .local v18, "$dirty":I
    move v14, v1

    invoke-static/range {v2 .. v14}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 278
    .end local v16    # "bottomSheetPaneTitle":Ljava/lang/String;
    .end local v17    # "fullHeight":I
    :cond_e
    :goto_b
    return-void
.end method
