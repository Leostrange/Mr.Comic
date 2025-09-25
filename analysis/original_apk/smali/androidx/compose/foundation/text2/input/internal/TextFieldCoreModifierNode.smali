.class public final Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "TextFieldCoreModifier.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldCoreModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,584:1\n1#2:585\n246#3:586\n*S KotlinDebug\n*F\n+ 1 TextFieldCoreModifier.kt\nandroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode\n*L\n479#1:586\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006BE\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020 H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0016JF\u0010/\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\"\u00100\u001a\u00020,2\u0008\u00101\u001a\u0004\u0018\u00010\u001e2\u0006\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020\'H\u0002J\u000c\u00104\u001a\u00020,*\u000205H\u0016J\u000c\u00106\u001a\u00020,*\u000207H\u0016J\u000c\u00108\u001a\u00020,*\u000209H\u0002J&\u0010:\u001a\u00020,*\u0002092\u0006\u0010;\u001a\u00020 2\u0006\u0010<\u001a\u00020=H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?J\u0014\u0010@\u001a\u00020,*\u0002092\u0006\u0010<\u001a\u00020=H\u0002J&\u0010A\u001a\u00020B*\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008H\u0010IJ&\u0010J\u001a\u00020B*\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010IJ&\u0010L\u001a\u00020B*\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010IR\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006N"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "isFocused",
        "",
        "textLayoutState",
        "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textFieldSelectionState",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;",
        "cursorBrush",
        "Landroidx/compose/ui/graphics/Brush;",
        "writeable",
        "scrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "(ZLandroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;)V",
        "changeObserverJob",
        "Lkotlinx/coroutines/Job;",
        "cursorAlpha",
        "Landroidx/compose/animation/core/Animatable;",
        "",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "previousCursorRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "previousSelection",
        "Landroidx/compose/ui/text/TextRange;",
        "showCursor",
        "getShowCursor",
        "()Z",
        "textFieldMagnifierNode",
        "Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;",
        "calculateOffsetToFollow",
        "",
        "currSelection",
        "calculateOffsetToFollow-5zc-tL8",
        "(J)I",
        "onGloballyPositioned",
        "",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "updateNode",
        "updateScrollState",
        "cursorRect",
        "containerSize",
        "textFieldSize",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "draw",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "drawCursor",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "drawSelection",
        "selection",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "drawSelection-Sb-Bc2M",
        "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V",
        "drawText",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "measureHorizontalScroll",
        "measureHorizontalScroll-3p2s80s",
        "measureVerticalScroll",
        "measureVerticalScroll-3p2s80s",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private changeObserverJob:Lkotlinx/coroutines/Job;

.field private final cursorAlpha:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field

.field private cursorBrush:Landroidx/compose/ui/graphics/Brush;

.field private isFocused:Z

.field private orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private previousCursorRect:Landroidx/compose/ui/geometry/Rect;

.field private previousSelection:Landroidx/compose/ui/text/TextRange;

.field private scrollState:Landroidx/compose/foundation/ScrollState;

.field private final textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

.field private textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

.field private textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

.field private textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

.field private writeable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->$stable:I

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 4
    .param p1, "isFocused"    # Z
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p4, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p5, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p6, "writeable"    # Z
    .param p7, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p8, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 132
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 124
    iput-boolean p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 125
    iput-object p2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 126
    iput-object p3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 127
    iput-object p4, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 128
    iput-object p5, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 129
    iput-boolean p6, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->writeable:Z

    .line 130
    iput-object p7, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 131
    iput-object p8, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 144
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorAlpha:Landroidx/compose/animation/core/Animatable;

    .line 167
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 169
    nop

    .line 171
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 172
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 173
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 174
    iget-boolean v3, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 170
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text2/input/internal/selection/AndroidTextFieldMagnifier_androidKt;->textFieldMagnifierNode(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Z)Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 169
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    .line 122
    return-void
.end method

