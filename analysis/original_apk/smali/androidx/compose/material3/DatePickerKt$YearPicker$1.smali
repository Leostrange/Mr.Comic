.class final Landroidx/compose/material3/DatePickerKt$YearPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->YearPicker(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nDatePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 7 Strings.android.kt\nandroidx/compose/material3/Strings$Companion\n*L\n1#1,2268:1\n74#2:2269\n487#3,4:2270\n491#3,2:2278\n495#3:2284\n25#4:2274\n1116#5,3:2275\n1119#5,3:2281\n1116#5,6:2287\n487#6:2280\n87#7:2285\n85#7:2286\n*S KotlinDebug\n*F\n+ 1 DatePicker.kt\nandroidx/compose/material3/DatePickerKt$YearPicker$1\n*L\n2011#1:2269\n2013#1:2270,4\n2013#1:2278,2\n2013#1:2284\n2013#1:2274\n2013#1:2275,3\n2013#1:2281,3\n2028#1:2287,6\n2013#1:2280\n2014#1:2285\n2015#1:2286\n*E\n"
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
.field final synthetic $calendarModel:Landroidx/compose/material3/CalendarModel;

.field final synthetic $colors:Landroidx/compose/material3/DatePickerColors;

.field final synthetic $displayedMonthMillis:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onYearSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableDates:Landroidx/compose/material3/SelectableDates;

.field final synthetic $yearRange:Lkotlin/ranges/IntRange;


# direct methods
.method constructor <init>(Landroidx/compose/material3/CalendarModel;JLkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/CalendarModel;",
            "J",
            "Lkotlin/ranges/IntRange;",
            "Landroidx/compose/material3/DatePickerColors;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/SelectableDates;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    iput-wide p2, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$displayedMonthMillis:J

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 1997
    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 37
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    const-string v1, "C2000@86448L319,2008@86911L11,2010@87049L7,2008@86923L143,2012@87096L24,2013@87161L53,2014@87253L51,2027@87936L2261,2015@87313L2884:DatePicker.kt#uh7d8r"

    invoke-static {v14, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1998
    and-int/lit8 v1, v15, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2071
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 1998
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string/jumbo v3, "androidx.compose.material3.YearPicker.<anonymous> (DatePicker.kt:1997)"

    const v4, 0x4d99a88d    # 3.22245024E8f

    invoke-static {v4, v15, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    invoke-virtual {v3}, Landroidx/compose/material3/CalendarModel;->getToday()Landroidx/compose/material3/CalendarDate;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/material3/CalendarModel;->getMonth(Landroidx/compose/material3/CalendarDate;)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/CalendarMonth;->getYear()I

    move-result v13

    .line 1999
    .local v13, "currentYear":I
    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$calendarModel:Landroidx/compose/material3/CalendarModel;

    iget-wide v3, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$displayedMonthMillis:J

    invoke-virtual {v1, v3, v4}, Landroidx/compose/material3/CalendarModel;->getMonth(J)Landroidx/compose/material3/CalendarMonth;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material3/CalendarMonth;->getYear()I

    move-result v12

    .line 2004
    .local v12, "displayedYear":I
    nop

    .line 2005
    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v1

    sub-int v1, v12, v1

    const/4 v7, 0x3

    sub-int/2addr v1, v7

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2001
    invoke-static {v1, v8, v14, v8, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v1

    .line 2000
    move-object v11, v1

    .line 2009
    .local v11, "lazyGridState":Landroidx/compose/foundation/lazy/grid/LazyGridState;
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v1, v14, v2}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    .line 2010
    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    invoke-virtual {v2}, Landroidx/compose/material3/DatePickerColors;->getContainerColor-0d7_KjU()J

    move-result-wide v2

    .line 2011
    invoke-static {}, Landroidx/compose/material3/SurfaceKt;->getLocalAbsoluteTonalElevation()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    .local v4, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v5, 0x6

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .line 2269
    .local v6, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v14, v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v4    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v5    # "$changed$iv":I
    .end local v6    # "$i$f$getCurrent":I
    check-cast v9, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v9}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v4

    const/4 v6, 0x0

    .line 2009
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ColorSchemeKt;->applyTonalElevation-RFCenO8(Landroidx/compose/material3/ColorScheme;JFLandroidx/compose/runtime/Composer;I)J

    move-result-wide v22

    .line 2013
    .local v22, "containerColor":J
    move v1, v8

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v3, 0x2e20b340

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2270
    nop

    .line 2272
    move-object/from16 v3, p1

    .line 2273
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    move v4, v8

    .local v4, "$changed$iv$iv":I
    const/4 v5, 0x0

    .local v5, "$i$f$remember":I
    const v6, -0x1d58f75c

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v14, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 2274
    const/4 v6, 0x0

    .local v6, "invalid$iv$iv$iv":Z
    move-object/from16 v9, p1

    .local v9, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 2275
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 2276
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 2277
    const/4 v8, 0x0

    .line 2278
    .local v8, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 2279
    const/16 v18, 0x0

    .line 2280
    .local v18, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v18, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2279
    .end local v18    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move/from16 v19, v1

    .end local v1    # "$changed$iv":I
    .local v19, "$changed$iv":I
    move-object/from16 v1, v18

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 2278
    move/from16 v18, v2

    .end local v2    # "$i$f$rememberCoroutineScope":I
    .local v18, "$i$f$rememberCoroutineScope":I
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 2277
    .end local v8    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    move-object v1, v2

    .line 2281
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2282
    nop

    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2283
    .end local v18    # "$i$f$rememberCoroutineScope":I
    .end local v19    # "$changed$iv":I
    .local v1, "$changed$iv":I
    .restart local v2    # "$i$f$rememberCoroutineScope":I
    :cond_3
    move/from16 v19, v1

    move/from16 v18, v2

    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$rememberCoroutineScope":I
    .restart local v18    # "$i$f$rememberCoroutineScope":I
    .restart local v19    # "$changed$iv":I
    move-object v1, v7

    .line 2276
    :goto_1
    nop

    .line 2275
    .end local v7    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 2274
    .end local v6    # "invalid$iv$iv$iv":Z
    .end local v9    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2273
    .end local v4    # "$changed$iv$iv":I
    .end local v5    # "$i$f$remember":I
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 2284
    .local v1, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 2013
    .end local v1    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$f$rememberCoroutineScope":I
    .end local v19    # "$changed$iv":I
    nop

    .line 2014
    .local v2, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    sget-object v1, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v1, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v3, 0x0

    .line 2285
    .local v3, "$i$f$getDatePickerScrollToShowEarlierYears-adMyvUU":I
    sget v4, Landroidx/compose/material3/R$string;->m3c_date_picker_scroll_to_earlier_years:I

    invoke-static {v4}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v1

    .line 2014
    .end local v1    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v3    # "$i$f$getDatePickerScrollToShowEarlierYears-adMyvUU":I
    const/4 v3, 0x0

    invoke-static {v1, v14, v3}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2015
    .local v1, "scrollToEarlierYearsLabel":Ljava/lang/String;
    sget-object v4, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v4, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v5, 0x0

    .line 2286
    .local v5, "$i$f$getDatePickerScrollToShowLaterYears-adMyvUU":I
    sget v6, Landroidx/compose/material3/R$string;->m3c_date_picker_scroll_to_later_years:I

    invoke-static {v6}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v4

    .line 2015
    .end local v4    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v5    # "$i$f$getDatePickerScrollToShowLaterYears-adMyvUU":I
    invoke-static {v4, v14, v3}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    .line 2017
    .local v10, "scrollToLaterYearsLabel":Ljava/lang/String;
    new-instance v3, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    .line 2018
    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 2019
    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v16, v4

    move-wide/from16 v17, v22

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 2022
    sget-object v5, Landroidx/compose/material3/DatePickerKt$YearPicker$1$1;->INSTANCE:Landroidx/compose/material3/DatePickerKt$YearPicker$1$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 2026
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getSpaceEvenly()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v4

    .line 2027
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-static {}, Landroidx/compose/material3/DatePickerKt;->access$getYearsVerticalPadding$p()F

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    .line 2017
    move-object/from16 v17, v3

    check-cast v17, Landroidx/compose/foundation/lazy/grid/GridCells;

    .line 2022
    nop

    .line 2025
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 2027
    move-object/from16 v20, v5

    check-cast v20, Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 2026
    move-object/from16 v21, v4

    check-cast v21, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v3, -0x39c6c8ed

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):DatePicker.kt#9igjgp"

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v14, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v14, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2028
    iget-object v4, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$yearRange:Lkotlin/ranges/IntRange;

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$onYearSelected:Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$selectableDates:Landroidx/compose/material3/SelectableDates;

    iget-object v7, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->$colors:Landroidx/compose/material3/DatePickerColors;

    move-object/from16 v6, p1

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move/from16 v26, v3

    .local v26, "invalid$iv":Z
    const/16 v27, 0x0

    .line 2287
    .local v27, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 2288
    .local v28, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v26, :cond_5

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_4

    goto :goto_2

    .line 2292
    :cond_4
    move-object/from16 v31, v5

    move-object v0, v6

    move-object/from16 v35, v10

    move-object/from16 v36, v11

    move/from16 v34, v12

    move/from16 v33, v13

    goto :goto_3

    .line 2289
    :cond_5
    :goto_2
    const/16 v29, 0x0

    .line 2028
    .local v29, "$i$a$-cache-DatePickerKt$YearPicker$1$2":I
    new-instance v30, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;

    move-object/from16 v3, v30

    move-object/from16 v31, v5

    .end local v5    # "it$iv":Ljava/lang/Object;
    .local v31, "it$iv":Ljava/lang/Object;
    move-object v5, v11

    move-object v0, v6

    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move-object v6, v2

    move-object/from16 v32, v7

    move-object v7, v1

    move-object/from16 v33, v8

    move-object v8, v10

    move-object/from16 v34, v9

    move v9, v12

    move-object/from16 v35, v10

    .end local v10    # "scrollToLaterYearsLabel":Ljava/lang/String;
    .local v35, "scrollToLaterYearsLabel":Ljava/lang/String;
    move v10, v13

    move-object/from16 v36, v11

    .end local v11    # "lazyGridState":Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .local v36, "lazyGridState":Landroidx/compose/foundation/lazy/grid/LazyGridState;
    move-object/from16 v11, v34

    move/from16 v34, v12

    .end local v12    # "displayedYear":I
    .local v34, "displayedYear":I
    move-object/from16 v12, v33

    move/from16 v33, v13

    .end local v13    # "currentYear":I
    .local v33, "currentYear":I
    move-object/from16 v13, v32

    invoke-direct/range {v3 .. v13}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$2$1;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    check-cast v30, Lkotlin/jvm/functions/Function1;

    .line 2289
    .end local v29    # "$i$a$-cache-DatePickerKt$YearPicker$1$2":I
    move-object/from16 v5, v30

    .line 2290
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2291
    nop

    .line 2288
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 2287
    .end local v28    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v31    # "it$iv":Ljava/lang/Object;
    nop

    .line 2028
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "invalid$iv":Z
    .end local v27    # "$i$f$cache":I
    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/high16 v12, 0x1b0000

    const/16 v13, 0x198

    .line 2016
    move-object v0, v1

    .end local v1    # "scrollToEarlierYearsLabel":Ljava/lang/String;
    .local v0, "scrollToEarlierYearsLabel":Ljava/lang/String;
    move-object/from16 v1, v17

    move-object/from16 v17, v2

    .end local v2    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v17, "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object/from16 v2, v16

    move-object/from16 v3, v36

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v24

    move/from16 v9, v25

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 2072
    .end local v0    # "scrollToEarlierYearsLabel":Ljava/lang/String;
    .end local v17    # "coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v22    # "containerColor":J
    .end local v33    # "currentYear":I
    .end local v34    # "displayedYear":I
    .end local v35    # "scrollToLaterYearsLabel":Ljava/lang/String;
    .end local v36    # "lazyGridState":Landroidx/compose/foundation/lazy/grid/LazyGridState;
    :cond_6
    :goto_4
    return-void
.end method
