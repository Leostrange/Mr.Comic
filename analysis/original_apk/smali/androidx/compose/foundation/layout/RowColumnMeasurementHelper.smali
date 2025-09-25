.class public final Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnMeasurementHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnMeasurementHelper.kt\nandroidx/compose/foundation/layout/RowColumnMeasurementHelper\n+ 2 RowColumnImpl.kt\nandroidx/compose/foundation/layout/OrientationIndependentConstraints\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,395:1\n322#2:396\n322#2:397\n322#2:398\n321#2:399\n322#2:400\n321#2:401\n324#2:403\n322#2:404\n321#2:405\n322#2:406\n321#2:407\n324#2:408\n324#2:409\n323#2:410\n1#3:402\n*S KotlinDebug\n*F\n+ 1 RowColumnMeasurementHelper.kt\nandroidx/compose/foundation/layout/RowColumnMeasurementHelper\n*L\n111#1:396\n143#1:397\n144#1:398\n146#1:399\n166#1:400\n167#1:401\n210#1:403\n219#1:404\n220#1:405\n243#1:406\n282#1:407\n284#1:408\n287#1:409\n292#1:410\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012\u00a2\u0006\u0002\u0010\u0014J2\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00132\u0008\u0010-\u001a\u0004\u0018\u00010&2\u0006\u0010.\u001a\u00020+2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020+H\u0002J(\u00102\u001a\u0002032\u0006\u00104\u001a\u00020+2\u0006\u00105\u001a\u0002032\u0006\u00102\u001a\u0002032\u0006\u00106\u001a\u000207H\u0002J0\u00108\u001a\u0002092\u0006\u00106\u001a\u0002072\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020+\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?J&\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u0002092\u0006\u0010E\u001a\u00020+2\u0006\u0010/\u001a\u000200J\n\u0010\n\u001a\u00020+*\u00020\u0013J\n\u0010F\u001a\u00020+*\u00020\u0013R\u0019\u0010\u0008\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001b\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012\u00a2\u0006\n\n\u0002\u0010$\u001a\u0004\u0008\"\u0010#R\u0018\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010&0\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\'R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006G"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;",
        "",
        "orientation",
        "Landroidx/compose/foundation/layout/LayoutOrientation;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "arrangementSpacing",
        "Landroidx/compose/ui/unit/Dp;",
        "crossAxisSize",
        "Landroidx/compose/foundation/layout/SizeMode;",
        "crossAxisAlignment",
        "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/Measurable;",
        "placeables",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getArrangementSpacing-D9Ej5fM",
        "()F",
        "F",
        "getCrossAxisAlignment",
        "()Landroidx/compose/foundation/layout/CrossAxisAlignment;",
        "getCrossAxisSize",
        "()Landroidx/compose/foundation/layout/SizeMode;",
        "getHorizontalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "getMeasurables",
        "()Ljava/util/List;",
        "getOrientation",
        "()Landroidx/compose/foundation/layout/LayoutOrientation;",
        "getPlaceables",
        "()[Landroidx/compose/ui/layout/Placeable;",
        "[Landroidx/compose/ui/layout/Placeable;",
        "rowColumnParentData",
        "Landroidx/compose/foundation/layout/RowColumnParentData;",
        "[Landroidx/compose/foundation/layout/RowColumnParentData;",
        "getVerticalArrangement",
        "()Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "getCrossAxisPosition",
        "",
        "placeable",
        "parentData",
        "crossAxisLayoutSize",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "beforeCrossAxisAlignmentLine",
        "mainAxisPositions",
        "",
        "mainAxisLayoutSize",
        "childrenMainAxisSize",
        "measureScope",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measureWithoutPlacing",
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "startIndex",
        "endIndex",
        "measureWithoutPlacing-_EkL_-Y",
        "(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "placeHelper",
        "",
        "placeableScope",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "measureResult",
        "crossAxisOffset",
        "mainAxisSize",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final arrangementSpacing:F

.field private final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field private final crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field private final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field private final measurables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;

.field private final rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

.field private final verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V
    .locals 4
    .param p1, "orientation"    # Landroidx/compose/foundation/layout/LayoutOrientation;
    .param p2, "horizontalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .param p3, "verticalArrangement"    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .param p4, "arrangementSpacing"    # F
    .param p5, "crossAxisSize"    # Landroidx/compose/foundation/layout/SizeMode;
    .param p6, "crossAxisAlignment"    # Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .param p7, "measurables"    # Ljava/util/List;
    .param p8, "placeables"    # [Landroidx/compose/ui/layout/Placeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;[",
            "Landroidx/compose/ui/layout/Placeable;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 50
    iput-object p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 51
    iput-object p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 52
    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    .line 53
    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 54
    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 55
    iput-object p7, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    .line 56
    iput-object p8, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 59
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 60
    iget-object v3, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 48
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;)V

    return-void
.end method

.method private final getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I
    .locals 4
    .param p1, "placeable"    # Landroidx/compose/ui/layout/Placeable;
    .param p2, "parentData"    # Landroidx/compose/foundation/layout/RowColumnParentData;
    .param p3, "crossAxisLayoutSize"    # I
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p5, "beforeCrossAxisAlignmentLine"    # I

    .line 350
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/RowColumnParentData;->getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 351
    .local v0, "childCrossAlignment":Landroidx/compose/foundation/layout/CrossAxisAlignment;
    :cond_1
    nop

    .line 352
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    sub-int v1, p3, v1

    .line 353
    iget-object v2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v3, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v2, v3, :cond_2

    .line 354
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 356
    :cond_2
    move-object v2, p4

    .line 358
    :goto_0
    nop

    .line 359
    nop

    .line 351
    invoke-virtual {v0, v1, v2, p1, p5}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I

    move-result v1

    return v1
.end method

