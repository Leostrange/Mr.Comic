.class final Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidTextFieldMagnifier.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/geometry/Offset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/geometry/Offset;",
        "invoke-F1C5BW0",
        "()J"
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
.field final synthetic this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->invoke-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-F1C5BW0()J
    .locals 5

    .line 120
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;->access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    move-result-object v0

    .line 121
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;

    invoke-static {v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;->access$getTextFieldSelectionState$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;)Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    move-result-object v1

    .line 122
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;

    invoke-static {v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;->access$getTextLayoutState$p(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;)Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    move-result-object v2

    .line 123
    iget-object v3, p0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28$restartAnimationJob$1$1;->this$0:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;

    invoke-static {v3}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;->access$getMagnifierSize-YbymL2g(Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNodeImpl28;)J

    move-result-wide v3

    .line 119
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierKt;->calculateSelectionMagnifierCenterAndroid-hUlJWOE(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;J)J

    move-result-wide v0

    return-wide v0
.end method
