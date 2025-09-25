.class final Landroidx/compose/foundation/layout/FlowMeasurePolicy;
.super Ljava/lang/Object;
.source "FlowLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlowLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowMeasurePolicy\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,757:1\n523#2:758\n1#3:759\n*S KotlinDebug\n*F\n+ 1 FlowLayout.kt\nandroidx/compose/foundation/layout/FlowMeasurePolicy\n*L\n235#1:758\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0008\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0003H\u00c2\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005H\u00c2\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c2\u0003J\u0016\u0010\"\u001a\u00020\tH\u00c2\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010$J\t\u0010%\u001a\u00020\u000bH\u00c2\u0003J\t\u0010&\u001a\u00020\rH\u00c2\u0003J\u0016\u0010\'\u001a\u00020\tH\u00c2\u0003\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008(\u0010$J\t\u0010)\u001a\u00020\u0010H\u00c2\u0003Jg\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u00c6\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\t\u00101\u001a\u00020\u0010H\u00d6\u0001J,\u00102\u001a\u00020\u00102\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u0010J$\u00108\u001a\u00020\u00102\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u00109\u001a\u00020\u00102\u0006\u0010:\u001a\u00020\u0010J,\u0010;\u001a\u00020\u00102\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u0010<\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u0010J\t\u0010=\u001a\u00020>H\u00d6\u0001J\"\u0010?\u001a\u00020\u0010*\u00020@2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u0010A\u001a\u00020\u0010H\u0016J\"\u0010B\u001a\u00020\u0010*\u00020@2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u00109\u001a\u00020\u0010H\u0016J,\u0010C\u001a\u00020D*\u00020E2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020F042\u0006\u0010G\u001a\u00020HH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008I\u0010JJ\"\u0010K\u001a\u00020\u0010*\u00020@2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u0010A\u001a\u00020\u0010H\u0016J\"\u0010L\u001a\u00020\u0010*\u00020@2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0015042\u0006\u00109\u001a\u00020\u0010H\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\u00020\tX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u0012R.\u0010\u0013\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0019\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R.\u0010\u001b\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018R.\u0010\u001d\u001a\u001f\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0014\u00a2\u0006\u0002\u0008\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowMeasurePolicy;",
        "Landroidx/compose/ui/layout/MeasurePolicy;",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "mainAxisArrangementSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSize",
        "Landroidx/compose/foundation/layout/SizeMode;",
        "crossAxisAlignment",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "crossAxisArrangementSpacing",
        "maxItemsInMainAxis",
        "",
        "(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "maxCrossAxisIntrinsicItemSize",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "Lkotlin/ExtensionFunctionType;",
        "getMaxCrossAxisIntrinsicItemSize",
        "()Lkotlin/jvm/functions/Function3;",
        "maxMainAxisIntrinsicItemSize",
        "getMaxMainAxisIntrinsicItemSize",
        "minCrossAxisIntrinsicItemSize",
        "getMinCrossAxisIntrinsicItemSize",
        "minMainAxisIntrinsicItemSize",
        "getMinMainAxisIntrinsicItemSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component4-D9Ej5fM",
        "()F",
        "component5",
        "component6",
        "component7",
        "component7-D9Ej5fM",
        "component8",
        "copy",
        "copy-cBR-a5Y",
        "(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FI)Landroidx/compose/foundation/layout/FlowMeasurePolicy;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "intrinsicCrossAxisSize",
        "measurables",
        "",
        "mainAxisAvailable",
        "mainAxisSpacing",
        "crossAxisSpacing",
        "maxIntrinsicMainAxisSize",
        "height",
        "arrangementSpacing",
        "minIntrinsicMainAxisSize",
        "crossAxisAvailable",
        "toString",
        "",
        "maxIntrinsicHeight",
        "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
        "width",
        "maxIntrinsicWidth",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private final crossAxisArrangementSpacing:F

.field private final crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field private final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private final mainAxisArrangementSpacing:F

.field private final maxCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final maxItemsInMainAxis:I

.field private final maxMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final minCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final minMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

