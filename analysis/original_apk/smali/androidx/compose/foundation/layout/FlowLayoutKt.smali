.class public final Landroidx/compose/foundation/layout/FlowLayoutKt;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/Updater\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 9 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n*L\n1#1,757:1\n79#2,11:758\n92#2:789\n79#2,11:790\n92#2:821\n456#3,8:769\n464#3,6:783\n456#3,8:801\n464#3,6:815\n67#3,3:822\n66#3:825\n67#3,3:832\n66#3:835\n3737#4,6:777\n3737#4,6:809\n1116#5,6:826\n1116#5,6:836\n69#6,6:842\n69#6,6:849\n1#7:848\n1208#8:855\n1187#8,2:856\n322#9:858\n321#9:859\n324#9:860\n323#9:861\n321#9:862\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowLayoutKt\n*L\n72#1:758,11\n72#1:789\n122#1:790,11\n122#1:821\n72#1:769,8\n72#1:783,6\n122#1:801,8\n122#1:815,6\n158#1:822,3\n158#1:825\n179#1:832,3\n179#1:835\n72#1:777,6\n122#1:809,6\n158#1:826,6\n179#1:836,6\n447#1:842,6\n568#1:849,6\n608#1:855\n608#1:856,2\n609#1:858\n610#1:859\n611#1:860\n688#1:861\n689#1:862\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001aT\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0087\u0008\u00a2\u0006\u0002\u0010\u0012\u001aT\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000c2\u001c\u0010\r\u001a\u0018\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00040\u000e\u00a2\u0006\u0002\u0008\u0010\u00a2\u0006\u0002\u0008\u0011H\u0087\u0008\u00a2\u0006\u0002\u0010\u0016\u001a%\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0010\u001a\u001a\u0080\u0001\u0010\u001b\u001a\u00020\u000c2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2#\u0010\u001f\u001a\u001f\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0 \u00a2\u0006\u0002\u0008\u00112#\u0010!\u001a\u001f\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0 \u00a2\u0006\u0002\u0008\u00112\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001aF\u0010\u001b\u001a\u00020\u000c2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001aS\u0010(\u001a\u00020\u000c2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2#\u0010\u001f\u001a\u001f\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0 \u00a2\u0006\u0002\u0008\u00112\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001a\u0080\u0001\u0010*\u001a\u00020\u000c2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d2#\u0010\u001f\u001a\u001f\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0 \u00a2\u0006\u0002\u0008\u00112#\u0010!\u001a\u001f\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0 \u00a2\u0006\u0002\u0008\u00112\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002\u001a%\u0010+\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0010,\u001a6\u0010-\u001a\u00020.*\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u0010\u0019\u001a\u00020\u000cH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107\u001a\u001c\u00108\u001a\u00020\u000c*\u0002092\u0006\u00102\u001a\u0002032\u0006\u0010\u001f\u001a\u00020\u000cH\u0000\u001a\u0014\u0010!\u001a\u00020\u000c*\u00020:2\u0006\u00102\u001a\u000203H\u0000\u001a\u001c\u0010;\u001a\u00020\u000c*\u0002092\u0006\u00102\u001a\u0002032\u0006\u0010!\u001a\u00020\u000cH\u0000\u001a\u0014\u0010\u001f\u001a\u00020\u000c*\u00020:2\u0006\u00102\u001a\u000203H\u0000\u001a<\u0010<\u001a\u00020\u000c*\u0002092\u0006\u00104\u001a\u0002052\u0006\u00102\u001a\u0002032\u0014\u0010=\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010:\u0012\u0004\u0012\u00020\u00040\u000eH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006@"
    }
    d2 = {
        "CROSS_AXIS_ALIGNMENT_START",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "CROSS_AXIS_ALIGNMENT_TOP",
        "FlowColumn",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "maxItemsInEachColumn",
        "",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/FlowColumnScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "FlowRow",
        "maxItemsInEachRow",
        "Landroidx/compose/foundation/layout/FlowRowScope;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "columnMeasurementHelper",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "maxItemsInMainAxis",
        "(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "intrinsicCrossAxisSize",
        "children",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "mainAxisSize",
        "Lkotlin/Function3;",
        "crossAxisSize",
        "mainAxisAvailable",
        "mainAxisSpacing",
        "crossAxisSpacing",
        "mainAxisSizes",
        "",
        "crossAxisSizes",
        "maxIntrinsicMainAxisSize",
        "crossAxisAvailable",
        "minIntrinsicMainAxisSize",
        "rowMeasurementHelper",
        "(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;",
        "breakDownItems",
        "Landroidx/compose/foundation/layout/FlowResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measureHelper",
        "Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "constraints",
        "Landroidx/compose/foundation/layout/OrientationIndependentConstraints;",
        "breakDownItems-w1Onq5I",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;",
        "crossAxisMin",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/layout/Placeable;",
        "mainAxisMin",
        "measureAndCache",
        "storePlaceable",
        "measureAndCache-6m2dt9o",
        "(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I",
        "foundation-layout_release"
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
.field private static final CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private static final CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 717
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 718
    sget-object v0, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-void
.end method

.method public static final FlowColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "maxItemsInEachColumn"    # I
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowColumnScope;",
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

    move-object/from16 v0, p5

    const/4 v1, 0x0

    .local v1, "$i$f$FlowColumn":I
    const v2, -0x127ea9d5

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(FlowColumn)P(3,4,1,2)116@4804L119,121@4928L137:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v2, p0

    .line 111
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_1

    .line 112
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v3

    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v3, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_1

    .line 111
    .end local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_1
    move-object/from16 v3, p1

    .line 112
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_1
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_2

    .line 113
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v4

    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v4, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_2

    .line 112
    .end local v4    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_2
    move-object/from16 v4, p2

    .line 113
    .end local p2    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v4    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_2
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_3

    .line 114
    const v5, 0x7fffffff

    .end local p3    # "maxItemsInEachColumn":I
    .local v5, "maxItemsInEachColumn":I
    goto :goto_3

    .line 113
    .end local v5    # "maxItemsInEachColumn":I
    .restart local p3    # "maxItemsInEachColumn":I
    :cond_3
    move/from16 v5, p3

    .line 118
    .end local p3    # "maxItemsInEachColumn":I
    .restart local v5    # "maxItemsInEachColumn":I
    :goto_3
    nop

    .line 119
    nop

    .line 120
    shr-int/lit8 v6, p6, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v7, p6, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v6, v7

    shr-int/lit8 v7, p6, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v6, v7

    .line 117
    invoke-static {v3, v4, v5, v0, v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v7, p6, 0x3

    and-int/lit8 v7, v7, 0x70

    .line 122
    nop

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 790
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 791
    .local v9, "compositeKeyHash$iv":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 793
    .local v10, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 800
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    shl-int/lit8 v13, v7, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/lit8 v13, v13, 0x6

    .line 792
    nop

    .local v11, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v13, "$changed$iv$iv":I
    const/4 v14, 0x0

    .line 801
    .local v14, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 802
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 803
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 804
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 806
    :cond_5
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 808
    :goto_4
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .local v15, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 795
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v18, v1

    .end local v1    # "$i$f$FlowColumn":I
    .local v18, "$i$f$FlowColumn":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 796
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 798
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 809
    .local v17, "$i$f$set-impl":I
    move-object/from16 p0, v15

    .local p0, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 810
    .local v19, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v20, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p1, v3

    .end local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v3, p0

    goto :goto_6

    .end local v20    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 p1, v3

    .line 811
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v20    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p0

    .end local p0    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 812
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 814
    :goto_6
    nop

    .line 809
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 814
    nop

    .line 799
    .end local v1    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 808
    .end local v15    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 815
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v13, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 817
    shr-int/lit8 v1, v13, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object/from16 v2, p5

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$a$-Layout-FlowLayoutKt$FlowColumn$1":I
    const v15, -0x28a58891

    const-string v0, "C122@4980L9:FlowLayout.kt#2w3rfo"

    invoke-static {v2, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/FlowColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowColumnScopeInstance;

    shr-int/lit8 v15, p6, 0x9

    and-int/lit8 v15, v15, 0x70

    or-int/lit8 v15, v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 p0, v1

    move-object/from16 v1, p4

    .end local v1    # "$changed":I
    .local p0, "$changed":I
    invoke-interface {v1, v0, v2, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 817
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-FlowLayoutKt$FlowColumn$1":I
    .end local p0    # "$changed":I
    nop

    .line 818
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 819
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 820
    nop

    .end local v11    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v13    # "$changed$iv$iv":I
    .end local v14    # "$i$f$ReusableComposeNode":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 821
    nop

    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$Layout":I
    .end local v9    # "compositeKeyHash$iv":I
    .end local v10    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 127
    return-void
.end method

.method public static final FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p3, "maxItemsInEachRow"    # I
    .param p4, "content"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/FlowRowScope;",
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

    move-object/from16 v0, p5

    const/4 v1, 0x0

    .local v1, "$i$f$FlowRow":I
    const v2, 0x417969d3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(FlowRow)P(3,1,4,2)66@2954L113,71@3072L134:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    .line 61
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_0

    .line 0
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_0
    move-object/from16 v2, p0

    .line 61
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_0
    and-int/lit8 v3, p7, 0x2

    if-eqz v3, :cond_1

    .line 62
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-result-object v3

    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .local v3, "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    goto :goto_1

    .line 61
    .end local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_1
    move-object/from16 v3, p1

    .line 62
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_1
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_2

    .line 63
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-result-object v4

    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .local v4, "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    goto :goto_2

    .line 62
    .end local v4    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :cond_2
    move-object/from16 v4, p2

    .line 63
    .end local p2    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .restart local v4    # "verticalArrangement":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    :goto_2
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_3

    .line 64
    const v5, 0x7fffffff

    .end local p3    # "maxItemsInEachRow":I
    .local v5, "maxItemsInEachRow":I
    goto :goto_3

    .line 63
    .end local v5    # "maxItemsInEachRow":I
    .restart local p3    # "maxItemsInEachRow":I
    :cond_3
    move/from16 v5, p3

    .line 68
    .end local p3    # "maxItemsInEachRow":I
    .restart local v5    # "maxItemsInEachRow":I
    :goto_3
    nop

    .line 69
    nop

    .line 70
    shr-int/lit8 v6, p6, 0x3

    and-int/lit8 v6, v6, 0xe

    shr-int/lit8 v7, p6, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr v6, v7

    shr-int/lit8 v7, p6, 0x3

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v6, v7

    .line 67
    invoke-static {v3, v4, v5, v0, v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    .local v6, "measurePolicy":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v7, p6, 0x3

    and-int/lit8 v7, v7, 0x70

    .line 72
    nop

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Layout":I
    const v9, -0x4ee9b9da

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 758
    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v9

    .line 759
    .local v9, "compositeKeyHash$iv":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v10

    .line 761
    .local v10, "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v11

    .line 768
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v12

    shl-int/lit8 v13, v7, 0x9

    and-int/lit16 v13, v13, 0x1c00

    or-int/lit8 v13, v13, 0x6

    .line 760
    nop

    .local v11, "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v12, "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v13, "$changed$iv$iv":I
    const/4 v14, 0x0

    .line 769
    .local v14, "$i$f$ReusableComposeNode":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    if-nez v15, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 770
    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 771
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 772
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 774
    :cond_5
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 776
    :goto_4
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v15

    .local v15, "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 763
    .local v16, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v18, v1

    .end local v1    # "$i$f$FlowRow":I
    .local v18, "$i$f$FlowRow":I
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 764
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    invoke-static {v15, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 766
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .local v1, "block$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v17, 0x0

    .line 777
    .local v17, "$i$f$set-impl":I
    move-object/from16 p0, v15

    .local p0, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v19, 0x0

    .line 778
    .local v19, "$i$a$-with-Updater$set$1$iv$iv":I
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v20, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v20, "modifier":Landroidx/compose/ui/Modifier;
    invoke-interface/range {p0 .. p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p1, v3

    .end local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v3, p0

    goto :goto_6

    .end local v20    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 p1, v3

    .line 779
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v3    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .restart local v20    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "horizontalArrangement":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    :goto_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p0

    .end local p0    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 780
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2, v1}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 782
    :goto_6
    nop

    .line 777
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v19    # "$i$a$-with-Updater$set$1$iv$iv":I
    nop

    .line 782
    nop

    .line 767
    .end local v1    # "block$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v17    # "$i$f$set-impl":I
    nop

    .line 776
    .end local v15    # "$this$Layout_u24lambda_u240$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv":I
    nop

    .line 783
    invoke-static/range {p5 .. p5}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v2, v13, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const v1, 0x7ab4aae9

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 785
    shr-int/lit8 v1, v13, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed":I
    move-object/from16 v2, p5

    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 73
    .local v3, "$i$a$-Layout-FlowLayoutKt$FlowRow$1":I
    const v15, 0x1ccfba1b

    const-string v0, "C72@3121L9:FlowLayout.kt#2w3rfo"

    invoke-static {v2, v15, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    shr-int/lit8 v15, p6, 0x9

    and-int/lit8 v15, v15, 0x70

    or-int/lit8 v15, v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 p0, v1

    move-object/from16 v1, p4

    .end local v1    # "$changed":I
    .local p0, "$changed":I
    invoke-interface {v1, v0, v2, v15}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 785
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$a$-Layout-FlowLayoutKt$FlowRow$1":I
    .end local p0    # "$changed":I
    nop

    .line 786
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 787
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 788
    nop

    .end local v11    # "factory$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "skippableUpdate$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v13    # "$changed$iv$iv":I
    .end local v14    # "$i$f$ReusableComposeNode":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 789
    nop

    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$Layout":I
    .end local v9    # "compositeKeyHash$iv":I
    .end local v10    # "localMap$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 77
    return-void
.end method

.method public static final synthetic access$getCROSS_AXIS_ALIGNMENT_START$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_START:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final synthetic access$getCROSS_AXIS_ALIGNMENT_TOP$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/FlowLayoutKt;->CROSS_AXIS_ALIGNMENT_TOP:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public static final synthetic access$intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 1
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 1
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .param p4, "maxItemsInMainAxis"    # I

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/FlowLayoutKt;->maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 1
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "crossAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result v0

    return v0
.end method

.method public static final breakDownItems-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;
    .locals 31
    .param p0, "$this$breakDownItems_u2dw1Onq5I"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p1, "measureHelper"    # Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    .param p2, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p3, "constraints"    # J
    .param p5, "maxItemsInMainAxis"    # I

    .line 608
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 855
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 856
    const/16 v2, 0x10

    .local v2, "capacity$iv$iv":I
    const/4 v3, 0x0

    .line 857
    .local v3, "$i$f$MutableVector":I
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v2, [Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 855
    .end local v2    # "capacity$iv$iv":I
    .end local v3    # "$i$f$MutableVector":I
    nop

    .line 608
    .end local v1    # "$i$f$mutableVectorOf":I
    move-object v1, v4

    .line 609
    .local v1, "items":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 858
    .local v2, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    .line 609
    .end local v2    # "$i$f$getMainAxisMax-impl":I
    nop

    .line 610
    .local v2, "mainAxisMax":I
    const/4 v3, 0x0

    .line 859
    .local v3, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 610
    .end local v3    # "$i$f$getMainAxisMin-impl":I
    nop

    .line 611
    .local v3, "mainAxisMin":I
    const/4 v4, 0x0

    .line 860
    .local v4, "$i$f$getCrossAxisMax-impl":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    .line 611
    .end local v4    # "$i$f$getCrossAxisMax-impl":I
    nop

    .line 612
    .local v4, "crossAxisMax":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getMeasurables()Ljava/util/List;

    move-result-object v5

    .line 613
    .local v5, "measurables":Ljava/util/List;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getPlaceables()[Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    .line 615
    .local v7, "placeables":[Landroidx/compose/ui/layout/Placeable;
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getArrangementSpacing-D9Ej5fM()F

    move-result v8

    move-object/from16 v15, p0

    invoke-interface {v15, v8}, Landroidx/compose/ui/layout/MeasureScope;->toPx-0680j_4(F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-int v8, v8

    .line 617
    .local v8, "spacing":I
    nop

    .line 618
    nop

    .line 619
    nop

    .line 620
    nop

    .line 616
    invoke-static {v3, v2, v6, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v13

    .line 623
    .local v13, "subsetConstraints":J
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_0

    .line 624
    nop

    .line 623
    new-instance v11, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1;

    invoke-direct {v11, v7}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1;-><init>([Landroidx/compose/ui/layout/Placeable;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v13, v14, v0, v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 629
    .local v9, "nextSize":Ljava/lang/Integer;
    :goto_0
    const/4 v11, 0x0

    .line 630
    .local v11, "startBreakLineIndex":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Integer;

    .line 631
    .local v12, "endBreakLineList":[Ljava/lang/Integer;
    const/16 v16, 0x0

    .line 633
    .local v16, "endBreakLineIndex":I
    move/from16 v17, v2

    .line 635
    .local v17, "leftOver":I
    move/from16 v18, v3

    .line 636
    .local v18, "mainAxisTotalSize":I
    const/16 v19, 0x0

    .line 637
    .local v19, "currentLineMainAxisSize":I
    const/16 v20, 0x0

    .local v20, "index":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v24, v9

    move v9, v11

    move/from16 v25, v16

    move/from16 v26, v17

    move/from16 v11, v18

    move/from16 v27, v19

    move/from16 v10, v20

    .end local v16    # "endBreakLineIndex":I
    .end local v17    # "leftOver":I
    .end local v18    # "mainAxisTotalSize":I
    .end local v19    # "currentLineMainAxisSize":I
    .end local v20    # "index":I
    .local v9, "startBreakLineIndex":I
    .local v10, "index":I
    .local v11, "mainAxisTotalSize":I
    .local v24, "nextSize":Ljava/lang/Integer;
    .local v25, "endBreakLineIndex":I
    .local v26, "leftOver":I
    .local v27, "currentLineMainAxisSize":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 638
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 639
    .local v17, "itemMainAxisSize":I
    move/from16 v28, v3

    .end local v3    # "mainAxisMin":I
    .local v28, "mainAxisMin":I
    add-int v3, v27, v17

    .line 640
    .end local v27    # "currentLineMainAxisSize":I
    .local v3, "currentLineMainAxisSize":I
    sub-int v26, v26, v17

    .line 641
    move/from16 v29, v4

    .end local v4    # "crossAxisMax":I
    .local v29, "crossAxisMax":I
    add-int/lit8 v4, v10, 0x1

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    if-eqz v4, :cond_1

    .line 642
    nop

    .line 641
    move/from16 v18, v6

    new-instance v6, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;

    invoke-direct {v6, v7, v10}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;-><init>([Landroidx/compose/ui/layout/Placeable;I)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v13, v14, v0, v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I

    move-result v4

    .line 645
    nop

    .line 641
    nop

    .line 645
    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 641
    :cond_1
    move/from16 v18, v6

    const/4 v4, 0x0

    :goto_2
    nop

    .line 646
    .end local v24    # "nextSize":Ljava/lang/Integer;
    .local v4, "nextSize":Ljava/lang/Integer;
    add-int/lit8 v6, v10, 0x1

    move-object/from16 v30, v7

    .end local v7    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    .local v30, "placeables":[Landroidx/compose/ui/layout/Placeable;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 647
    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v6, v9

    move/from16 v7, p5

    if-ge v6, v7, :cond_5

    .line 648
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    sub-int v6, v26, v6

    if-gez v6, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v27, v3

    move-object/from16 v24, v4

    goto :goto_6

    .line 646
    :cond_4
    move/from16 v7, p5

    .line 650
    :cond_5
    :goto_4
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 651
    .end local v11    # "mainAxisTotalSize":I
    .local v6, "mainAxisTotalSize":I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 652
    const/4 v3, 0x0

    .line 653
    move v11, v2

    .line 654
    .end local v26    # "leftOver":I
    .local v11, "leftOver":I
    add-int/lit8 v9, v10, 0x1

    .line 655
    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v12, v25

    .line 656
    add-int/lit8 v25, v25, 0x1

    .line 658
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_5

    :cond_6
    const/16 v19, 0x0

    :goto_5
    move-object/from16 v4, v19

    move/from16 v27, v3

    move-object/from16 v24, v4

    move/from16 v26, v11

    move v11, v6

    .line 637
    .end local v3    # "currentLineMainAxisSize":I
    .end local v4    # "nextSize":Ljava/lang/Integer;
    .end local v6    # "mainAxisTotalSize":I
    .end local v17    # "itemMainAxisSize":I
    .local v11, "mainAxisTotalSize":I
    .restart local v24    # "nextSize":Ljava/lang/Integer;
    .restart local v26    # "leftOver":I
    .restart local v27    # "currentLineMainAxisSize":I
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v18

    move/from16 v3, v28

    move/from16 v4, v29

    move-object/from16 v7, v30

    goto/16 :goto_1

    .end local v28    # "mainAxisMin":I
    .end local v29    # "crossAxisMax":I
    .end local v30    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    .local v3, "mainAxisMin":I
    .local v4, "crossAxisMax":I
    .restart local v7    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    :cond_7
    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v30, v7

    move/from16 v7, p5

    .line 662
    .end local v3    # "mainAxisMin":I
    .end local v4    # "crossAxisMax":I
    .end local v7    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    .end local v10    # "index":I
    .restart local v28    # "mainAxisMin":I
    .restart local v29    # "crossAxisMax":I
    .restart local v30    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    nop

    .line 663
    nop

    .line 662
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    move-wide/from16 v16, v13

    move/from16 v18, v11

    invoke-static/range {v16 .. v23}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 664
    invoke-static {v3, v4, v0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v3

    .line 662
    move-object v6, v12

    .end local v11    # "mainAxisTotalSize":I
    .end local v12    # "endBreakLineList":[Ljava/lang/Integer;
    .local v6, "endBreakLineList":[Ljava/lang/Integer;
    .restart local v18    # "mainAxisTotalSize":I
    move-wide v11, v3

    .line 666
    .local v11, "subsetBoxConstraints":J
    const/4 v3, 0x0

    .line 667
    .end local v9    # "startBreakLineIndex":I
    .local v3, "startBreakLineIndex":I
    const/4 v4, 0x0

    .line 669
    .local v4, "crossAxisTotalSize":I
    const/4 v9, 0x0

    .line 670
    .end local v25    # "endBreakLineIndex":I
    .local v9, "endBreakLineIndex":I
    invoke-static {v6, v9}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v10, v18

    .line 671
    .end local v9    # "endBreakLineIndex":I
    .end local v18    # "mainAxisTotalSize":I
    .local v10, "mainAxisTotalSize":I
    .restart local v16    # "endBreakLineIndex":I
    .local v17, "endIndex":Ljava/lang/Integer;
    :goto_7
    if-eqz v17, :cond_8

    .line 672
    nop

    .line 673
    nop

    .line 674
    nop

    .line 675
    nop

    .line 676
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 672
    move-object/from16 v9, p1

    move v0, v10

    .end local v10    # "mainAxisTotalSize":I
    .local v0, "mainAxisTotalSize":I
    move-object/from16 v10, p0

    move-wide/from16 v19, v13

    .end local v13    # "subsetConstraints":J
    .local v19, "subsetConstraints":J
    move v13, v3

    move/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    move-result-object v9

    .line 678
    .local v9, "result":Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v10

    add-int/2addr v4, v10

    .line 679
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisSize()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 680
    .end local v0    # "mainAxisTotalSize":I
    .restart local v10    # "mainAxisTotalSize":I
    nop

    .line 681
    nop

    .line 680
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 684
    add-int/lit8 v0, v16, 0x1

    .line 685
    .end local v16    # "endBreakLineIndex":I
    .local v0, "endBreakLineIndex":I
    invoke-static {v6, v0}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/Integer;

    move/from16 v16, v0

    move-wide/from16 v13, v19

    move-object/from16 v0, p2

    .end local v9    # "result":Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    goto :goto_7

    .line 688
    .end local v0    # "endBreakLineIndex":I
    .end local v19    # "subsetConstraints":J
    .restart local v13    # "subsetConstraints":J
    .restart local v16    # "endBreakLineIndex":I
    :cond_8
    move v0, v10

    .end local v10    # "mainAxisTotalSize":I
    .local v0, "mainAxisTotalSize":I
    const/4 v9, 0x0

    .line 861
    .local v9, "$i$f$getCrossAxisMin-impl":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v9

    .line 688
    .end local v9    # "$i$f$getCrossAxisMin-impl":I
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 689
    const/4 v9, 0x0

    .line 862
    .local v9, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v9

    .line 689
    .end local v9    # "$i$f$getMainAxisMin-impl":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 690
    new-instance v9, Landroidx/compose/foundation/layout/FlowResult;

    .line 691
    nop

    .line 692
    nop

    .line 693
    nop

    .line 690
    invoke-direct {v9, v0, v4, v1}, Landroidx/compose/foundation/layout/FlowResult;-><init>(IILandroidx/compose/runtime/collection/MutableVector;)V

    return-object v9
.end method

.method public static final columnMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 24
    .param p0, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p1, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p2, "maxItemsInMainAxis"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, -0x77fd7175

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(columnMeasurementHelper)P(2)178@6629L585:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:177)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xe

    and-int/lit8 v4, v1, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v4, v1, 0x380

    or-int/2addr v3, v4

    .line 179
    nop

    .local v2, "key3$iv":Ljava/lang/Object;
    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v5, 0x607fb4c4

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 832
    move-object/from16 v5, p0

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 833
    move-object/from16 v15, p1

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 832
    or-int/2addr v6, v7

    .line 834
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 832
    or-int/2addr v6, v7

    .line 835
    move-object/from16 v14, p3

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v6

    .local v16, "invalid$iv$iv":Z
    const/16 v17, 0x0

    .line 836
    .local v17, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 837
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v16, :cond_2

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_1

    goto :goto_0

    .line 841
    :cond_1
    move-object/from16 v23, v13

    move-object v0, v14

    goto :goto_1

    .line 838
    :cond_2
    :goto_0
    const/16 v19, 0x0

    .line 181
    .local v19, "$i$a$-remember-FlowLayoutKt$columnMeasurementHelper$1":I
    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 183
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 184
    sget-object v11, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 185
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getCROSS_AXIS_ALIGNMENT_START$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v12

    .line 187
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v20

    .line 180
    new-instance v21, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 181
    nop

    .line 186
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    nop

    .line 187
    nop

    .line 188
    const/16 v22, 0x0

    .line 180
    move-object/from16 v6, v21

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object/from16 v23, v13

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .local v23, "it$iv$iv":Ljava/lang/Object;
    move/from16 v13, v20

    move-object v0, v14

    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v14, p2

    move-object/from16 v15, v22

    invoke-direct/range {v6 .. v15}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 838
    .end local v19    # "$i$a$-remember-FlowLayoutKt$columnMeasurementHelper$1":I
    move-object/from16 v13, v21

    .line 839
    .local v13, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 840
    nop

    .line 837
    .end local v13    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 836
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v23    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 835
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 179
    .end local v2    # "key3$iv":Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    check-cast v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v13
.end method

.method public static final crossAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I
    .locals 1
    .param p0, "$this$crossAxisMin"    # Landroidx/compose/ui/layout/Measurable;
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p2, "mainAxisSize"    # I

    .line 705
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    .line 706
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v0

    goto :goto_0

    .line 708
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result v0

    .line 709
    :goto_0
    return v0
.end method

.method public static final crossAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p0, "$this$crossAxisSize"    # Landroidx/compose/ui/layout/Placeable;
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 715
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 22
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)I"
        }
    .end annotation

    .line 556
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    .line 560
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 556
    if-eqz v3, :cond_0

    .line 557
    return v4

    .line 559
    :cond_0
    const/4 v3, 0x0

    .local v3, "nextChild":Ljava/lang/Object;
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    .line 560
    const/4 v6, 0x0

    .local v6, "nextCrossAxisSize":I
    move-object v7, v3

    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v7, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v7, v5, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    move v6, v7

    .line 561
    const/4 v7, 0x0

    .local v7, "nextMainAxisSize":I
    move-object v8, v3

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v8, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v8, v5, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v4

    .line 563
    .end local v7    # "nextMainAxisSize":I
    .local v5, "nextMainAxisSize":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "remaining":I
    move/from16 v7, p3

    .line 564
    const/4 v8, 0x0

    .line 565
    .local v8, "currentCrossAxisSize":I
    const/4 v9, 0x0

    .line 566
    .local v9, "totalCrossAxisSize":I
    const/4 v10, 0x0

    .line 568
    .local v10, "lastBreak":I
    move-object/from16 v11, p0

    .local v11, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v12, 0x0

    .line 849
    .local v12, "$i$f$fastForEachIndexed":I
    nop

    .line 850
    const/4 v13, 0x0

    .local v13, "index$iv":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    :goto_2
    if-ge v13, v14, :cond_8

    .line 851
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 852
    .local v15, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    move/from16 v16, v13

    .local v16, "index":I
    const/16 v17, 0x0

    .line 569
    .local v17, "$i$a$-fastForEachIndexed-FlowLayoutKt$intrinsicCrossAxisSize$3":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 570
    move/from16 v18, v6

    .line 571
    .local v18, "childCrossAxisSize":I
    move/from16 v19, v5

    .line 572
    .local v19, "childMainAxisSize":I
    sub-int v7, v7, v19

    .line 573
    move/from16 v4, v18

    .end local v18    # "childCrossAxisSize":I
    .local v4, "childCrossAxisSize":I
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 576
    move-object/from16 v18, v3

    .end local v3    # "nextChild":Ljava/lang/Object;
    .local v18, "nextChild":Ljava/lang/Object;
    add-int/lit8 v3, v16, 0x1

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    .line 577
    .end local v18    # "nextChild":Ljava/lang/Object;
    .restart local v3    # "nextChild":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v0, :cond_3

    add-int/lit8 v18, v16, 0x1

    move/from16 v20, v4

    .end local v4    # "childCrossAxisSize":I
    .local v20, "childCrossAxisSize":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v21, v5

    .end local v5    # "nextMainAxisSize":I
    .local v21, "nextMainAxisSize":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v0, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_3

    .end local v20    # "childCrossAxisSize":I
    .end local v21    # "nextMainAxisSize":I
    .restart local v4    # "childCrossAxisSize":I
    .restart local v5    # "nextMainAxisSize":I
    :cond_3
    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "childCrossAxisSize":I
    .end local v5    # "nextMainAxisSize":I
    .restart local v20    # "childCrossAxisSize":I
    .restart local v21    # "nextMainAxisSize":I
    const/4 v0, 0x0

    :goto_3
    move v6, v0

    .line 578
    move-object v0, v3

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    if-eqz v0, :cond_4

    add-int/lit8 v4, v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v0, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 579
    nop

    .line 578
    nop

    .line 579
    add-int v0, v0, p4

    .line 578
    goto :goto_4

    .line 579
    :cond_4
    const/4 v0, 0x0

    .line 578
    :goto_4
    nop

    .line 581
    .end local v21    # "nextMainAxisSize":I
    .local v0, "nextMainAxisSize":I
    if-ltz v7, :cond_5

    add-int/lit8 v4, v16, 0x1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 582
    add-int/lit8 v4, v16, 0x1

    sub-int/2addr v4, v10

    move/from16 v5, p6

    if-eq v4, v5, :cond_6

    .line 583
    sub-int v4, v7, v0

    if-gez v4, :cond_7

    goto :goto_5

    .line 581
    :cond_5
    move/from16 v5, p6

    .line 585
    :cond_6
    :goto_5
    add-int v4, v8, p5

    add-int/2addr v9, v4

    .line 586
    const/4 v4, 0x0

    .line 587
    .end local v8    # "currentCrossAxisSize":I
    .local v4, "currentCrossAxisSize":I
    move/from16 v7, p3

    .line 588
    add-int/lit8 v8, v16, 0x1

    .line 589
    .end local v10    # "lastBreak":I
    .local v8, "lastBreak":I
    sub-int v0, v0, p4

    move v10, v8

    move v8, v4

    .line 591
    .end local v4    # "currentCrossAxisSize":I
    .local v8, "currentCrossAxisSize":I
    .restart local v10    # "lastBreak":I
    :cond_7
    nop

    .line 852
    .end local v16    # "index":I
    .end local v17    # "$i$a$-fastForEachIndexed-FlowLayoutKt$intrinsicCrossAxisSize$3":I
    .end local v19    # "childMainAxisSize":I
    .end local v20    # "childCrossAxisSize":I
    nop

    .line 850
    .end local v15    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    move v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 854
    .end local v0    # "nextMainAxisSize":I
    .end local v13    # "index$iv":I
    .restart local v5    # "nextMainAxisSize":I
    :cond_8
    nop

    .line 593
    .end local v11    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v12    # "$i$f$fastForEachIndexed":I
    sub-int v9, v9, p5

    .line 594
    return v9
.end method

.method private static final intrinsicCrossAxisSize(Ljava/util/List;[I[IIIII)I
    .locals 8
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSizes"    # [I
    .param p2, "crossAxisSizes"    # [I
    .param p3, "mainAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;[I[IIIII)I"
        }
    .end annotation

    .line 534
    nop

    .line 533
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;-><init>([I)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function3;

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;-><init>([I)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 537
    nop

    .line 538
    nop

    .line 539
    nop

    .line 540
    nop

    .line 533
    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result v0

    return v0
.end method

.method public static final mainAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I
    .locals 1
    .param p0, "$this$mainAxisMin"    # Landroidx/compose/ui/layout/Measurable;
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p2, "crossAxisSize"    # I

    .line 698
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    .line 699
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicWidth(I)I

    move-result v0

    goto :goto_0

    .line 701
    :cond_0
    invoke-interface {p0, p2}, Landroidx/compose/ui/layout/Measurable;->minIntrinsicHeight(I)I

    move-result v0

    .line 702
    :goto_0
    return v0
.end method

.method public static final mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1
    .param p0, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 712
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static final maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I
    .locals 16
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .param p4, "maxItemsInMainAxis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "fixedSpace":I
    const/4 v1, 0x0

    .line 446
    .local v1, "currentFixedSpace":I
    const/4 v2, 0x0

    .line 447
    .local v2, "lastBreak":I
    move-object/from16 v3, p0

    .local v3, "$this$fastForEachIndexed$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 842
    .local v4, "$i$f$fastForEachIndexed":I
    nop

    .line 843
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_2

    .line 844
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 845
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .local v8, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    move v9, v5

    .local v9, "index":I
    const/4 v10, 0x0

    .line 448
    .local v10, "$i$a$-fastForEachIndexed-FlowLayoutKt$maxIntrinsicMainAxisSize$1":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-interface {v13, v8, v11, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int v11, v11, p3

    .line 449
    .local v11, "size":I
    add-int/lit8 v12, v9, 0x1

    sub-int/2addr v12, v2

    move/from16 v14, p4

    if-eq v12, v14, :cond_1

    add-int/lit8 v12, v9, 0x1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    if-ne v12, v15, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    add-int/2addr v1, v11

    goto :goto_2

    .line 450
    :cond_1
    :goto_1
    move v2, v9

    .line 451
    add-int/2addr v1, v11

    .line 452
    sub-int v1, v1, p3

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 454
    const/4 v1, 0x0

    .line 458
    :goto_2
    nop

    .line 845
    .end local v8    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v9    # "index":I
    .end local v10    # "$i$a$-fastForEachIndexed-FlowLayoutKt$maxIntrinsicMainAxisSize$1":I
    .end local v11    # "size":I
    nop

    .line 843
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v13, p1

    move/from16 v14, p4

    .line 847
    .end local v5    # "index$iv":I
    nop

    .line 459
    .end local v3    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEachIndexed":I
    return v0
.end method

.method private static final measureAndCache-6m2dt9o(Landroidx/compose/ui/layout/Measurable;JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/functions/Function1;)I
    .locals 9
    .param p0, "$this$measureAndCache_u2d6m2dt9o"    # Landroidx/compose/ui/layout/Measurable;
    .param p1, "constraints"    # J
    .param p3, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p4, "storePlaceable"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Measurable;",
            "J",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    .line 730
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 732
    nop

    .line 733
    nop

    .line 734
    const/4 v3, 0x0

    .line 733
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 735
    invoke-static {v0, v1, p3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v0

    .line 732
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 736
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    nop

    .line 737
    .local v0, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static {v0, p3}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    move-result v0

    .end local v0    # "placeable":Landroidx/compose/ui/layout/Placeable;
    goto :goto_1

    .line 739
    :cond_1
    const v0, 0x7fffffff

    invoke-static {p0, p3, v0}, Landroidx/compose/foundation/layout/FlowLayoutKt;->mainAxisMin(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/LayoutOrientation;I)I

    move-result v0

    .line 730
    :goto_1
    nop

    .line 741
    .local v0, "itemSize":I
    return v0
.end method

.method private static final minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I
    .locals 20
    .param p0, "children"    # Ljava/util/List;
    .param p1, "mainAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p2, "crossAxisSize"    # Lkotlin/jvm/functions/Function3;
    .param p3, "crossAxisAvailable"    # I
    .param p4, "mainAxisSpacing"    # I
    .param p5, "crossAxisSpacing"    # I
    .param p6, "maxItemsInMainAxis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)I"
        }
    .end annotation

    .line 475
    move/from16 v0, p3

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 476
    .local v1, "mainAxisSizes":[I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [I

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_1

    aput v3, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 478
    .local v2, "crossAxisSizes":[I
    const/4 v4, 0x0

    .local v4, "index":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_2

    .line 479
    move-object/from16 v12, p0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 480
    .local v6, "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v13, p1

    invoke-interface {v13, v6, v7, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 481
    .local v7, "mainAxisItemSize":I
    aput v7, v1, v4

    .line 482
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v14, p2

    invoke-interface {v14, v6, v8, v9}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    aput v8, v2, v4

    .line 478
    .end local v6    # "child":Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .end local v7    # "mainAxisItemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 485
    .end local v4    # "index":I
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->sum([I)I

    move-result v4

    .line 486
    .local v4, "maxMainAxisSize":I
    move v5, v4

    .line 487
    .local v5, "mainAxisUsed":I
    array-length v6, v2

    const/4 v7, 0x1

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    if-nez v6, :cond_e

    aget v6, v2, v3

    .line 848
    .local v6, "it":I
    const/4 v8, 0x0

    .line 487
    .local v8, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    nop

    .end local v6    # "it":I
    .end local v8    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    new-instance v8, Lkotlin/ranges/IntRange;

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v9

    invoke-direct {v8, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v8}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v8

    :cond_4
    :goto_4
    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    aget v9, v2, v9

    .line 848
    .local v9, "it":I
    const/4 v10, 0x0

    .line 487
    .local v10, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    nop

    .end local v9    # "it":I
    .end local v10    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$crossAxisUsed$1":I
    if-ge v6, v9, :cond_4

    move v6, v9

    goto :goto_4

    .line 489
    .local v6, "crossAxisUsed":I
    :cond_5
    array-length v8, v1

    if-nez v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    move v8, v3

    :goto_5
    if-nez v8, :cond_d

    aget v3, v1, v3

    .line 848
    .local v3, "it":I
    const/4 v8, 0x0

    .line 489
    .local v8, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    nop

    .end local v3    # "it":I
    .end local v8    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    new-instance v8, Lkotlin/ranges/IntRange;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v9

    invoke-direct {v8, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v8}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v7

    :cond_7
    :goto_6
    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    aget v8, v1, v8

    .line 848
    .local v8, "it":I
    const/4 v9, 0x0

    .line 489
    .local v9, "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    nop

    .end local v8    # "it":I
    .end local v9    # "$i$a$-maxOf-FlowLayoutKt$minIntrinsicMainAxisSize$minimumItemSize$1":I
    if-ge v3, v8, :cond_7

    move v3, v8

    goto :goto_6

    .line 490
    .local v3, "minimumItemSize":I
    :cond_8
    move v7, v3

    .line 491
    .local v7, "low":I
    move v8, v4

    move v15, v6

    move v11, v7

    move v10, v8

    .line 492
    .end local v6    # "crossAxisUsed":I
    .end local v7    # "low":I
    .local v10, "high":I
    .local v11, "low":I
    .local v15, "crossAxisUsed":I
    :goto_7
    if-ge v11, v10, :cond_c

    .line 493
    if-ne v15, v0, :cond_9

    .line 494
    return v5

    .line 496
    :cond_9
    add-int v6, v11, v10

    div-int/lit8 v16, v6, 0x2

    .line 497
    .local v16, "mid":I
    move/from16 v17, v16

    .line 498
    .end local v5    # "mainAxisUsed":I
    .local v17, "mainAxisUsed":I
    nop

    .line 499
    nop

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    nop

    .line 498
    move-object/from16 v5, p0

    move-object v6, v1

    move-object v7, v2

    move/from16 v8, v17

    move/from16 v9, p4

    move/from16 v18, v10

    .end local v10    # "high":I
    .local v18, "high":I
    move/from16 v10, p5

    move/from16 v19, v11

    .end local v11    # "low":I
    .local v19, "low":I
    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;[I[IIIII)I

    move-result v15

    .line 508
    if-ne v15, v0, :cond_a

    .line 509
    return v17

    .line 510
    :cond_a
    if-le v15, v0, :cond_b

    .line 511
    add-int/lit8 v11, v16, 0x1

    move/from16 v5, v17

    move/from16 v10, v18

    .end local v19    # "low":I
    .restart local v11    # "low":I
    goto :goto_7

    .line 513
    .end local v11    # "low":I
    .restart local v19    # "low":I
    :cond_b
    add-int/lit8 v10, v16, -0x1

    move/from16 v5, v17

    move/from16 v11, v19

    .end local v16    # "mid":I
    .end local v18    # "high":I
    .restart local v10    # "high":I
    goto :goto_7

    .line 517
    .end local v17    # "mainAxisUsed":I
    .end local v19    # "low":I
    .restart local v5    # "mainAxisUsed":I
    .restart local v11    # "low":I
    :cond_c
    return v5

    .line 489
    .end local v3    # "minimumItemSize":I
    .end local v10    # "high":I
    .end local v11    # "low":I
    .end local v15    # "crossAxisUsed":I
    .restart local v6    # "crossAxisUsed":I
    :cond_d
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 487
    .end local v6    # "crossAxisUsed":I
    :cond_e
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public static final rowMeasurementHelper(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 24
    .param p0, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p1, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p2, "maxItemsInMainAxis"    # I
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I

    move-object/from16 v0, p3

    move/from16 v1, p4

    const v2, 0x582ba447

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rowMeasurementHelper)P(!1,2)157@5820L584:FlowLayout.kt#2w3rfo"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:156)"

    invoke-static {v2, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xe

    and-int/lit8 v4, v1, 0x70

    or-int/2addr v3, v4

    and-int/lit16 v4, v1, 0x380

    or-int/2addr v3, v4

    .line 158
    nop

    .local v2, "key3$iv":Ljava/lang/Object;
    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$remember":I
    const v5, 0x607fb4c4

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 822
    move-object/from16 v5, p0

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 823
    move-object/from16 v15, p1

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 822
    or-int/2addr v6, v7

    .line 824
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .line 822
    or-int/2addr v6, v7

    .line 825
    move-object/from16 v14, p3

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v16, v6

    .local v16, "invalid$iv$iv":Z
    const/16 v17, 0x0

    .line 826
    .local v17, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .local v13, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 827
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v16, :cond_2

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_1

    goto :goto_0

    .line 831
    :cond_1
    move-object/from16 v23, v13

    move-object v0, v14

    goto :goto_1

    .line 828
    :cond_2
    :goto_0
    const/16 v19, 0x0

    .line 160
    .local v19, "$i$a$-remember-FlowLayoutKt$rowMeasurementHelper$1":I
    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 162
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v10

    .line 163
    sget-object v11, Landroidx/compose/foundation/layout/SizeMode;->Wrap:Landroidx/compose/foundation/layout/SizeMode;

    .line 164
    invoke-static {}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$getCROSS_AXIS_ALIGNMENT_TOP$p()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v12

    .line 166
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v20

    .line 159
    new-instance v21, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    .line 160
    nop

    .line 161
    nop

    .line 165
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 166
    nop

    .line 167
    const/16 v22, 0x0

    .line 159
    move-object/from16 v6, v21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v23, v13

    .end local v13    # "it$iv$iv":Ljava/lang/Object;
    .local v23, "it$iv$iv":Ljava/lang/Object;
    move/from16 v13, v20

    move-object v0, v14

    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    move/from16 v14, p2

    move-object/from16 v15, v22

    invoke-direct/range {v6 .. v15}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 828
    .end local v19    # "$i$a$-remember-FlowLayoutKt$rowMeasurementHelper$1":I
    move-object/from16 v13, v21

    .line 829
    .local v13, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 830
    nop

    .line 827
    .end local v13    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 826
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v23    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 825
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 158
    .end local v2    # "key3$iv":Ljava/lang/Object;
    .end local v3    # "$changed$iv":I
    .end local v4    # "$i$f$remember":I
    check-cast v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v13, Landroidx/compose/ui/layout/MeasurePolicy;

    return-object v13
.end method
