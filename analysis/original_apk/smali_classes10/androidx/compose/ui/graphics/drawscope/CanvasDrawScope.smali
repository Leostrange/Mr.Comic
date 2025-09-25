.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanvasDrawScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasDrawScope.kt\nandroidx/compose/ui/graphics/drawscope/CanvasDrawScope\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,787:1\n1#2:788\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001:\u0002\u0092\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JJ\u0010\u0019\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&JH\u0010\u0019\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*Jl\u0010+\u001a\u00020\u00112\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105Jj\u0010+\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u00107JL\u00108\u001a\u0002092\u0006\u0010\u0003\u001a\u00020:2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0017\u0010?\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002090@\u00a2\u0006\u0002\u0008AH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008B\u0010CJf\u0010D\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LJf\u0010D\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010E\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010NJN\u0010O\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020J2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008R\u0010SJN\u0010O\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020J2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010UJF\u0010V\u001a\u0002092\u0006\u0010W\u001a\u00020X2\u0006\u0010I\u001a\u00020J2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Y\u0010ZJ^\u0010V\u001a\u0002092\u0006\u0010W\u001a\u00020X2\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020\\2\u0006\u0010`\u001a\u00020^2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0017\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008a\u0010bJf\u0010V\u001a\u0002092\u0006\u0010W\u001a\u00020X2\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020\\2\u0006\u0010`\u001a\u00020^2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008c\u0010dJ`\u0010e\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010f\u001a\u00020J2\u0006\u0010g\u001a\u00020J2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010iJ`\u0010e\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010f\u001a\u00020J2\u0006\u0010g\u001a\u00020J2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008j\u0010kJN\u0010l\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008m\u0010nJN\u0010l\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008o\u0010pJF\u0010q\u001a\u0002092\u0006\u0010r\u001a\u00020s2\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008t\u0010uJF\u0010q\u001a\u0002092\u0006\u0010r\u001a\u00020s2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008v\u0010wJf\u0010x\u001a\u0002092\u000c\u0010y\u001a\u0008\u0012\u0004\u0012\u00020J0z2\u0006\u0010{\u001a\u00020|2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008}\u0010~Jg\u0010x\u001a\u0002092\u000c\u0010y\u001a\u0008\u0012\u0004\u0012\u00020J0z2\u0006\u0010{\u001a\u00020|2\u0006\u0010\'\u001a\u00020(2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u007f\u0010\u0080\u0001JP\u0010\u0081\u0001\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0082\u0001\u0010nJP\u0010\u0081\u0001\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0083\u0001\u0010pJ[\u0010\u0084\u0001\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u00012\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J[\u0010\u0084\u0001\u001a\u0002092\u0006\u0010\'\u001a\u00020(2\u0006\u0010I\u001a\u00020J2\u0006\u0010=\u001a\u00020>2\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u00012\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J\t\u0010\u008b\u0001\u001a\u00020\u0011H\u0002J\t\u0010\u008c\u0001\u001a\u00020\u0011H\u0002J\u0012\u0010\u008d\u0001\u001a\u00020\u00112\u0007\u0010\u008e\u0001\u001a\u00020\u001dH\u0002J!\u0010\u008f\u0001\u001a\u00020(*\u00020(2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0006R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0093\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "()V",
        "density",
        "",
        "getDensity",
        "()F",
        "drawContext",
        "Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "getDrawContext",
        "()Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "drawParams",
        "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;",
        "getDrawParams$annotations",
        "getDrawParams",
        "()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;",
        "fillPaint",
        "Landroidx/compose/ui/graphics/Paint;",
        "fontScale",
        "getFontScale",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "strokePaint",
        "configurePaint",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "style",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "alpha",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "filterQuality",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "configurePaint-swdJneE",
        "(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "configurePaint-2qPWKa0",
        "(JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;",
        "configureStrokePaint",
        "strokeWidth",
        "miter",
        "cap",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "join",
        "Landroidx/compose/ui/graphics/StrokeJoin;",
        "pathEffect",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "configureStrokePaint-ho4zsrM",
        "(Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;",
        "configureStrokePaint-Q_0CZUI",
        "(JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;",
        "draw",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "draw-yzxVdVo",
        "(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/Canvas;JLkotlin/jvm/functions/Function1;)V",
        "drawArc",
        "startAngle",
        "sweepAngle",
        "useCenter",
        "",
        "topLeft",
        "Landroidx/compose/ui/geometry/Offset;",
        "drawArc-illE91I",
        "(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawArc-yD3GUKo",
        "(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle",
        "radius",
        "center",
        "drawCircle-V9BoPsw",
        "(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawCircle-VaOC9Bg",
        "(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawImage",
        "image",
        "Landroidx/compose/ui/graphics/ImageBitmap;",
        "drawImage-gbVJVH8",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "srcOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "srcSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "dstOffset",
        "dstSize",
        "drawImage-9jGpkUE",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawImage-AZ2fEMs",
        "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V",
        "drawLine",
        "start",
        "end",
        "drawLine-1RTmtNc",
        "(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawLine-NGM6Ib0",
        "(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval",
        "drawOval-AsUm42w",
        "(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawOval-n-J9OG0",
        "(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "drawPath-GBMwjPU",
        "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPath-LG529CI",
        "(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints",
        "points",
        "",
        "pointMode",
        "Landroidx/compose/ui/graphics/PointMode;",
        "drawPoints-Gsft0Ws",
        "(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawPoints-F8ZwMP8",
        "(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRect",
        "drawRect-AsUm42w",
        "drawRect-n-J9OG0",
        "drawRoundRect",
        "cornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "drawRoundRect-ZuiqVtQ",
        "(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V",
        "drawRoundRect-u-Aw5IA",
        "(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V",
        "obtainFillPaint",
        "obtainStrokePaint",
        "selectPaint",
        "drawStyle",
        "modulate",
        "modulate-5vOe2sY",
        "(JF)J",
        "DrawParams",
        "ui-graphics_release"
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
.field private final drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;

