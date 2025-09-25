.class final Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt;->outlineCutout-12SF9DM(Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutlinedTextField.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,984:1\n222#2:985\n262#2,11:986\n*S KotlinDebug\n*F\n+ 1 OutlinedTextField.kt\nandroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1\n*L\n965#1:985\n965#1:986,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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
.field final synthetic $labelSize:J

.field final synthetic $paddingValues:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(JLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1

    iput-wide p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    iput-object p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 948
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 24
    .param p1, "$this$drawWithContent"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 949
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    .line 950
    .local v2, "labelWidth":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    .line 951
    invoke-static {}, Landroidx/compose/material/OutlinedTextFieldKt;->access$getOutlinedTextFieldInnerPadding$p()F

    move-result v4

    invoke-interface {v1, v4}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v4

    .line 952
    .local v4, "innerPadding":F
    iget-object v5, v0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->toPx-0680j_4(F)F

    move-result v5

    sub-float/2addr v5, v4

    .line 953
    .local v5, "leftLtr":F
    add-float v6, v5, v2

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float v8, v7, v4

    add-float/2addr v6, v8

    .line 954
    .local v6, "rightLtr":F
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    sget-object v9, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v8

    aget v8, v9, v8

    .line 955
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v8

    sub-float/2addr v8, v6

    move v11, v8

    goto :goto_0

    .line 956
    :cond_0
    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v8

    move v11, v8

    .line 954
    :goto_0
    nop

    .line 958
    .local v11, "left":F
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    sget-object v10, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v8}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v8

    aget v8, v10, v8

    .line 959
    if-ne v8, v9, :cond_1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v8

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    sub-float/2addr v8, v3

    move v13, v8

    goto :goto_1

    .line 960
    :cond_1
    move v13, v6

    .line 958
    :goto_1
    nop

    .line 962
    .local v13, "right":F
    iget-wide v8, v0, Landroidx/compose/material/OutlinedTextFieldKt$outlineCutout$1;->$labelSize:J

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    .line 965
    .local v3, "labelHeight":F
    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v8, "$this$clipRect_u2drOu3jXo$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    neg-float v9, v3

    div-float/2addr v9, v7

    .local v9, "top$iv":F
    div-float v7, v3, v7

    .local v7, "bottom$iv":F
    sget-object v10, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    move-result v16

    .local v16, "clipOp$iv":I
    const/16 v17, 0x0

    .line 985
    .local v17, "$i$f$clipRect-rOu3jXo":I
    move-object/from16 v18, v8

    .local v18, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v19, 0x0

    .line 986
    .local v19, "$i$f$withTransform":I
    invoke-interface/range {v18 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v15

    .local v15, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/16 v20, 0x0

    .line 990
    .local v20, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v0

    .line 991
    .local v0, "previousSize$iv$iv":J
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 992
    invoke-interface {v15}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v21

    .local v21, "$this$clipRect_rOu3jXo_u24lambda_u244$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/16 v22, 0x0

    .line 985
    .local v22, "$i$a$-withTransform-DrawScopeKt$clipRect$1$iv":I
    move-object/from16 v10, v21

    move v12, v9

    move v14, v7

    move-object/from16 v23, v15

    .end local v15    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v23, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    move/from16 v15, v16

    invoke-interface/range {v10 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    .line 992
    .end local v21    # "$this$clipRect_rOu3jXo_u24lambda_u244$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v22    # "$i$a$-withTransform-DrawScopeKt$clipRect$1$iv":I
    nop

    .line 993
    move-object/from16 v10, v18

    .local v10, "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v12, 0x0

    .line 966
    .local v12, "$i$a$-clipRect-rOu3jXo-OutlinedTextFieldKt$outlineCutout$1$1":I
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 967
    nop

    .line 993
    .end local v10    # "$this$invoke_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v12    # "$i$a$-clipRect-rOu3jXo-OutlinedTextFieldKt$outlineCutout$1$1":I
    nop

    .line 994
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 995
    move-object/from16 v10, v23

    .end local v23    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .local v10, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    invoke-interface {v10, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 996
    nop

    .line 986
    .end local v0    # "previousSize$iv$iv":J
    .end local v10    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v20    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    nop

    .line 996
    nop

    .line 985
    .end local v18    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v19    # "$i$f$withTransform":I
    nop

    .end local v3    # "labelHeight":F
    .end local v4    # "innerPadding":F
    .end local v5    # "leftLtr":F
    .end local v6    # "rightLtr":F
    .end local v7    # "bottom$iv":F
    .end local v8    # "$this$clipRect_u2drOu3jXo$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v9    # "top$iv":F
    .end local v11    # "left":F
    .end local v13    # "right":F
    .end local v16    # "clipOp$iv":I
    .end local v17    # "$i$f$clipRect-rOu3jXo":I
    goto :goto_2

    .line 969
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 971
    :goto_2
    return-void
.end method
