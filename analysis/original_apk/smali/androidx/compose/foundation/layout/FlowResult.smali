.class public final Landroidx/compose/foundation/layout/FlowResult;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowResult;",
        "",
        "mainAxisTotalSize",
        "",
        "crossAxisTotalSize",
        "items",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "(IILandroidx/compose/runtime/collection/MutableVector;)V",
        "getCrossAxisTotalSize",
        "()I",
        "getItems",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "getMainAxisTotalSize",
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
.field private final crossAxisTotalSize:I

.field private final items:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAxisTotalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    sput v0, Landroidx/compose/foundation/layout/FlowResult;->$stable:I

    return-void
.end method

.method public constructor <init>(IILandroidx/compose/runtime/collection/MutableVector;)V
    .locals 0
    .param p1, "mainAxisTotalSize"    # I
    .param p2, "crossAxisTotalSize"    # I
    .param p3, "items"    # Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;)V"
        }
    .end annotation

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput p1, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    .line 754
    iput p2, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    .line 755
    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    .line 752
    return-void
.end method


# virtual methods
.method public final getCrossAxisTotalSize()I
    .locals 1

    .line 754
    iget v0, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    return v0
.end method

.method public final getItems()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final getMainAxisTotalSize()I
    .locals 1

    .line 753
    iget v0, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    return v0
.end method
