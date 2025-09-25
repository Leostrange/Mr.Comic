.class final Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Vector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/vector/VectorComponent;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
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
    value = "SMAP\nVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1\n+ 2 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,651:1\n179#2:652\n262#2,11:653\n*S KotlinDebug\n*F\n+ 1 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1\n*L\n139#1:652\n139#1:653,11\n*E\n"
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
.field final synthetic this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/VectorComponent;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 137
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 17
    .param p1, "$this$null"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/VectorComponent;->getRoot()Landroidx/compose/ui/graphics/vector/GroupComponent;

    move-result-object v1

    .local v1, "$this$invoke_u24lambda_u241":Landroidx/compose/ui/graphics/vector/GroupComponent;
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorComponent$drawVectorBlock$1;->this$0:Landroidx/compose/ui/graphics/vector/VectorComponent;

    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-with-VectorComponent$drawVectorBlock$1$1":I
    invoke-static {v2}, Landroidx/compose/ui/graphics/vector/VectorComponent;->access$getRootScaleX$p(Landroidx/compose/ui/graphics/vector/VectorComponent;)F

    move-result v4

    .local v4, "scaleX$iv":F
    invoke-static {v2}, Landroidx/compose/ui/graphics/vector/VectorComponent;->access$getRootScaleY$p(Landroidx/compose/ui/graphics/vector/VectorComponent;)F

    move-result v2

    .local v2, "scaleY$iv":F
    sget-object v5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    .local v5, "pivot$iv":J
    move-object/from16 v7, p1

    .local v7, "$this$scale_u2dFgt4K4Q$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v8, 0x0

    .line 652
    .local v8, "$i$f$scale-Fgt4K4Q":I
    move-object v9, v7

    .local v9, "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v10, 0x0

    .line 653
    .local v10, "$i$f$withTransform":I
    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v11

    .local v11, "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    const/4 v12, 0x0

    .line 657
    .local v12, "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v13

    .line 658
    .local v13, "previousSize$iv$iv":J
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 659
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v15

    .local v15, "$this$scale_Fgt4K4Q_u24lambda_u242$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    const/16 v16, 0x0

    .line 652
    .local v16, "$i$a$-withTransform-DrawScopeKt$scale$1$iv":I
    invoke-interface {v15, v4, v2, v5, v6}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 659
    .end local v15    # "$this$scale_Fgt4K4Q_u24lambda_u242$iv":Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .end local v16    # "$i$a$-withTransform-DrawScopeKt$scale$1$iv":I
    nop

    .line 660
    move-object v15, v9

    .local v15, "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/16 v16, 0x0

    .line 140
    .local v16, "$i$a$-scale-Fgt4K4Q-VectorComponent$drawVectorBlock$1$1$1":I
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/vector/GroupComponent;->draw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 141
    nop

    .line 660
    .end local v15    # "$this$invoke_u24lambda_u241_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v16    # "$i$a$-scale-Fgt4K4Q-VectorComponent$drawVectorBlock$1$1$1":I
    nop

    .line 661
    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 662
    invoke-interface {v11, v13, v14}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 663
    nop

    .line 653
    .end local v11    # "$this$withTransform_u24lambda_u246$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .end local v12    # "$i$a$-with-DrawScopeKt$withTransform$1$iv$iv":I
    .end local v13    # "previousSize$iv$iv":J
    nop

    .line 663
    nop

    .line 652
    .end local v9    # "$this$withTransform$iv$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v10    # "$i$f$withTransform":I
    nop

    .line 142
    .end local v2    # "scaleY$iv":F
    .end local v4    # "scaleX$iv":F
    .end local v5    # "pivot$iv":J
    .end local v7    # "$this$scale_u2dFgt4K4Q$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v8    # "$i$f$scale-Fgt4K4Q":I
    nop

    .line 138
    .end local v1    # "$this$invoke_u24lambda_u241":Landroidx/compose/ui/graphics/vector/GroupComponent;
    .end local v3    # "$i$a$-with-VectorComponent$drawVectorBlock$1$1":I
    nop

    .line 143
    return-void
.end method