.field private final verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FI)V
    .locals 2
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p2, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p4, "mainAxisArrangementSpacing"    # F
    .param p5, "crossAxisSize"    # Landroidx/compose/foundation/layout/SizeMode;
    .param p6, "crossAxisAlignment"    # Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .param p7, "crossAxisArrangementSpacing"    # F
    .param p8, "maxItemsInMainAxis"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 198
    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 199
    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 200
    iput p4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    .line 201
    iput-object p5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 202
    iput-object p6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 203
    iput p7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    .line 204
    iput p8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 405
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    goto :goto_0

    .line 408
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$2;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$2;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 405
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 413
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxCrossAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxCrossAxisIntrinsicItemSize$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    goto :goto_1

    .line 416
    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxCrossAxisIntrinsicItemSize$2;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxCrossAxisIntrinsicItemSize$2;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 413
    :goto_1
    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 421
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    goto :goto_2

    .line 424
    :cond_2
    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$2;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$2;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 421
    :goto_2
    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 429
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_3

    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    goto :goto_3

    .line 432
    :cond_3
    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$2;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$2;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 429
    :goto_3
    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 196
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FI)V

    return-void
.end method

.method private final component1()Landroidx/compose/foundation/layout/LayoutOrientation;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    return-object v0
.end method

.method private final component2()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method private final component3()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0
.end method

.method private final component4-D9Ej5fM()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    return v0
.end method

.method private final component5()Landroidx/compose/foundation/layout/SizeMode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    return-object v0
.end method

.method private final component6()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method private final component7-D9Ej5fM()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    return v0
.end method

.method private final component8()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    return v0
.end method

.method public static synthetic copy-cBR-a5Y$default(Landroidx/compose/foundation/layout/FlowMeasurePolicy;Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FIILjava/lang/Object;)Landroidx/compose/foundation/layout/FlowMeasurePolicy;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->copy-cBR-a5Y(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FI)Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy-cBR-a5Y(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FI)Landroidx/compose/foundation/layout/FlowMeasurePolicy;
    .locals 11

    new-instance v10, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    iget-object v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    iget v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    iget-object v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iget-object v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    iget v4, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget v3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    iget v1, v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    if-eq v3, v1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getMaxCrossAxisIntrinsicItemSize()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getMaxMainAxisIntrinsicItemSize()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getMinCrossAxisIntrinsicItemSize()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getMinMainAxisIntrinsicItemSize()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/LayoutOrientation;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/SizeMode;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public final intrinsicCrossAxisSize(Ljava/util/List;III)I
    .locals 7
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "mainAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .param p4, "crossAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;III)I"
        }
    .end annotation

    .line 395
    nop

    .line 396
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 397
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 398
    nop

    .line 399
    nop

    .line 400
    nop

    .line 401
    iget v6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 394
    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result v0

    .line 402
    return v0
.end method

.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 330
    nop

    .line 331
    nop

    .line 332
    nop

    .line 333
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 334
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 330
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;III)I

    move-result v0

    goto :goto_0

    .line 337
    :cond_0
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 337
    invoke-virtual {p0, p2, p3, v0}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxIntrinsicMainAxisSize(Ljava/util/List;II)I

    move-result v0

    .line 342
    :goto_0
    return v0
.end method