.field private final drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

.field private fillPaint:Landroidx/compose/ui/graphics/Paint;

.field private strokePaint:Landroidx/compose/ui/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v8, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/Canvas;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 63
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;-><init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawContext;

    iput-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 50
    return-void
.end method

.method private final configurePaint-2qPWKa0(JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 7
    .param p1, "color"    # J
    .param p3, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p4, "alpha"    # F
    .param p5, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p6, "blendMode"    # I
    .param p7, "filterQuality"    # I

    .line 638
    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$configurePaint_2qPWKa0_u24lambda_u248":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 641
    .local v2, "$i$a$-apply-CanvasDrawScope$configurePaint$2":I
    invoke-direct {p0, p1, p2, p4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->modulate-5vOe2sY(JF)J

    move-result-wide v3

    .line 642
    .local v3, "targetColor":J
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getColor-0d7_KjU()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 643
    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    .line 644
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v5

    invoke-static {v5, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, p5}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 645
    :cond_2
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getBlendMode-0nO6VwU()I

    move-result v5

    invoke-static {v5, p6}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, p6}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 646
    :cond_3
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getFilterQuality-f-v9h1I()I

    move-result v5

    invoke-static {v5, p7}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1, p7}, Landroidx/compose/ui/graphics/Paint;->setFilterQuality-vDHp3xo(I)V

    .line 647
    :cond_4
    nop

    .line 638
    .end local v1    # "$this$configurePaint_2qPWKa0_u24lambda_u248":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-apply-CanvasDrawScope$configurePaint$2":I
    .end local v3    # "targetColor":J
    nop

    .line 647
    return-object v0
.end method

.method static synthetic configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 9

    .line 631
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move v8, v0

    goto :goto_0

    .line 631
    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0(JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private final configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 7
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p3, "alpha"    # F
    .param p4, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p5, "blendMode"    # I
    .param p6, "filterQuality"    # I

    .line 614
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$configurePaint_swdJneE_u24lambda_u247":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 615
    .local v2, "$i$a$-apply-CanvasDrawScope$configurePaint$1":I
    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v1, p3}, Landroidx/compose/ui/graphics/Brush;->applyTo-Pq9zytI(JLandroidx/compose/ui/graphics/Paint;F)V

    goto :goto_1

    .line 618
    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    .line 619
    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getColor-0d7_KjU()J

    move-result-wide v3

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 620
    :cond_2
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, p3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    invoke-interface {v1, p3}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 622
    :cond_4
    :goto_1
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v3

    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1, p4}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 623
    :cond_5
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getBlendMode-0nO6VwU()I

    move-result v3

    invoke-static {v3, p5}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, p5}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 624
    :cond_6
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getFilterQuality-f-v9h1I()I

    move-result v3

    invoke-static {v3, p6}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1, p6}, Landroidx/compose/ui/graphics/Paint;->setFilterQuality-vDHp3xo(I)V

    .line 625
    :cond_7
    nop

    .line 614
    .end local v1    # "$this$configurePaint_swdJneE_u24lambda_u247":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-apply-CanvasDrawScope$configurePaint$1":I
    nop

    .line 625
    return-object v0
