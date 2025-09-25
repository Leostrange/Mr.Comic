.class final Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectionContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nSelectionContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,151:1\n33#2,4:152\n38#2:170\n36#3:156\n36#3:163\n1116#4,6:157\n1116#4,6:164\n*S KotlinDebug\n*F\n+ 1 SelectionContainer.kt\nandroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1\n*L\n109#1:152,4\n109#1:170\n110#1:156\n114#1:163\n110#1:157,6\n114#1:164,6\n*E\n"
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
.field final synthetic $children:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/text/selection/SelectionManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v1, "C102@3763L10,*109@4103L129,113@4299L361,127@4923L495:SelectionContainer.kt#eksfi3"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 103
    and-int/lit8 v1, v9, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_9

    .line 103
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string/jumbo v3, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous>.<anonymous> (SelectionContainer.kt:102)"

    const v4, 0x51f9571e

    invoke-static {v4, v9, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$children:Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v8, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 105
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getHasFocus()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 106
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->isTriviallyCollapsedSelection$foundation_release()Z

    move-result v1

    if-nez v1, :cond_b

    .line 108
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_8

    :cond_3
    iget-object v11, v0, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1;->$manager:Landroidx/compose/foundation/text/selection/SelectionManager;

    move-object v12, v1

    .local v12, "it":Landroidx/compose/foundation/text/selection/Selection;
    const/4 v13, 0x0

    .line 109
    .local v13, "$i$a$-let-SelectionContainerKt$SelectionContainer$3$1$1$1":I
    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .local v14, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v15, 0x0

    .line 152
    .local v15, "$i$f$fastForEach":I
    nop

    .line 153
    const/4 v1, 0x0

    .local v1, "index$iv":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    move v6, v1

    .end local v1    # "index$iv":I
    .local v6, "index$iv":I
    :goto_1
    if-ge v6, v7, :cond_a

    .line 154
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 155
    .local v16, "item$iv":Ljava/lang/Object;
    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .local v5, "isStartHandle":Z
    const/16 v17, 0x0

    .local v17, "$i$a$-fastForEach-SelectionContainerKt$SelectionContainer$3$1$1$1$1":I
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 110
    move v2, v10

    .local v1, "key1$iv":Ljava/lang/Object;
    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .local v3, "$i$f$remember":I
    const v4, 0x44faf204

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 156
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    .local v19, "invalid$iv$iv":Z
    move-object/from16 v20, p1

    .local v20, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 157
    .local v21, "$i$f$cache":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 158
    .local v22, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v19, :cond_5

    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v10, v0, :cond_4

    goto :goto_2

    .line 162
    :cond_4
    move-object/from16 v23, v1

    move-object v0, v10

    move-object/from16 v1, v20

    goto :goto_3

    .line 159
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 111
    .local v0, "$i$a$-remember-SelectionContainerKt$SelectionContainer$3$1$1$1$1$observer$1":I
    invoke-virtual {v11, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->handleDragObserver(Z)Landroidx/compose/foundation/text/TextDragObserver;

    move-result-object v0

    .line 159
    .end local v0    # "$i$a$-remember-SelectionContainerKt$SelectionContainer$3$1$1$1$1$observer$1":I
    nop

    .line 160
    .local v0, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v1

    move-object/from16 v1, v20

    .end local v20    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v23, "key1$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 161
    nop

    .line 158
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 157
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 156
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "invalid$iv$iv":Z
    .end local v21    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 110
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$remember":I
    .end local v23    # "key1$iv":Ljava/lang/Object;
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .local v0, "observer":Landroidx/compose/foundation/text/TextDragObserver;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 114
    const/4 v10, 0x0

    .local v1, "key1$iv":Ljava/lang/Object;
    move v2, v10

    .restart local v2    # "$changed$iv":I
    const/4 v3, 0x0

    const v10, 0x44faf204

    .restart local v3    # "$i$f$remember":I
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v8, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 163
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "invalid$iv$iv":Z
    move-object/from16 v10, p1

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 164
    .local v18, "$i$f$cache":I
    move-object/from16 v19, v1

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .local v19, "key1$iv":Ljava/lang/Object;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 165
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v4, :cond_7

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v22, v2

    .end local v2    # "$changed$iv":I
    .local v22, "$changed$iv":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6

    goto :goto_4

    .line 169
    :cond_6
    move-object/from16 v21, v1

    goto :goto_6

    .line 165
    .end local v22    # "$changed$iv":I
    .restart local v2    # "$changed$iv":I
    :cond_7
    move/from16 v22, v2

    .line 166
    .end local v2    # "$changed$iv":I
    .restart local v22    # "$changed$iv":I
    :goto_4
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$a$-remember-SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1":I
    if-eqz v5, :cond_8

    .line 116
    move-object/from16 v21, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .local v21, "it$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$1;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    goto :goto_5

    .line 118
    .end local v21    # "it$iv$iv":Ljava/lang/Object;
    .restart local v1    # "it$iv$iv":Ljava/lang/Object;
    :cond_8
    move-object/from16 v21, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .restart local v21    # "it$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$2;

    invoke-direct {v1, v11}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 115
    :goto_5
    nop

    .line 166
    .end local v2    # "$i$a$-remember-SelectionContainerKt$SelectionContainer$3$1$1$1$1$positionProvider$1":I
    nop

    .line 167
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    nop

    .line 165
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 164
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v21    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 163
    .end local v4    # "invalid$iv$iv":Z
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 114
    .end local v3    # "$i$f$remember":I
    .end local v19    # "key1$iv":Ljava/lang/Object;
    .end local v22    # "$changed$iv":I
    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 122
    .local v10, "positionProvider":Lkotlin/jvm/functions/Function0;
    if-eqz v5, :cond_9

    .line 123
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    move-object v3, v1

    goto :goto_7

    .line 125
    :cond_9
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getDirection()Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v1

    move-object v3, v1

    .line 122
    :goto_7
    nop

    .local v3, "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0;

    .line 129
    invoke-direct {v1, v10}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 130
    nop

    .line 131
    nop

    .line 132
    invoke-virtual {v12}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result v4

    .line 133
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    move/from16 v18, v6

    .end local v6    # "index$iv":I
    .local v18, "index$iv":I
    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Landroidx/compose/foundation/text/selection/SelectionContainerKt$SelectionContainer$3$1$1$1$1$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v7, 0x0

    .line 128
    move v2, v5

    move/from16 v20, v5

    .end local v5    # "isStartHandle":Z
    .local v20, "isStartHandle":Z
    move-object v5, v6

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 137
    nop

    .line 155
    .end local v0    # "observer":Landroidx/compose/foundation/text/TextDragObserver;
    .end local v3    # "direction":Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .end local v10    # "positionProvider":Lkotlin/jvm/functions/Function0;
    .end local v17    # "$i$a$-fastForEach-SelectionContainerKt$SelectionContainer$3$1$1$1$1":I
    .end local v20    # "isStartHandle":Z
    nop

    .line 153
    .end local v16    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v18, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v19

    .end local v18    # "index$iv":I
    .restart local v6    # "index$iv":I
    goto/16 :goto_1

    :cond_a
    move/from16 v18, v6

    .line 170
    .end local v6    # "index$iv":I
    nop

    .line 138
    .end local v14    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v15    # "$i$f$fastForEach":I
    nop

    .line 108
    .end local v12    # "it":Landroidx/compose/foundation/text/selection/Selection;
    .end local v13    # "$i$a$-let-SelectionContainerKt$SelectionContainer$3$1$1$1":I
    nop

    :cond_b
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 140
    :cond_c
    :goto_9
    return-void
.end method
