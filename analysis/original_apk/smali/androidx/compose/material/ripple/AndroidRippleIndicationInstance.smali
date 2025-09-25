.class public final Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;
.source "Ripple.android.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRipple.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ripple.android.kt\nandroidx/compose/material/ripple/AndroidRippleIndicationInstance\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,263:1\n81#2:264\n107#2,2:265\n81#2:267\n107#2,2:268\n137#3:270\n246#4:271\n*S KotlinDebug\n*F\n+ 1 Ripple.android.kt\nandroidx/compose/material/ripple/AndroidRippleIndicationInstance\n*L\n127#1:264\n127#1:265,2\n135#1:267\n135#1:268,2\n160#1:270\n174#1:271\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0018\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020\u0019H\u0002J\u0008\u0010/\u001a\u00020\u001cH\u0002J\u0008\u00100\u001a\u00020\u0019H\u0016J\u0008\u00101\u001a\u00020\u0019H\u0016J\u0008\u00102\u001a\u00020\u0019H\u0016J\u0010\u00103\u001a\u00020\u00192\u0006\u0010*\u001a\u00020+H\u0016J\u0006\u00104\u001a\u00020\u0019J\u000c\u00105\u001a\u00020\u0019*\u000206H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00048B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R/\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u001d8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0016\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\u00020\'X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010(R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00067"
    }
    d2 = {
        "Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;",
        "Landroidx/compose/material/ripple/RippleIndicationInstance;",
        "Landroidx/compose/runtime/RememberObserver;",
        "bounded",
        "",
        "radius",
        "Landroidx/compose/ui/unit/Dp;",
        "color",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/ui/graphics/Color;",
        "rippleAlpha",
        "Landroidx/compose/material/ripple/RippleAlpha;",
        "view",
        "Landroid/view/ViewGroup;",
        "(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/view/ViewGroup;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "<set-?>",
        "invalidateTick",
        "getInvalidateTick",
        "()Z",
        "setInvalidateTick",
        "(Z)V",
        "invalidateTick$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "onInvalidateRipple",
        "Lkotlin/Function0;",
        "",
        "F",
        "rippleContainer",
        "Landroidx/compose/material/ripple/RippleContainer;",
        "Landroidx/compose/material/ripple/RippleHostView;",
        "rippleHostView",
        "getRippleHostView",
        "()Landroidx/compose/material/ripple/RippleHostView;",
        "setRippleHostView",
        "(Landroidx/compose/material/ripple/RippleHostView;)V",
        "rippleHostView$delegate",
        "rippleRadius",
        "",
        "rippleSize",
        "Landroidx/compose/ui/geometry/Size;",
        "J",
        "addRipple",
        "interaction",
        "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispose",
        "getOrCreateRippleContainer",
        "onAbandoned",
        "onForgotten",
        "onRemembered",
        "removeRipple",
        "resetHostView",
        "drawIndication",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "material-ripple_release"
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
.field private final bounded:Z

.field private final color:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

.field private final onInvalidateRipple:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final radius:F

.field private final rippleAlpha:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;"
        }
    .end annotation
.end field

.field private rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

.field private final rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

.field private rippleRadius:I

