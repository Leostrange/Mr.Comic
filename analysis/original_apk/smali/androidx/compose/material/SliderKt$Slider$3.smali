.class final Landroidx/compose/material/SliderKt$Slider$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Slider$3\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,1195:1\n74#2:1196\n74#2:1197\n487#3,4:1198\n491#3,2:1206\n495#3:1212\n25#4:1202\n25#4:1213\n25#4:1220\n67#4,3:1227\n66#4:1230\n1116#5,3:1203\n1119#5,3:1209\n1116#5,6:1214\n1116#5,6:1221\n1116#5,6:1231\n1116#5,6:1237\n487#6:1208\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Slider$3\n*L\n180#1:1196\n185#1:1197\n196#1:1198,4\n196#1:1206,2\n196#1:1212\n196#1:1202\n197#1:1213\n198#1:1220\n200#1:1227,3\n200#1:1230\n196#1:1203,3\n196#1:1209,3\n197#1:1214,6\n198#1:1221,6\n200#1:1231,6\n240#1:1237,6\n196#1:1208\n*E\n"
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
.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p2, p0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    iput-object p3, p0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Slider$3;->$colors:Landroidx/compose/material/SliderColors;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeState:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 1
    .param p0, "$valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p1, "minPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p2, "maxPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p3, "userValue"    # F

    .line 179
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$Slider$3;->invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;F)F
    .locals 1
    .param p0, "minPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p1, "maxPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p2, "$valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "offset"    # F

    .line 179
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$Slider$3;->invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;F)F

    move-result v0

    return v0
.end method

.method private static final invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 4
    .param p0, "$valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p1, "minPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p2, "maxPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p3, "userValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "F)F"
        }
    .end annotation

    .line 194
    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p0}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v0, v1, p3, v2, v3}, Landroidx/compose/material/SliderKt;->access$scale(FFFFF)F

    move-result v0

    return v0
.end method

