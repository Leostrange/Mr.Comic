.class final Landroidx/compose/material/RangeSliderLogic;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u001e\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\n0\u0006\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u000bJ&\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR)\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000c0\n0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/material/RangeSliderLogic;",
        "",
        "startInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "endInteractionSource",
        "rawOffsetStart",
        "Landroidx/compose/runtime/State;",
        "",
        "rawOffsetEnd",
        "onDrag",
        "Lkotlin/Function2;",
        "",
        "",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V",
        "getEndInteractionSource",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getOnDrag",
        "()Landroidx/compose/runtime/State;",
        "getRawOffsetEnd",
        "getRawOffsetStart",
        "getStartInteractionSource",
        "activeInteraction",
        "draggingStart",
        "captureThumb",
        "posX",
        "interaction",
        "Landroidx/compose/foundation/interaction/Interaction;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "compareOffsets",
        "",
        "eventX",
        "material_release"
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
.field private final endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final onDrag:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rawOffsetEnd:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final rawOffsetStart:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .param p1, "startInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "endInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "rawOffsetStart"    # Landroidx/compose/runtime/State;
    .param p4, "rawOffsetEnd"    # Landroidx/compose/runtime/State;
    .param p5, "onDrag"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1046
    iput-object p2, p0, Landroidx/compose/material/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 1047
    iput-object p3, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetStart:Landroidx/compose/runtime/State;

    .line 1048
    iput-object p4, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetEnd:Landroidx/compose/runtime/State;

    .line 1049
    iput-object p5, p0, Landroidx/compose/material/RangeSliderLogic;->onDrag:Landroidx/compose/runtime/State;

    .line 1044
    return-void
.end method


# virtual methods
.method public final activeInteraction(Z)Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1
    .param p1, "draggingStart"    # Z

    .line 1052
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :goto_0
    return-object v0
.end method

.method public final captureThumb(ZFLandroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 9
    .param p1, "draggingStart"    # Z
    .param p2, "posX"    # F
    .param p3, "interaction"    # Landroidx/compose/foundation/interaction/Interaction;
    .param p4, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 1066
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->onDrag:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1067
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1068
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetStart:Landroidx/compose/runtime/State;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetEnd:Landroidx/compose/runtime/State;

    :goto_0
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1066
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;-><init>(Landroidx/compose/material/RangeSliderLogic;ZLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p4

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1073
    return-void
.end method

.method public final compareOffsets(F)I
    .locals 3
    .param p1, "eventX"    # F

    .line 1055
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetStart:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1056
    .local v0, "diffStart":F
    iget-object v1, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetEnd:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1057
    .local v1, "diffEnd":F
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    return v2
.end method

.method public final getEndInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 1046
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getOnDrag()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->onDrag:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final getRawOffsetEnd()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetEnd:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final getRawOffsetStart()Landroidx/compose/runtime/State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->rawOffsetStart:Landroidx/compose/runtime/State;

    return-object v0
.end method

.method public final getStartInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 1045
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method