.method private final mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I
    .locals 8
    .param p1, "mainAxisLayoutSize"    # I
    .param p2, "childrenMainAxisSize"    # [I
    .param p3, "mainAxisPositions"    # [I
    .param p4, "measureScope"    # Landroidx/compose/ui/layout/MeasureScope;

    .line 322
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v0, :cond_0

    .local v0, "$this$mainAxisPositions_u24lambda_u245":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$a$-with-RowColumnMeasurementHelper$mainAxisPositions$2":I
    move-object v2, p4

    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 325
    nop

    .line 326
    nop

    .line 327
    nop

    .line 324
    invoke-interface {v0, v2, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 329
    nop

    .line 323
    .end local v0    # "$this$mainAxisPositions_u24lambda_u245":Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .end local v1    # "$i$a$-with-RowColumnMeasurementHelper$mainAxisPositions$2":I
    goto :goto_0

    .line 402
    :cond_0
    const/4 v0, 0x0

    .line 323
    .local v0, "$i$a$-requireNotNull-RowColumnMeasurementHelper$mainAxisPositions$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-RowColumnMeasurementHelper$mainAxisPositions$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null verticalArrangement in Column"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v2, :cond_2

    .local v2, "$this$mainAxisPositions_u24lambda_u247":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    const/4 v0, 0x0

    .line 332
    .local v0, "$i$a$-with-RowColumnMeasurementHelper$mainAxisPositions$4":I
    move-object v3, p4

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 333
    nop

    .line 334
    nop

    .line 335
    invoke-interface {p4}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    .line 336
    nop

    .line 332
    move v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 338
    nop

    .line 331
    .end local v0    # "$i$a$-with-RowColumnMeasurementHelper$mainAxisPositions$4":I
    .end local v2    # "$this$mainAxisPositions_u24lambda_u247":Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    nop

    .line 340
    :goto_0
    return-object p3

    .line 402
    :cond_2
    const/4 v0, 0x0

    .line 331
    .local v0, "$i$a$-requireNotNull-RowColumnMeasurementHelper$mainAxisPositions$3":I
    nop

    .end local v0    # "$i$a$-requireNotNull-RowColumnMeasurementHelper$mainAxisPositions$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null horizontalArrangement in Row"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2
    .param p1, "$this$crossAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getArrangementSpacing-D9Ej5fM()F
    .locals 1

    .line 52
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    return v0
.end method

.method public final getCrossAxisAlignment()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    return-object v0
.end method

.method public final getCrossAxisSize()Landroidx/compose/foundation/layout/SizeMode;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    return-object v0
.end method

.method public final getHorizontalArrangement()Landroidx/compose/foundation/layout/Arrangement$Horizontal;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    return-object v0
.end method

.method public final getMeasurables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    return-object v0
.end method

.method public final getOrientation()Landroidx/compose/foundation/layout/LayoutOrientation;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    return-object v0
.end method

.method public final getPlaceables()[Landroidx/compose/ui/layout/Placeable;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    return-object v0
.end method

.method public final getVerticalArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object v0
.end method

.method public final mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 2
    .param p1, "$this$mainAxisSize"    # Landroidx/compose/ui/layout/Placeable;

    .line 64
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final measureWithoutPlacing-_EkL_-Y(Landroidx/compose/ui/layout/MeasureScope;JII)Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .locals 51
    .param p1, "measureScope"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "constraints"    # J
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I

    .line 87
    move-object/from16 v1, p0

    move/from16 v9, p5

    iget-object v0, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    move-wide/from16 v10, p2

    invoke-static {v10, v11, v0}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v20

    .line 88
    .local v20, "constraints":J
    move-object/from16 v0, p1

    .local v0, "$this$measureWithoutPlacing__EkL__Y_u24lambda_u240":Landroidx/compose/ui/layout/MeasureScope;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$a$-with-RowColumnMeasurementHelper$measureWithoutPlacing$arrangementSpacingPx$1":I
    iget v3, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->arrangementSpacing:F

    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    int-to-long v2, v3

    .line 88
    .end local v0    # "$this$measureWithoutPlacing__EkL__Y_u24lambda_u240":Landroidx/compose/ui/layout/MeasureScope;
    .end local v2    # "$i$a$-with-RowColumnMeasurementHelper$measureWithoutPlacing$arrangementSpacingPx$1":I
    move-wide v7, v2

    .line 92
    .local v7, "arrangementSpacingPx":J
    const/4 v0, 0x0

    .line 93
    .local v0, "totalWeight":F
    const-wide/16 v2, 0x0

    .line 94
    .local v2, "fixedSpace":J
    const/4 v4, 0x0

    .line 95
    .local v4, "crossAxisSpace":I
    const/4 v5, 0x0

    .line 97
    .local v5, "weightChildrenCount":I
    const/4 v6, 0x0

    .line 98
    .local v6, "anyAlignBy":Z
    sub-int v15, v9, p4

    .line 101
    .local v15, "subSize":I
    const/4 v12, 0x0

    .line 102
    .local v12, "spaceAfterLastNoWeight":I
    move/from16 v13, p4

    move/from16 v22, v6

    move v14, v12

    move v6, v0

    move v0, v13

    .end local v12    # "spaceAfterLastNoWeight":I
    .local v0, "i":I
    .local v6, "totalWeight":F
    .local v14, "spaceAfterLastNoWeight":I
    .local v22, "anyAlignBy":Z
    :goto_0
    const/4 v13, 0x0

    move/from16 v18, v14

    .end local v14    # "spaceAfterLastNoWeight":I
    .local v18, "spaceAfterLastNoWeight":I
    const/16 v23, 0x1

    if-ge v0, v9, :cond_5

    .line 103
    iget-object v14, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 104
    .local v14, "child":Landroidx/compose/ui/layout/Measurable;
    iget-object v12, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v25, v12, v0

    .line 105
    .local v25, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    invoke-static/range {v25 .. v25}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v26

    .line 107
    .local v26, "weight":F
    cmpl-float v12, v26, v13

    if-lez v12, :cond_0

    .line 108
    add-float v6, v6, v26

    add-int/lit8 v5, v5, 0x1

    .line 109
    move-wide/from16 v16, v7

    move/from16 v33, v15

    move/from16 v14, v18

    goto/16 :goto_5

    .line 111
    :cond_0
    const/4 v12, 0x0

    .line 396
    .local v12, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v12

    .line 111
    .end local v12    # "$i$f$getMainAxisMax-impl":I
    nop

    .line 112
    .local v12, "mainAxisMax":I
    iget-object v13, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v13, v13, v0

    if-nez v13, :cond_2

    .line 114
    nop

    .line 115
    const/16 v27, 0x0

    .line 116
    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    .line 117
    move/from16 v28, v12

    const v10, 0x7fffffff

    const-wide/16 v12, 0x0

    goto :goto_1

    .line 119
    :cond_1
    int-to-long v10, v12

    sub-long/2addr v10, v2

    move/from16 v28, v12

    const-wide/16 v12, 0x0

    .end local v12    # "mainAxisMax":I
    .local v28, "mainAxisMax":I
    invoke-static {v10, v11, v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    .line 121
    :goto_1
    const/16 v16, 0x0

    .line 114
    const/16 v17, 0x0

    const/16 v11, 0x8

    const/16 v24, 0x0

    move/from16 v30, v5

    move/from16 v29, v28

    move/from16 v28, v6

    move-wide v5, v12

    .end local v5    # "weightChildrenCount":I
    .end local v6    # "totalWeight":F
    .local v28, "totalWeight":F
    .local v29, "mainAxisMax":I
    .local v30, "weightChildrenCount":I
    move-wide/from16 v12, v20

    move-object v5, v14

    move/from16 v6, v18

    .end local v14    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v18    # "spaceAfterLastNoWeight":I
    .local v5, "child":Landroidx/compose/ui/layout/Measurable;
    .local v6, "spaceAfterLastNoWeight":I
    move/from16 v14, v27

    move/from16 v33, v15

    .end local v15    # "subSize":I
    .local v33, "subSize":I
    move v15, v10

    move/from16 v18, v11

    move-object/from16 v19, v24

    invoke-static/range {v12 .. v19}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(JIIIIILjava/lang/Object;)J

    move-result-wide v10

    .line 122
    iget-object v12, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v10

    .line 112
    invoke-interface {v5, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v13

    goto :goto_2

    .end local v28    # "totalWeight":F
    .end local v29    # "mainAxisMax":I
    .end local v30    # "weightChildrenCount":I
    .end local v33    # "subSize":I
    .local v5, "weightChildrenCount":I
    .local v6, "totalWeight":F
    .restart local v12    # "mainAxisMax":I
    .restart local v14    # "child":Landroidx/compose/ui/layout/Measurable;
    .restart local v15    # "subSize":I
    .restart local v18    # "spaceAfterLastNoWeight":I
    :cond_2
    move/from16 v30, v5

    move/from16 v28, v6

    move/from16 v29, v12

    move-object v5, v14

    move/from16 v33, v15

    move/from16 v6, v18

    .end local v12    # "mainAxisMax":I
    .end local v14    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v15    # "subSize":I
    .end local v18    # "spaceAfterLastNoWeight":I
    .local v5, "child":Landroidx/compose/ui/layout/Measurable;
    .local v6, "spaceAfterLastNoWeight":I
    .restart local v28    # "totalWeight":F
    .restart local v29    # "mainAxisMax":I
    .restart local v30    # "weightChildrenCount":I
    .restart local v33    # "subSize":I
    :goto_2
    move-object v10, v13

    .line 124
    .local v10, "placeable":Landroidx/compose/ui/layout/Placeable;
    nop

    .line 125
    long-to-int v11, v7

    .line 126
    move/from16 v12, v29

    .end local v29    # "mainAxisMax":I
    .restart local v12    # "mainAxisMax":I
    int-to-long v13, v12

    sub-long/2addr v13, v2

    invoke-virtual {v1, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    move-wide/from16 v16, v7

    .end local v7    # "arrangementSpacingPx":J
    .local v16, "arrangementSpacingPx":J
    int-to-long v7, v15

    sub-long/2addr v13, v7

    .line 127
    const-wide/16 v7, 0x0

    invoke-static {v13, v14, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 124
    move v6, v7

    .line 129
    invoke-virtual {v1, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    add-int/2addr v7, v6

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 130
    invoke-virtual {v1, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 131
    if-nez v22, :cond_4

    invoke-static/range {v25 .. v25}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v14, v23

    :goto_4
    move v7, v14

    .line 132
    .end local v22    # "anyAlignBy":Z
    .local v7, "anyAlignBy":Z
    iget-object v8, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aput-object v10, v8, v0

    move v14, v6

    move/from16 v22, v7

    move/from16 v6, v28

    move/from16 v5, v30

    .line 102
    .end local v7    # "anyAlignBy":Z
    .end local v10    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v12    # "mainAxisMax":I
    .end local v25    # "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    .end local v26    # "weight":F
    .end local v28    # "totalWeight":F
    .end local v30    # "weightChildrenCount":I
    .local v5, "weightChildrenCount":I
    .local v6, "totalWeight":F
    .local v14, "spaceAfterLastNoWeight":I
    .restart local v22    # "anyAlignBy":Z
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v10, p2

    move-wide/from16 v7, v16

    move/from16 v15, v33

    goto/16 :goto_0

    .end local v14    # "spaceAfterLastNoWeight":I
    .end local v16    # "arrangementSpacingPx":J
    .end local v33    # "subSize":I
    .local v7, "arrangementSpacingPx":J
    .restart local v15    # "subSize":I
    .restart local v18    # "spaceAfterLastNoWeight":I
    :cond_5
    move/from16 v30, v5

    move/from16 v28, v6

    move-wide/from16 v16, v7

    move/from16 v33, v15

    move/from16 v6, v18

    .line 136
    .end local v0    # "i":I
    .end local v5    # "weightChildrenCount":I
    .end local v7    # "arrangementSpacingPx":J
    .end local v15    # "subSize":I
    .end local v18    # "spaceAfterLastNoWeight":I
    .local v6, "spaceAfterLastNoWeight":I
    .restart local v16    # "arrangementSpacingPx":J
    .restart local v28    # "totalWeight":F
    .restart local v30    # "weightChildrenCount":I
    .restart local v33    # "subSize":I
    const/4 v5, 0x0

    .line 137
    .local v5, "weightedSpace":I
    if-nez v30, :cond_6

    .line 139
    int-to-long v7, v6

    sub-long/2addr v2, v7

    move-wide v0, v2

    move v11, v4

    move v12, v5

    move/from16 v25, v6

    move-wide/from16 v9, v16

    move/from16 v6, v28

    goto/16 :goto_10

    .line 143
    :cond_6
    cmpl-float v0, v28, v13

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 397
    .local v0, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .line 143
    .end local v0    # "$i$f$getMainAxisMax-impl":I
    const v7, 0x7fffffff

    if-eq v0, v7, :cond_7

    .line 144
    const/4 v0, 0x0

    .line 398
    .restart local v0    # "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .end local v0    # "$i$f$getMainAxisMax-impl":I
    goto :goto_6

    .line 146
    :cond_7
    const/4 v0, 0x0

    .line 399
    .local v0, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v7

    move v0, v7

    .line 143
    .end local v0    # "$i$f$getMainAxisMin-impl":I
    :goto_6
    nop

    .line 142
    move v7, v0

    .line 148
    .local v7, "targetSpace":I
    add-int/lit8 v0, v30, -0x1

    int-to-long v10, v0

    mul-long v10, v10, v16

    .line 150
    .local v10, "arrangementSpacingTotal":J
    int-to-long v14, v7

    sub-long/2addr v14, v2

    sub-long/2addr v14, v10

    move v8, v4

    move v12, v5

    const-wide/16 v4, 0x0

    .end local v4    # "crossAxisSpace":I
    .end local v5    # "weightedSpace":I
    .local v8, "crossAxisSpace":I
    .local v12, "weightedSpace":I
    invoke-static {v14, v15, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v14

    .line 149
    move-wide v4, v14

    .line 152
    .local v4, "remainingToTarget":J
    cmpl-float v0, v28, v13

    if-lez v0, :cond_8

    long-to-float v0, v4

    div-float v0, v0, v28

    goto :goto_7

    :cond_8
    move v0, v13

    :goto_7
    move v14, v0

    .line 153
    .local v14, "weightUnitSpace":F
    move-wide/from16 v18, v4

    .line 154
    .local v18, "remainder":J
    move/from16 v0, p4

    move v15, v0

    .local v15, "i":I
    :goto_8
    const-string/jumbo v13, "weightedSize "

    move/from16 v25, v6

    .end local v6    # "spaceAfterLastNoWeight":I
    .local v25, "spaceAfterLastNoWeight":I
    const-string/jumbo v6, "weightUnitSpace "

    move/from16 v26, v8

    .end local v8    # "crossAxisSpace":I
    .local v26, "crossAxisSpace":I
    const-string/jumbo v8, "totalWeight "

    move/from16 v27, v12

    .end local v12    # "weightedSpace":I
    .local v27, "weightedSpace":I
    const-string/jumbo v12, "remainingToTarget "

    move-object/from16 v29, v13

    const-string/jumbo v13, "arrangementSpacingTotal "

    move-object/from16 v34, v6

    const-string/jumbo v6, "fixedSpace "

    move-object/from16 v35, v8

    const-string/jumbo v8, "weightChildrenCount "

    move-wide/from16 v36, v4

    .end local v4    # "remainingToTarget":J
    .local v36, "remainingToTarget":J
    const-string/jumbo v4, "arrangementSpacingPx "

    const-string/jumbo v5, "targetSpace "

    move-object/from16 v38, v12

    const-string/jumbo v12, "mainAxisMin "

    if-ge v15, v9, :cond_9

    .line 155
    iget-object v0, v1, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v0, v0, v15

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v1

    .line 156
    .local v1, "itemWeight":F
    mul-float v9, v14, v1

    .line 157
    .local v9, "weightedSize":F
    nop

    .line 158
    :try_start_0
    invoke-static {v9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v4, v0

    sub-long v18, v18, v4

    .line 154
    .end local v1    # "itemWeight":F
    .end local v9    # "weightedSize":F
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move/from16 v9, p5

    move/from16 v6, v25

    move/from16 v8, v26

    move/from16 v12, v27

    move-wide/from16 v4, v36

    const/4 v13, 0x0

    goto :goto_8

    .line 159
    .restart local v1    # "itemWeight":F
    .restart local v9    # "weightedSize":F
    :catch_0
    move-exception v0

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    .line 160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move/from16 v40, v15

    .end local v15    # "i":I
    .local v40, "i":I
    new-instance v15, Ljava/lang/IllegalArgumentException;

    .line 161
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v23, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v15

    const-string/jumbo v15, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 166
    const/16 v31, 0x0

    .line 400
    .local v31, "$i$f$getMainAxisMax-impl":I
    move-object/from16 v32, v0

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .line 161
    .end local v31    # "$i$f$getMainAxisMax-impl":I
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    nop

    .line 161
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const/4 v12, 0x0

    .line 401
    .local v12, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v12

    .line 161
    .end local v12    # "$i$f$getMainAxisMin-impl":I
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    nop

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    nop

    .line 161
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    nop

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    nop

    .line 161
    move-wide/from16 v4, v16

    .end local v16    # "arrangementSpacingPx":J
    .local v4, "arrangementSpacingPx":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    nop

    .line 161
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    nop

    .line 161
    move/from16 v15, v30

    .end local v30    # "weightChildrenCount":I
    .local v15, "weightChildrenCount":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    nop

    .line 161
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    nop

    .line 161
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    nop

    .line 161
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    nop

    .line 161
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    nop

    .line 161
    move-object/from16 v6, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    nop

    .line 161
    move-wide/from16 v12, v36

    .end local v36    # "remainingToTarget":J
    .local v12, "remainingToTarget":J
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    nop

    .line 161
    move-object/from16 v6, v35

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 174
    nop

    .line 161
    move/from16 v6, v28

    .end local v28    # "totalWeight":F
    .local v6, "totalWeight":F
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    nop

    .line 161
    move-object/from16 v8, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 175
    nop

    .line 161
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    nop

    .line 161
    const-string/jumbo v8, "itemWeight "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    nop

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    nop

    .line 161
    move-object/from16 v8, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    nop

    .line 161
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    move-object/from16 v8, v24

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v8, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 154
    .end local v1    # "itemWeight":F
    .end local v4    # "arrangementSpacingPx":J
    .end local v6    # "totalWeight":F
    .end local v9    # "weightedSize":F
    .end local v12    # "remainingToTarget":J
    .end local v23    # "e":Ljava/lang/IllegalArgumentException;
    .end local v40    # "i":I
    .local v15, "i":I
    .restart local v16    # "arrangementSpacingPx":J
    .restart local v28    # "totalWeight":F
    .restart local v30    # "weightChildrenCount":I
    .restart local v36    # "remainingToTarget":J
    :cond_9
    move/from16 v40, v15

    move/from16 v15, v30

    move-wide/from16 v41, v36

    move-object/from16 v1, v38

    move-wide/from16 v49, v10

    move-object/from16 v11, v35

    move-wide/from16 v9, v16

    move-wide/from16 v16, v49

    .line 182
    .end local v10    # "arrangementSpacingTotal":J
    .end local v30    # "weightChildrenCount":I
    .end local v36    # "remainingToTarget":J
    .local v9, "arrangementSpacingPx":J
    .local v15, "weightChildrenCount":I
    .local v16, "arrangementSpacingTotal":J
    .local v41, "remainingToTarget":J
    move/from16 v0, p4

    move/from16 v1, v26

    move v11, v0

    move-wide/from16 v49, v18

    move-object/from16 v18, v13

    move/from16 v13, v27

    move-wide/from16 v26, v49

    .end local v18    # "remainder":J
    .end local v27    # "weightedSpace":I
    .local v1, "crossAxisSpace":I
    .local v11, "i":I
    .local v13, "weightedSpace":I
    .local v26, "remainder":J
    :goto_9
    move-wide/from16 v36, v2

    move/from16 v2, p5

    .end local v2    # "fixedSpace":J
    .local v36, "fixedSpace":J
    if-ge v11, v2, :cond_11

    .line 183
    move-object/from16 v3, p0

    iget-object v0, v3, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v0, v0, v11

    if-nez v0, :cond_10

    .line 184
    iget-object v0, v3, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    .line 185
    .local v2, "child":Landroidx/compose/ui/layout/Measurable;
    iget-object v0, v3, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v19, v0, v11

    .line 186
    .local v19, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    move-object/from16 v30, v6

    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    .line 187
    .local v6, "weight":F
    const/4 v0, 0x0

    cmpl-float v39, v6, v0

    if-lez v39, :cond_a

    move/from16 v39, v23

    goto :goto_a

    :cond_a
    const/16 v39, 0x0

    :goto_a
    if-eqz v39, :cond_f

    .line 191
    move/from16 v39, v15

    .end local v15    # "weightChildrenCount":I
    .local v39, "weightChildrenCount":I
    invoke-static/range {v26 .. v27}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v15

    .line 192
    .local v15, "remainderUnit":I
    move/from16 v40, v1

    .end local v1    # "crossAxisSpace":I
    .local v40, "crossAxisSpace":I
    int-to-long v0, v15

    sub-long v26, v26, v0

    .line 194
    mul-float v1, v14, v6

    .line 195
    .local v1, "weightedSize":F
    nop

    .line 196
    nop

    .line 197
    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    add-int/2addr v0, v15

    move/from16 v43, v15

    const/4 v15, 0x0

    .end local v15    # "remainderUnit":I
    .local v43, "remainderUnit":I
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 195
    move/from16 v31, v0

    .line 200
    .local v31, "childMainAxisSize":I
    const-wide/16 v44, 0x0

    .line 201
    .local v44, "childConstraints":J
    nop

    .line 211
    nop

    .line 203
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getFill(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_b

    move/from16 v15, v31

    const v0, 0x7fffffff

    .end local v31    # "childMainAxisSize":I
    .local v15, "childMainAxisSize":I
    if-eq v15, v0, :cond_c

    .line 204
    move v0, v15

    goto :goto_b

    .line 203
    .end local v15    # "childMainAxisSize":I
    .restart local v31    # "childMainAxisSize":I
    :cond_b
    move/from16 v15, v31

    .line 206
    .end local v31    # "childMainAxisSize":I
    .restart local v15    # "childMainAxisSize":I
    :cond_c
    const/4 v0, 0x0

    .line 208
    :goto_b
    nop

    .line 209
    nop

    .line 210
    const/16 v46, 0x0

    .line 403
    .local v46, "$i$f$getCrossAxisMax-impl":I
    move/from16 v47, v1

    .end local v1    # "weightedSize":F
    .local v47, "weightedSize":F
    :try_start_2
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    .end local v46    # "$i$f$getCrossAxisMax-impl":I
    move/from16 v46, v6

    const/4 v6, 0x0

    .end local v6    # "weight":F
    .local v46, "weight":F
    :try_start_3
    invoke-static {v0, v15, v6, v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(IIII)J

    move-result-wide v0

    .line 211
    iget-object v6, v3, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v0, v1, v6}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 202
    nop

    .line 235
    .end local v44    # "childConstraints":J
    .local v0, "childConstraints":J
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    .line 236
    .local v6, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v3, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v44

    add-int v13, v13, v44

    .line 237
    move-wide/from16 v44, v0

    .end local v0    # "childConstraints":J
    .restart local v44    # "childConstraints":J
    invoke-virtual {v3, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    move/from16 v1, v40

    .end local v40    # "crossAxisSpace":I
    .local v1, "crossAxisSpace":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 238
    if-nez v22, :cond_e

    invoke-static/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowColumnImplKt;->isRelative(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    move/from16 v0, v23

    :goto_d
    move/from16 v22, v0

    .line 239
    iget-object v0, v3, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aput-object v6, v0, v11

    move/from16 v40, v1

    move-object/from16 v19, v18

    move/from16 v6, v28

    move-object/from16 v28, v30

    move-object/from16 v15, v34

    move-wide/from16 v1, v36

    move-object/from16 v18, v38

    move/from16 v30, v39

    move-object/from16 v34, v4

    move-wide/from16 v3, v16

    move-object/from16 v17, v35

    move-object/from16 v35, v5

    move/from16 v16, v7

    move-object/from16 v5, v29

    move-object/from16 v29, v8

    move-wide/from16 v7, v41

    goto/16 :goto_f

    .line 212
    .end local v1    # "crossAxisSpace":I
    .end local v6    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .restart local v40    # "crossAxisSpace":I
    :catch_1
    move-exception v0

    move/from16 v1, v40

    .end local v40    # "crossAxisSpace":I
    .restart local v1    # "crossAxisSpace":I
    goto :goto_e

    .end local v1    # "crossAxisSpace":I
    .end local v46    # "weight":F
    .local v6, "weight":F
    .restart local v40    # "crossAxisSpace":I
    :catch_2
    move-exception v0

    move/from16 v46, v6

    move/from16 v1, v40

    .end local v6    # "weight":F
    .end local v40    # "crossAxisSpace":I
    .restart local v1    # "crossAxisSpace":I
    .restart local v46    # "weight":F
    goto :goto_e

    .end local v15    # "childMainAxisSize":I
    .end local v46    # "weight":F
    .end local v47    # "weightedSize":F
    .local v1, "weightedSize":F
    .restart local v6    # "weight":F
    .restart local v31    # "childMainAxisSize":I
    .restart local v40    # "crossAxisSpace":I
    :catch_3
    move-exception v0

    move/from16 v47, v1

    move/from16 v46, v6

    move/from16 v15, v31

    move/from16 v1, v40

    .line 213
    .end local v6    # "weight":F
    .end local v31    # "childMainAxisSize":I
    .end local v40    # "crossAxisSpace":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v1, "crossAxisSpace":I
    .restart local v15    # "childMainAxisSize":I
    .restart local v46    # "weight":F
    .restart local v47    # "weightedSize":F
    :goto_e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 214
    move/from16 v40, v1

    .end local v1    # "crossAxisSpace":I
    .restart local v40    # "crossAxisSpace":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v48, v2

    .end local v2    # "child":Landroidx/compose/ui/layout/Measurable;
    .local v48, "child":Landroidx/compose/ui/layout/Measurable;
    const-string/jumbo v2, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    const/16 v23, 0x0

    .line 404
    .local v23, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    .line 214
    .end local v23    # "$i$f$getMainAxisMax-impl":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    nop

    .line 214
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    const/4 v3, 0x0

    .line 405
    .local v3, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 214
    .end local v3    # "$i$f$getMainAxisMin-impl":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    nop

    .line 214
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    nop

    .line 214
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    nop

    .line 214
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    nop

    .line 214
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    nop

    .line 214
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    nop

    .line 214
    move/from16 v3, v39

    .end local v39    # "weightChildrenCount":I
    .local v3, "weightChildrenCount":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    nop

    .line 214
    move-object/from16 v4, v30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    nop

    .line 214
    move-wide/from16 v4, v36

    .end local v36    # "fixedSpace":J
    .local v4, "fixedSpace":J
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    nop

    .line 214
    move-object/from16 v8, v18

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    nop

    .line 214
    move/from16 v30, v3

    move-wide/from16 v3, v16

    .end local v4    # "fixedSpace":J
    .end local v16    # "arrangementSpacingTotal":J
    .local v3, "arrangementSpacingTotal":J
    .restart local v30    # "weightChildrenCount":I
    .restart local v36    # "fixedSpace":J
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    nop

    .line 214
    move-object/from16 v5, v38

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    nop

    .line 214
    move/from16 v16, v7

    move-wide/from16 v7, v41

    .end local v41    # "remainingToTarget":J
    .local v7, "remainingToTarget":J
    .local v16, "targetSpace":I
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    nop

    .line 214
    move-object/from16 v5, v35

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    nop

    .line 214
    move/from16 v5, v28

    .end local v28    # "totalWeight":F
    .local v5, "totalWeight":F
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    nop

    .line 214
    move-object/from16 v12, v34

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    nop

    .line 214
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    nop

    .line 214
    const-string/jumbo v12, "weight "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    nop

    .line 214
    move/from16 v12, v46

    .end local v46    # "weight":F
    .local v12, "weight":F
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    nop

    .line 214
    move-object/from16 v5, v29

    .end local v5    # "totalWeight":F
    .restart local v28    # "totalWeight":F
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    nop

    .line 214
    move/from16 v2, v47

    .end local v47    # "weightedSize":F
    .local v2, "weightedSize":F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 231
    nop

    .line 214
    nop

    .end local v2    # "weightedSize":F
    .restart local v47    # "weightedSize":F
    const-string/jumbo v2, "remainderUnit "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    nop

    .line 214
    move/from16 v5, v43

    .end local v43    # "remainderUnit":I
    .local v5, "remainderUnit":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    nop

    .line 214
    nop

    .end local v5    # "remainderUnit":I
    .restart local v43    # "remainderUnit":I
    const-string/jumbo v5, "childMainAxisSize "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    nop

    .line 214
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v6, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 402
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "arrangementSpacingTotal":J
    .end local v12    # "weight":F
    .end local v30    # "weightChildrenCount":I
    .end local v40    # "crossAxisSpace":I
    .end local v43    # "remainderUnit":I
    .end local v44    # "childConstraints":J
    .end local v47    # "weightedSize":F
    .end local v48    # "child":Landroidx/compose/ui/layout/Measurable;
    .restart local v1    # "crossAxisSpace":I
    .local v2, "child":Landroidx/compose/ui/layout/Measurable;
    .restart local v6    # "weight":F
    .local v7, "targetSpace":I
    .local v15, "weightChildrenCount":I
    .local v16, "arrangementSpacingTotal":J
    .restart local v41    # "remainingToTarget":J
    :cond_f
    move/from16 v40, v1

    .end local v1    # "crossAxisSpace":I
    .restart local v40    # "crossAxisSpace":I
    const/4 v0, 0x0

    .line 187
    .local v0, "$i$a$-check-RowColumnMeasurementHelper$measureWithoutPlacing$1":I
    nop

    .end local v0    # "$i$a$-check-RowColumnMeasurementHelper$measureWithoutPlacing$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    .end local v2    # "child":Landroidx/compose/ui/layout/Measurable;
    .end local v6    # "weight":F
    .end local v19    # "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    .end local v40    # "crossAxisSpace":I
    .restart local v1    # "crossAxisSpace":I
    :cond_10
    move/from16 v40, v1

    move/from16 v30, v15

    move-object/from16 v19, v18

    move-object/from16 v15, v34

    move-wide/from16 v1, v36

    move-object/from16 v18, v38

    move-object/from16 v34, v4

    move-wide/from16 v3, v16

    move-object/from16 v17, v35

    move-object/from16 v35, v5

    move/from16 v16, v7

    move-object/from16 v5, v29

    move-object/from16 v29, v8

    move-wide/from16 v7, v41

    move/from16 v49, v28

    move-object/from16 v28, v6

    move/from16 v6, v49

    .line 182
    .end local v15    # "weightChildrenCount":I
    .end local v28    # "totalWeight":F
    .end local v36    # "fixedSpace":J
    .end local v41    # "remainingToTarget":J
    .local v1, "fixedSpace":J
    .restart local v3    # "arrangementSpacingTotal":J
    .local v6, "totalWeight":F
    .local v7, "remainingToTarget":J
    .local v16, "targetSpace":I
    .restart local v30    # "weightChildrenCount":I
    .restart local v40    # "crossAxisSpace":I
    :goto_f
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v41, v7

    move/from16 v7, v16

    move-object/from16 v38, v18

    move-object/from16 v18, v19

    move-object/from16 v8, v29

    move-object/from16 v29, v5

    move-object/from16 v5, v35

    move-object/from16 v35, v17

    move-wide/from16 v16, v3

    move-object/from16 v4, v34

    move-wide v2, v1

    move-object/from16 v34, v15

    move/from16 v15, v30

    move/from16 v1, v40

    move-object/from16 v49, v28

    move/from16 v28, v6

    move-object/from16 v6, v49

    goto/16 :goto_9

    .end local v3    # "arrangementSpacingTotal":J
    .end local v6    # "totalWeight":F
    .end local v30    # "weightChildrenCount":I
    .end local v40    # "crossAxisSpace":I
    .local v1, "crossAxisSpace":I
    .local v7, "targetSpace":I
    .restart local v15    # "weightChildrenCount":I
    .local v16, "arrangementSpacingTotal":J
    .restart local v28    # "totalWeight":F
    .restart local v36    # "fixedSpace":J
    .restart local v41    # "remainingToTarget":J
    :cond_11
    move/from16 v40, v1

    move/from16 v30, v15

    move-wide/from16 v3, v16

    move/from16 v6, v28

    move-wide/from16 v1, v36

    move/from16 v16, v7

    move-wide/from16 v7, v41

    .line 244
    .end local v11    # "i":I
    .end local v15    # "weightChildrenCount":I
    .end local v28    # "totalWeight":F
    .end local v36    # "fixedSpace":J
    .end local v41    # "remainingToTarget":J
    .local v1, "fixedSpace":J
    .restart local v3    # "arrangementSpacingTotal":J
    .restart local v6    # "totalWeight":F
    .local v7, "remainingToTarget":J
    .local v16, "targetSpace":I
    .restart local v30    # "weightChildrenCount":I
    .restart local v40    # "crossAxisSpace":I
    nop

    .line 242
    int-to-long v11, v13

    add-long v34, v11, v3

    .line 243
    const-wide/16 v36, 0x0

    const/4 v0, 0x0

    .line 406
    .local v0, "$i$f$getMainAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    .end local v0    # "$i$f$getMainAxisMax-impl":I
    int-to-long v11, v0

    .line 243
    sub-long v38, v11, v1

    invoke-static/range {v34 .. v39}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v11

    .line 244
    long-to-int v0, v11

    .line 242
    move v5, v0

    move-wide v0, v1

    move v12, v5

    move/from16 v11, v40

    .line 247
    .end local v1    # "fixedSpace":J
    .end local v3    # "arrangementSpacingTotal":J
    .end local v7    # "remainingToTarget":J
    .end local v13    # "weightedSpace":I
    .end local v14    # "weightUnitSpace":F
    .end local v16    # "targetSpace":I
    .end local v26    # "remainder":J
    .end local v40    # "crossAxisSpace":I
    .local v0, "fixedSpace":J
    .local v11, "crossAxisSpace":I
    .local v12, "weightedSpace":I
    :goto_10
    const/4 v2, 0x0

    .line 248
    .local v2, "beforeCrossAxisAlignmentLine":I
    const/4 v3, 0x0

    .line 249
    .local v3, "afterCrossAxisAlignmentLine":I
    if-eqz v22, :cond_17

    .line 250
    move/from16 v4, p4

    .local v4, "i":I
    :goto_11
    move/from16 v5, p5

    if-ge v4, v5, :cond_16

    .line 251
    move-object/from16 v7, p0

    iget-object v8, v7, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v8, v8, v4

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .local v8, "placeable":Landroidx/compose/ui/layout/Placeable;
    iget-object v13, v7, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->rowColumnParentData:[Landroidx/compose/foundation/layout/RowColumnParentData;

    aget-object v13, v13, v4

    .line 254
    .local v13, "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    nop

    .line 253
    invoke-static {v13}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getCrossAxisAlignment(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object v14

    .line 254
    if-eqz v14, :cond_12

    .line 253
    nop

    .line 254
    invoke-virtual {v14, v8}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_12

    :cond_12
    const/4 v14, 0x0

    .line 253
    :goto_12
    nop

    .line 255
    .local v14, "alignmentLinePosition":Ljava/lang/Integer;
    if-eqz v14, :cond_15

    .line 256
    nop

    .line 258
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "it":I
    const/16 v16, 0x0

    .line 259
    .local v16, "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$2":I
    const/high16 v5, -0x80000000

    if-eq v15, v5, :cond_13

    goto :goto_13

    :cond_13
    const/4 v15, 0x0

    .line 258
    .end local v15    # "it":I
    .end local v16    # "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$2":I
    :goto_13
    nop

    .line 256
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 262
    nop

    .line 264
    invoke-virtual {v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v15

    .line 266
    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "it":I
    const/16 v16, 0x0

    .line 267
    .local v16, "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$3":I
    move/from16 v18, v2

    const/high16 v2, -0x80000000

    .end local v2    # "beforeCrossAxisAlignmentLine":I
    .local v18, "beforeCrossAxisAlignmentLine":I
    if-eq v5, v2, :cond_14

    .line 268
    move v2, v5

    goto :goto_14

    .line 270
    :cond_14
    invoke-virtual {v7, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    .line 267
    :goto_14
    nop

    .line 266
    .end local v5    # "it":I
    .end local v16    # "$i$a$-let-RowColumnMeasurementHelper$measureWithoutPlacing$3":I
    nop

    .line 264
    sub-int/2addr v15, v2

    .line 262
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v2, v18

    .line 250
    .end local v8    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v13    # "parentData":Landroidx/compose/foundation/layout/RowColumnParentData;
    .end local v14    # "alignmentLinePosition":Ljava/lang/Integer;
    .end local v18    # "beforeCrossAxisAlignmentLine":I
    .restart local v2    # "beforeCrossAxisAlignmentLine":I
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_16
    move-object/from16 v7, p0

    move v13, v2

    move v14, v3

    goto :goto_15

    .line 249
    .end local v4    # "i":I
    :cond_17
    move-object/from16 v7, p0

    move v13, v2

    move v14, v3

    .line 281
    .end local v2    # "beforeCrossAxisAlignmentLine":I
    .end local v3    # "afterCrossAxisAlignmentLine":I
    .local v13, "beforeCrossAxisAlignmentLine":I
    .local v14, "afterCrossAxisAlignmentLine":I
    :goto_15
    int-to-long v2, v12

    add-long/2addr v2, v0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 282
    const/4 v3, 0x0

    .line 407
    .local v3, "$i$f$getMainAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    .line 280
    .end local v3    # "$i$f$getMainAxisMin-impl":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 284
    .local v15, "mainAxisLayoutSize":I
    const/4 v2, 0x0

    .line 408
    .local v2, "$i$f$getCrossAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    .line 284
    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_18

    .line 285
    iget-object v2, v7, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    sget-object v3, Landroidx/compose/foundation/layout/SizeMode;->Expand:Landroidx/compose/foundation/layout/SizeMode;

    if-ne v2, v3, :cond_18

    .line 287
    const/4 v2, 0x0

    .line 409
    .restart local v2    # "$i$f$getCrossAxisMax-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    move v3, v2

    .end local v2    # "$i$f$getCrossAxisMax-impl":I
    goto :goto_16

    .line 292
    :cond_18
    const/4 v2, 0x0

    .line 410
    .local v2, "$i$f$getCrossAxisMin-impl":I
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 293
    .end local v2    # "$i$f$getCrossAxisMin-impl":I
    add-int v3, v13, v14

    .line 291
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 289
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    .line 284
    :goto_16
    move-object v8, v7

    move/from16 v5, v30

    .line 297
    .end local v30    # "weightChildrenCount":I
    .local v3, "crossAxisLayoutSize":I
    .local v5, "weightChildrenCount":I
    move/from16 v7, v33

    .end local v33    # "subSize":I
    .local v7, "subSize":I
    new-array v2, v7, [I

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v7, :cond_19

    const/16 v16, 0x0

    aput v16, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_19
    const/16 v16, 0x0

    move-object v4, v2

    .line 298
    .local v4, "mainAxisPositions":[I
    new-array v2, v7, [I

    move-wide/from16 v17, v0

    move/from16 v0, v16

    .end local v0    # "fixedSpace":J
    .local v17, "fixedSpace":J
    :goto_18
    if-ge v0, v7, :cond_1a

    .line 299
    iget-object v1, v8, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    add-int v16, v0, p4

    aget-object v1, v1, v16

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 298
    goto :goto_18

    :cond_1a
    move-object v0, v2

    .line 307
    .local v0, "childrenMainAxisSize":[I
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 308
    move-object/from16 v1, p1

    invoke-direct {v8, v15, v0, v4, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->mainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)[I

    move-result-object v16

    .line 302
    new-instance v19, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;

    .line 304
    nop

    .line 303
    nop

    .line 305
    nop

    .line 306
    nop

    .line 307
    nop

    .line 308
    nop

    .line 302
    move-object/from16 v2, v19

    move-object/from16 v23, v4

    .end local v4    # "mainAxisPositions":[I
    .local v23, "mainAxisPositions":[I
    move v4, v15

    move/from16 v24, v5

    .end local v5    # "weightChildrenCount":I
    .local v24, "weightChildrenCount":I
    move/from16 v5, p4

    move/from16 v26, v25

    move/from16 v25, v6

    .end local v6    # "totalWeight":F
    .local v25, "totalWeight":F
    .local v26, "spaceAfterLastNoWeight":I
    move/from16 v6, p5

    move/from16 v27, v7

    .end local v7    # "subSize":I
    .local v27, "subSize":I
    move v7, v13

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;-><init>(IIIII[I)V

    return-object v19
.end method

.method public final placeHelper(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;ILandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 24
    .param p1, "placeableScope"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .param p2, "measureResult"    # Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
    .param p3, "crossAxisOffset"    # I
    .param p4, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 368
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    .local v14, "$this$placeHelper_u24lambda_u248":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    const/16 v21, 0x0

    .line 369
    .local v21, "$i$a$-with-RowColumnMeasurementHelper$placeHelper$1":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v0

    .local v0, "i":I
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getEndIndex()I

    move-result v13

    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_2

    .line 370
    iget-object v0, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->placeables:[Landroidx/compose/ui/layout/Placeable;

    aget-object v22, v0, v12

    .line 371
    .local v22, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getMainAxisPositions()[I

    move-result-object v23

    .line 373
    .local v23, "mainAxisPositions":[I
    nop

    .line 374
    nop

    .line 375
    iget-object v0, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->measurables:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v0}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    move-object v2, v0

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getCrossAxisSize()I

    move-result v3

    .line 377
    nop

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getBeforeCrossAxisAlignmentLine()I

    move-result v5

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->getCrossAxisPosition(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/RowColumnParentData;ILandroidx/compose/ui/unit/LayoutDirection;I)I

    move-result v0

    .line 379
    nop

    .line 373
    add-int v0, v0, p3

    .line 380
    .local v0, "crossAxisPosition":I
    iget-object v1, v6, Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;->orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    if-ne v1, v2, :cond_1

    .line 381
    nop

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v1

    sub-int v1, v12, v1

    aget v16, v23, v1

    .line 383
    nop

    .line 381
    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object/from16 v15, v22

    move/from16 v17, v0

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move v3, v12

    move v1, v13

    goto :goto_2

    .line 386
    :cond_1
    nop

    .line 387
    nop

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->getStartIndex()I

    move-result v1

    sub-int v1, v12, v1

    aget v10, v23, v1

    .line 386
    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v7, v14

    move-object/from16 v8, v22

    move v9, v0

    move v3, v12

    .end local v12    # "i":I
    .local v3, "i":I
    move v12, v1

    move v1, v13

    move-object v13, v2

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 369
    .end local v0    # "crossAxisPosition":I
    .end local v22    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v23    # "mainAxisPositions":[I
    :goto_2
    add-int/lit8 v12, v3, 0x1

    move v13, v1

    .end local v3    # "i":I
    .restart local v12    # "i":I
    goto :goto_0

    .line 392
    .end local v12    # "i":I
    :cond_2
    nop

    .line 368
    .end local v14    # "$this$placeHelper_u24lambda_u248":Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .end local v21    # "$i$a$-with-RowColumnMeasurementHelper$placeHelper$1":I
    nop

    .line 393
    return-void
.end method
