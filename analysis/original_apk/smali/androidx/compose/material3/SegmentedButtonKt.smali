.class public final Landroidx/compose/material3/SegmentedButtonKt;
.super Ljava/lang/Object;
.source "SegmentedButton.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentedButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedButton.kt\nandroidx/compose/material3/SegmentedButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 4 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 7 Composer.kt\nandroidx/compose/runtime/Updater\n+ 8 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 9 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,786:1\n1116#2,6:787\n1116#2,6:793\n1116#2,6:831\n1116#2,6:874\n1116#2,6:924\n1116#2,6:930\n64#3:799\n64#3:842\n91#4,2:800\n93#4:830\n97#4:841\n91#4,2:843\n93#4:873\n97#4:884\n78#5,11:802\n91#5:840\n78#5,11:845\n91#5:883\n78#5,11:890\n91#5:922\n456#6,8:813\n464#6,3:827\n467#6,3:837\n456#6,8:856\n464#6,3:870\n467#6,3:880\n456#6,8:901\n464#6,3:915\n467#6,3:919\n3737#7,6:821\n3737#7,6:864\n3737#7,6:909\n69#8,5:885\n74#8:918\n78#8:923\n154#9:936\n*S KotlinDebug\n*F\n+ 1 SegmentedButton.kt\nandroidx/compose/material3/SegmentedButtonKt\n*L\n139#1:787,6\n214#1:793,6\n275#1:831,6\n312#1:874,6\n400#1:924,6\n401#1:930,6\n272#1:799\n309#1:842\n267#1:800,2\n267#1:830\n267#1:841\n305#1:843,2\n305#1:873\n305#1:884\n267#1:802,11\n267#1:840\n305#1:845,11\n305#1:883\n323#1:890,11\n323#1:922\n267#1:813,8\n267#1:827,3\n267#1:837,3\n305#1:856,8\n305#1:870,3\n305#1:880,3\n323#1:901,8\n323#1:915,3\n323#1:919,3\n267#1:821,6\n305#1:864,6\n323#1:909,6\n323#1:885,5\n323#1:918\n323#1:923\n777#1:936\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aD\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u001c\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a3\u0010\u0011\u001a\u00020\u00062\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\r2\u0011\u0010\n\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\rH\u0003\u00a2\u0006\u0002\u0010\u0014\u001aD\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u001c\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00060\u000b\u00a2\u0006\u0002\u0008\r\u00a2\u0006\u0002\u0008\u000eH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0010\u001a\u008f\u0001\u0010\u0018\u001a\u00020\u0006*\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u001a2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0013\u0008\u0002\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\r2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010&\u001a\u0089\u0001\u0010\u0018\u001a\u00020\u0006*\u00020\u00162\u0006\u0010\'\u001a\u00020\u001a2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00132\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0013\u0008\u0002\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\r2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00060\u0013\u00a2\u0006\u0002\u0008\rH\u0007\u00a2\u0006\u0002\u0010)\u001a\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+*\u00020-H\u0003\u00a2\u0006\u0002\u0010.\u001a\"\u0010/\u001a\u00020\u0008*\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00061"
    }
    d2 = {
        "CheckedZIndexFactor",
        "",
        "IconSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "MultiChoiceSegmentedButtonRow",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "space",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "MultiChoiceSegmentedButtonRow-uFdPcIQ",
        "(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "SegmentedButtonContent",
        "icon",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V",
        "SingleChoiceSegmentedButtonRow",
        "Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;",
        "SingleChoiceSegmentedButtonRow-uFdPcIQ",
        "SegmentedButton",
        "checked",
        "",
        "onCheckedChange",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "enabled",
        "colors",
        "Landroidx/compose/material3/SegmentedButtonColors;",
        "border",
        "Landroidx/compose/foundation/BorderStroke;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "label",
        "(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "selected",
        "onClick",
        "(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V",
        "interactionCountAsState",
        "Landroidx/compose/runtime/State;",
        "",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "interactionZIndex",
        "interactionCount",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CheckedZIndexFactor:F = 5.0f

.field private static final IconSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 777
    const/16 v0, 0x8

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 936
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 777
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SegmentedButtonKt;->IconSpacing:F

    return-void
.end method

.method public static final MultiChoiceSegmentedButtonRow-uFdPcIQ(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "space"    # F
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 304
    move-object/from16 v6, p2

    move/from16 v7, p4

    const v0, 0x94b2f8b

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(MultiChoiceSegmentedButtonRow)P(1,2:c#ui.unit.Dp)304@13910L391:SegmentedButton.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    move/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_5

    move/from16 v5, p1

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v1, v9

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    :goto_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_8

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    :cond_8
    :goto_5
    move v9, v1

    .end local v1    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit16 v1, v9, 0x93

    const/16 v10, 0x92

    if-ne v1, v10, :cond_a

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 315
    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v3

    move/from16 v20, v5

    goto/16 :goto_d

    .line 304
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 301
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 304
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object v1, v3

    .line 301
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    if-eqz v4, :cond_c

    .line 302
    sget-object v2, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/SegmentedButtonDefaults;->getBorderWidth-D9Ej5fM()F

    move-result v2

    .end local p1    # "space":F
    .local v2, "space":F
    goto :goto_8

    .line 301
    .end local v2    # "space":F
    .restart local p1    # "space":F
    :cond_c
    move v2, v5

    .line 302
    .end local p1    # "space":F
    .restart local v2    # "space":F
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 304
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.MultiChoiceSegmentedButtonRow (SegmentedButton.kt:303)"

    invoke-static {v0, v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 306
    :cond_d
    nop

    .line 307
    sget-object v0, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v0, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 308
    sget-object v3, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/IntrinsicKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 309
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x0

    .line 842
    .local v4, "$i$f$unaryMinus-D9Ej5fM":I
    neg-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 309
    .end local v4    # "$i$f$unaryMinus-D9Ej5fM":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 310
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 305
    nop

    .local v3, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v5, 0x180

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$Row":I
    const v11, 0x2952b718

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 843
    shr-int/lit8 v11, v5, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v5, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v3, v4, v8, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v5, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 844
    nop

    .local v12, "$changed$iv$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$Layout":I
    const v14, -0x4ee9b9da

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 845
    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 846
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 848
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 855
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 p0, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p0, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v12, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 847
    move-object/from16 p1, v16

    .local v0, "$changed$iv$iv$iv":I
    .local p1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 p3, v17

    .local p3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 856
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v17, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 857
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 858
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 859
    move-object/from16 v1, p1

    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 861
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_f
    move-object/from16 v1, p1

    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 863
    :goto_9
    move-object/from16 p1, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 850
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v20, v2

    .end local v2    # "space":F
    .local v20, "space":F
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 851
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 853
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v19, 0x0

    .line 864
    .local v19, "$i$f$set-impl":I
    move-object/from16 v21, v1

    .local v21, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 865
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_11

    move-object/from16 v23, v3

    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v23, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v4

    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v24, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    move-object/from16 v4, v21

    goto :goto_b

    .end local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :cond_11
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 866
    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v21

    .end local v21    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 867
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 869
    :goto_b
    nop

    .line 864
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 869
    nop

    .line 854
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "$i$f$set-impl":I
    nop

    .line 863
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 870
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p3

    .end local p3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v8, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const v1, 0x7ab4aae9

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 872
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v2, v8

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 873
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 p3, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local p3, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    move/from16 v18, v1

    .end local v1    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$MultiChoiceSegmentedButtonRow_uFdPcIQ_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v19, v2

    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 312
    .local v21, "$i$a$-Row-SegmentedButtonKt$MultiChoiceSegmentedButtonRow$1":I
    move/from16 v22, v1

    .end local v1    # "$changed":I
    .local v22, "$changed":I
    const v1, 0x222da18e

    move-object/from16 v25, v3

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v25, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v3, "C311@14214L57,312@14286L9:SegmentedButton.kt#uh7d8r"

    move/from16 v26, v4

    move-object/from16 v4, v19

    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, 0x222da19a

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):SegmentedButton.kt#9igjgp"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v3, v4

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 874
    .local v19, "$i$f$cache":I
    move/from16 v27, v1

    .end local v1    # "invalid$iv":Z
    .local v27, "invalid$iv":Z
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 875
    .local v28, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v29, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v30, v5

    .end local v5    # "$changed$iv":I
    .local v30, "$changed$iv":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_12

    .line 876
    const/4 v5, 0x0

    .line 312
    .local v5, "$i$a$-cache-SegmentedButtonKt$MultiChoiceSegmentedButtonRow$1$scope$1":I
    move-object/from16 v29, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v29, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material3/MultiChoiceSegmentedButtonScopeWrapper;

    invoke-direct {v1, v0}, Landroidx/compose/material3/MultiChoiceSegmentedButtonScopeWrapper;-><init>(Landroidx/compose/foundation/layout/RowScope;)V

    .line 876
    .end local v5    # "$i$a$-cache-SegmentedButtonKt$MultiChoiceSegmentedButtonRow$1$scope$1":I
    nop

    .line 877
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 878
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 879
    .end local v29    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    :cond_12
    move-object/from16 v29, v1

    .line 875
    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v29    # "it$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 874
    .end local v28    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v29    # "it$iv":Ljava/lang/Object;
    nop

    .line 312
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local v27    # "invalid$iv":Z
    check-cast v1, Landroidx/compose/material3/MultiChoiceSegmentedButtonScopeWrapper;

    .local v1, "scope":Landroidx/compose/material3/MultiChoiceSegmentedButtonScopeWrapper;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 313
    shr-int/lit8 v3, v9, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v1, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 314
    .end local v1    # "scope":Landroidx/compose/material3/MultiChoiceSegmentedButtonScopeWrapper;
    nop

    .line 873
    .end local v0    # "$this$MultiChoiceSegmentedButtonRow_uFdPcIQ_u24lambda_u245":Landroidx/compose/foundation/layout/RowScope;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Row-SegmentedButtonKt$MultiChoiceSegmentedButtonRow$1":I
    .end local v22    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 872
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$changed$iv":I
    .end local v26    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 880
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 881
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 882
    nop

    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v25    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local p3    # "$changed$iv$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 883
    nop

    .end local v12    # "$changed$iv$iv":I
    .end local v13    # "$i$f$Layout":I
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 884
    nop

    .end local v10    # "$i$f$Row":I
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v30    # "$changed$iv":I
    .end local p0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 315
    :cond_13
    :goto_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v11, Landroidx/compose/material3/SegmentedButtonKt$MultiChoiceSegmentedButtonRow$2;

    move-object v0, v11

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$MultiChoiceSegmentedButtonRow$2;-><init>(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function3;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method public static final SegmentedButton(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p0, "$this$SegmentedButton"    # Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;
    .param p1, "checked"    # Z
    .param p2, "onCheckedChange"    # Lkotlin/jvm/functions/Function1;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "enabled"    # Z
    .param p6, "colors"    # Landroidx/compose/material3/SegmentedButtonColors;
    .param p7, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p8, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p9, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "label"    # Lkotlin/jvm/functions/Function2;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SegmentedButtonColors;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 142
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p10

    move/from16 v12, p12

    move/from16 v11, p14

    const v0, -0x5f219ba5

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SegmentedButton)P(1,8,9,7,3,2!1,5)134@6782L8,138@6959L39,144@7288L25,146@7319L585:SegmentedButton.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    move/from16 v2, p13

    .local v2, "$dirty1":I
    const/high16 v3, -0x80000000

    and-int/2addr v3, v11

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v12, 0xc00

    if-nez v3, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x800

    goto :goto_6

    :cond_a
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_e

    move-object/from16 v6, p4

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v7, v11, 0x10

    const/high16 v16, 0x30000

    if-eqz v7, :cond_f

    or-int v1, v1, v16

    move/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v16, v12, v16

    if-nez v16, :cond_11

    move/from16 v4, p5

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move/from16 v4, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v12, v16

    if-nez v16, :cond_14

    and-int/lit8 v16, v11, 0x20

    if-nez v16, :cond_12

    move-object/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v0, p6

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v12, v17

    if-nez v17, :cond_17

    and-int/lit8 v17, v11, 0x40

    if-nez v17, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move-object/from16 v5, p7

    :goto_f
    and-int/lit16 v0, v11, 0x80

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v18

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    and-int v18, v12, v18

    if-nez v18, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x100

    const/high16 v18, 0x30000000

    if-eqz v4, :cond_1b

    or-int v1, v1, v18

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    and-int v18, v12, v18

    if-nez v18, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v18, 0x10000000

    :goto_12
    or-int v1, v1, v18

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit16 v5, v11, 0x200

    if-eqz v5, :cond_1e

    or-int/lit8 v2, v2, 0x6

    goto :goto_15

    :cond_1e
    and-int/lit8 v5, p13, 0x6

    if-nez v5, :cond_20

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x4

    goto :goto_14

    :cond_1f
    const/4 v5, 0x2

    :goto_14
    or-int/2addr v2, v5

    :cond_20
    :goto_15
    move v5, v2

    .end local v2    # "$dirty1":I
    .local v5, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v6, 0x12492492

    if-ne v2, v6, :cond_22

    and-int/lit8 v2, v5, 0x3

    const/4 v6, 0x2

    if-ne v2, v6, :cond_22

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_16

    .line 166
    :cond_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move/from16 v22, v1

    move/from16 p11, v5

    goto/16 :goto_1f

    .line 142
    :cond_22
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v17, -0x380001

    if-eqz v2, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_17

    .line 140
    :cond_23
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_24

    and-int v1, v1, v17

    :cond_24
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_25

    const v0, -0x1c00001

    and-int/2addr v0, v1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v1, p9

    move v4, v0

    move-object/from16 v0, p8

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1e

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_25
    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v0, p8

    move v4, v1

    move-object/from16 v1, p9

    goto/16 :goto_1e

    .line 142
    :cond_26
    :goto_17
    if-eqz v3, :cond_27

    .line 133
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 142
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v2, p4

    .line 133
    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v7, :cond_28

    .line 134
    const/4 v3, 0x1

    .end local p5    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_19

    .line 133
    .end local v3    # "enabled":Z
    .restart local p5    # "enabled":Z
    :cond_28
    move/from16 v3, p5

    .line 134
    .end local p5    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_19
    and-int/lit8 v7, v11, 0x20

    if-eqz v7, :cond_29

    .line 135
    sget-object v7, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    const/4 v6, 0x6

    invoke-virtual {v7, v10, v6}, Landroidx/compose/material3/SegmentedButtonDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SegmentedButtonColors;

    move-result-object v6

    .end local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local v6, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    and-int v1, v1, v17

    goto :goto_1a

    .line 134
    .end local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .restart local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    :cond_29
    move-object/from16 v6, p6

    .line 135
    .end local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .restart local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    :goto_1a
    and-int/lit8 v7, v11, 0x40

    if-eqz v7, :cond_2a

    .line 136
    sget-object v20, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 137
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->borderColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v21

    .line 136
    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-static/range {v20 .. v25}, Landroidx/compose/material3/SegmentedButtonDefaults;->borderStroke-l07J4OM$default(Landroidx/compose/material3/SegmentedButtonDefaults;JFILjava/lang/Object;)Landroidx/compose/foundation/BorderStroke;

    move-result-object v7

    const v17, -0x1c00001

    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v7, "border":Landroidx/compose/foundation/BorderStroke;
    and-int v1, v1, v17

    goto :goto_1b

    .line 135
    .end local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_2a
    move-object/from16 v7, p7

    .line 136
    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1b
    if-eqz v0, :cond_2c

    .line 139
    const v0, -0x2e1c4152

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SegmentedButton.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object/from16 p4, v10

    .local p4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 787
    .local v17, "$i$f$cache":I
    move/from16 p5, v0

    .end local v0    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 788
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .local p6, "$dirty":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    .line 789
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$a$-cache-SegmentedButtonKt$SegmentedButton$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 789
    .end local v1    # "$i$a$-cache-SegmentedButtonKt$SegmentedButton$1":I
    nop

    .line 790
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 p7, v0

    move-object/from16 v0, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p7, "it$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 791
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_1c

    .line 792
    .end local p7    # "it$iv":Ljava/lang/Object;
    .local v0, "it$iv":Ljava/lang/Object;
    .restart local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_2b
    move-object/from16 p7, v0

    move-object/from16 v0, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    move-object/from16 v1, p7

    .line 788
    :goto_1c
    nop

    .line 787
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 139
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1d

    .line 136
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "$dirty":I
    .local v1, "$dirty":I
    .restart local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2c
    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .restart local p6    # "$dirty":I
    move-object/from16 v0, p8

    .line 139
    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_1d
    if-eqz v4, :cond_2d

    .line 140
    new-instance v1, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$2;

    invoke-direct {v1, v14}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$2;-><init>(Z)V

    const v4, 0x39d7da22

    move-object/from16 p4, v0

    const/4 v0, 0x1

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p4, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v10, v4, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move/from16 v4, p6

    move-object v1, v0

    move-object/from16 v0, p4

    .end local p9    # "icon":Lkotlin/jvm/functions/Function2;
    .local v0, "icon":Lkotlin/jvm/functions/Function2;
    goto :goto_1e

    .line 139
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p9    # "icon":Lkotlin/jvm/functions/Function2;
    :cond_2d
    move-object/from16 p4, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move/from16 v4, p6

    move-object/from16 v1, p9

    .line 140
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "$dirty":I
    .end local p9    # "icon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "icon":Lkotlin/jvm/functions/Function2;
    .local v4, "$dirty":I
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_2e

    .line 142
    const-string/jumbo v8, "androidx.compose.material3.SegmentedButton (SegmentedButton.kt:141)"

    const v9, -0x5f219ba5

    invoke-static {v9, v4, v5, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 143
    :cond_2e
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->containerColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v8

    .local v8, "containerColor":J
    move-wide/from16 v21, v8

    .line 144
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->contentColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v34

    .local v34, "contentColor":J
    move-wide/from16 v23, v34

    .line 145
    move/from16 p11, v5

    .end local v5    # "$dirty1":I
    .local p11, "$dirty1":I
    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v16, v4, 0x18

    move-object/from16 p4, v6

    .end local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local p4, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    and-int/lit8 v6, v16, 0xe

    invoke-static {v5, v10, v6}, Landroidx/compose/material3/SegmentedButtonKt;->interactionCountAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 149
    .local v5, "interactionCount":Landroidx/compose/runtime/State;
    move-object/from16 v25, v15

    check-cast v25, Landroidx/compose/foundation/layout/RowScope;

    .line 148
    nop

    .line 149
    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x2

    const/16 v30, 0x0

    move-object/from16 v26, v2

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 150
    invoke-static {v6, v14, v5}, Landroidx/compose/material3/SegmentedButtonKt;->interactionZIndex(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 152
    sget-object v16, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    move-object/from16 p5, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p5, "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/ButtonDefaults;->getMinWidth-D9Ej5fM()F

    move-result v2

    .line 153
    sget-object v16, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    move-object/from16 p6, v5

    .end local v5    # "interactionCount":Landroidx/compose/runtime/State;
    .local p6, "interactionCount":Landroidx/compose/runtime/State;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v5

    .line 151
    invoke-static {v6, v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 155
    nop

    .line 156
    nop

    .line 151
    nop

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 161
    nop

    .line 162
    nop

    .line 163
    new-instance v2, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$3;

    invoke-direct {v2, v1, v13}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v5, 0x617ef585

    const/4 v6, 0x1

    invoke-static {v10, v5, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v5, v4, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v2, v5

    shr-int/lit8 v5, v4, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v2, v5

    const v5, 0xe000

    shl-int/lit8 v6, v4, 0x3

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    shl-int/lit8 v5, v4, 0x6

    const/high16 v6, 0x70000000

    and-int/2addr v5, v6

    or-int v31, v2, v5

    shr-int/lit8 v2, v4, 0x18

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v32, v2, 0x30

    const/16 v33, 0x180

    .line 147
    move/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v19, v3

    move-object/from16 v20, p3

    move-object/from16 v27, v7

    move-object/from16 v28, v0

    move-object/from16 v30, v10

    invoke-static/range {v16 .. v33}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 166
    .end local v8    # "containerColor":J
    .end local v34    # "contentColor":J
    .end local p6    # "interactionCount":Landroidx/compose/runtime/State;
    :cond_2f
    move-object/from16 v18, p4

    move-object/from16 v16, p5

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v17, v3

    move/from16 v22, v4

    move-object/from16 v19, v7

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "icon":Lkotlin/jvm/functions/Function2;
    .end local v3    # "enabled":Z
    .end local v4    # "$dirty":I
    .end local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "enabled":Z
    .local v18, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local v19, "border":Landroidx/compose/foundation/BorderStroke;
    .local v20, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v21, "icon":Lkotlin/jvm/functions/Function2;
    .local v22, "$dirty":I
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_30

    new-instance v23, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v24, p11

    .end local p11    # "$dirty1":I
    .local v24, "$dirty1":I
    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v15, v9

    move-object/from16 v9, v20

    move-object/from16 v25, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v21

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$4;-><init>(Landroidx/compose/material3/MultiChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_20

    .end local v24    # "$dirty1":I
    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p11    # "$dirty1":I
    :cond_30
    move/from16 v24, p11

    move-object/from16 v25, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p11    # "$dirty1":I
    .restart local v24    # "$dirty1":I
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_20
    return-void
.end method

.method public static final SegmentedButton(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 36
    .param p0, "$this$SegmentedButton"    # Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;
    .param p1, "selected"    # Z
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function0;
    .param p3, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p4, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p5, "enabled"    # Z
    .param p6, "colors"    # Landroidx/compose/material3/SegmentedButtonColors;
    .param p7, "border"    # Landroidx/compose/foundation/BorderStroke;
    .param p8, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p9, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "label"    # Lkotlin/jvm/functions/Function2;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SegmentedButtonColors;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 217
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p10

    move/from16 v12, p12

    move/from16 v11, p14

    const v0, -0x3c97b199

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SegmentedButton)P(8,7,9,6,2,1!1,4)209@10206L8,213@10384L39,219@10716L25,221@10747L623:SegmentedButton.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p12

    .local v1, "$dirty":I
    move/from16 v2, p13

    .local v2, "$dirty1":I
    const/high16 v3, -0x80000000

    and-int/2addr v3, v11

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0x6

    if-nez v3, :cond_2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    :goto_1
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x30

    if-nez v3, :cond_5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v12, 0x180

    if-nez v3, :cond_8

    move-object/from16 v9, p2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x100

    goto :goto_4

    :cond_7
    const/16 v3, 0x80

    :goto_4
    or-int/2addr v1, v3

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v8, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v12, 0xc00

    if-nez v3, :cond_b

    move-object/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x800

    goto :goto_6

    :cond_a
    const/16 v3, 0x400

    :goto_6
    or-int/2addr v1, v3

    goto :goto_7

    :cond_b
    move-object/from16 v8, p3

    :goto_7
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v6, p4

    goto :goto_9

    :cond_c
    and-int/lit16 v6, v12, 0x6000

    if-nez v6, :cond_e

    move-object/from16 v6, p4

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v7, v11, 0x10

    const/high16 v16, 0x30000

    if-eqz v7, :cond_f

    or-int v1, v1, v16

    move/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v16, v12, v16

    if-nez v16, :cond_11

    move/from16 v4, p5

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move/from16 v4, p5

    :goto_b
    const/high16 v16, 0x180000

    and-int v16, v12, v16

    if-nez v16, :cond_14

    and-int/lit8 v16, v11, 0x20

    if-nez v16, :cond_12

    move-object/from16 v0, p6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_12
    move-object/from16 v0, p6

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_14
    move-object/from16 v0, p6

    :goto_d
    const/high16 v17, 0xc00000

    and-int v17, v12, v17

    if-nez v17, :cond_17

    and-int/lit8 v17, v11, 0x40

    if-nez v17, :cond_15

    move-object/from16 v5, p7

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v5, p7

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v1, v1, v18

    goto :goto_f

    :cond_17
    move-object/from16 v5, p7

    :goto_f
    and-int/lit16 v0, v11, 0x80

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v18

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    and-int v18, v12, v18

    if-nez v18, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v1, v1, v18

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x100

    const/high16 v18, 0x30000000

    if-eqz v4, :cond_1b

    or-int v1, v1, v18

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    and-int v18, v12, v18

    if-nez v18, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/high16 v18, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v18, 0x10000000

    :goto_12
    or-int v1, v1, v18

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit16 v5, v11, 0x200

    if-eqz v5, :cond_1e

    or-int/lit8 v2, v2, 0x6

    goto :goto_15

    :cond_1e
    and-int/lit8 v5, p13, 0x6

    if-nez v5, :cond_20

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x4

    goto :goto_14

    :cond_1f
    const/4 v5, 0x2

    :goto_14
    or-int/2addr v2, v5

    :cond_20
    :goto_15
    move v5, v2

    .end local v2    # "$dirty1":I
    .local v5, "$dirty1":I
    const v2, 0x12492493

    and-int/2addr v2, v1

    const v6, 0x12492492

    if-ne v2, v6, :cond_22

    and-int/lit8 v2, v5, 0x3

    const/4 v6, 0x2

    if-ne v2, v6, :cond_22

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_16

    .line 242
    :cond_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move/from16 v22, v1

    move/from16 p11, v5

    goto/16 :goto_1f

    .line 217
    :cond_22
    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v2, v12, 0x1

    const v17, -0x380001

    if-eqz v2, :cond_26

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_17

    .line 215
    :cond_23
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_24

    and-int v1, v1, v17

    :cond_24
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_25

    const v0, -0x1c00001

    and-int/2addr v0, v1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v1, p9

    move v4, v0

    move-object/from16 v0, p8

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1e

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_25
    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v0, p8

    move v4, v1

    move-object/from16 v1, p9

    goto/16 :goto_1e

    .line 217
    :cond_26
    :goto_17
    if-eqz v3, :cond_27

    .line 208
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_18

    .line 217
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p4    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_27
    move-object/from16 v2, p4

    .line 208
    .end local p4    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_18
    if-eqz v7, :cond_28

    .line 209
    const/4 v3, 0x1

    .end local p5    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_19

    .line 208
    .end local v3    # "enabled":Z
    .restart local p5    # "enabled":Z
    :cond_28
    move/from16 v3, p5

    .line 209
    .end local p5    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_19
    and-int/lit8 v7, v11, 0x20

    if-eqz v7, :cond_29

    .line 210
    sget-object v7, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    const/4 v6, 0x6

    invoke-virtual {v7, v10, v6}, Landroidx/compose/material3/SegmentedButtonDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SegmentedButtonColors;

    move-result-object v6

    .end local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local v6, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    and-int v1, v1, v17

    goto :goto_1a

    .line 209
    .end local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .restart local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    :cond_29
    move-object/from16 v6, p6

    .line 210
    .end local p6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .restart local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    :goto_1a
    and-int/lit8 v7, v11, 0x40

    if-eqz v7, :cond_2a

    .line 211
    sget-object v20, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 212
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->borderColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v21

    .line 211
    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-static/range {v20 .. v25}, Landroidx/compose/material3/SegmentedButtonDefaults;->borderStroke-l07J4OM$default(Landroidx/compose/material3/SegmentedButtonDefaults;JFILjava/lang/Object;)Landroidx/compose/foundation/BorderStroke;

    move-result-object v7

    const v17, -0x1c00001

    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .local v7, "border":Landroidx/compose/foundation/BorderStroke;
    and-int v1, v1, v17

    goto :goto_1b

    .line 210
    .end local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    :cond_2a
    move-object/from16 v7, p7

    .line 211
    .end local p7    # "border":Landroidx/compose/foundation/BorderStroke;
    .restart local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    :goto_1b
    if-eqz v0, :cond_2c

    .line 214
    const v0, -0x2e1c33f1

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SegmentedButton.kt#9igjgp"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "invalid$iv":Z
    move-object/from16 p4, v10

    .local p4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 793
    .local v17, "$i$f$cache":I
    move/from16 p5, v0

    .end local v0    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 794
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .local p6, "$dirty":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2b

    .line 795
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$a$-cache-SegmentedButtonKt$SegmentedButton$5":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v1

    .line 795
    .end local v1    # "$i$a$-cache-SegmentedButtonKt$SegmentedButton$5":I
    nop

    .line 796
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 p7, v0

    move-object/from16 v0, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local p7, "it$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 797
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_1c

    .line 798
    .end local p7    # "it$iv":Ljava/lang/Object;
    .local v0, "it$iv":Ljava/lang/Object;
    .restart local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    :cond_2b
    move-object/from16 p7, v0

    move-object/from16 v0, p4

    .end local p4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    move-object/from16 v1, p7

    .line 794
    :goto_1c
    nop

    .line 793
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 214
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    move-object v0, v1

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_1d

    .line 211
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "$dirty":I
    .local v1, "$dirty":I
    .restart local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_2c
    move/from16 p6, v1

    .end local v1    # "$dirty":I
    .restart local p6    # "$dirty":I
    move-object/from16 v0, p8

    .line 214
    .end local p8    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_1d
    if-eqz v4, :cond_2d

    .line 215
    new-instance v1, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$6;

    invoke-direct {v1, v14}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$6;-><init>(Z)V

    const v4, 0x499d9180    # 1290800.0f

    move-object/from16 p4, v0

    const/4 v0, 0x1

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local p4, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-static {v10, v4, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move/from16 v4, p6

    move-object v1, v0

    move-object/from16 v0, p4

    .end local p9    # "icon":Lkotlin/jvm/functions/Function2;
    .local v0, "icon":Lkotlin/jvm/functions/Function2;
    goto :goto_1e

    .line 214
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p9    # "icon":Lkotlin/jvm/functions/Function2;
    :cond_2d
    move-object/from16 p4, v0

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    move/from16 v4, p6

    move-object/from16 v1, p9

    .line 215
    .end local p4    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local p6    # "$dirty":I
    .end local p9    # "icon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "icon":Lkotlin/jvm/functions/Function2;
    .local v4, "$dirty":I
    :goto_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v17

    if-eqz v17, :cond_2e

    .line 217
    const-string/jumbo v8, "androidx.compose.material3.SegmentedButton (SegmentedButton.kt:216)"

    const v9, -0x3c97b199

    invoke-static {v9, v4, v5, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 218
    :cond_2e
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->containerColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v8

    .local v8, "containerColor":J
    move-wide/from16 v21, v8

    .line 219
    invoke-virtual {v6, v3, v14}, Landroidx/compose/material3/SegmentedButtonColors;->contentColor-WaAFU9c$material3_release(ZZ)J

    move-result-wide v34

    .local v34, "contentColor":J
    move-wide/from16 v23, v34

    .line 220
    move/from16 p11, v5

    .end local v5    # "$dirty1":I
    .local p11, "$dirty1":I
    move-object v5, v0

    check-cast v5, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v16, v4, 0x18

    move-object/from16 p4, v6

    .end local v6    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local p4, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    and-int/lit8 v6, v16, 0xe

    invoke-static {v5, v10, v6}, Landroidx/compose/material3/SegmentedButtonKt;->interactionCountAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 224
    .local v5, "interactionCount":Landroidx/compose/runtime/State;
    move-object/from16 v25, v15

    check-cast v25, Landroidx/compose/foundation/layout/RowScope;

    .line 223
    nop

    .line 224
    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x0

    const/16 v29, 0x2

    const/16 v30, 0x0

    move-object/from16 v26, v2

    invoke-static/range {v25 .. v30}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 225
    invoke-static {v6, v14, v5}, Landroidx/compose/material3/SegmentedButtonKt;->interactionZIndex(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 227
    sget-object v16, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    move-object/from16 p5, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local p5, "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/ButtonDefaults;->getMinWidth-D9Ej5fM()F

    move-result v2

    .line 228
    sget-object v16, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    move-object/from16 p6, v5

    .end local v5    # "interactionCount":Landroidx/compose/runtime/State;
    .local p6, "interactionCount":Landroidx/compose/runtime/State;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/ButtonDefaults;->getMinHeight-D9Ej5fM()F

    move-result v5

    .line 226
    invoke-static {v6, v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 230
    sget-object v5, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$7;->INSTANCE:Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$7;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    move-wide/from16 p7, v8

    .end local v8    # "containerColor":J
    .local p7, "containerColor":J
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2, v8, v5, v9, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v18

    .line 231
    nop

    .line 232
    nop

    .line 230
    nop

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 237
    nop

    .line 238
    nop

    .line 239
    new-instance v2, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$8;

    invoke-direct {v2, v1, v13}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$8;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v5, 0x16d9e27d

    const/4 v6, 0x1

    invoke-static {v10, v5, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v5, v4, 0x3

    and-int/lit8 v5, v5, 0x70

    or-int/2addr v2, v5

    shr-int/lit8 v5, v4, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v2, v5

    const v5, 0xe000

    shl-int/lit8 v6, v4, 0x3

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    shl-int/lit8 v5, v4, 0x6

    const/high16 v6, 0x70000000

    and-int/2addr v5, v6

    or-int v31, v2, v5

    shr-int/lit8 v2, v4, 0x18

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v32, v2, 0x30

    const/16 v33, 0x180

    .line 222
    move/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v19, v3

    move-object/from16 v20, p3

    move-object/from16 v27, v7

    move-object/from16 v28, v0

    move-object/from16 v30, v10

    invoke-static/range {v16 .. v33}, Landroidx/compose/material3/SurfaceKt;->Surface-d85dljk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 242
    .end local v34    # "contentColor":J
    .end local p6    # "interactionCount":Landroidx/compose/runtime/State;
    .end local p7    # "containerColor":J
    :cond_2f
    move-object/from16 v18, p4

    move-object/from16 v16, p5

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v17, v3

    move/from16 v22, v4

    move-object/from16 v19, v7

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v1    # "icon":Lkotlin/jvm/functions/Function2;
    .end local v3    # "enabled":Z
    .end local v4    # "$dirty":I
    .end local v7    # "border":Landroidx/compose/foundation/BorderStroke;
    .end local p4    # "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "enabled":Z
    .local v18, "colors":Landroidx/compose/material3/SegmentedButtonColors;
    .local v19, "border":Landroidx/compose/foundation/BorderStroke;
    .local v20, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v21, "icon":Lkotlin/jvm/functions/Function2;
    .local v22, "$dirty":I
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_30

    new-instance v23, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v24, p11

    .end local p11    # "$dirty1":I
    .local v24, "$dirty1":I
    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v15, v9

    move-object/from16 v9, v20

    move-object/from16 v25, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v21

    move-object/from16 v11, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButton$9;-><init>(Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SegmentedButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_20

    .end local v24    # "$dirty1":I
    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p11    # "$dirty1":I
    :cond_30
    move/from16 v24, p11

    move-object/from16 v25, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p11    # "$dirty1":I
    .restart local v24    # "$dirty1":I
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_20
    return-void
.end method

.method private static final SegmentedButtonContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .param p0, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const v3, 0x5744b8e2

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .end local p2    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    const-string v5, "C(SegmentedButtonContent)P(1)322@14458L637:SegmentedButton.kt#uh7d8r"

    invoke-static {v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v5, p3

    .local v5, "$dirty":I
    and-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_1

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v5, v6

    :cond_1
    and-int/lit8 v6, v2, 0x30

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    :cond_3
    and-int/lit8 v6, v5, 0x13

    const/16 v7, 0x12

    if-ne v6, v7, :cond_5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 340
    :cond_4
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 p2, v5

    goto/16 :goto_6

    .line 322
    :cond_5
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.material3.SegmentedButtonContent (SegmentedButton.kt:321)"

    invoke-static {v3, v5, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 324
    :cond_6
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v3

    .line 325
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    sget-object v7, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/ButtonDefaults;->getTextButtonContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 323
    const/16 v7, 0x36

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Box":I
    const v9, 0x2bb5b5d7

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v4, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 885
    const/4 v9, 0x0

    .line 888
    .local v9, "propagateMinConstraints$iv":Z
    shr-int/lit8 v10, v7, 0x3

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v10, v11

    invoke-static {v3, v9, v4, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    .local v3, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v10, v7, 0x3

    and-int/lit8 v10, v10, 0x70

    .line 889
    nop

    .local v10, "$changed$iv$iv":I
    const/4 v11, 0x0

    .local v11, "$i$f$Layout":I
    const v12, -0x4ee9b9da

    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v12, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v4, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 890
    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v12

    .line 891
    .local v12, "compositeKeyHash$iv$iv":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v13

    .line 893
    .local v13, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    .line 900
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v6

    shl-int/lit8 v15, v10, 0x9

    and-int/lit16 v15, v15, 0x1c00

    move/from16 p2, v5

    .end local v5    # "$dirty":I
    .local p2, "$dirty":I
    const/4 v5, 0x6

    or-int/2addr v15, v5

    .line 892
    nop

    .local v6, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v14, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v15, "$changed$iv$iv$iv":I
    const/16 v16, 0x0

    .line 901
    .local v16, "$i$f$ReusableComposeNode":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v5

    instance-of v5, v5, Landroidx/compose/runtime/Applier;

    if-nez v5, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 902
    :cond_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 903
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 904
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 906
    :cond_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 908
    :goto_3
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .local v5, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 895
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v20, v8

    .end local v8    # "$i$f$Box":I
    .local v20, "$i$f$Box":I
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v3, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 896
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v5, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 898
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v19, 0x0

    .line 909
    .local v19, "$i$f$set-impl":I
    move-object/from16 v21, v5

    .local v21, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 910
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_a

    move-object/from16 v23, v3

    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v23, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move/from16 v24, v9

    .end local v9    # "propagateMinConstraints$iv":Z
    .local v24, "propagateMinConstraints$iv":Z
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v9, v21

    goto :goto_5

    .end local v23    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "propagateMinConstraints$iv":Z
    .restart local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v9    # "propagateMinConstraints$iv":Z
    :cond_a
    move-object/from16 v23, v3

    move/from16 v24, v9

    .line 911
    .end local v3    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v9    # "propagateMinConstraints$iv":Z
    .restart local v23    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v24    # "propagateMinConstraints$iv":Z
    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v9, v21

    .end local v21    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 912
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 914
    :goto_5
    nop

    .line 909
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 914
    nop

    .line 899
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "$i$f$set-impl":I
    nop

    .line 908
    .end local v5    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 915
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    shr-int/lit8 v5, v15, 0x3

    and-int/lit8 v5, v5, 0x70

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v3, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const v3, 0x7ab4aae9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 917
    shr-int/lit8 v3, v15, 0x9

    and-int/lit8 v3, v3, 0xe

    .local v3, "$changed$iv":I
    move-object v5, v4

    .local v5, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 918
    .local v8, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v9, -0x4ab8dd4f

    move/from16 v18, v3

    .end local v3    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const-string v3, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v5, v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x70

    move-object/from16 v19, v6

    const/4 v6, 0x6

    .end local v6    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v19, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    or-int/2addr v9, v6

    .local v9, "$changed":I
    check-cast v3, Landroidx/compose/foundation/layout/BoxScope;

    .local v3, "$this$SegmentedButtonContent_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v17, v5

    .local v17, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 327
    .local v21, "$i$a$-Box-SegmentedButtonKt$SegmentedButtonContent$1":I
    const v6, 0x1632dd92

    move-object/from16 v25, v3

    .end local v3    # "$this$SegmentedButtonContent_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    .local v25, "$this$SegmentedButtonContent_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    const-string v3, "C327@14644L10,328@14718L371:SegmentedButton.kt#uh7d8r"

    move/from16 v26, v7

    move-object/from16 v7, v17

    .end local v17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v7, "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$changed$iv":I
    invoke-static {v7, v6, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 328
    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v6, 0x6

    invoke-virtual {v3, v7, v6}, Landroidx/compose/material3/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Typography;

    move-result-object v3

    sget-object v6, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;

    invoke-virtual {v6}, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;

    move-result-object v6

    invoke-static {v3, v6}, Landroidx/compose/material3/TypographyKt;->fromToken(Landroidx/compose/material3/Typography;Landroidx/compose/material3/tokens/TypographyKeyTokens;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    .line 327
    nop

    .line 329
    .local v3, "typography":Landroidx/compose/ui/text/TextStyle;
    new-instance v6, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButtonContent$1$1;

    invoke-direct {v6, v0, v1}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButtonContent$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    move/from16 v17, v8

    .end local v8    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v17, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v8, 0x54ac860b

    move/from16 v22, v9

    .end local v9    # "$changed":I
    .local v22, "$changed":I
    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v8, 0x30

    invoke-static {v3, v6, v7, v8}, Landroidx/compose/material3/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 327
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 339
    .end local v3    # "typography":Landroidx/compose/ui/text/TextStyle;
    nop

    .line 918
    .end local v7    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Box-SegmentedButtonKt$SegmentedButtonContent$1":I
    .end local v22    # "$changed":I
    .end local v25    # "$this$SegmentedButtonContent_u24lambda_u246":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 917
    .end local v5    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .end local v18    # "$changed$iv":I
    nop

    .line 919
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 920
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 921
    nop

    .end local v14    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$changed$iv$iv$iv":I
    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v19    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 922
    nop

    .end local v10    # "$changed$iv$iv":I
    .end local v11    # "$i$f$Layout":I
    .end local v12    # "compositeKeyHash$iv$iv":I
    .end local v13    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 923
    nop

    .end local v20    # "$i$f$Box":I
    .end local v23    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v24    # "propagateMinConstraints$iv":Z
    .end local v26    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 340
    :cond_b
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v5, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButtonContent$2;

    invoke-direct {v5, v0, v1, v2}, Landroidx/compose/material3/SegmentedButtonKt$SegmentedButtonContent$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_c
    return-void
.end method

.method public static final SingleChoiceSegmentedButtonRow-uFdPcIQ(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "space"    # F
    .param p2, "content"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/material3/SingleChoiceSegmentedButtonRowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 266
    move-object/from16 v6, p2

    move/from16 v7, p4

    const v0, -0x5aa6890a

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p3    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SingleChoiceSegmentedButtonRow)P(1,2:c#ui.unit.Dp)266@12418L423:SegmentedButton.kt#uh7d8r"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p4

    .local v1, "$dirty":I
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v7, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, p5, 0x2

    if-eqz v4, :cond_3

    or-int/lit8 v1, v1, 0x30

    move/from16 v5, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_5

    move/from16 v5, p1

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v1, v9

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    :goto_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_6

    or-int/lit16 v1, v1, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_8

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v1, v9

    :cond_8
    :goto_5
    move v9, v1

    .end local v1    # "$dirty":I
    .local v9, "$dirty":I
    and-int/lit16 v1, v9, 0x93

    const/16 v10, 0x92

    if-ne v1, v10, :cond_a

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    .line 278
    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v17, v3

    move/from16 v20, v5

    goto/16 :goto_d

    .line 266
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 263
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_7

    .line 266
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_b
    move-object v1, v3

    .line 263
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v1    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_7
    if-eqz v4, :cond_c

    .line 264
    sget-object v2, Landroidx/compose/material3/SegmentedButtonDefaults;->INSTANCE:Landroidx/compose/material3/SegmentedButtonDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/SegmentedButtonDefaults;->getBorderWidth-D9Ej5fM()F

    move-result v2

    .end local p1    # "space":F
    .local v2, "space":F
    goto :goto_8

    .line 263
    .end local v2    # "space":F
    .restart local p1    # "space":F
    :cond_c
    move v2, v5

    .line 264
    .end local p1    # "space":F
    .restart local v2    # "space":F
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 266
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material3.SingleChoiceSegmentedButtonRow (SegmentedButton.kt:265)"

    invoke-static {v0, v9, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 268
    :cond_d
    nop

    .line 269
    invoke-static {v1}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 270
    sget-object v3, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/OutlinedSegmentedButtonTokens;->getContainerHeight-D9Ej5fM()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-static {v0, v5, v3, v10, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 271
    sget-object v3, Landroidx/compose/foundation/layout/IntrinsicSize;->Min:Landroidx/compose/foundation/layout/IntrinsicSize;

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/IntrinsicKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 272
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 v4, 0x0

    .line 799
    .local v4, "$i$f$unaryMinus-D9Ej5fM":I
    neg-float v5, v2

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    .line 272
    .end local v4    # "$i$f$unaryMinus-D9Ej5fM":I
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 273
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v4

    .line 267
    nop

    .local v3, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    const/16 v5, 0x180

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v5, "$changed$iv":I
    const/4 v10, 0x0

    .local v10, "$i$f$Row":I
    const v11, 0x2952b718

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v11, "CC(Row)P(2,1,3)90@4553L58,91@4616L130:Row.kt#2w3rfo"

    invoke-static {v8, v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 800
    shr-int/lit8 v11, v5, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v5, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v3, v4, v8, v11}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v5, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 801
    nop

    .local v12, "$changed$iv$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$Layout":I
    const v14, -0x4ee9b9da

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh"

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 802
    const/4 v14, 0x0

    invoke-static {v8, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 803
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v15

    .line 805
    .local v15, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 812
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move-object/from16 p0, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p0, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v12, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 804
    move-object/from16 p1, v16

    .local v0, "$changed$iv$iv$iv":I
    .local p1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object/from16 p3, v17

    .local p3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const/16 v16, 0x0

    .line 813
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v17, v1

    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v17, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v1

    instance-of v1, v1, Landroidx/compose/runtime/Applier;

    if-nez v1, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 814
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 815
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 816
    move-object/from16 v1, p1

    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v1, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 818
    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_f
    move-object/from16 v1, p1

    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 820
    :goto_9
    move-object/from16 p1, v1

    .end local v1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .local v1, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 807
    .local v18, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v20, v2

    .end local v2    # "space":F
    .local v20, "space":F
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 808
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 810
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    .local v2, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v19, 0x0

    .line 821
    .local v19, "$i$f$set-impl":I
    move-object/from16 v21, v1

    .local v21, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 822
    .local v22, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v23

    if-nez v23, :cond_11

    move-object/from16 v23, v3

    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v23, "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v4

    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .local v24, "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_a

    :cond_10
    move-object/from16 v4, v21

    goto :goto_b

    .end local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :cond_11
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 823
    .end local v3    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v4    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .restart local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v21

    .end local v21    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 824
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 826
    :goto_b
    nop

    .line 821
    .end local v4    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 826
    nop

    .line 811
    .end local v2    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v19    # "$i$f$set-impl":I
    nop

    .line 820
    .end local v1    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 827
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p3

    .end local p3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v3, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v3, v1, v8, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const v1, 0x7ab4aae9

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 829
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v2, v8

    .local v2, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 830
    .local v4, "$i$a$-Layout-RowKt$Row$1$iv":I
    move/from16 p3, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local p3, "$changed$iv$iv$iv":I
    const v0, -0x1378c42b

    move/from16 v18, v1

    .end local v1    # "$changed$iv":I
    .local v18, "$changed$iv":I
    const-string v1, "C92@4661L9:Row.kt#2w3rfo"

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    shr-int/lit8 v1, v5, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .local v0, "$this$SingleChoiceSegmentedButtonRow_uFdPcIQ_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    move-object/from16 v19, v2

    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 275
    .local v21, "$i$a$-Row-SegmentedButtonKt$SingleChoiceSegmentedButtonRow$1":I
    move/from16 v22, v1

    .end local v1    # "$changed":I
    .local v22, "$changed":I
    const v1, -0xad2d5bc

    move-object/from16 v25, v3

    .end local v3    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v25, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v3, "C274@12753L58,275@12826L9:SegmentedButton.kt#uh7d8r"

    move/from16 v26, v4

    move-object/from16 v4, v19

    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    .local v26, "$i$a$-Layout-RowKt$Row$1$iv":I
    invoke-static {v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const v1, -0xad2d5b0

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):SegmentedButton.kt#9igjgp"

    invoke-static {v4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    move-object v3, v4

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 831
    .local v19, "$i$f$cache":I
    move/from16 v27, v1

    .end local v1    # "invalid$iv":Z
    .local v27, "invalid$iv":Z
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 832
    .local v28, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v29, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v30, v5

    .end local v5    # "$changed$iv":I
    .local v30, "$changed$iv":I
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_12

    .line 833
    const/4 v5, 0x0

    .line 275
    .local v5, "$i$a$-cache-SegmentedButtonKt$SingleChoiceSegmentedButtonRow$1$scope$1":I
    move-object/from16 v29, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local v29, "it$iv":Ljava/lang/Object;
    new-instance v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    invoke-direct {v1, v0}, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;-><init>(Landroidx/compose/foundation/layout/RowScope;)V

    .line 833
    .end local v5    # "$i$a$-cache-SegmentedButtonKt$SingleChoiceSegmentedButtonRow$1$scope$1":I
    nop

    .line 834
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 835
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_c

    .line 836
    .end local v29    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    :cond_12
    move-object/from16 v29, v1

    .line 832
    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local v29    # "it$iv":Ljava/lang/Object;
    :goto_c
    nop

    .line 831
    .end local v28    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v29    # "it$iv":Ljava/lang/Object;
    nop

    .line 275
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$f$cache":I
    .end local v27    # "invalid$iv":Z
    check-cast v1, Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;

    .local v1, "scope":Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 276
    shr-int/lit8 v3, v9, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v1, v4, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 277
    .end local v1    # "scope":Landroidx/compose/material3/SingleChoiceSegmentedButtonScopeWrapper;
    nop

    .line 830
    .end local v0    # "$this$SingleChoiceSegmentedButtonRow_uFdPcIQ_u24lambda_u243":Landroidx/compose/foundation/layout/RowScope;
    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-Row-SegmentedButtonKt$SingleChoiceSegmentedButtonRow$1":I
    .end local v22    # "$changed":I
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 829
    .end local v2    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v18    # "$changed$iv":I
    .end local v26    # "$i$a$-Layout-RowKt$Row$1$iv":I
    nop

    .line 837
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 838
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 839
    nop

    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v25    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local p1    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local p3    # "$changed$iv$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 840
    nop

    .end local v12    # "$changed$iv$iv":I
    .end local v13    # "$i$f$Layout":I
    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v15    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 841
    nop

    .end local v10    # "$i$f$Row":I
    .end local v11    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v23    # "horizontalArrangement$iv":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .end local v24    # "verticalAlignment$iv":Landroidx/compose/ui/Alignment$Vertical;
    .end local v30    # "$changed$iv":I
    .end local p0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 278
    :cond_13
    :goto_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v11, Landroidx/compose/material3/SegmentedButtonKt$SingleChoiceSegmentedButtonRow$2;

    move-object v0, v11

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$SingleChoiceSegmentedButtonRow$2;-><init>(Landroidx/compose/ui/Modifier;FLkotlin/jvm/functions/Function3;II)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method public static final synthetic access$SegmentedButtonContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "icon"    # Lkotlin/jvm/functions/Function2;
    .param p1, "content"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SegmentedButtonKt;->SegmentedButtonContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$getIconSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/SegmentedButtonKt;->IconSpacing:F

    return v0
.end method

.method private static final interactionCountAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p0, "$this$interactionCountAsState"    # Landroidx/compose/foundation/interaction/InteractionSource;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, 0x10cd4d53

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(interactionCountAsState)399@17334L33,400@17393L500,400@17372L521:SegmentedButton.kt#uh7d8r"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material3.interactionCountAsState (SegmentedButton.kt:398)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, -0x51cb65e9

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):SegmentedButton.kt#9igjgp"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    move v2, v1

    .local v2, "invalid$iv":Z
    move-object v3, p1

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 924
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 925
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1

    .line 926
    const/4 v7, 0x0

    .line 400
    .local v7, "$i$a$-cache-SegmentedButtonKt$interactionCountAsState$interactionCount$1":I
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v7

    .line 926
    .end local v7    # "$i$a$-cache-SegmentedButtonKt$interactionCountAsState$interactionCount$1":I
    nop

    .line 927
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 928
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_0

    .line 929
    :cond_1
    move-object v7, v5

    .line 925
    :goto_0
    nop

    .line 924
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 400
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    move-object v2, v7

    check-cast v2, Landroidx/compose/runtime/MutableIntState;

    .local v2, "interactionCount":Landroidx/compose/runtime/MutableIntState;
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 401
    const v3, -0x51cb65ae

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    and-int/lit8 v0, p2, 0x6

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    move v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, p1

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 930
    .local v3, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 931
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_6

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_5

    goto :goto_1

    .line 935
    :cond_5
    move-object v6, v4

    goto :goto_2

    .line 932
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 401
    .local v6, "$i$a$-cache-SegmentedButtonKt$interactionCountAsState$1":I
    new-instance v7, Landroidx/compose/material3/SegmentedButtonKt$interactionCountAsState$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v2, v8}, Landroidx/compose/material3/SegmentedButtonKt$interactionCountAsState$1$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 932
    .end local v6    # "$i$a$-cache-SegmentedButtonKt$interactionCountAsState$1":I
    move-object v6, v7

    .line 933
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 934
    nop

    .line 931
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 930
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 401
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v0, p2, 0xe

    invoke-static {p0, v6, p1, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v0, v2

    check-cast v0, Landroidx/compose/runtime/State;

    .line 418
    return-object v0
.end method

.method private static final interactionZIndex(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$interactionZIndex"    # Landroidx/compose/ui/Modifier;
    .param p1, "checked"    # Z
    .param p2, "interactionCount"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 768
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$interactionZIndex$1;

    invoke-direct {v0, p2, p1}, Landroidx/compose/material3/SegmentedButtonKt$interactionZIndex$1;-><init>(Landroidx/compose/runtime/State;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 774
    return-object v0
.end method