.method private static final invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;F)F
    .locals 4
    .param p0, "minPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p1, "maxPx"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p2, "$valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "offset"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 191
    iget v0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {p2}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {p2}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v0, v1, p3, v2, v3}, Landroidx/compose/material/SliderKt;->access$scale(FFFFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;

    .line 179
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/compose/material/SliderKt$Slider$3;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 46
    .param p1, "$this$BoxWithConstraints"    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    const-string v1, "C179@8337L7,*184@8498L7,195@8912L24,196@8961L54,197@9042L36,199@9109L392,208@9511L83,210@9627L623,246@11085L209:Slider.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p3

    .local v1, "$dirty":I
    and-int/lit8 v2, p3, 0xe

    move-object/from16 v11, p1

    if-nez v2, :cond_1

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    move v12, v1

    .line 180
    .end local v1    # "$dirty":I
    .local v12, "$dirty":I
    and-int/lit8 v1, v12, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 255
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_a

    .line 180
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.Slider.<anonymous> (Slider.kt:179)"

    const v3, 0x7c485b8e

    invoke-static {v3, v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 1196
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 180
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v8, 0x0

    if-ne v6, v1, :cond_5

    const/4 v1, 0x1

    move/from16 v17, v1

    goto :goto_2

    :cond_5
    move/from16 v17, v8

    .line 181
    .local v17, "isRtl":Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    int-to-float v9, v1

    .line 182
    .local v9, "widthPx":F
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v15, v1

    .line 183
    .local v15, "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v14, v1

    .line 185
    .local v14, "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .restart local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .restart local v2    # "$changed$iv":I
    const/4 v3, 0x0

    .line 1197
    .restart local v3    # "$i$f$getCurrent":I
    invoke-static {v10, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 185
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v1, v4

    check-cast v1, Landroidx/compose/ui/unit/Density;

    .local v1, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v2, 0x0

    .line 186
    .local v2, "$i$a$-with-SliderKt$Slider$3$1":I
    invoke-static {}, Landroidx/compose/material/SliderKt;->getThumbRadius()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    sub-float v3, v9, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 187
    invoke-static {}, Landroidx/compose/material/SliderKt;->getThumbRadius()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    iget v5, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 188
    nop

    .line 185
    .end local v1    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v2    # "$i$a$-with-SliderKt$Slider$3$1":I
    nop

    .line 196
    move v1, v8

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$rememberCoroutineScope":I
    const v3, 0x2e20b340

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1198
    nop

    .line 1200
    move-object/from16 v3, p2

    .line 1201
    .local v3, "composer$iv":Landroidx/compose/runtime/Composer;
    move v5, v8

    .local v5, "$changed$iv$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v7, -0x1d58f75c

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1202
    const/16 v16, 0x0

    .local v16, "invalid$iv$iv$iv":Z
    move-object/from16 v18, p2

    .local v18, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 1203
    .local v19, "$i$f$cache":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1204
    .local v21, "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v4, v8, :cond_6

    .line 1205
    const/4 v8, 0x0

    .line 1206
    .local v8, "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 1207
    const/16 v22, 0x0

    .line 1208
    .local v22, "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    sget-object v22, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1207
    .end local v22    # "$i$a$-rememberCoroutineScope-EffectsKt$rememberCoroutineScope$1":I
    move-object/from16 v7, v22

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v7, v3}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    .line 1206
    move/from16 v22, v1

    .end local v1    # "$changed$iv":I
    .local v22, "$changed$iv":I
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, v7}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 1205
    .end local v8    # "$i$a$-remember-EffectsKt$rememberCoroutineScope$wrapper$1$iv":I
    nop

    .line 1209
    .local v1, "value$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v7, v18

    .end local v18    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v7, "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1210
    nop

    .end local v1    # "value$iv$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 1211
    .end local v7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$changed$iv":I
    .local v1, "$changed$iv":I
    .restart local v18    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_6
    move/from16 v22, v1

    move-object/from16 v7, v18

    .end local v1    # "$changed$iv":I
    .end local v18    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$changed$iv":I
    move-object v1, v4

    .line 1204
    :goto_3
    nop

    .line 1203
    .end local v4    # "it$iv$iv$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ComposerKt$cache$1$iv$iv$iv":I
    nop

    .line 1202
    .end local v7    # "$this$cache$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv$iv":Z
    .end local v19    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1201
    .end local v5    # "$changed$iv$iv":I
    .end local v6    # "$i$f$remember":I
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 1212
    .local v1, "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v30

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 196
    .end local v1    # "wrapper$iv":Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;
    .end local v2    # "$i$f$rememberCoroutineScope":I
    .end local v3    # "composer$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$changed$iv":I
    nop

    .line 197
    .local v30, "scope":Lkotlinx/coroutines/CoroutineScope;
    iget v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    const v5, -0x1d58f75c

    .local v4, "$i$f$remember":I
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1213
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object/from16 v6, p2

    .local v6, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 1214
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1215
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v19, v3

    .end local v3    # "$changed$iv":I
    .local v19, "$changed$iv":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v8, v3, :cond_7

    .line 1216
    const/4 v3, 0x0

    .line 197
    .local v3, "$i$a$-remember-SliderKt$Slider$3$rawOffset$1":I
    invoke-static {v2, v14, v15, v1}, Landroidx/compose/material/SliderKt$Slider$3;->access$invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v1

    .line 1216
    .end local v3    # "$i$a$-remember-SliderKt$Slider$3$rawOffset$1":I
    nop

    .line 1217
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1218
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_4

    .line 1219
    :cond_7
    move-object v1, v8

    .line 1215
    :goto_4
    nop

    .line 1214
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1213
    .end local v5    # "invalid$iv$iv":Z
    .end local v6    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 197
    .end local v4    # "$i$f$remember":I
    .end local v19    # "$changed$iv":I
    move-object/from16 v33, v1

    check-cast v33, Landroidx/compose/runtime/MutableFloatState;

    .line 198
    .local v33, "rawOffset":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "$changed$iv":I
    const/4 v1, 0x0

    const v3, -0x1d58f75c

    .local v1, "$i$f$remember":I
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v13}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1220
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object/from16 v4, p2

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1221
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1222
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_8

    .line 1223
    const/4 v8, 0x0

    .line 198
    .local v8, "$i$a$-remember-SliderKt$Slider$3$pressOffset$1":I
    const/4 v13, 0x0

    invoke-static {v13}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v8

    .line 1223
    .end local v8    # "$i$a$-remember-SliderKt$Slider$3$pressOffset$1":I
    nop

    .line 1224
    .local v8, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1225
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 1226
    :cond_8
    move-object v8, v6

    .line 1222
    :goto_5
    nop

    .line 1221
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1220
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 198
    .end local v1    # "$i$f$remember":I
    .end local v2    # "$changed$iv":I
    move-object/from16 v34, v8

    check-cast v34, Landroidx/compose/runtime/MutableFloatState;

    .line 200
    .local v34, "pressOffset":Landroidx/compose/runtime/MutableFloatState;
    iget v1, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "key1$iv":Ljava/lang/Object;
    iget v2, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .local v2, "key2$iv":Ljava/lang/Object;
    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .local v3, "key3$iv":Ljava/lang/Object;
    iget-object v4, v0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeState:Landroidx/compose/runtime/State;

    iget-object v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    const/4 v6, 0x0

    .local v6, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$remember":I
    const v8, 0x607fb4c4

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v10, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1227
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 1228
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 1227
    or-int/2addr v8, v13

    .line 1229
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 1227
    or-int/2addr v8, v13

    .line 1230
    nop

    .local v8, "invalid$iv$iv":Z
    move-object/from16 v13, p2

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1231
    .local v16, "$i$f$cache":I
    move-object/from16 v25, v1

    .end local v1    # "key1$iv":Ljava/lang/Object;
    .local v25, "key1$iv":Ljava/lang/Object;
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 1232
    .local v26, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v8, :cond_a

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v27, v2

    .end local v2    # "key2$iv":Ljava/lang/Object;
    .local v27, "key2$iv":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_9

    goto :goto_6

    .line 1236
    :cond_9
    move-object/from16 v28, v1

    goto :goto_7

    .line 1232
    .end local v27    # "key2$iv":Ljava/lang/Object;
    .restart local v2    # "key2$iv":Ljava/lang/Object;
    :cond_a
    move-object/from16 v27, v2

    .line 1233
    .end local v2    # "key2$iv":Ljava/lang/Object;
    .restart local v27    # "key2$iv":Ljava/lang/Object;
    :goto_6
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$a$-remember-SliderKt$Slider$3$draggableState$1":I
    move-object/from16 v28, v1

    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .local v28, "it$iv$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material/SliderDraggableState;

    new-instance v29, Landroidx/compose/material/SliderKt$Slider$3$draggableState$1$1;

    move-object/from16 v18, v29

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v18 .. v24}, Landroidx/compose/material/SliderKt$Slider$3$draggableState$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/State;Lkotlin/ranges/ClosedFloatingPointRange;)V

    move-object/from16 v4, v29

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v4}, Landroidx/compose/material/SliderDraggableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 1233
    .end local v2    # "$i$a$-remember-SliderKt$Slider$3$draggableState$1":I
    nop

    .line 1234
    .local v1, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1235
    nop

    .line 1232
    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 1231
    .end local v26    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v28    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1230
    .end local v8    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 200
    .end local v3    # "key3$iv":Ljava/lang/Object;
    .end local v6    # "$changed$iv":I
    .end local v7    # "$i$f$remember":I
    .end local v25    # "key1$iv":Ljava/lang/Object;
    .end local v27    # "key2$iv":Ljava/lang/Object;
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/material/SliderDraggableState;

    .line 209
    .local v22, "draggableState":Landroidx/compose/material/SliderDraggableState;
    new-instance v1, Landroidx/compose/material/SliderKt$Slider$3$2;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-direct {v1, v2, v14, v15}, Landroidx/compose/material/SliderKt$Slider$3$2;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v3, v14, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    move-object/from16 v4, v33

    check-cast v4, Landroidx/compose/runtime/MutableState;

    iget v5, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    const/16 v7, 0xc00

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->access$CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 211
    new-instance v1, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v1

    move-object/from16 v26, v33

    move-object/from16 v27, v2

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move-object/from16 v31, v22

    move-object/from16 v32, v3

    invoke-direct/range {v25 .. v32}, Landroidx/compose/material/SliderKt$Slider$3$gestureEndAction$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material/SliderDraggableState;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v8

    .line 224
    .local v8, "gestureEndAction":Landroidx/compose/runtime/State;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v13, v1

    check-cast v13, Landroidx/compose/ui/Modifier;

    .line 225
    move-object/from16 v1, v22

    check-cast v1, Landroidx/compose/foundation/gestures/DraggableState;

    .line 226
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 227
    nop

    .line 228
    nop

    .line 229
    move-object/from16 v18, v33

    check-cast v18, Landroidx/compose/runtime/State;

    .line 230
    nop

    .line 231
    move-object/from16 v20, v34

    check-cast v20, Landroidx/compose/runtime/MutableState;

    .line 232
    iget-boolean v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 224
    move-object v7, v14

    .end local v14    # "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v7, "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object v14, v1

    move-object v6, v15

    .end local v15    # "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v6, "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object v15, v2

    move/from16 v16, v9

    move-object/from16 v19, v8

    move/from16 v21, v3

    invoke-static/range {v13 .. v21}, Landroidx/compose/material/SliderKt;->access$sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 235
    .local v13, "press":Landroidx/compose/ui/Modifier;
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 236
    sget-object v37, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 241
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/material/SliderDraggableState;->isDragging()Z

    move-result v40

    .line 235
    move-object/from16 v35, v1

    check-cast v35, Landroidx/compose/ui/Modifier;

    .line 242
    move-object/from16 v36, v22

    check-cast v36, Landroidx/compose/foundation/gestures/DraggableState;

    .line 236
    nop

    .line 238
    iget-boolean v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 239
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 241
    nop

    .line 235
    const/16 v41, 0x0

    const v3, 0x56dd9d13

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 240
    nop

    .local v3, "invalid$iv":Z
    move-object/from16 v4, p2

    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1237
    .restart local v5    # "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1238
    .local v15, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v3, :cond_c

    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v18, v3

    .end local v3    # "invalid$iv":Z
    .local v18, "invalid$iv":Z
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v14, v3, :cond_b

    goto :goto_8

    .line 1242
    :cond_b
    move/from16 v19, v5

    move-object v3, v14

    goto :goto_9

    .line 1238
    .end local v18    # "invalid$iv":Z
    .restart local v3    # "invalid$iv":Z
    :cond_c
    move/from16 v18, v3

    .line 1239
    .end local v3    # "invalid$iv":Z
    .restart local v18    # "invalid$iv":Z
    :goto_8
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$a$-cache-SliderKt$Slider$3$drag$1":I
    move/from16 v16, v3

    .end local v3    # "$i$a$-cache-SliderKt$Slider$3$drag$1":I
    .local v16, "$i$a$-cache-SliderKt$Slider$3$drag$1":I
    new-instance v3, Landroidx/compose/material/SliderKt$Slider$3$drag$1$1;

    move/from16 v19, v5

    .end local v5    # "$i$f$cache":I
    .local v19, "$i$f$cache":I
    const/4 v5, 0x0

    invoke-direct {v3, v8, v5}, Landroidx/compose/material/SliderKt$Slider$3$drag$1$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 1239
    .end local v16    # "$i$a$-cache-SliderKt$Slider$3$drag$1":I
    nop

    .line 1240
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1241
    nop

    .line 1238
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 1237
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v15    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 240
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "invalid$iv":Z
    .end local v19    # "$i$f$cache":I
    move-object/from16 v42, v3

    check-cast v42, Lkotlin/jvm/functions/Function3;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 237
    nop

    .line 235
    const/16 v44, 0x20

    const/16 v45, 0x0

    move/from16 v38, v1

    move-object/from16 v39, v2

    move/from16 v43, v17

    invoke-static/range {v35 .. v45}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    .line 245
    .local v14, "drag":Landroidx/compose/ui/Modifier;
    iget v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$value:F

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v15

    .line 246
    .local v15, "coerced":F
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2, v15}, Landroidx/compose/material/SliderKt;->access$calcFraction(FFF)F

    move-result v16

    .line 248
    .local v16, "fraction":F
    iget-boolean v1, v0, Landroidx/compose/material/SliderKt$Slider$3;->$enabled:Z

    .line 249
    nop

    .line 250
    iget-object v3, v0, Landroidx/compose/material/SliderKt$Slider$3;->$tickFractions:Ljava/util/List;

    .line 251
    iget-object v4, v0, Landroidx/compose/material/SliderKt$Slider$3;->$colors:Landroidx/compose/material/SliderColors;

    .line 252
    iget v2, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v5, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v5, v2, v5

    .line 253
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Slider$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 254
    invoke-interface {v13, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    const/16 v19, 0x200

    .line 247
    move-object/from16 v20, v2

    move/from16 v2, v16

    move-object/from16 v21, v6

    .end local v6    # "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v21, "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object/from16 v6, v20

    move-object/from16 v20, v7

    .end local v7    # "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v20, "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    move-object/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "gestureEndAction":Landroidx/compose/runtime/State;
    .local v18, "gestureEndAction":Landroidx/compose/runtime/State;
    move-object/from16 v8, p2

    move/from16 v23, v9

    .end local v9    # "widthPx":F
    .local v23, "widthPx":F
    move/from16 v9, v19

    invoke-static/range {v1 .. v9}, Landroidx/compose/material/SliderKt;->access$SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 256
    .end local v13    # "press":Landroidx/compose/ui/Modifier;
    .end local v14    # "drag":Landroidx/compose/ui/Modifier;
    .end local v15    # "coerced":F
    .end local v16    # "fraction":F
    .end local v17    # "isRtl":Z
    .end local v18    # "gestureEndAction":Landroidx/compose/runtime/State;
    .end local v20    # "minPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v21    # "maxPx":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local v22    # "draggableState":Landroidx/compose/material/SliderDraggableState;
    .end local v23    # "widthPx":F
    .end local v30    # "scope":Lkotlinx/coroutines/CoroutineScope;
    .end local v33    # "rawOffset":Landroidx/compose/runtime/MutableFloatState;
    .end local v34    # "pressOffset":Landroidx/compose/runtime/MutableFloatState;
    :cond_d
    :goto_a
    return-void
.end method
