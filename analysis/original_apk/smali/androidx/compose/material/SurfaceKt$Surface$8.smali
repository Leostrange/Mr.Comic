.class final Landroidx/compose/material/SurfaceKt$Surface$8;
.super Lkotlin/jvm/internal/Lambda;
.source "Surface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $color:J

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $elevation:F

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;III)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$selected:Z

    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$onClick:Lkotlin/jvm/functions/Function0;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$modifier:Landroidx/compose/ui/Modifier;

    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$enabled:Z

    move-object/from16 v5, p5

    iput-object v5, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$color:J

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$contentColor:J

    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$border:Landroidx/compose/foundation/BorderStroke;

    move/from16 v11, p11

    iput v11, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$elevation:F

    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$content:Lkotlin/jvm/functions/Function2;

    move/from16 v14, p14

    iput v14, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$changed:I

    move/from16 v15, p15

    iput v15, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$changed1:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$default:I

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/SurfaceKt$Surface$8;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    iget-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$selected:Z

    iget-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$color:J

    iget-wide v8, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$contentColor:J

    iget-object v10, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v11, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$elevation:F

    iget-object v12, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v13, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$content:Lkotlin/jvm/functions/Function2;

    iget v15, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$changed:I

    or-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move/from16 v18, v1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$8;->$$default:I

    move/from16 v17, v1

    move/from16 v1, v18

    invoke-static/range {v1 .. v17}, Landroidx/compose/material/SurfaceKt;->Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
