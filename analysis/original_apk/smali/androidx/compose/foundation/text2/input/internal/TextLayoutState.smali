.class public final Landroidx/compose/foundation/text2/input/internal/TextLayoutState;
.super Ljava/lang/Object;
.source "TextLayoutState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayoutState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayoutState.kt\nandroidx/compose/foundation/text2/input/internal/TextLayoutState\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,233:1\n154#2:234\n81#3:235\n81#3:236\n107#3,2:237\n81#3:239\n107#3,2:240\n81#3:242\n107#3,2:243\n81#3:245\n107#3,2:246\n*S KotlinDebug\n*F\n+ 1 TextLayoutState.kt\nandroidx/compose/foundation/text2/input/internal/TextLayoutState\n*L\n79#1:234\n45#1:235\n72#1:236\n72#1:237,2\n73#1:239\n73#1:240,2\n74#1:242\n74#1:243,2\n79#1:245\n79#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u00101\u001a\u000202\u00f8\u0001\u0000\u00a2\u0006\u0004\u00083\u00104J\u0018\u00105\u001a\u0002022\u0006\u00106\u001a\u000200\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108J0\u00109\u001a\u00020\u00132\u0006\u0010:\u001a\u00020!2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008A\u0010BJ&\u0010C\u001a\u00020#2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u0002022\u0006\u0010I\u001a\u000202J\u0016\u0010J\u001a\u000200*\u000200H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LR/\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR/\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u000b\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R1\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00188F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000b\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR;\u0010\u001f\u001a#\u0012\u0004\u0012\u00020!\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\"\u0012\u0004\u0012\u00020#\u0018\u00010 \u00a2\u0006\u0002\u0008$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R/\u0010)\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u000b\u001a\u0004\u0008*\u0010\u0007\"\u0004\u0008+\u0010\t\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/foundation/text2/input/internal/TextLayoutState;",
        "",
        "()V",
        "<set-?>",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "coreNodeCoordinates",
        "getCoreNodeCoordinates",
        "()Landroidx/compose/ui/layout/LayoutCoordinates;",
        "setCoreNodeCoordinates",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)V",
        "coreNodeCoordinates$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "decoratorNodeCoordinates",
        "getDecoratorNodeCoordinates",
        "setDecoratorNodeCoordinates",
        "decoratorNodeCoordinates$delegate",
        "layoutCache",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;",
        "layoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "getLayoutResult",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "layoutResult$delegate",
        "Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;",
        "Landroidx/compose/ui/unit/Dp;",
        "minHeightForSingleLineField",
        "getMinHeightForSingleLineField-D9Ej5fM",
        "()F",
        "setMinHeightForSingleLineField-0680j_4",
        "(F)V",
        "minHeightForSingleLineField$delegate",
        "onTextLayout",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/Density;",
        "Lkotlin/Function0;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getOnTextLayout",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnTextLayout",
        "(Lkotlin/jvm/functions/Function2;)V",
        "textLayoutNodeCoordinates",
        "getTextLayoutNodeCoordinates",
        "setTextLayoutNodeCoordinates",
        "textLayoutNodeCoordinates$delegate",
        "getOffsetForPosition",
        "",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "coerceInVisibleBounds",
        "",
        "getOffsetForPosition-3MmeM6k",
        "(JZ)I",
        "isPositionOnText",
        "offset",
        "isPositionOnText-k-4lQ0M",
        "(J)Z",
        "layoutWithNewMeasureInputs",
        "density",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "layoutWithNewMeasureInputs--hBUhpc",
        "(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Landroidx/compose/ui/text/TextLayoutResult;",
        "updateNonMeasureInputs",
        "textFieldState",
        "Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;",
        "textStyle",
        "Landroidx/compose/ui/text/TextStyle;",
        "singleLine",
        "softWrap",
        "coercedInVisibleBoundsOfInputText",
        "coercedInVisibleBoundsOfInputText-MK-Hz9U",
        "(J)J",
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
.field private final coreNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

.field private final decoratorNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

.field private layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

.field private final layoutResult$delegate:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

.field private final minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

.field private onTextLayout:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final textLayoutNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    invoke-direct {v0}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    .line 45
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutResult$delegate:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    .line 72
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->textLayoutNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 73
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->coreNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 74
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->decoratorNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .line 79
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 234
    .local v2, "$i$f$getDp":I
    int-to-float v3, v0

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .end local v0    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    .line 79
    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    .line 40
    return-void
.end method

