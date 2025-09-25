.class public final Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "",
        "crossAxisSize",
        "",
        "mainAxisSize",
        "startIndex",
        "endIndex",
        "beforeCrossAxisAlignmentLine",
        "mainAxisPositions",
        "",
        "(IIIII[I)V",
        "getBeforeCrossAxisAlignmentLine",
        "()I",
        "getCrossAxisSize",
        "getEndIndex",
        "getMainAxisPositions",
        "()[I",
        "getMainAxisSize",
        "getStartIndex",
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
.field private final beforeCrossAxisAlignmentLine:I

.field private final crossAxisSize:I

.field private final endIndex:I

.field private final mainAxisPositions:[I

.field private final mainAxisSize:I

.field private final startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->$stable:I

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 0
    .param p1, "crossAxisSize"    # I
    .param p2, "mainAxisSize"    # I
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "beforeCrossAxisAlignmentLine"    # I
    .param p6, "mainAxisPositions"    # [I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    .line 37
    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    .line 38
    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    .line 39
    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    .line 40
    iput p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    .line 41
    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    .line 35
    return-void
.end method


# virtual methods
.method public final getBeforeCrossAxisAlignmentLine()I
    .locals 1

    .line 40
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 36
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    return v0
.end method

.method public final getEndIndex()I
    .locals 1

    .line 39
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    return v0
.end method

.method public final getMainAxisPositions()[I
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 37
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    return v0
.end method

.method public final getStartIndex()I
    .locals 1

    .line 38
    iget v0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    return v0
.end method
