.class public final Landroidx/compose/foundation/gestures/Draggable2DKt;
.super Ljava/lang/Object;
.source "Draggable2D.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable2D.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable2D.kt\nandroidx/compose/foundation/gestures/Draggable2DKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,362:1\n25#2:363\n1116#3,6:364\n*S KotlinDebug\n*F\n+ 1 Draggable2D.kt\nandroidx/compose/foundation/gestures/Draggable2DKt\n*L\n121#1:363\n121#1:364,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007\u001a!\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u00c3\u0001\u0010\u000c\u001a\u00020\r*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00102>\u0008\u0002\u0010\u0014\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0015\u00a2\u0006\u0002\u0008\u001c2>\u0008\u0002\u0010\u001d\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0015\u00a2\u0006\u0002\u0008\u001c2\u0008\u0008\u0002\u0010 \u001a\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010!\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\""
    }
    d2 = {
        "NoOpDrag2DScope",
        "Landroidx/compose/foundation/gestures/Drag2DScope;",
        "getNoOpDrag2DScope$annotations",
        "()V",
        "Draggable2DState",
        "Landroidx/compose/foundation/gestures/Draggable2DState;",
        "onDelta",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/geometry/Offset;",
        "",
        "rememberDraggable2DState",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/Draggable2DState;",
        "draggable2D",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "enabled",
        "",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "startDragImmediately",
        "onDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onDragStopped",
        "Landroidx/compose/ui/unit/Velocity;",
        "velocity",
        "reverseDirection",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Draggable2DState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;",
        "foundation_release"
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
.field private static final NoOpDrag2DScope:Landroidx/compose/foundation/gestures/Drag2DScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    new-instance v0, Landroidx/compose/foundation/gestures/Draggable2DKt$NoOpDrag2DScope$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/Draggable2DKt$NoOpDrag2DScope$1;-><init>()V

    check-cast v0, Landroidx/compose/foundation/gestures/Drag2DScope;

    sput-object v0, Landroidx/compose/foundation/gestures/Draggable2DKt;->NoOpDrag2DScope:Landroidx/compose/foundation/gestures/Drag2DScope;

    return-void
.end method

.method public static final Draggable2DState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/Draggable2DState;
    .locals 1
    .param p0, "onDelta"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/gestures/Draggable2DState;"
        }
    .end annotation

    .line 104
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultDraggable2DState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggable2DState;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/foundation/gestures/Draggable2DState;

    return-object v0
.end method

.method public static final synthetic access$getNoOpDrag2DScope$p()Landroidx/compose/foundation/gestures/Drag2DScope;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Draggable2DKt;->NoOpDrag2DScope:Landroidx/compose/foundation/gestures/Drag2DScope;

    return-object v0
.end method

.method public static final draggable2D(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Draggable2DState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p0, "$this$draggable2D"    # Landroidx/compose/ui/Modifier;
    .param p1, "state"    # Landroidx/compose/foundation/gestures/Draggable2DState;
    .param p2, "enabled"    # Z
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "startDragImmediately"    # Z
    .param p5, "onDragStarted"    # Lkotlin/jvm/functions/Function3;
    .param p6, "onDragStopped"    # Lkotlin/jvm/functions/Function3;
    .param p7, "reverseDirection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/Draggable2DState;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 167
    new-instance v9, Landroidx/compose/foundation/gestures/Draggable2DElement;

    .line 168
    nop

    .line 167
    sget-object v0, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$3;->INSTANCE:Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$3;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 169
    nop

    .line 170
    nop

    .line 167
    new-instance v0, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$4;

    move v10, p4

    invoke-direct {v0, p4}, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$4;-><init>(Z)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 167
    move-object v0, v9

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/Draggable2DElement;-><init>(Landroidx/compose/foundation/gestures/Draggable2DState;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object v0, p0

    invoke-interface {p0, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 176
    return-object v1
.end method

.method public static synthetic draggable2D$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Draggable2DState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 159
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 162
    move-object v1, v2

    goto :goto_1

    .line 159
    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 163
    move v3, v4

    goto :goto_2

    .line 159
    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    .line 164
    new-instance v5, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$1;

    invoke-direct {v5, v2}, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function3;

    goto :goto_3

    .line 159
    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_4

    .line 165
    new-instance v6, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$2;

    invoke-direct {v6, v2}, Landroidx/compose/foundation/gestures/Draggable2DKt$draggable2D$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v6

    check-cast v2, Lkotlin/jvm/functions/Function3;

    goto :goto_4

    .line 159
    :cond_4
    move-object v2, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    .line 166
    goto :goto_5

    .line 159
    :cond_5
    move v4, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move-object p5, v1

    move p6, v3

    move-object p7, v5

    move-object p8, v2

    move/from16 p9, v4

    invoke-static/range {p2 .. p9}, Landroidx/compose/foundation/gestures/Draggable2DKt;->draggable2D(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Draggable2DState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic getNoOpDrag2DScope$annotations()V
    .locals 0

    return-void
.end method

.method public static final rememberDraggable2DState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/Draggable2DState;
    .locals 10
    .param p0, "onDelta"    # Lkotlin/jvm/functions/Function1;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/gestures/Draggable2DState;"
        }
    .end annotation

    const v0, -0x448fd7ef

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDraggable2DState)119@4839L29,120@4880L63:Draggable2D.kt#8bwon0"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.foundation.gestures.rememberDraggable2DState (Draggable2D.kt:118)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 120
    :cond_0
    and-int/lit8 v0, p2, 0xe

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 121
    .local v0, "onDeltaState":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p1, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 363
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object v4, p1

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 364
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 365
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_1

    .line 366
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$a$-remember-Draggable2DKt$rememberDraggable2DState$1":I
    new-instance v9, Landroidx/compose/foundation/gestures/Draggable2DKt$rememberDraggable2DState$1$1;

    invoke-direct {v9, v0}, Landroidx/compose/foundation/gestures/Draggable2DKt$rememberDraggable2DState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v9}, Landroidx/compose/foundation/gestures/Draggable2DKt;->Draggable2DState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/Draggable2DState;

    move-result-object v8

    .line 366
    .end local v8    # "$i$a$-remember-Draggable2DKt$rememberDraggable2DState$1":I
    nop

    .line 367
    .local v8, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 368
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 369
    :cond_1
    move-object v8, v6

    .line 365
    :goto_0
    nop

    .line 364
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 363
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    check-cast v8, Landroidx/compose/foundation/gestures/Draggable2DState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v8
.end method
