.class final Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TimePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TimePickerKt$ClockFace$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$ClockFace$2$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1843:1\n1116#2,6:1844\n*S KotlinDebug\n*F\n+ 1 TimePicker.kt\nandroidx/compose/material3/TimePickerKt$ClockFace$2$1$1\n*L\n1366#1:1844,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $autoSwitchToMinute:Z

.field final synthetic $screen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/compose/material3/TimePickerState;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/material3/TimePickerState;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$screen:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iput-boolean p3, p0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$autoSwitchToMinute:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 1358
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const-string v1, "C1375@54838L924:TimePicker.kt#uh7d8r"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1359
    and-int/lit8 v1, v8, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1395
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 1359
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.ClockFace.<anonymous>.<anonymous>.<anonymous> (TimePicker.kt:1358)"

    const v3, -0x784dc489

    invoke-static {v3, v8, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, -0x1e0ee6bf

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "*1365@54465L88,1364@54400L323"

    invoke-static {v7, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$screen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-object v11, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$screen:Ljava/util/List;

    iget-boolean v12, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$autoSwitchToMinute:Z

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_7

    move v15, v14

    .local v15, "index":I
    const/16 v16, 0x0

    .line 1360
    .local v16, "$i$a$-repeat-TimePickerKt$ClockFace$2$1$1$1":I
    invoke-virtual {v10}, Landroidx/compose/material3/TimePickerState;->is24hour()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Landroidx/compose/material3/TimePickerState;->getSelection-JiIwxys$material3_release()I

    move-result v2

    sget-object v3, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v3}, Landroidx/compose/material3/Selection$Companion;->getMinute-JiIwxys()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/material3/Selection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1363
    :cond_3
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    move v3, v2

    goto :goto_3

    .line 1361
    :cond_4
    :goto_2
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v3, v2

    .line 1360
    :goto_3
    nop

    .line 1366
    .local v3, "outerValue":I
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const v4, -0x7240d3c3

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember):TimePicker.kt#9igjgp"

    invoke-static {v7, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    .local v4, "invalid$iv":Z
    move-object/from16 v5, p1

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 1844
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1845
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v4, :cond_6

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v1, v13, :cond_5

    goto :goto_4

    .line 1849
    :cond_5
    move-object/from16 v18, v1

    goto :goto_5

    .line 1846
    :cond_6
    :goto_4
    const/4 v13, 0x0

    .line 1366
    .local v13, "$i$a$-cache-TimePickerKt$ClockFace$2$1$1$1$1":I
    move-object/from16 v18, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v18, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1$1$1$1;

    invoke-direct {v1, v15}, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1$1$1$1;-><init>(I)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1846
    .end local v13    # "$i$a$-cache-TimePickerKt$ClockFace$2$1$1$1$1":I
    nop

    .line 1847
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1848
    nop

    .line 1845
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 1844
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v18    # "it$iv":Ljava/lang/Object;
    nop

    .line 1366
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v13, 0x0

    invoke-static {v2, v13, v1, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1369
    nop

    .line 1370
    nop

    .line 1371
    const/4 v6, 0x0

    .line 1365
    move-object v2, v10

    move v4, v12

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/TimePickerKt;->access$ClockText(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;IZLandroidx/compose/runtime/Composer;I)V

    .line 1373
    nop

    .line 1359
    .end local v3    # "outerValue":I
    .end local v15    # "index":I
    .end local v16    # "$i$a$-repeat-TimePickerKt$ClockFace$2$1$1$1":I
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1375
    iget-object v1, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerState;->getSelection-JiIwxys$material3_release()I

    move-result v1

    sget-object v2, Landroidx/compose/material3/Selection;->Companion:Landroidx/compose/material3/Selection$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/Selection$Companion;->getHour-JiIwxys()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/material3/Selection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v1}, Landroidx/compose/material3/TimePickerState;->is24hour()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1377
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1378
    sget-object v2, Landroidx/compose/material3/LayoutId;->InnerCircle:Landroidx/compose/material3/LayoutId;

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1379
    sget-object v2, Landroidx/compose/material3/tokens/TimePickerTokens;->INSTANCE:Landroidx/compose/material3/tokens/TimePickerTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/TimePickerTokens;->getClockDialContainerSize-D9Ej5fM()F

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1380
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v3

    .line 1379
    nop

    .line 1380
    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v1, v3, v4, v2}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1381
    invoke-static {}, Landroidx/compose/material3/TimePickerKt;->access$getInnerCircleRadius$p()F

    move-result v2

    .line 1382
    new-instance v3, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1$2;

    iget-object v4, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$state:Landroidx/compose/material3/TimePickerState;

    iget-boolean v5, v0, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1;->$autoSwitchToMinute:Z

    invoke-direct {v3, v4, v5}, Landroidx/compose/material3/TimePickerKt$ClockFace$2$1$1$2;-><init>(Landroidx/compose/material3/TimePickerState;Z)V

    const v4, -0x1abdd8bc

    const/4 v5, 0x1

    invoke-static {v7, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0x1b0

    const/4 v6, 0x0

    .line 1376
    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/TimePickerKt;->access$CircularLayout-uFdPcIQ(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1396
    :cond_9
    :goto_6
    return-void
.end method
