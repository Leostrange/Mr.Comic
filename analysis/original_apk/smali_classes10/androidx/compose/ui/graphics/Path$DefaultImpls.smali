.class public final Landroidx/compose/ui/graphics/Path$DefaultImpls;
.super Ljava/lang/Object;
.source "Path.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
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


# direct methods
.method public static synthetic addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V
    .locals 0

    .line 205
    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/graphics/Path;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V

    return-void
.end method

.method public static arcToRad(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;FFZ)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/graphics/Path;
    .param p1, "rect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "startAngleRadians"    # F
    .param p3, "sweepAngleRadians"    # F
    .param p4, "forceMoveTo"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/Path;->access$arcToRad$jd(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;FFZ)V

    .line 130
    return-void
.end method

.method public static rewind(Landroidx/compose/ui/graphics/Path;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/graphics/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-static {p0}, Landroidx/compose/ui/graphics/Path;->access$rewind$jd(Landroidx/compose/ui/graphics/Path;)V

    .line 228
    return-void
.end method

.method public static transform-58bKbWc(Landroidx/compose/ui/graphics/Path;[F)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/ui/graphics/Path;
    .param p1, "matrix"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Path;->access$transform-58bKbWc$jd(Landroidx/compose/ui/graphics/Path;[F)V

    .line 240
    return-void
.end method