.method public final maxIntrinsicMainAxisSize(Ljava/util/List;II)I
    .locals 2
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "height"    # I
    .param p3, "arrangementSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)I"
        }
    .end annotation

    .line 382
    nop

    .line 383
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 384
    nop

    .line 385
    nop

    .line 386
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 381
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$maxIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;III)I

    move-result v0

    .line 387
    return v0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1, "$this$maxIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 348
    nop

    .line 349
    nop

    .line 350
    nop

    .line 351
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 348
    invoke-virtual {p0, p2, p3, v0}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxIntrinsicMainAxisSize(Ljava/util/List;II)I

    move-result v0

    goto :goto_0

    .line 354
    :cond_0
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 358
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 354
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;III)I

    move-result v0

    .line 360
    :goto_0
    return v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "constraints"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v1, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    return-object v1

    .line 214
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v12, v1, [Landroidx/compose/ui/layout/Placeable;

    .line 215
    .local v12, "placeables":[Landroidx/compose/ui/layout/Placeable;
    new-instance v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;

    .line 216
    iget-object v3, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 217
    iget-object v4, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 218
    iget-object v5, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 219
    iget v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    .line 220
    iget-object v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 221
    iget-object v8, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 222
    nop

    .line 223
    const/4 v11, 0x0

    .line 215
    move-object v2, v1

    move-object/from16 v9, p2

    move-object v10, v12

    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v1

    .line 226
    .local v11, "measureHelper":Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    iget-object v1, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v14, v15, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v4

    .line 225
    nop

    .line 227
    .local v4, "orientationIndependentConstraints":J
    nop

    .line 228
    nop

    .line 229
    iget-object v3, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 230
    nop

    .line 231
    iget v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 227
    move-object/from16 v1, p1

    move-object v2, v11

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->breakDownItems-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;

    move-result-object v1

    .line 233
    .local v1, "flowResult":Landroidx/compose/foundation/layout/FlowResult;
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowResult;->getItems()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v2

    .line 234
    .local v2, "items":Landroidx/compose/runtime/collection/MutableVector;
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    new-array v6, v3, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_1

    .line 235
    move-object v8, v2

    .local v8, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v9, 0x0

    .line 758
    .local v9, "$i$f$get":I
    invoke-virtual {v8}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v10

    aget-object v8, v10, v7

    .end local v8    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v9    # "$i$f$get":I
    check-cast v8, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    .line 235
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 234
    goto :goto_0

    :cond_1
    move-object v3, v6

    .line 238
    .local v3, "crossAxisSizes":[I
    array-length v6, v3

    new-array v10, v6, [I

    .line 239
    .local v10, "outPosition":[I
    const/4 v6, 0x0

    .local v6, "totalCrossAxisSize":I
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowResult;->getCrossAxisTotalSize()I

    move-result v6

    .line 241
    iget v7, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {v13, v7}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    .line 240
    move/from16 v22, v7

    .line 242
    .local v22, "totalCrossAxisSpacing":I
    add-int v9, v6, v22

    .line 244
    .end local v6    # "totalCrossAxisSize":I
    .local v9, "totalCrossAxisSize":I
    iget-object v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v6, v7, :cond_3

    .line 245
    iget-object v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v6, :cond_2

    .local v6, "$this$measure_3p2s80s_u24lambda_u241":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v7, 0x0

    .line 246
    .local v7, "$i$a$-with-FlowMeasurePolicy$measure$3":I
    move-object v8, v13

    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 247
    nop

    .line 248
    nop

    .line 249
    nop

    .line 246
    invoke-interface {v6, v8, v9, v3, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 251
    nop

    .line 245
    .end local v6    # "$this$measure_3p2s80s_u24lambda_u241":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v7    # "$i$a$-with-FlowMeasurePolicy$measure$3":I
    goto :goto_1

    .line 759
    :cond_2
    const/4 v6, 0x0

    .line 245
    .local v6, "$i$a$-requireNotNull-FlowMeasurePolicy$measure$2":I
    nop

    .end local v6    # "$i$a$-requireNotNull-FlowMeasurePolicy$measure$2":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "null verticalArrangement"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    :cond_3
    iget-object v6, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v6, :cond_5

    move-object/from16 v16, v6

    .local v16, "$this$measure_3p2s80s_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v6, 0x0

    .line 254
    .local v6, "$i$a$-with-FlowMeasurePolicy$measure$5":I
    move-object/from16 v17, v13

    check-cast v17, Landroidx/compose/ui/unit/Density;

    .line 255
    nop

    .line 256
    nop

    .line 257
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v20

    .line 258
    nop

    .line 254
    move/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v21, v10

    invoke-interface/range {v16 .. v21}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 260
    nop

    .line 253
    .end local v6    # "$i$a$-with-FlowMeasurePolicy$measure$5":I
    .end local v16    # "$this$measure_3p2s80s_u24lambda_u243":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    nop

    .line 263
    :goto_1
    const/4 v6, 0x0

    .line 264
    .local v6, "layoutWidth":I
    const/4 v7, 0x0

    .line 265
    .local v7, "layoutHeight":I
    iget-object v8, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v8, v0, :cond_4

    .line 266
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowResult;->getMainAxisTotalSize()I

    move-result v0

    .line 267
    .end local v6    # "layoutWidth":I
    .local v0, "layoutWidth":I
    move v6, v9

    .end local v7    # "layoutHeight":I
    .local v6, "layoutHeight":I
    goto :goto_2

    .line 269
    .end local v0    # "layoutWidth":I
    .local v6, "layoutWidth":I
    .restart local v7    # "layoutHeight":I
    :cond_4
    move v0, v9

    .line 270
    .end local v6    # "layoutWidth":I
    .restart local v0    # "layoutWidth":I
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlowResult;->getMainAxisTotalSize()I

    move-result v6

    .line 272
    .end local v7    # "layoutHeight":I
    .local v6, "layoutHeight":I
    :goto_2
    invoke-static {v14, v15, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    .line 273
    invoke-static {v14, v15, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v16

    .line 275
    .end local v6    # "layoutHeight":I
    .local v16, "layoutHeight":I
    const/16 v17, 0x0

    new-instance v6, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;

    invoke-direct {v6, v1, v11, v10, v13}, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$6;-><init>(Landroidx/compose/foundation/layout/FlowResult;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;[ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function1;

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v6, p1

    move v7, v0

    move/from16 v8, v16

    move/from16 v21, v9

    .end local v9    # "totalCrossAxisSize":I
    .local v21, "totalCrossAxisSize":I
    move-object/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "outPosition":[I
    .local v17, "outPosition":[I
    move-object/from16 v10, v18

    move-object/from16 v18, v11

    .end local v11    # "measureHelper":Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    .local v18, "measureHelper":Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    move/from16 v11, v19

    move-object/from16 v19, v12

    .end local v12    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    .local v19, "placeables":[Landroidx/compose/ui/layout/Placeable;
    move-object/from16 v12, v20

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v6

    return-object v6

    .line 759
    .end local v0    # "layoutWidth":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "outPosition":[I
    .end local v18    # "measureHelper":Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    .end local v19    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    .end local v21    # "totalCrossAxisSize":I
    .restart local v9    # "totalCrossAxisSize":I
    .restart local v10    # "outPosition":[I
    .restart local v11    # "measureHelper":Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
    .restart local v12    # "placeables":[Landroidx/compose/ui/layout/Placeable;
    :cond_5
    const/4 v0, 0x0

    .line 253
    .local v0, "$i$a$-requireNotNull-FlowMeasurePolicy$measure$4":I
    nop

    .end local v0    # "$i$a$-requireNotNull-FlowMeasurePolicy$measure$4":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "null horizontalArrangement"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1, "$this$minIntrinsicHeight"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 315
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 311
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;III)I

    move-result v0

    goto :goto_0

    .line 318
    :cond_0
    nop

    .line 319
    nop

    .line 320
    nop

    .line 321
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 322
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 318
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minIntrinsicMainAxisSize(Ljava/util/List;III)I

    move-result v0

    .line 324
    :goto_0
    return v0
.end method

.method public final minIntrinsicMainAxisSize(Ljava/util/List;III)I
    .locals 7
    .param p1, "measurables"    # Ljava/util/List;
    .param p2, "crossAxisAvailable"    # I
    .param p3, "mainAxisSpacing"    # I
    .param p4, "crossAxisSpacing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;III)I"
        }
    .end annotation

    .line 368
    nop

    .line 369
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 370
    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/functions/Function3;

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    iget v6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    .line 367
    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/FlowLayoutKt;->access$minIntrinsicMainAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIII)I

    move-result v0

    .line 375
    return v0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1, "$this$minIntrinsicWidth"    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
    .param p2, "measurables"    # Ljava/util/List;
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 296
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 292
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minIntrinsicMainAxisSize(Ljava/util/List;III)I

    move-result v0

    goto :goto_0

    .line 299
    :cond_0
    nop

    .line 300
    nop

    .line 301
    nop

    .line 302
    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v0

    .line 303
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    .line 299
    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->intrinsicCrossAxisSize(Ljava/util/List;III)I

    move-result v0

    .line 305
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowMeasurePolicy(orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainAxisArrangementSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisArrangementSpacing:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crossAxisSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crossAxisAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", crossAxisArrangementSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxItemsInMainAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