.method public static final synthetic access$calculateOffsetToFollow-5zc-tL8(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;J)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;
    .param p1, "currSelection"    # J

    .line 121
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->calculateOffsetToFollow-5zc-tL8(J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getCursorAlpha$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/animation/core/Animatable;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 121
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorAlpha:Landroidx/compose/animation/core/Animatable;

    return-object v0
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/ScrollState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 121
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    return-object v0
.end method

.method public static final synthetic access$getTextFieldState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 121
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    return-object v0
.end method

.method public static final synthetic access$getTextLayoutState$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 121
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    return-object v0
.end method

.method public static final synthetic access$isFocused$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;

    .line 121
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    return v0
.end method

.method public static final synthetic access$setPreviousSelection$p(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/text/TextRange;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;
    .param p1, "<set-?>"    # Landroidx/compose/ui/text/TextRange;

    .line 121
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    return-void
.end method

.method public static final synthetic access$updateScrollState(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/geometry/Rect;II)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;
    .param p1, "cursorRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "containerSize"    # I
    .param p3, "textFieldSize"    # I

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->updateScrollState(Landroidx/compose/ui/geometry/Rect;II)V

    return-void
.end method

.method private final calculateOffsetToFollow-5zc-tL8(J)I
    .locals 6
    .param p1, "currSelection"    # J

    .line 364
    nop

    .line 365
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    goto :goto_2

    .line 366
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousSelection:Landroidx/compose/ui/text/TextRange;

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    goto :goto_2

    .line 367
    :cond_3
    const/4 v0, -0x1

    .line 364
    :goto_2
    return v0
.end method

.method private final drawCursor(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 18
    .param p1, "$this$drawCursor"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorAlpha:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 495
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorAlpha:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 496
    .local v1, "cursorAlphaValue":F
    cmpg-float v2, v1, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-void

    .line 498
    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    invoke-virtual {v2}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;->getCursorRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 501
    .local v2, "cursorRect":Landroidx/compose/ui/geometry/Rect;
    iget-object v5, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 502
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTopCenter-F1C5BW0()J

    move-result-wide v6

    .line 503
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottomCenter-F1C5BW0()J

    move-result-wide v8

    .line 505
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v10

    .line 500
    nop

    .line 501
    nop

    .line 502
    nop

    .line 503
    nop

    .line 505
    nop

    .line 500
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 504
    nop

    .line 500
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1b0

    const/16 v17, 0x0

    move-object/from16 v4, p1

    move v13, v1

    invoke-static/range {v4 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-1RTmtNc$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 507
    return-void

    .line 493
    .end local v1    # "cursorAlphaValue":F
    .end local v2    # "cursorRect":Landroidx/compose/ui/geometry/Rect;
    :cond_3
    :goto_1
    return-void
.end method

.method private final drawSelection-Sb-Bc2M(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V
    .locals 14
    .param p1, "$this$drawSelection_u2dSb_u2dBc2M"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p2, "selection"    # J
    .param p4, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 465
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 466
    .local v0, "start":I
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 467
    .local v1, "end":I
    if-eq v0, v1, :cond_0

    .line 468
    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v2, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 469
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    move-result-wide v5

    .line 468
    nop

    .line 470
    .local v5, "selectionBackgroundColor":J
    move-object/from16 v2, p4

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object v13

    .line 471
    .local v13, "selectionPath":Landroidx/compose/ui/graphics/Path;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3c

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, v13

    invoke-static/range {v3 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_0

    .line 467
    .end local v5    # "selectionBackgroundColor":J
    .end local v13    # "selectionPath":Landroidx/compose/ui/graphics/Path;
    :cond_0
    move-object/from16 v2, p4

    .line 473
    :goto_0
    return-void
.end method

.method private final drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 5
    .param p1, "$this$drawText"    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .param p2, "textLayoutResult"    # Landroidx/compose/ui/text/TextLayoutResult;

    .line 479
    move-object v0, p1

    .local v0, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v1, 0x0

    .line 586
    .local v1, "$i$f$drawIntoCanvas":I
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    .local v2, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v3, 0x0

    .line 480
    .local v3, "$i$a$-drawIntoCanvas-TextFieldCoreModifierNode$drawText$1":I
    sget-object v4, Landroidx/compose/ui/text/TextPainter;->INSTANCE:Landroidx/compose/ui/text/TextPainter;

    invoke-virtual {v4, v2, p2}, Landroidx/compose/ui/text/TextPainter;->paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 481
    nop

    .line 586
    .end local v2    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v3    # "$i$a$-drawIntoCanvas-TextFieldCoreModifierNode$drawText$1":I
    nop

    .line 482
    .end local v0    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v1    # "$i$f$drawIntoCanvas":I
    return-void
.end method

.method private final getShowCursor()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->writeable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierKt;->access$isSpecified(Landroidx/compose/ui/graphics/Brush;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final measureHorizontalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .param p1, "$this$measureHorizontalScroll_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "constraints"    # J

    .line 320
    move-object/from16 v0, p2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measurable;->maxIntrinsicWidth(I)I

    move-result v1

    .line 323
    .local v1, "maxIntrinsicWidth":I
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    move-wide/from16 v2, p3

    goto :goto_0

    .line 326
    :cond_0
    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    move-wide/from16 v3, p3

    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 323
    :goto_0
    nop

    .line 328
    .local v2, "childConstraints":J
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    .line 329
    .local v4, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 331
    .local v5, "width":I
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    new-instance v6, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureHorizontalScroll$1;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-direct {v6, v14, v15, v4, v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureHorizontalScroll$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;I)V

    move-object v11, v6

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move v8, v5

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v6

    return-object v6
.end method

.method private final measureVerticalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15
    .param p1, "$this$measureVerticalScroll_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "constraints"    # J

    .line 276
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-wide/from16 v0, p3

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v0

    .line 277
    .local v0, "childConstraints":J
    move-object/from16 v2, p2

    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 279
    .local v3, "placeable":Landroidx/compose/ui/layout/Placeable;
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 281
    .local v4, "height":I
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v7

    const/4 v9, 0x0

    new-instance v5, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;

    move-object v13, p0

    move-object/from16 v14, p1

    invoke-direct {v5, p0, v14, v3, v4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$measureVerticalScroll$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;I)V

    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v6, p1

    move v8, v4

    invoke-static/range {v6 .. v12}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    return-object v5
.end method

.method private final updateScrollState(Landroidx/compose/ui/geometry/Rect;II)V
    .locals 16
    .param p1, "cursorRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p2, "containerSize"    # I
    .param p3, "textFieldSize"    # I

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sub-int v3, p3, v2

    .line 388
    .local v3, "difference":I
    iget-object v4, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v4, v3}, Landroidx/compose/foundation/ScrollState;->setMaxValue$foundation_release(I)V

    .line 392
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 395
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    iget-object v5, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    if-eqz v4, :cond_3

    .line 396
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v4

    iget-object v7, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    cmpg-float v4, v4, v7

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_1
    if-nez v4, :cond_a

    .line 397
    :cond_3
    iget-object v4, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v4, v7, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    move v4, v5

    .line 398
    .local v4, "vertical":Z
    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v5

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    .line 399
    .local v5, "cursorStart":F
    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v6

    .line 401
    .local v6, "cursorEnd":F
    :goto_4
    iget-object v7, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v7}, Landroidx/compose/foundation/ScrollState;->getValue()I

    move-result v7

    .line 402
    .local v7, "startVisibleBound":I
    add-int v8, v7, v2

    .line 403
    .local v8, "endVisibleBound":I
    nop

    .line 415
    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_7

    int-to-float v9, v8

    sub-float v9, v6, v9

    goto :goto_5

    .line 427
    :cond_7
    int-to-float v9, v7

    cmpg-float v9, v5, v9

    if-gez v9, :cond_8

    sub-float v9, v6, v5

    int-to-float v10, v2

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 428
    int-to-float v9, v8

    sub-float v9, v6, v9

    goto :goto_5

    .line 442
    :cond_8
    int-to-float v9, v7

    cmpg-float v9, v5, v9

    if-gez v9, :cond_9

    sub-float v9, v6, v5

    int-to-float v10, v2

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_9

    .line 443
    int-to-float v9, v7

    sub-float v9, v5, v9

    goto :goto_5

    .line 446
    :cond_9
    const/4 v9, 0x0

    .line 403
    :goto_5
    nop

    .line 448
    .local v9, "offsetDifference":F
    iput-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->previousCursorRect:Landroidx/compose/ui/geometry/Rect;

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v13, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateScrollState$1;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v9, v14}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateScrollState$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;FLkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 456
    .end local v4    # "vertical":Z
    .end local v5    # "cursorStart":F
    .end local v6    # "cursorEnd":F
    .end local v7    # "startVisibleBound":I
    .end local v8    # "endVisibleBound":I
    .end local v9    # "offsetDifference":F
    :cond_a
    return-void

    .line 392
    :cond_b
    :goto_6
    return-void
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 2
    .param p1, "$this$applySemantics"    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 515
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    .line 585
    .local v0, "$this$applySemantics_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;
    const/4 v1, 0x0

    .line 515
    .local v1, "$i$a$-with-TextFieldCoreModifierNode$applySemantics$1":I
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 516
    .end local v0    # "$this$applySemantics_u24lambda_u242":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;
    .end local v1    # "$i$a$-with-TextFieldCoreModifierNode$applySemantics$1":I
    return-void
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 5
    .param p1, "$this$draw"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 256
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 257
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;->getText()Landroidx/compose/foundation/text2/input/TextFieldCharSequence;

    move-result-object v0

    .line 258
    .local v0, "value":Landroidx/compose/foundation/text2/input/TextFieldCharSequence;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 260
    .local v1, "textLayoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 262
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->drawCursor(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    goto :goto_0

    .line 264
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {v0}, Landroidx/compose/foundation/text2/input/TextFieldCharSequence;->getSelectionInChars-d9O1mEE()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->drawSelection-Sb-Bc2M(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/text/TextLayoutResult;)V

    .line 265
    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-direct {p0, v2, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->drawText(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 268
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    .line 585
    .local v2, "$this$draw_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;
    const/4 v3, 0x0

    .line 268
    .local v3, "$i$a$-with-TextFieldCoreModifierNode$draw$1":I
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 269
    .end local v2    # "$this$draw_u24lambda_u240":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;
    .end local v3    # "$i$a$-with-TextFieldCoreModifierNode$draw$1":I
    return-void
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2
    .param p1, "$this$measure_u2d3p2s80s"    # Landroidx/compose/ui/layout/MeasureScope;
    .param p2, "measurable"    # Landroidx/compose/ui/layout/Measurable;
    .param p3, "constraints"    # J

    .line 249
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->measureVerticalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->measureHorizontalScroll-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1, "coordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 510
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->setCoreNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 511
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 512
    return-void
.end method

.method public final updateNode(ZLandroidx/compose/foundation/text2/input/internal/TextLayoutState;Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/ui/graphics/Brush;ZLandroidx/compose/foundation/ScrollState;Landroidx/compose/foundation/gestures/Orientation;)V
    .locals 22
    .param p1, "isFocused"    # Z
    .param p2, "textLayoutState"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    .param p3, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p4, "textFieldSelectionState"    # Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    .param p5, "cursorBrush"    # Landroidx/compose/ui/graphics/Brush;
    .param p6, "writeable"    # Z
    .param p7, "scrollState"    # Landroidx/compose/foundation/ScrollState;
    .param p8, "orientation"    # Landroidx/compose/foundation/gestures/Orientation;

    .line 191
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v6

    .line 192
    .local v6, "previousShowCursor":Z
    iget-boolean v7, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 193
    .local v7, "wasFocused":Z
    iget-object v8, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 194
    .local v8, "previousTextFieldState":Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    iget-object v9, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 195
    .local v9, "previousTextLayoutState":Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
    iget-object v10, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 196
    .local v10, "previousTextFieldSelectionState":Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;
    iget-object v11, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 198
    .local v11, "previousScrollState":Landroidx/compose/foundation/ScrollState;
    iput-boolean v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->isFocused:Z

    .line 199
    iput-object v2, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textLayoutState:Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 200
    iput-object v3, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldState:Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;

    .line 201
    iput-object v4, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldSelectionState:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;

    .line 202
    move-object/from16 v12, p5

    iput-object v12, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->cursorBrush:Landroidx/compose/ui/graphics/Brush;

    .line 203
    move/from16 v13, p6

    iput-boolean v13, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->writeable:Z

    .line 204
    iput-object v5, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 205
    move-object/from16 v14, p8

    iput-object v14, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 207
    iget-object v15, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->textFieldMagnifierNode:Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 211
    nop

    .line 207
    invoke-virtual {v15, v3, v4, v2, v1}, Landroidx/compose/foundation/text2/input/internal/selection/TextFieldMagnifierNode;->update(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/selection/TextFieldSelectionState;Landroidx/compose/foundation/text2/input/internal/TextLayoutState;Z)V

    .line 214
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getShowCursor()Z

    move-result v15

    const/4 v1, 0x0

    if-nez v15, :cond_1

    .line 215
    iget-object v15, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    if-eqz v15, :cond_0

    const/4 v12, 0x1

    invoke-static {v15, v1, v12, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 216
    :cond_0
    iput-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v12, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$1;

    invoke-direct {v12, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v19, v12

    check-cast v19, Lkotlin/jvm/functions/Function2;

    const/16 v20, 0x3

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 218
    :cond_1
    if-eqz v7, :cond_2

    .line 219
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 220
    if-nez v6, :cond_3

    .line 224
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v12, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2;

    invoke-direct {v12, v3, v0, v1}, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode$updateNode$2;-><init>(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v18, v12

    check-cast v18, Lkotlin/jvm/functions/Function2;

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/text2/input/internal/TextFieldCoreModifierNode;->changeObserverJob:Lkotlinx/coroutines/Job;

    .line 238
    :cond_3
    :goto_0
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 241
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 242
    :cond_4
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 244
    :cond_5
    return-void
.end method
