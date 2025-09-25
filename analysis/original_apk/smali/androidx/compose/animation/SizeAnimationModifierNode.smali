.class final Landroidx/compose/animation/SizeAnimationModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "AnimationModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimationModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/SizeAnimationModifierNode\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n*L\n1#1,237:1\n81#2:238\n107#2,2:239\n56#3,4:241\n*S KotlinDebug\n*F\n+ 1 AnimationModifier.kt\nandroidx/compose/animation/SizeAnimationModifierNode\n*L\n127#1:238\n127#1:239,2\n155#1:241,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001:\u00018BO\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012:\u0008\u0002\u0010\u0005\u001a4\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\u0008\u0010+\u001a\u00020\u000bH\u0016J\u0008\u0010,\u001a\u00020\u000bH\u0016J\u001a\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020\u001fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010*J&\u00100\u001a\u000201*\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u001fH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107R/\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R \u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019RL\u0010\u0005\u001a4\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR&\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001f@BX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010#\"\u0004\u0008!\u0010\"R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\u00020\u0004X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010#\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00069"
    }
    d2 = {
        "Landroidx/compose/animation/SizeAnimationModifierNode;",
        "Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "Landroidx/compose/ui/unit/IntSize;",
        "listener",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "startSize",
        "endSize",
        "",
        "(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;)V",
        "<set-?>",
        "Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;",
        "animData",
        "getAnimData",
        "()Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;",
        "setAnimData",
        "(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;)V",
        "animData$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "getAnimationSpec",
        "()Landroidx/compose/animation/core/AnimationSpec;",
        "setAnimationSpec",
        "(Landroidx/compose/animation/core/AnimationSpec;)V",
        "getListener",
        "()Lkotlin/jvm/functions/Function2;",
        "setListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "value",
        "Landroidx/compose/ui/unit/Constraints;",
        "lookaheadConstraints",
        "setLookaheadConstraints-BRTryo0",
        "(J)V",
        "J",
        "lookaheadConstraintsAvailable",
        "",
        "lookaheadSize",
        "animateTo",
        "targetSize",
        "animateTo-mzRDjE0",
        "(J)J",
        "onAttach",
        "onReset",
        "targetConstraints",
        "default",
        "targetConstraints-ZezNO4M",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "AnimData",
        "animation_release"
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
.field private final animData$delegate:Landroidx/compose/runtime/MutableState;

.field private animationSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private lookaheadConstraints:J

.field private lookaheadConstraintsAvailable:Z

.field private lookaheadSize:J


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "listener"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;-><init>()V

    .line 104
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 105
    iput-object p2, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->listener:Lkotlin/jvm/functions/Function2;

    .line 107
    invoke-static {}, Landroidx/compose/animation/AnimationModifierKt;->getInvalidSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    .line 108
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/MutableState;

    .line 103
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 103
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 105
    const/4 p2, 0x0

    .line 103
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/SizeAnimationModifierNode;-><init>(Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;)V

    .line 191
    return-void
.end method

.method private final setLookaheadConstraints-BRTryo0(J)V
    .locals 1
    .param p1, "value"    # J

    .line 110
    iput-wide p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    .line 112
    return-void
.end method

.method private final targetConstraints-ZezNO4M(J)J
    .locals 2
    .param p1, "default"    # J

    .line 116
    iget-boolean v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    if-eqz v0, :cond_0

    .line 117
    iget-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraints:J

    goto :goto_0

    .line 119
    :cond_0
    move-wide v0, p1

    .line 120
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final animateTo-mzRDjE0(J)J
    .locals 17
    .param p1, "targetSize"    # J

    .line 171
    move-wide/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/SizeAnimationModifierNode;->getAnimData()Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v9, v8

    .local v9, "$this$animateTo_mzRDjE0_u24lambda_u241":Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;
    const/4 v10, 0x0

    .line 172
    .local v10, "$i$a$-apply-SizeAnimationModifierNode$animateTo$data$1":I
    invoke-virtual {v9}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getTargetValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {v9}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->setStartSize-ozmzZPI(J)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/SizeAnimationModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Landroidx/compose/animation/SizeAnimationModifierNode$animateTo$data$1$1;

    const/4 v5, 0x0

    move-object v0, v14

    move-object v1, v9

    move-wide/from16 v2, p1

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/SizeAnimationModifierNode$animateTo$data$1$1;-><init>(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;JLandroidx/compose/animation/SizeAnimationModifierNode;Lkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 181
    :cond_0
    nop

    .line 171
    .end local v9    # "$this$animateTo_mzRDjE0_u24lambda_u241":Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;
    .end local v10    # "$i$a$-apply-SizeAnimationModifierNode$animateTo$data$1":I
    goto :goto_0

    .line 181
    :cond_1
    new-instance v8, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 182
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 183
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v10

    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v11

    const/4 v1, 0x1

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v12

    .line 182
    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    nop

    .line 181
    const/4 v1, 0x0

    invoke-direct {v8, v0, v6, v7, v1}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;-><init>(Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    :goto_0
    move-object v0, v8

    .line 188
    .local v0, "data":Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/animation/SizeAnimationModifierNode;->setAnimData(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;)V

    .line 189
    invoke-virtual {v0}, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;->getAnim()Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v2

    return-wide v2
.end method

.method public final getAnimData()Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;
    .locals 3

    .line 127
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 238
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 127
    return-object v0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method

.method public final getListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->listener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 17
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "constraints"    # J

    .line 146
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/SizeAnimationModifierNode;->setLookaheadConstraints-BRTryo0(J)V

    .line 148
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    move-object/from16 v5, p2

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {v0, v1, v2}, Landroidx/compose/animation/SizeAnimationModifierNode;->targetConstraints-ZezNO4M(J)J

    move-result-wide v3

    move-object/from16 v5, p2

    invoke-interface {v5, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 146
    :goto_0
    nop

    .line 154
    .local v3, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v6

    .line 155
    .local v6, "measuredSize":J
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    iput-wide v6, v0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    .line 157
    move-wide v8, v6

    goto :goto_2

    .line 159
    :cond_1
    iget-wide v8, v0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    invoke-static {v8, v9}, Landroidx/compose/animation/AnimationModifierKt;->isValid-ozmzZPI(J)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v8, v0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    goto :goto_1

    :cond_2
    move-wide v8, v6

    :goto_1
    invoke-virtual {v0, v8, v9}, Landroidx/compose/animation/SizeAnimationModifierNode;->animateTo-mzRDjE0(J)J

    move-result-wide v8

    .local v8, "it":J
    const/4 v4, 0x0

    .line 162
    .local v4, "$i$a$-let-SizeAnimationModifierNode$measure$1":I
    invoke-static {v1, v2, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v8

    .line 159
    .end local v4    # "$i$a$-let-SizeAnimationModifierNode$measure$1":I
    .end local v8    # "it":J
    nop

    .line 155
    :goto_2
    const/4 v4, 0x0

    .line 241
    .local v4, "$i$f$component1-impl":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v11

    .line 155
    .end local v4    # "$i$f$component1-impl":I
    nop

    .local v11, "width":I
    const/4 v4, 0x0

    .line 244
    .local v4, "$i$f$component2-impl":I
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v12

    .line 155
    .end local v4    # "$i$f$component2-impl":I
    nop

    .line 165
    .local v12, "height":I
    const/4 v13, 0x0

    new-instance v4, Landroidx/compose/animation/SizeAnimationModifierNode$measure$2;

    invoke-direct {v4, v3}, Landroidx/compose/animation/SizeAnimationModifierNode$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v16}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v4

    return-object v4
.end method

.method public onAttach()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;->onAttach()V

    .line 138
    invoke-static {}, Landroidx/compose/animation/AnimationModifierKt;->getInvalidSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadSize:J

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->lookaheadConstraintsAvailable:Z

    .line 140
    return-void
.end method

.method public onReset()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;->onReset()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SizeAnimationModifierNode;->setAnimData(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;)V

    .line 133
    return-void
.end method

.method public final setAnimData(Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/animation/SizeAnimationModifierNode$AnimData;

    .line 127
    iget-object v0, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animData$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 240
    nop

    .line 127
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setAnimationSpec(Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->animationSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method

.method public final setListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Landroidx/compose/animation/SizeAnimationModifierNode;->listener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
