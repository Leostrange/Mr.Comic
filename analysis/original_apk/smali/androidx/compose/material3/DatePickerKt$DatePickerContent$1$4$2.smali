.class final Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->DatePickerContent(Ljava/lang/Long;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2\n+ 2 Strings.android.kt\nandroidx/compose/material3/Strings$Companion\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,2268:1\n67#2:2269\n1116#3,6:2270\n1116#3,6:2313\n74#4,6:2276\n80#4:2310\n84#4:2323\n78#5,11:2282\n91#5:2322\n456#6,8:2293\n464#6,3:2307\n467#6,3:2319\n3737#7,6:2301\n92#8:2311\n58#8:2312\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2\n*L\n1548#1:2269\n1549#1:2270,6\n1561#1:2313,6\n1549#1:2276,6\n1549#1:2310\n1549#1:2323\n1549#1:2282,11\n1549#1:2322\n1549#1:2293,8\n1549#1:2307,3\n1549#1:2319,3\n1549#1:2301,6\n1556#1:2311\n1556#1:2312\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $calendarModel:Landroidx/compose/material3/CalendarModel;

.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $displayedMonth:Landroidx/compose/material3/CalendarMonth;

.field final synthetic $displayedMonthMillis:J

.field final synthetic $monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $selectableDates:Landroidx/compose/material3/SelectableDates;

.field final synthetic $yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $yearRange:Lkotlin/ranges/IntRange;


# direct methods
.method constructor <init>(JLandroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/ranges/IntRange;Landroidx/compose/material3/CalendarMonth;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/CalendarModel;Landroidx/compose/material3/DatePickerColors;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/CalendarMonth;",
            "Landroidx/compose/material3/SelectableDates;",
            "Landroidx/compose/material3/CalendarModel;",
            "Landroidx/compose/material3/DatePickerColors;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$displayedMonthMillis:J

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearRange:Lkotlin/ranges/IntRange;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$displayedMonth:Landroidx/compose/material3/CalendarMonth;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    iput-object p9, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    iput-object p10, p0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 1543
    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 48
    .param p1, "$this$AnimatedVisibility"    # Landroidx/compose/animation/AnimatedVisibilityScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "C1547@69058L48,1548@69160L30,1548@69123L1872:DatePicker.kt#uh7d8r"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1548
    const v2, 0x4726a972

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1547)"

    move/from16 v5, p3

    invoke-static {v2, v5, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_0
    move/from16 v5, p3

    .line 1548
    :goto_0
    sget-object v2, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v2, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v3, 0x0

    .line 2269
    .local v3, "$i$f$getDatePickerYearPickerPaneTitle-adMyvUU":I
    sget v4, Landroidx/compose/material3/R$string;->m3c_date_picker_year_picker_pane_title:I

    invoke-static {v4}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v2

    .line 1548
    .end local v2    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v3    # "$i$f$getDatePickerYearPickerPaneTitle-adMyvUU":I
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    .line 1549
    .local v2, "yearsPaneTitle":Ljava/lang/String;
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v4, Landroidx/compose/ui/Modifier;

    const v6, 0x4a59bcd1    # 3567412.2f

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember):DatePicker.kt#9igjgp"

    invoke-static {v1, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv":Z
    move-object/from16 v8, p2

    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 2270
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 2271
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_2

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_1

    goto :goto_1

    .line 2275
    :cond_1
    move-object v12, v10

    goto :goto_2

    .line 2272
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .line 1549
    .local v12, "$i$a$-cache-DatePickerKt$DatePickerContent$1$4$2$1":I
    new-instance v13, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$1$1;

    invoke-direct {v13, v2}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$1$1;-><init>(Ljava/lang/String;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 2272
    .end local v12    # "$i$a$-cache-DatePickerKt$DatePickerContent$1$4$2$1":I
    move-object v12, v13

    .line 2273
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2274
    nop

    .line 2271
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 2270
    .end local v10    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1549
    .end local v7    # "invalid$iv":Z
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v3, v12, v7, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .local v4, "modifier$iv":Landroidx/compose/ui/Modifier;
    iget-wide v10, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$displayedMonthMillis:J

    iget-object v14, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearPickerVisible$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v15, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$monthsListState:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v7, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$yearRange:Lkotlin/ranges/IntRange;

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$displayedMonth:Landroidx/compose/material3/CalendarMonth;

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    iget-object v8, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2;->$colors:Landroidx/compose/material3/DatePickerColors;

    const/16 v18, 0x0

    .local v18, "$changed$iv":I
    move/from16 v19, v18

    .end local v18    # "$changed$iv":I
    .local v19, "$changed$iv":I
    const/16 v20, 0x0

    .local v20, "$i$f$Column":I
    const v0, -0x1cd0f17e

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Column)P(2,3,1)77@3865L61,78@3931L133:Column.kt#2w3rfo"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2276
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v0

    .line 2277
    .local v0, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    sget-object v18, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    move-object/from16 v21, v2

    .end local v2    # "yearsPaneTitle":Ljava/lang/String;
    .local v21, "yearsPaneTitle":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v2

    .line 2280
    .local v2, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    shr-int/lit8 v18, v19, 0x3

    and-int/lit8 v18, v18, 0xe

    shr-int/lit8 v22, v19, 0x3

    and-int/lit8 v22, v22, 0x70

    or-int v5, v18, v22

    invoke-static {v0, v2, v1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    .local v5, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v18, v19, 0x3

    and-int/lit8 v18, v18, 0x70

    .line 2281
    move/from16 v22, v18

    .local v22, "$changed$iv$iv":I
    const/16 v23, 0x0

    move-object/from16 v24, v0

    .end local v0    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v23, "$i$f$Layout":I
    .local v24, "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const v0, -0x4ee9b9da

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2282
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 2283
    .local v0, "compositeKeyHash$iv$iv":I
    move-object/from16 v25, v2

    .end local v2    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .local v25, "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v2

    .line 2285
    .local v2, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v17

    .line 2292
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v18

    move-object/from16 v26, v4

    .end local v4    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v26, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v4, v22, 0x9

    and-int/lit16 v4, v4, 0x1c00

    or-int/lit8 v4, v4, 0x6

    .line 2284
    move-object/from16 v27, v17

    .local v4, "$changed$iv$iv$iv":I
    .local v27, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 v28, v18

    .local v28, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v29, 0x0

    .line 2293
    .local v29, "$i$f$ReusableComposeNode":I
    move-object/from16 v17, v12

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v12

    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    if-nez v12, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 2294
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 2295
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2296
    move-object/from16 v12, v27

    .end local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 2298
    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_4
    move-object/from16 v12, v27

    .end local v27    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 2300
    :goto_3
    move-object/from16 v18, v12

    .end local v12    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v18, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .local v12, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 2287
    .local v27, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v30, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v31, v3

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2288
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v12, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2290
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .local v3, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v30, 0x0

    .line 2301
    .local v30, "$i$f$set-impl":I
    move-object/from16 v32, v12

    .local v32, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 2302
    .local v33, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v34

    if-nez v34, :cond_6

    move-object/from16 v34, v2

    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v34, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v5

    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v35, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v5, v32

    goto :goto_5

    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :cond_6
    move-object/from16 v34, v2

    move-object/from16 v35, v5

    .line 2303
    .end local v2    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v5    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v32

    .end local v32    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 2306
    :goto_5
    nop

    .line 2301
    .end local v5    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 2306
    nop

    .line 2291
    .end local v3    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v30    # "$i$f$set-impl":I
    nop

    .line 2300
    .end local v12    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 2307
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    shr-int/lit8 v3, v4, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, v28

    .end local v28    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v5, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v5, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const v2, 0x7ab4aae9

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 2309
    shr-int/lit8 v2, v4, 0x9

    and-int/lit8 v2, v2, 0xe

    .local v2, "$changed$iv":I
    move-object/from16 v3, p2

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/16 v27, 0x0

    .line 2310
    .local v27, "$i$a$-Layout-ColumnKt$Column$1$iv":I
    const v12, 0x107e0298

    move/from16 v28, v0

    .end local v0    # "compositeKeyHash$iv$iv":I
    .local v28, "compositeKeyHash$iv$iv":I
    const-string v0, "C79@3979L9:Column.kt#2w3rfo"

    invoke-static {v3, v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    shr-int/lit8 v12, v19, 0x6

    and-int/lit8 v12, v12, 0x70

    or-int/lit8 v30, v12, 0x6

    .local v30, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .local v0, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    move-object v12, v3

    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v32, 0x0

    .line 1550
    .local v32, "$i$a$-Column-DatePickerKt$DatePickerContent$1$4$2$2":I
    move-object/from16 v33, v0

    .end local v0    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .local v33, "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    const v0, -0x3dc4f658

    const-string v1, "C1560@69919L767,1549@69214L1696,1577@70931L46:DatePicker.kt#uh7d8r"

    invoke-static {v12, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 1554
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1556
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getRecommendedSizeForAccessibility()F

    move-result v1

    .local v1, "arg0$iv":F
    const/16 v36, 0x7

    .local v36, "other$iv":I
    move/from16 v37, v36

    .end local v36    # "other$iv":I
    .local v37, "other$iv":I
    const/16 v36, 0x0

    .line 2311
    .local v36, "$i$f$times-u2uoSUM":I
    move/from16 v43, v2

    move/from16 v44, v4

    move/from16 v2, v37

    .end local v4    # "$changed$iv$iv$iv":I
    .end local v37    # "other$iv":I
    .local v2, "other$iv":I
    .local v43, "$changed$iv":I
    .local v44, "$changed$iv$iv$iv":I
    int-to-float v4, v2

    mul-float/2addr v4, v1

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1557
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":I
    .end local v36    # "$i$f$times-u2uoSUM":I
    sget-object v2, Landroidx/compose/material3/DividerDefaults;->INSTANCE:Landroidx/compose/material3/DividerDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/DividerDefaults;->getThickness-D9Ej5fM()F

    move-result v2

    .line 1556
    nop

    .restart local v1    # "arg0$iv":F
    .local v2, "other$iv":F
    const/4 v4, 0x0

    .line 2312
    .local v4, "$i$f$minus-5rwHm24":I
    sub-float v36, v1, v2

    invoke-static/range {v36 .. v36}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 1555
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":F
    .end local v4    # "$i$f$minus-5rwHm24":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->requiredHeight-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1559
    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->getDatePickerHorizontalPadding()F

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v45, v5

    const/4 v5, 0x0

    .end local v5    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v45, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-static {v0, v1, v2, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1560
    const v1, -0x3dc4f397

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1561
    nop

    .local v1, "invalid$iv":Z
    move-object v2, v12

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 2313
    .local v4, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2314
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_8

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v36, v1

    .end local v1    # "invalid$iv":Z
    .local v36, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_7

    goto :goto_6

    .line 2318
    :cond_7
    move-object v1, v5

    move-object/from16 v47, v12

    move-object/from16 v46, v18

    move-object/from16 v18, v17

    goto :goto_7

    .line 2314
    .end local v36    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_8
    move/from16 v36, v1

    .line 2315
    .end local v1    # "invalid$iv":Z
    .restart local v36    # "invalid$iv":Z
    :goto_6
    const/4 v1, 0x0

    .line 1561
    .local v1, "$i$a$-cache-DatePickerKt$DatePickerContent$1$4$2$2$1":I
    new-instance v37, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$2$1$1;

    move-object/from16 v47, v12

    move-object/from16 v46, v18

    move-object/from16 v18, v17

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v18    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v46, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v47, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v37

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Landroidx/compose/material3/DatePickerKt$DatePickerContent$1$4$2$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/ranges/IntRange;Landroidx/compose/material3/CalendarMonth;)V

    check-cast v37, Lkotlin/jvm/functions/Function1;

    .line 2315
    .end local v1    # "$i$a$-cache-DatePickerKt$DatePickerContent$1$4$2$2$1":I
    move-object/from16 v1, v37

    .line 2316
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2317
    nop

    .line 2314
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 2313
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1561
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    .end local v36    # "invalid$iv":Z
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {v47 .. v47}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1573
    nop

    .line 1574
    nop

    .line 1575
    nop

    .line 1576
    const/4 v1, 0x6

    .line 1550
    move-object v9, v0

    move-object/from16 v13, v18

    move-object v14, v8

    move-object v15, v7

    move-object/from16 v16, v31

    move-object/from16 v17, v47

    move/from16 v18, v1

    invoke-static/range {v9 .. v18}, Landroidx/compose/material3/DatePickerKt;->access$YearPicker(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 1578
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/material3/DatePickerColors;->getDividerColor-0d7_KjU()J

    move-result-wide v38

    const/16 v41, 0x0

    const/16 v42, 0x3

    move-object/from16 v40, v47

    invoke-static/range {v36 .. v42}, Landroidx/compose/material3/DividerKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    .line 1550
    invoke-static/range {v47 .. v47}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1579
    nop

    .line 2310
    .end local v30    # "$changed":I
    .end local v32    # "$i$a$-Column-DatePickerKt$DatePickerContent$1$4$2$2":I
    .end local v33    # "$this$invoke_u24lambda_u242":Landroidx/compose/foundation/layout/ColumnScope;
    .end local v47    # "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 2309
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "$i$a$-Layout-ColumnKt$Column$1$iv":I
    .end local v43    # "$changed$iv":I
    nop

    .line 2319
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2320
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 2321
    nop

    .end local v29    # "$i$f$ReusableComposeNode":I
    .end local v44    # "$changed$iv$iv$iv":I
    .end local v45    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v46    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2322
    nop

    .end local v22    # "$changed$iv$iv":I
    .end local v23    # "$i$f$Layout":I
    .end local v28    # "compositeKeyHash$iv$iv":I
    .end local v34    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2323
    nop

    .end local v19    # "$changed$iv":I
    .end local v20    # "$i$f$Column":I
    .end local v24    # "verticalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v25    # "horizontalAlignment$iv":Landroidx/compose/ui/Alignment$Horizontal;
    .end local v26    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v35    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 1580
    :cond_9
    return-void
.end method