.end method

.method static synthetic configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 7

    .line 607
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 613
    sget-object p6, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result p6

    move v6, p6

    goto :goto_0

    .line 607
    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method private final configureStrokePaint-Q_0CZUI(JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 19
    .param p1, "color"    # J
    .param p3, "strokeWidth"    # F
    .param p4, "miter"    # F
    .param p5, "cap"    # I
    .param p6, "join"    # I
    .param p7, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p8, "alpha"    # F
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "blendMode"    # I
    .param p11, "filterQuality"    # I

    .line 661
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->obtainStrokePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v8

    move-object v9, v8

    .local v9, "$this$configureStrokePaint_Q_0CZUI_u24lambda_u249":Landroidx/compose/ui/graphics/Paint;
    const/4 v10, 0x0

    .line 664
    .local v10, "$i$a$-apply-CanvasDrawScope$configureStrokePaint$1":I
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move/from16 v14, p8

    move-object v15, v8

    invoke-direct {v11, v12, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->modulate-5vOe2sY(JF)J

    move-result-wide v7

    .line 665
    .local v7, "targetColor":J
    move/from16 v16, v10

    .end local v10    # "$i$a$-apply-CanvasDrawScope$configureStrokePaint$1":I
    .local v16, "$i$a$-apply-CanvasDrawScope$configureStrokePaint$1":I
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getColor-0d7_KjU()J

    move-result-wide v10

    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v9, v7, v8}, Landroidx/compose/ui/graphics/Paint;->setColor-8_81llA(J)V

    .line 666
    :cond_0
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroidx/compose/ui/graphics/Paint;->setShader(Landroid/graphics/Shader;)V

    .line 667
    :cond_1
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v9, v5}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 668
    :cond_2
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getBlendMode-0nO6VwU()I

    move-result v10

    invoke-static {v10, v6}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v9, v6}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 669
    :cond_3
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getStrokeWidth()F

    move-result v10

    cmpg-float v10, v10, v0

    const/4 v11, 0x1

    const/16 v17, 0x0

    if-nez v10, :cond_4

    move v10, v11

    goto :goto_0

    :cond_4
    move/from16 v10, v17

    :goto_0
    if-nez v10, :cond_5

    invoke-interface {v9, v0}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 670
    :cond_5
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getStrokeMiterLimit()F

    move-result v10

    cmpg-float v10, v10, v1

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v11, v17

    :goto_1
    if-nez v11, :cond_7

    invoke-interface {v9, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeMiterLimit(F)V

    .line 671
    :cond_7
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getStrokeCap-KaPHkGw()I

    move-result v10

    invoke-static {v10, v2}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v9, v2}, Landroidx/compose/ui/graphics/Paint;->setStrokeCap-BeK7IIE(I)V

    .line 672
    :cond_8
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getStrokeJoin-LxFBmk8()I

    move-result v10

    invoke-static {v10, v3}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-interface {v9, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeJoin-Ww9F2mQ(I)V

    .line 673
    :cond_9
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-interface {v9, v4}, Landroidx/compose/ui/graphics/Paint;->setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 674
    :cond_a
    invoke-interface {v9}, Landroidx/compose/ui/graphics/Paint;->getFilterQuality-f-v9h1I()I

    move-result v10

    move-wide/from16 v17, v7

    move/from16 v7, p11

    .end local v7    # "targetColor":J
    .local v17, "targetColor":J
    invoke-static {v10, v7}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-interface {v9, v7}, Landroidx/compose/ui/graphics/Paint;->setFilterQuality-vDHp3xo(I)V

    .line 675
    :cond_b
    nop

    .line 661
    .end local v9    # "$this$configureStrokePaint_Q_0CZUI_u24lambda_u249":Landroidx/compose/ui/graphics/Paint;
    .end local v16    # "$i$a$-apply-CanvasDrawScope$configureStrokePaint$1":I
    .end local v17    # "targetColor":J
    nop

    .line 675
    return-object v15
.end method

.method static synthetic configureStrokePaint-Q_0CZUI$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 13

    .line 649
    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 659
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move v12, v0

    goto :goto_0

    .line 649
    :cond_0
    move/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-Q_0CZUI(JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private final configureStrokePaint-ho4zsrM(Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;
    .locals 15
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "strokeWidth"    # F
    .param p3, "miter"    # F
    .param p4, "cap"    # I
    .param p5, "join"    # I
    .param p6, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p7, "alpha"    # F
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "blendMode"    # I
    .param p10, "filterQuality"    # I

    .line 688
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->obtainStrokePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v10

    move-object v11, v10

    .local v11, "$this$configureStrokePaint_ho4zsrM_u24lambda_u2410":Landroidx/compose/ui/graphics/Paint;
    const/4 v12, 0x0

    .line 689
    .local v12, "$i$a$-apply-CanvasDrawScope$configureStrokePaint$2":I
    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14, v11, v6}, Landroidx/compose/ui/graphics/Brush;->applyTo-Pq9zytI(JLandroidx/compose/ui/graphics/Paint;F)V

    goto :goto_1

    .line 691
    :cond_0
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getAlpha()F

    move-result v13

    cmpg-float v13, v13, v6

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    if-nez v13, :cond_2

    .line 692
    invoke-interface {v11, v6}, Landroidx/compose/ui/graphics/Paint;->setAlpha(F)V

    .line 694
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-interface {v11, v7}, Landroidx/compose/ui/graphics/Paint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 695
    :cond_3
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getBlendMode-0nO6VwU()I

    move-result v13

    invoke-static {v13, v8}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v11, v8}, Landroidx/compose/ui/graphics/Paint;->setBlendMode-s9anfk8(I)V

    .line 696
    :cond_4
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getStrokeWidth()F

    move-result v13

    cmpg-float v13, v13, v1

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_6

    invoke-interface {v11, v1}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 697
    :cond_6
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getStrokeMiterLimit()F

    move-result v13

    cmpg-float v13, v13, v2

    if-nez v13, :cond_7

    const/4 v13, 0x1

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_8

    invoke-interface {v11, v2}, Landroidx/compose/ui/graphics/Paint;->setStrokeMiterLimit(F)V

    .line 698
    :cond_8
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getStrokeCap-KaPHkGw()I

    move-result v13

    invoke-static {v13, v3}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-interface {v11, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeCap-BeK7IIE(I)V

    .line 699
    :cond_9
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getStrokeJoin-LxFBmk8()I

    move-result v13

    invoke-static {v13, v4}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-interface {v11, v4}, Landroidx/compose/ui/graphics/Paint;->setStrokeJoin-Ww9F2mQ(I)V

    .line 700
    :cond_a
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    move-result-object v13

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v11, v5}, Landroidx/compose/ui/graphics/Paint;->setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 701
    :cond_b
    invoke-interface {v11}, Landroidx/compose/ui/graphics/Paint;->getFilterQuality-f-v9h1I()I

    move-result v13

    invoke-static {v13, v9}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-interface {v11, v9}, Landroidx/compose/ui/graphics/Paint;->setFilterQuality-vDHp3xo(I)V

    .line 702
    :cond_c
    nop

    .line 688
    .end local v11    # "$this$configureStrokePaint_ho4zsrM_u24lambda_u2410":Landroidx/compose/ui/graphics/Paint;
    .end local v12    # "$i$a$-apply-CanvasDrawScope$configureStrokePaint$2":I
    nop

    .line 702
    return-object v10
.end method

.method static synthetic configureStrokePaint-ho4zsrM$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;
    .locals 12

    .line 677
    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    move v11, v0

    goto :goto_0

    .line 677
    :cond_0
    move/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-ho4zsrM(Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getDrawParams$annotations()V
    .locals 0

    return-void
.end method

.method private final modulate-5vOe2sY(JF)J
    .locals 9
    .param p1, "$this$modulate_u2d5vOe2sY"    # J
    .param p3, "alpha"    # F

    .line 708
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 709
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v0

    mul-float v3, v0, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_1

    .line 711
    :cond_1
    move-wide v0, p1

    .line 712
    :goto_1
    return-wide v0
.end method

.method private final obtainFillPaint()Landroidx/compose/ui/graphics/Paint;
    .locals 4

    .line 572
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .line 788
    .local v1, "$this$obtainFillPaint_u24lambda_u242":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 572
    .local v2, "$i$a$-apply-CanvasDrawScope$obtainFillPaint$1":I
    sget-object v3, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getFill-TiuSbCo()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .end local v2    # "$i$a$-apply-CanvasDrawScope$obtainFillPaint$1":I
    .local v1, "it":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 573
    .local v2, "$i$a$-also-CanvasDrawScope$obtainFillPaint$2":I
    iput-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->fillPaint:Landroidx/compose/ui/graphics/Paint;

    .line 574
    nop

    .line 572
    .end local v1    # "it":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-also-CanvasDrawScope$obtainFillPaint$2":I
    nop

    .line 574
    :cond_0
    return-object v0
.end method

.method private final obtainStrokePaint()Landroidx/compose/ui/graphics/Paint;
    .locals 4

    .line 581
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/Paint;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->Paint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .line 788
    .local v1, "$this$obtainStrokePaint_u24lambda_u244":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 581
    .local v2, "$i$a$-apply-CanvasDrawScope$obtainStrokePaint$1":I
    sget-object v3, Landroidx/compose/ui/graphics/PaintingStyle;->Companion:Landroidx/compose/ui/graphics/PaintingStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;->getStroke-TiuSbCo()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStyle-k9PVt8s(I)V

    .end local v2    # "$i$a$-apply-CanvasDrawScope$obtainStrokePaint$1":I
    .local v1, "it":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 582
    .local v2, "$i$a$-also-CanvasDrawScope$obtainStrokePaint$2":I
    iput-object v1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/Paint;

    .line 583
    nop

    .line 581
    .end local v1    # "it":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-also-CanvasDrawScope$obtainStrokePaint$2":I
    nop

    .line 583
    :cond_0
    return-object v0
.end method

.method private final selectPaint(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)Landroidx/compose/ui/graphics/Paint;
    .locals 7
    .param p1, "drawStyle"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    .line 590
    nop

    .line 591
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->obtainFillPaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    goto/16 :goto_2

    .line 592
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v0, :cond_8

    .line 593
    invoke-direct {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->obtainStrokePaint()Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 594
    move-object v1, v0

    .local v1, "$this$selectPaint_u24lambda_u246":Landroidx/compose/ui/graphics/Paint;
    const/4 v2, 0x0

    .line 595
    .local v2, "$i$a$-apply-CanvasDrawScope$selectPaint$1":I
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getStrokeWidth()F

    move-result v3

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v4

    cmpg-float v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-nez v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeWidth(F)V

    .line 596
    :cond_2
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getStrokeCap-KaPHkGw()I

    move-result v3

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getCap-KaPHkGw()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeCap-BeK7IIE(I)V

    .line 597
    :cond_3
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getStrokeMiterLimit()F

    move-result v3

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getMiter()F

    move-result v6

    cmpg-float v3, v3, v6

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getMiter()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeMiterLimit(F)V

    .line 598
    :cond_5
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getStrokeJoin-LxFBmk8()I

    move-result v3

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getJoin-LxFBmk8()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getJoin-LxFBmk8()I

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setStrokeJoin-Ww9F2mQ(I)V

    .line 599
    :cond_6
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Paint;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getPathEffect()Landroidx/compose/ui/graphics/PathEffect;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/graphics/Paint;->setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V

    .line 600
    :cond_7
    nop

    .line 594
    .end local v1    # "$this$selectPaint_u24lambda_u246":Landroidx/compose/ui/graphics/Paint;
    .end local v2    # "$i$a$-apply-CanvasDrawScope$selectPaint$1":I
    nop

    .line 601
    :goto_2
    return-object v0

    .line 594
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final draw-yzxVdVo(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/Canvas;JLkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p3, "canvas"    # Landroidx/compose/ui/graphics/Canvas;
    .param p4, "size"    # J
    .param p6, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/graphics/Canvas;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 542
    .local v0, "$i$f$draw-yzxVdVo":I
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    move-result-object v2

    .local v2, "prevDensity":Landroidx/compose/ui/unit/Density;
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    .local v3, "prevLayoutDirection":Landroidx/compose/ui/unit/LayoutDirection;
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    .local v4, "prevCanvas":Landroidx/compose/ui/graphics/Canvas;
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    move-result-wide v5

    .line 543
    .local v5, "prevSize":J
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    .local v1, "$this$draw_yzxVdVo_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/4 v7, 0x0

    .line 544
    .local v7, "$i$a$-apply-CanvasDrawScope$draw$1":I
    invoke-virtual {v1, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 545
    invoke-virtual {v1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 546
    invoke-virtual {v1, p3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 547
    invoke-virtual {v1, p4, p5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 548
    nop

    .line 543
    .end local v1    # "$this$draw_yzxVdVo_u24lambda_u240":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v7    # "$i$a$-apply-CanvasDrawScope$draw$1":I
    nop

    .line 549
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 550
    invoke-interface {p6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 552
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object v1

    .local v1, "$this$draw_yzxVdVo_u24lambda_u241":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    const/4 v7, 0x0

    .line 553
    .local v7, "$i$a$-apply-CanvasDrawScope$draw$2":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 554
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 555
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 556
    invoke-virtual {v1, v5, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 557
    nop

    .line 552
    .end local v1    # "$this$draw_yzxVdVo_u24lambda_u241":Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .end local v7    # "$i$a$-apply-CanvasDrawScope$draw$2":I
    nop

    .line 558
    return-void
.end method

.method public drawArc-illE91I(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 19
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "topLeft"    # J
    .param p7, "size"    # J
    .param p9, "alpha"    # F
    .param p10, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p11, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p12, "blendMode"    # I

    .line 395
    move-object/from16 v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 396
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    .line 397
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v12

    .line 398
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v13, v0, v1

    .line 399
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 400
    nop

    .line 401
    nop

    .line 402
    nop

    .line 403
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move/from16 v3, p9

    move-object/from16 v4, p11

    move/from16 v5, p12

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v18

    .line 395
    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-interface/range {v10 .. v18}, Landroidx/compose/ui/graphics/Canvas;->drawArc(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V

    .line 404
    return-void
.end method

.method public drawArc-yD3GUKo(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p1, "color"    # J
    .param p3, "startAngle"    # F
    .param p4, "sweepAngle"    # F
    .param p5, "useCenter"    # Z
    .param p6, "topLeft"    # J
    .param p8, "size"    # J
    .param p10, "alpha"    # F
    .param p11, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "blendMode"    # I

    .line 420
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 421
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    .line 422
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    .line 423
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 424
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v15, v0, v1

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 428
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p11

    move/from16 v4, p10

    move-object/from16 v5, p12

    move/from16 v6, p13

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v9

    .line 420
    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v9}, Landroidx/compose/ui/graphics/Canvas;->drawArc(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V

    .line 429
    return-void
.end method

.method public drawCircle-V9BoPsw(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "radius"    # F
    .param p3, "center"    # J
    .param p5, "alpha"    # F
    .param p6, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p7, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p8, "blendMode"    # I

    .line 320
    move-object v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 321
    nop

    .line 322
    nop

    .line 323
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 320
    move v1, p2

    move-wide v2, p3

    invoke-interface {v10, p3, p4, p2, v0}, Landroidx/compose/ui/graphics/Canvas;->drawCircle-9KIMszo(JFLandroidx/compose/ui/graphics/Paint;)V

    .line 324
    return-void
.end method

.method public drawCircle-VaOC9Bg(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .param p1, "color"    # J
    .param p3, "radius"    # F
    .param p4, "center"    # J
    .param p6, "alpha"    # F
    .param p7, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "blendMode"    # I

    .line 337
    move-object v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 338
    nop

    .line 339
    nop

    .line 340
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 337
    move v1, p3

    move-wide/from16 v2, p4

    invoke-interface {v11, v2, v3, p3, v0}, Landroidx/compose/ui/graphics/Canvas;->drawCircle-9KIMszo(JFLandroidx/compose/ui/graphics/Paint;)V

    .line 341
    return-void
.end method

.method public synthetic drawImage-9jGpkUE(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 21
    .param p1, "image"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p2, "srcOffset"    # J
    .param p4, "srcSize"    # J
    .param p6, "dstOffset"    # J
    .param p8, "dstSize"    # J
    .param p10, "alpha"    # F
    .param p11, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "blendMode"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Prefer usage of drawImage that consumes an optional FilterQuality parameter"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "drawImage(image, srcOffset, srcSize, dstOffset, dstSize, alpha, style, colorFilter, blendMode, FilterQuality.Low)"
            imports = {
                "androidx.compose.ui.graphics.drawscope",
                "androidx.compose.ui.graphics.FilterQuality"
            }
        .end subannotation
    .end annotation

    .line 233
    move-object/from16 v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 239
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p11

    move/from16 v3, p10

    move-object/from16 v4, p12

    move/from16 v5, p13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v20

    .line 233
    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-wide/from16 v16, p6

    move-wide/from16 v18, p8

    invoke-interface/range {v10 .. v20}, Landroidx/compose/ui/graphics/Canvas;->drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V

    .line 240
    return-void
.end method

.method public drawImage-AZ2fEMs(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 19
    .param p1, "image"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p2, "srcOffset"    # J
    .param p4, "srcSize"    # J
    .param p6, "dstOffset"    # J
    .param p8, "dstSize"    # J
    .param p10, "alpha"    # F
    .param p11, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p12, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p13, "blendMode"    # I
    .param p14, "filterQuality"    # I

    .line 256
    move-object/from16 v7, p0

    iget-object v0, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v8

    .line 257
    nop

    .line 258
    nop

    .line 259
    nop

    .line 260
    nop

    .line 261
    nop

    .line 262
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p11

    move/from16 v3, p10

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;II)Landroidx/compose/ui/graphics/Paint;

    move-result-object v18

    .line 256
    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    invoke-interface/range {v8 .. v18}, Landroidx/compose/ui/graphics/Canvas;->drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V

    .line 263
    return-void
.end method

.method public drawImage-gbVJVH8(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11
    .param p1, "image"    # Landroidx/compose/ui/graphics/ImageBitmap;
    .param p2, "topLeft"    # J
    .param p4, "alpha"    # F
    .param p5, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "blendMode"    # I

    .line 204
    move-object v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 205
    nop

    .line 206
    nop

    .line 207
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v2, p5

    move v3, p4

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 204
    move-object v1, p1

    move-wide v2, p2

    invoke-interface {v10, p1, p2, p3, v0}, Landroidx/compose/ui/graphics/Canvas;->drawImage-d-4ec7I(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V

    .line 208
    return-void
.end method

.method public drawLine-1RTmtNc(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "strokeWidth"    # F
    .param p7, "cap"    # I
    .param p8, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p9, "alpha"    # F
    .param p10, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p11, "blendMode"    # I

    .line 111
    move-object v13, p0

    iget-object v0, v13, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    const/high16 v3, 0x40800000    # 4.0f

    .line 118
    nop

    .line 119
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v5

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 114
    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v4, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-ho4zsrM$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 111
    move-object v1, v14

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 125
    return-void
.end method

.method public drawLine-NGM6Ib0(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p1, "color"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "strokeWidth"    # F
    .param p8, "cap"    # I
    .param p9, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p10, "alpha"    # F
    .param p11, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p12, "blendMode"    # I

    .line 140
    move-object/from16 v14, p0

    iget-object v0, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v15

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    const/high16 v4, 0x40800000    # 4.0f

    .line 147
    nop

    .line 148
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v6

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    nop

    .line 143
    const/4 v11, 0x0

    const/16 v12, 0x200

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p7

    move/from16 v5, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-static/range {v0 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-Q_0CZUI$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 140
    move-object v1, v15

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/Paint;)V

    .line 154
    return-void
.end method

.method public drawOval-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "topLeft"    # J
    .param p4, "size"    # J
    .param p6, "alpha"    # F
    .param p7, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "blendMode"    # I

    .line 354
    move-object v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 355
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    .line 356
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v12

    .line 357
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v13, v0, v1

    .line 358
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 359
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 354
    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawOval(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 360
    return-void
.end method

.method public drawOval-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p1, "color"    # J
    .param p3, "topLeft"    # J
    .param p5, "size"    # J
    .param p7, "alpha"    # F
    .param p8, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "blendMode"    # I

    .line 373
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 374
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    .line 375
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    .line 376
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 377
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v15, v0, v1

    .line 378
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p8

    move/from16 v4, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 373
    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawOval(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 379
    return-void
.end method

.method public drawPath-GBMwjPU(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 11
    .param p1, "path"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p3, "alpha"    # F
    .param p4, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p5, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p6, "blendMode"    # I

    .line 456
    move-object v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 457
    nop

    .line 458
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 456
    move-object v1, p1

    invoke-interface {v10, p1, v0}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 459
    return-void
.end method

.method public drawPath-LG529CI(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 12
    .param p1, "path"    # Landroidx/compose/ui/graphics/Path;
    .param p2, "color"    # J
    .param p4, "alpha"    # F
    .param p5, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p6, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p7, "blendMode"    # I

    .line 441
    move-object v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 442
    nop

    .line 443
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object/from16 v3, p5

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 441
    move-object v1, p1

    invoke-interface {v11, p1, v0}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 444
    return-void
.end method

.method public drawPoints-F8ZwMP8(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p1, "points"    # Ljava/util/List;
    .param p2, "pointMode"    # I
    .param p3, "color"    # J
    .param p5, "strokeWidth"    # F
    .param p6, "cap"    # I
    .param p7, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p8, "alpha"    # F
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "blendMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;IJFI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation

    .line 474
    move-object/from16 v14, p0

    iget-object v0, v14, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v15

    .line 475
    nop

    .line 476
    nop

    .line 477
    nop

    .line 478
    nop

    .line 479
    nop

    .line 480
    const/high16 v4, 0x40800000    # 4.0f

    .line 481
    nop

    .line 482
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v6

    .line 483
    nop

    .line 484
    nop

    .line 485
    nop

    .line 486
    nop

    .line 477
    const/4 v11, 0x0

    const/16 v12, 0x200

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v13}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-Q_0CZUI$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JFFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 474
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v15, v2, v1, v0}, Landroidx/compose/ui/graphics/Canvas;->drawPoints-O7TthRY(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V

    .line 488
    return-void
.end method

.method public drawPoints-Gsft0Ws(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1, "points"    # Ljava/util/List;
    .param p2, "pointMode"    # I
    .param p3, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p4, "strokeWidth"    # F
    .param p5, "cap"    # I
    .param p6, "pathEffect"    # Landroidx/compose/ui/graphics/PathEffect;
    .param p7, "alpha"    # F
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "blendMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;I",
            "Landroidx/compose/ui/graphics/Brush;",
            "FI",
            "Landroidx/compose/ui/graphics/PathEffect;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "I)V"
        }
    .end annotation

    .line 503
    move-object v13, p0

    iget-object v0, v13, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    .line 504
    nop

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    nop

    .line 509
    const/high16 v3, 0x40800000    # 4.0f

    .line 510
    nop

    .line 511
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v5

    .line 512
    nop

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 506
    const/4 v10, 0x0

    const/16 v11, 0x200

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v4, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configureStrokePaint-ho4zsrM$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;FFIILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v0

    .line 503
    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v14, v2, v1, v0}, Landroidx/compose/ui/graphics/Canvas;->drawPoints-O7TthRY(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V

    .line 517
    return-void
.end method

.method public drawRect-AsUm42w(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "topLeft"    # J
    .param p4, "size"    # J
    .param p6, "alpha"    # F
    .param p7, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p8, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p9, "blendMode"    # I

    .line 167
    move-object v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 168
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    .line 169
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v12

    .line 170
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v13, v0, v1

    .line 171
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 172
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 167
    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 173
    return-void
.end method

.method public drawRect-n-J9OG0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 16
    .param p1, "color"    # J
    .param p3, "topLeft"    # J
    .param p5, "size"    # J
    .param p7, "alpha"    # F
    .param p8, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p9, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p10, "blendMode"    # I

    .line 186
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 187
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    .line 188
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    .line 189
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 190
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v15, v0, v1

    .line 191
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p8

    move/from16 v4, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v6

    .line 186
    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 192
    return-void
.end method

.method public drawRoundRect-ZuiqVtQ(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 17
    .param p1, "brush"    # Landroidx/compose/ui/graphics/Brush;
    .param p2, "topLeft"    # J
    .param p4, "size"    # J
    .param p6, "cornerRadius"    # J
    .param p8, "alpha"    # F
    .param p9, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p10, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p11, "blendMode"    # I

    .line 277
    move-object/from16 v9, p0

    iget-object v0, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v10

    .line 278
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    .line 279
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v12

    .line 280
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v13, v0, v1

    .line 281
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 282
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v15

    .line 283
    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v16

    .line 284
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, p8

    move-object/from16 v4, p10

    move/from16 v5, p11

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-swdJneE$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v8

    .line 277
    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/Canvas;->drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 285
    return-void
.end method

.method public drawRoundRect-u-Aw5IA(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 18
    .param p1, "color"    # J
    .param p3, "topLeft"    # J
    .param p5, "size"    # J
    .param p7, "cornerRadius"    # J
    .param p9, "style"    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
    .param p10, "alpha"    # F
    .param p11, "colorFilter"    # Landroidx/compose/ui/graphics/ColorFilter;
    .param p12, "blendMode"    # I

    .line 299
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v11

    .line 300
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    .line 301
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v13

    .line 302
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    add-float v14, v0, v1

    .line 303
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v1

    add-float v15, v0, v1

    .line 304
    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v16

    .line 305
    invoke-static/range {p7 .. p8}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v17

    .line 306
    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p11

    move/from16 v6, p12

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->configurePaint-2qPWKa0$default(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/Paint;

    move-result-object v8

    .line 299
    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/Canvas;->drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    .line 307
    return-void
.end method

.method public getDensity()F
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    return v0
.end method

.method public getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/compose/ui/graphics/drawscope/DrawContext;

    return-object v0
.end method

.method public final getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    return-object v0
.end method

.method public getFontScale()F
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method
