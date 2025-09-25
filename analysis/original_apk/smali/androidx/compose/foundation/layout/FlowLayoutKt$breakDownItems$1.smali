.class final Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FlowLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/FlowLayoutKt;->breakDownItems-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/RowColumnMeasurementHelper;Landroidx/compose/foundation/layout/LayoutOrientation;JI)Landroidx/compose/foundation/layout/FlowResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "placeable",
        "Landroidx/compose/ui/layout/Placeable;",
        "invoke"
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
.field final synthetic $index:I

.field final synthetic $placeables:[Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>([Landroidx/compose/ui/layout/Placeable;I)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$index:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 641
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->invoke(Landroidx/compose/ui/layout/Placeable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable;)V
    .locals 2
    .param p1, "placeable"    # Landroidx/compose/ui/layout/Placeable;

    .line 644
    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$placeables:[Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1;->$index:I

    add-int/lit8 v1, v1, 0x1

    aput-object p1, v0, v1

    .line 645
    return-void
.end method
