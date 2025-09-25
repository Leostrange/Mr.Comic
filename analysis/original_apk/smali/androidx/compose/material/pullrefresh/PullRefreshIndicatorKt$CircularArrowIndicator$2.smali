.class final Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PullRefreshIndicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->CircularArrowIndicator-iJQMabo(Landroidx/compose/material/pullrefresh/PullRefreshState;JLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPullRefreshIndicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,250:1\n137#2,5:251\n262#2,11:256\n*S KotlinDebug\n*F\n+ 1 PullRefreshIndicator.kt\nandroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2\n*L\n150#1:251,5\n150#1:256,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field final synthetic $alphaState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $color:J

.field final synthetic $path:Landroidx/compose/ui/graphics/Path;

.field final synthetic $state:Landroidx/compose/material/pullrefresh/PullRefreshState;


# direct methods
.method constructor <init>(Landroidx/compose/material/pullrefresh/PullRefreshState;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/pullrefresh/PullRefreshState;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/ui/graphics/Path;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$state:Landroidx/compose/material/pullrefresh/PullRefreshState;

    iput-object p2, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$alphaState:Landroidx/compose/runtime/State;

    iput-wide p3, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$color:J

    iput-object p5, p0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$path:Landroidx/compose/ui/graphics/Path;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 146
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 43
    .param p1, "$this$Canvas"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$state:Landroidx/compose/material/pullrefresh/PullRefreshState;

    invoke-virtual {v1}, Landroidx/compose/material/pullrefresh/PullRefreshState;->getProgress()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$ArrowValues(F)Landroidx/compose/material/pullrefresh/ArrowValues;

    move-result-object v1

    .line 148
    .local v1, "values":Landroidx/compose/material/pullrefresh/ArrowValues;
    iget-object v2, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$alphaState:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v21

    .line 150
    .local v21, "alpha":F
    invoke-virtual {v1}, Landroidx/compose/material/pullrefresh/ArrowValues;->getRotation()F

    move-result v3

    .local v3, "degrees$iv":F
    iget-wide v13, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$color:J

    iget-object v2, v0, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt$CircularArrowIndicator$2;->$path:Landroidx/compose/ui/graphics/Path;

    move-object/from16 v22, p1

    .line 251
    .local v22, "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 253
    invoke-interface/range {v22 .. v22}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v11

    .line 251
    .local v11, "pivot$iv":J
    const/16 v23, 0x0

    .line 255
    .local v23, "$i$f$rotate-Rg1IO4c":I
    move-object/from16 v24, v22

    .local v24, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v25, 0x0

    .line 256
    .local v25, "$i$f$withTransform":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v15

    .local v15, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/16 v26, 0x0

    .line 260
    .local v26, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v9

    .line 261
    .local v9, "previousSize$iv$iv":J
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 262
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v4

    .local v4, "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/4 v5, 0x0

    .line 255
    .local v5, "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    invoke-interface {v4, v3, v11, v12}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->rotate-Uv8p0NA(FJ)V

    .line 262
    .end local v4    # "$this$rotate_Rg1IO4c_u24lambda_u240$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v5    # "$i$a$-withTransform-DrawScopeKt$rotate$1$iv":I
    nop

    .line 263
    move-object/from16 v8, v24

    .local v8, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v27, 0x0

    .line 151
    .local v27, "$i$a$-rotate-Rg1IO4c$default-PullRefreshIndicatorKt$CircularArrowIndicator$2$1":I
    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getArcRadius$p()F

    move-result v4

    invoke-interface {v8, v4}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v4

    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getStrokeWidth$p()F

    move-result v5

    invoke-interface {v8, v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v28, v4, v5

    .line 152
    .local v28, "arcRadius":F
    new-instance v4, Landroidx/compose/ui/geometry/Rect;

    .line 153
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    sub-float v5, v5, v28

    .line 154
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    sub-float v6, v6, v28

    .line 155
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v7

    add-float v7, v7, v28

    .line 156
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v16

    add-float v0, v16, v28

    .line 152
    invoke-direct {v4, v5, v6, v7, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 161
    .local v4, "arcBounds":Landroidx/compose/ui/geometry/Rect;
    invoke-virtual {v1}, Landroidx/compose/material/pullrefresh/ArrowValues;->getStartAngle()F

    move-result v0

    .line 162
    invoke-virtual {v1}, Landroidx/compose/material/pullrefresh/ArrowValues;->getEndAngle()F

    move-result v5

    invoke-virtual {v1}, Landroidx/compose/material/pullrefresh/ArrowValues;->getStartAngle()F

    move-result v6

    sub-float v16, v5, v6

    .line 164
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v17

    .line 165
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v19

    .line 166
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 167
    invoke-static {}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$getStrokeWidth$p()F

    move-result v6

    invoke-interface {v8, v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v30

    .line 166
    const/16 v31, 0x0

    .line 168
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    move-result v32

    .line 166
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1a

    const/16 v36, 0x0

    move-object/from16 v29, v5

    invoke-direct/range {v29 .. v36}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    nop

    .line 159
    nop

    .line 161
    nop

    .line 162
    nop

    .line 163
    const/16 v29, 0x0

    .line 164
    nop

    .line 165
    nop

    .line 160
    nop

    .line 166
    move-object/from16 v30, v5

    check-cast v30, Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 158
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x300

    move-object v5, v8

    move-wide v6, v13

    move-object/from16 v35, v8

    .end local v8    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .local v35, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    move v8, v0

    move-wide/from16 v37, v9

    .end local v9    # "previousSize$iv$iv":J
    .local v37, "previousSize$iv$iv":J
    move/from16 v9, v16

    move/from16 v10, v29

    move-wide/from16 v39, v11

    .end local v11    # "pivot$iv":J
    .local v39, "pivot$iv":J
    move-wide/from16 v11, v17

    move-wide/from16 v41, v13

    move-wide/from16 v13, v19

    move-object v0, v15

    .end local v15    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v0, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    move/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move/from16 v18, v32

    move/from16 v19, v33

    move-object/from16 v20, v34

    invoke-static/range {v5 .. v20}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 171
    move-object v5, v2

    move-object/from16 v2, v35

    move v9, v3

    .end local v3    # "degrees$iv":F
    .local v9, "degrees$iv":F
    move-object v3, v5

    move-wide/from16 v5, v41

    move/from16 v7, v21

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Landroidx/compose/material/pullrefresh/PullRefreshIndicatorKt;->access$drawArrow-Bx497Mc(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;JFLandroidx/compose/material/pullrefresh/ArrowValues;)V

    .line 172
    nop

    .line 263
    .end local v4    # "arcBounds":Landroidx/compose/ui/geometry/Rect;
    .end local v27    # "$i$a$-rotate-Rg1IO4c$default-PullRefreshIndicatorKt$CircularArrowIndicator$2$1":I
    .end local v28    # "arcRadius":F
    .end local v35    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    nop

    .line 264
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 265
    move-wide/from16 v2, v37

    .end local v37    # "previousSize$iv$iv":J
    .local v2, "previousSize$iv$iv":J
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 266
    nop

    .line 256
    .end local v0    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v2    # "previousSize$iv$iv":J
    .end local v26    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    nop

    .line 266
    nop

    .line 255
    .end local v24    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v25    # "$i$f$withTransform":I
    nop

    .line 173
    .end local v9    # "degrees$iv":F
    .end local v22    # "$this$rotate_u2dRg1IO4c_u24default$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v23    # "$i$f$rotate-Rg1IO4c":I
    .end local v39    # "pivot$iv":J
    return-void
.end method
