.class final Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Checkbox.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/CheckboxKt;->CheckboxImpl(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material/CheckboxColors;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $borderColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $boxColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkCache:Landroidx/compose/material/CheckDrawingCache;

.field final synthetic $checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $checkDrawFraction$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material/CheckDrawingCache;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/CheckDrawingCache;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material/CheckDrawingCache;

    iput-object p2, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$boxColor$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$borderColor$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkColor$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction$delegate:Landroidx/compose/runtime/State;

    iput-object p6, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 301
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 9
    .param p1, "$this$Canvas"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 302
    invoke-static {}, Landroidx/compose/material/CheckboxKt;->access$getStrokeWidth$p()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 303
    .local v0, "strokeWidthPx":F
    nop

    .line 304
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$boxColor$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->access$CheckboxImpl$lambda$9(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    .line 305
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$borderColor$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->access$CheckboxImpl$lambda$10(Landroidx/compose/runtime/State;)J

    move-result-wide v5

    .line 306
    invoke-static {}, Landroidx/compose/material/CheckboxKt;->access$getRadiusSize$p()F

    move-result v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->toPx-0680j_4(F)F

    move-result v7

    .line 307
    nop

    .line 303
    move-object v2, p1

    move v8, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/material/CheckboxKt;->access$drawBox-1wkBAMs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFF)V

    .line 309
    nop

    .line 310
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkColor$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->access$CheckboxImpl$lambda$8(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    .line 311
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkDrawFraction$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->access$CheckboxImpl$lambda$4(Landroidx/compose/runtime/State;)F

    move-result v5

    .line 312
    iget-object v1, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCenterGravitationShiftFraction$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Landroidx/compose/material/CheckboxKt;->access$CheckboxImpl$lambda$6(Landroidx/compose/runtime/State;)F

    move-result v6

    .line 313
    nop

    .line 314
    iget-object v8, p0, Landroidx/compose/material/CheckboxKt$CheckboxImpl$1$1;->$checkCache:Landroidx/compose/material/CheckDrawingCache;

    .line 309
    move v7, v0

    invoke-static/range {v2 .. v8}, Landroidx/compose/material/CheckboxKt;->access$drawCheck-3IgeMak(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFFLandroidx/compose/material/CheckDrawingCache;)V

    .line 316
    return-void
.end method