.method public static final synthetic access$getLayoutCache$p(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/text2/input/internal/TextLayoutState;

    .line 39
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    return-object v0
.end method

.method private final coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J
    .locals 6
    .param p1, "$this$coercedInVisibleBoundsOfInputText_u2dMK_u2dHz9U"    # J

    .line 181
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "textLayoutNodeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$a$-let-TextLayoutState$coercedInVisibleBoundsOfInputText$visibleTextLayoutNodeRect$1":I
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v0, v4, v5, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    goto :goto_0

    .line 185
    :cond_0
    sget-object v2, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 182
    :cond_1
    :goto_0
    nop

    .line 181
    .end local v0    # "textLayoutNodeCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v1    # "$i$a$-let-TextLayoutState$coercedInVisibleBoundsOfInputText$visibleTextLayoutNodeRect$1":I
    if-nez v3, :cond_3

    .line 187
    :cond_2
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 181
    :cond_3
    nop

    .line 180
    move-object v0, v3

    .line 188
    .local v0, "visibleTextLayoutNodeRect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutStateKt;->coerceIn-3MmeM6k(JLandroidx/compose/ui/geometry/Rect;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static synthetic getOffsetForPosition-3MmeM6k$default(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;JZILjava/lang/Object;)I
    .locals 0

    .line 150
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getOffsetForPosition-3MmeM6k(JZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCoreNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3

    .line 73
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->coreNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 73
    return-object v0
.end method

.method public final getDecoratorNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->decoratorNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 242
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 74
    return-object v0
.end method

.method public final getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 3

    .line 45
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutResult$delegate:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 235
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    .line 45
    return-object v0
.end method

.method public final getMinHeightForSingleLineField-D9Ej5fM()F
    .locals 3

    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 245
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    .line 79
    return v0
.end method

.method public final getOffsetForPosition-3MmeM6k(JZ)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "coerceInVisibleBounds"    # Z

    .line 151
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 152
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    if-eqz p3, :cond_1

    .line 153
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J

    move-result-wide v1

    goto :goto_0

    .line 155
    :cond_1
    move-wide v1, p1

    .line 152
    :goto_0
    nop

    .line 157
    .local v1, "coercedPosition":J
    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutStateKt;->fromDecorationToTextLayout-Uv8p0NA(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;J)J

    move-result-wide v3

    .line 158
    .local v3, "relativePosition":J
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result v5

    return v5
.end method

.method public final getOnTextLayout()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->onTextLayout:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getTextLayoutNodeCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 3

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->textLayoutNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 236
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 72
    return-object v0
.end method

.method public final isPositionOnText-k-4lQ0M(J)Z
    .locals 7
    .param p1, "offset"    # J

    .line 167
    invoke-virtual {p0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->getLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->coercedInVisibleBoundsOfInputText-MK-Hz9U(J)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroidx/compose/foundation/text2/input/internal/TextLayoutStateKt;->fromDecorationToTextLayout-Uv8p0NA(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;J)J

    move-result-wide v2

    .line 169
    .local v2, "relativeOffset":J
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForVerticalPosition(F)I

    move-result v4

    .line 170
    .local v4, "line":I
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 171
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v5

    invoke-virtual {v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 170
    :goto_0
    return v1
.end method

.method public final layoutWithNewMeasureInputs--hBUhpc(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 6
    .param p1, "density"    # Landroidx/compose/ui/unit/Density;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p3, "fontFamilyResolver"    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .param p4, "constraints"    # J

    .line 117
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 117
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->layoutWithNewMeasureInputs--hBUhpc(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object v0

    .line 124
    .local v0, "layoutResult":Landroidx/compose/ui/text/TextLayoutResult;
    iget-object v1, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->onTextLayout:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_0

    .local v1, "onTextLayout":Lkotlin/jvm/functions/Function2;
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$a$-let-TextLayoutState$layoutWithNewMeasureInputs$1":I
    new-instance v3, Landroidx/compose/foundation/text2/input/internal/TextLayoutState$layoutWithNewMeasureInputs$1$textLayoutProvider$1;

    invoke-direct {v3, p0}, Landroidx/compose/foundation/text2/input/internal/TextLayoutState$layoutWithNewMeasureInputs$1$textLayoutProvider$1;-><init>(Landroidx/compose/foundation/text2/input/internal/TextLayoutState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 126
    .local v3, "textLayoutProvider":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .line 124
    .end local v1    # "onTextLayout":Lkotlin/jvm/functions/Function2;
    .end local v2    # "$i$a$-let-TextLayoutState$layoutWithNewMeasureInputs$1":I
    .end local v3    # "textLayoutProvider":Lkotlin/jvm/functions/Function0;
    nop

    .line 129
    :cond_0
    return-object v0
.end method

.method public final setCoreNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 73
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->coreNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 241
    nop

    .line 73
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setDecoratorNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 74
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->decoratorNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 243
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 244
    nop

    .line 74
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setMinHeightForSingleLineField-0680j_4(F)V
    .locals 4
    .param p1, "<set-?>"    # F

    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->minHeightForSingleLineField$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 247
    nop

    .line 79
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public final setOnTextLayout(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->onTextLayout:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setTextLayoutNodeCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->textLayoutNodeCoordinates$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 237
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 238
    nop

    .line 72
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final updateNonMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextStyle;ZZ)V
    .locals 1
    .param p1, "textFieldState"    # Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;
    .param p2, "textStyle"    # Landroidx/compose/ui/text/TextStyle;
    .param p3, "singleLine"    # Z
    .param p4, "softWrap"    # Z

    .line 95
    iget-object v0, p0, Landroidx/compose/foundation/text2/input/internal/TextLayoutState;->layoutCache:Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 95
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text2/input/internal/TextFieldLayoutStateCache;->updateNonMeasureInputs(Landroidx/compose/foundation/text2/input/internal/TransformedTextFieldState;Landroidx/compose/ui/text/TextStyle;ZZ)V

    .line 101
    return-void
.end method