.field private rippleSize:J

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->$stable:I

    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "bounded"    # Z
    .param p2, "radius"    # F
    .param p3, "color"    # Landroidx/compose/runtime/State;
    .param p4, "rippleAlpha"    # Landroidx/compose/runtime/State;
    .param p5, "view"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 110
    iput-boolean p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 111
    iput p2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .line 112
    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 113
    iput-object p4, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 114
    iput-object p5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    .line 135
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 144
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 151
    new-instance v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;

    invoke-direct {v0, p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 109
    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/view/ViewGroup;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic access$getInvalidateTick(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    .line 109
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getInvalidateTick()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setInvalidateTick(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
    .param p1, "<set-?>"    # Z

    .line 109
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setInvalidateTick(Z)V

    return-void
.end method

.method private final dispose()V
    .locals 2

    .line 228
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    .local v0, "$this$dispose_u24lambda_u244":Landroidx/compose/material/ripple/RippleContainer;
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-run-AndroidRippleIndicationInstance$dispose$1":I
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->disposeRippleIfNeeded(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    .line 230
    nop

    .line 228
    .end local v0    # "$this$dispose_u24lambda_u244":Landroidx/compose/material/ripple/RippleContainer;
    .end local v1    # "$i$a$-run-AndroidRippleIndicationInstance$dispose$1":I
    nop

    .line 231
    :cond_0
    return-void
.end method

.method private final getInvalidateTick()Z
    .locals 3

    .line 135
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 267
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 135
    return v0
.end method

.method private final getOrCreateRippleContainer()Landroidx/compose/material/ripple/RippleContainer;
    .locals 5

    .line 242
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    iget-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 246
    iget-object v2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 247
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v3, :cond_1

    .line 248
    move-object v1, v2

    check-cast v1, Landroidx/compose/material/ripple/RippleContainer;

    iput-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 249
    goto :goto_1

    .line 245
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "index":I
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-nez v0, :cond_3

    .line 255
    new-instance v0, Landroidx/compose/material/ripple/RippleContainer;

    iget-object v1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleContainer;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$getOrCreateRippleContainer_u24lambda_u245":Landroidx/compose/material/ripple/RippleContainer;
    const/4 v2, 0x0

    .line 256
    .local v2, "$i$a$-apply-AndroidRippleIndicationInstance$getOrCreateRippleContainer$1":I
    iget-object v3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    nop

    .line 255
    .end local v1    # "$this$getOrCreateRippleContainer_u24lambda_u245":Landroidx/compose/material/ripple/RippleContainer;
    .end local v2    # "$i$a$-apply-AndroidRippleIndicationInstance$getOrCreateRippleContainer$1":I
    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 260
    :cond_3
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;
    .locals 3

    .line 127
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 264
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 127
    return-object v0
.end method

.method private final setInvalidateTick(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 135
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 268
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 269
    nop

    .line 135
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/material/ripple/RippleHostView;

    .line 127
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 265
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 266
    nop

    .line 127
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method


# virtual methods
.method public addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 15
    .param p1, "interaction"    # Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .param p2, "scope"    # Lkotlinx/coroutines/CoroutineScope;

    .line 198
    move-object v0, p0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getOrCreateRippleContainer()Landroidx/compose/material/ripple/RippleContainer;

    move-result-object v1

    .local v1, "$this$addRipple_u24lambda_u243":Landroidx/compose/material/ripple/RippleContainer;
    const/4 v2, 0x0

    .line 199
    .local v2, "$i$a$-with-AndroidRippleIndicationInstance$addRipple$1":I
    invoke-virtual {v1, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v13

    move-object v3, v13

    .local v3, "$this$addRipple_u24lambda_u243_u24lambda_u242":Landroidx/compose/material/ripple/RippleHostView;
    const/4 v14, 0x0

    .line 200
    .local v14, "$i$a$-apply-AndroidRippleIndicationInstance$addRipple$1$1":I
    nop

    .line 201
    nop

    .line 202
    iget-boolean v5, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 203
    iget-wide v6, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 204
    iget v8, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 205
    iget-object v4, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v9

    .line 206
    iget-object v4, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {v4}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    move-result v11

    .line 207
    iget-object v12, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 200
    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v12}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 209
    nop

    .line 199
    .end local v3    # "$this$addRipple_u24lambda_u243_u24lambda_u242":Landroidx/compose/material/ripple/RippleHostView;
    .end local v14    # "$i$a$-apply-AndroidRippleIndicationInstance$addRipple$1$1":I
    nop

    .line 198
    .end local v1    # "$this$addRipple_u24lambda_u243":Landroidx/compose/material/ripple/RippleContainer;
    .end local v2    # "$i$a$-with-AndroidRippleIndicationInstance$addRipple$1":I
    invoke-direct {p0, v13}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 211
    return-void
.end method

.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 17
    .param p1, "$this$drawIndication"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 160
    iget v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .local v2, "$this$isUnspecified$iv":F
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$f$isUnspecified-0680j_4":I
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    .line 160
    .end local v2    # "$this$isUnspecified$iv":F
    .end local v3    # "$i$f$isUnspecified-0680j_4":I
    if-eqz v4, :cond_0

    .line 164
    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/unit/Density;

    iget-boolean v3, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleEndRadius-cSwnlzA(Landroidx/compose/ui/unit/Density;ZJ)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    goto :goto_0

    .line 166
    :cond_0
    iget v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 160
    :goto_0
    iput v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 169
    iget-object v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v10

    .line 170
    .local v10, "color":J
    iget-object v2, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {v2}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    move-result v2

    .line 172
    .local v2, "alpha":F
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 173
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget v4, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    invoke-virtual {v0, v3, v4, v10, v11}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->drawStateLayer-H2RKhps(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V

    .line 174
    move-object v12, v1

    check-cast v12, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .local v12, "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    const/4 v13, 0x0

    .line 271
    .local v13, "$i$f$drawIntoCanvas":I
    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v14

    .local v14, "canvas":Landroidx/compose/ui/graphics/Canvas;
    const/4 v15, 0x0

    .line 176
    .local v15, "$i$a$-drawIntoCanvas-AndroidRippleIndicationInstance$drawIndication$1":I
    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getInvalidateTick()Z

    .line 178
    invoke-direct/range {p0 .. p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v9, v3

    .local v9, "$this$drawIndication_u24lambda_u241_u24lambda_u240":Landroidx/compose/material/ripple/RippleHostView;
    const/16 v16, 0x0

    .line 185
    .local v16, "$i$a$-run-AndroidRippleIndicationInstance$drawIndication$1$1":I
    nop

    .line 186
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    .line 187
    iget v6, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 188
    nop

    .line 189
    nop

    .line 185
    move-wide v7, v10

    move-object v0, v9

    .end local v9    # "$this$drawIndication_u24lambda_u241_u24lambda_u240":Landroidx/compose/material/ripple/RippleHostView;
    .local v0, "$this$drawIndication_u24lambda_u241_u24lambda_u240":Landroidx/compose/material/ripple/RippleHostView;
    move v9, v2

    invoke-virtual/range {v3 .. v9}, Landroidx/compose/material/ripple/RippleHostView;->updateRippleProperties-biQXAtU(JIJF)V

    .line 192
    invoke-static {v14}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/material/ripple/RippleHostView;->draw(Landroid/graphics/Canvas;)V

    .line 193
    nop

    .line 178
    .end local v0    # "$this$drawIndication_u24lambda_u241_u24lambda_u240":Landroidx/compose/material/ripple/RippleHostView;
    .end local v16    # "$i$a$-run-AndroidRippleIndicationInstance$drawIndication$1$1":I
    nop

    .line 194
    :cond_1
    nop

    .line 271
    .end local v14    # "canvas":Landroidx/compose/ui/graphics/Canvas;
    .end local v15    # "$i$a$-drawIntoCanvas-AndroidRippleIndicationInstance$drawIndication$1":I
    nop

    .line 195
    .end local v12    # "$this$drawIntoCanvas$iv":Landroidx/compose/ui/graphics/drawscope/DrawScope;
    .end local v13    # "$i$f$drawIntoCanvas":I
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    .line 224
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->dispose()V

    .line 225
    return-void
.end method

.method public onForgotten()V
    .locals 0

    .line 220
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->dispose()V

    .line 221
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 217
    return-void
.end method

.method public removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1
    .param p1, "interaction"    # Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 214
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 215
    :cond_0
    return-void
.end method

.method public final resetHostView()V
    .locals 1

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 239
    return-void
.end method
