.class final Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldCoreModifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->measureVerticalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
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
.field final synthetic $height:I

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measureVerticalScroll:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$this_measureVerticalScroll:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$height:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 281
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 13
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 284
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v0

    .line 285
    .local v0, "currSelection":J
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$calculateOffsetToFollow-5zc-tL8(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;J)I

    move-result v2

    .line 287
    .local v2, "offsetToFollow":I
    if-ltz v2, :cond_1

    .line 288
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$this_measureVerticalScroll:Landroidx/compose/ui/layout/MeasureScope;

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 289
    nop

    .line 290
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$getTextLayoutState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v4

    .line 291
    iget-object v5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$this_measureVerticalScroll:Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {v5}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 292
    :goto_0
    iget-object v6, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v6

    .line 288
    invoke-static {v3, v2, v4, v5, v6}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->access$getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    goto :goto_1

    .line 295
    :cond_1
    const/4 v3, 0x0

    .line 287
    :goto_1
    nop

    .line 298
    .local v3, "cursorRectInScroller":Landroidx/compose/ui/geometry/Rect;
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 299
    nop

    .line 300
    iget v5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$height:I

    .line 301
    iget-object v6, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    .line 298
    invoke-static {v4, v3, v5, v6}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$updateScrollState(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/geometry/Rect;II)V

    .line 305
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$isFocused$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$setPreviousSelection$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/text/TextRange;)V

    .line 309
    :cond_2
    iget-object v7, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v8, 0x0

    iget-object v4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;->this$0:Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    invoke-static {v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->access$getScrollState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v4

    neg-int v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 310
    return-void
.end method
