.class final Landroidx/compose/material3/internal/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "ExposedDropdownMenuPopup.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/internal/PopupLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material3/internal/PopupLayout\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,436:1\n154#2:437\n1#3:438\n81#4:439\n107#4,2:440\n81#4:442\n107#4,2:443\n81#4:445\n81#4:446\n107#4,2:447\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material3/internal/PopupLayout\n*L\n228#1:437\n220#1:439\n220#1:440,2\n221#1:442\n221#1:443,2\n224#1:445\n264#1:446\n264#1:447,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B=\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\r\u0010C\u001a\u00020\u0006H\u0017\u00a2\u0006\u0002\u0010DJ\u0008\u0010E\u001a\u00020$H\u0002J\u0006\u0010F\u001a\u00020\u0006J\u0010\u0010G\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020IH\u0016J\u0008\u0010J\u001a\u00020\u0006H\u0016J\u0012\u0010K\u001a\u00020\u000c2\u0008\u0010H\u001a\u0004\u0018\u00010LH\u0016J&\u0010\u001c\u001a\u00020\u00062\u0006\u0010M\u001a\u00020N2\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0018\u00a2\u0006\u0002\u0010OJ\u0010\u0010P\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020RH\u0016J\u0006\u0010S\u001a\u00020\u0006J\u0010\u0010T\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020-H\u0002J\u001e\u0010U\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010Q\u001a\u00020-J\u0006\u0010V\u001a\u00020\u0006R\u001b\u0010\u0012\u001a\u00020\u000c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000RA\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u00182\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u00188B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\u00020!X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\"R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0017\u001a\u0004\u0018\u00010%8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u001f\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010,\u001a\u00020-X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R5\u00103\u001a\u0004\u0018\u0001022\u0008\u0010\u0017\u001a\u0004\u0018\u0001028F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u00088\u0010\u001f\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010;\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000c@RX\u0094\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\u0014R\u0014\u0010=\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u000e\u0010@\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010A\u001a\u00020BX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006W"
    }
    d2 = {
        "Landroidx/compose/material3/internal/PopupLayout;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "",
        "composeView",
        "Landroid/view/View;",
        "positionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "isTouchExplorationEnabled",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "popupId",
        "Ljava/util/UUID;",
        "(Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroidx/compose/ui/window/PopupPositionProvider;ZLandroidx/compose/ui/unit/Density;Ljava/util/UUID;)V",
        "canCalculatePosition",
        "getCanCalculatePosition",
        "()Z",
        "canCalculatePosition$delegate",
        "Landroidx/compose/runtime/State;",
        "<set-?>",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "setContent",
        "(Lkotlin/jvm/functions/Function2;)V",
        "content$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "maxSupportedElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "params",
        "Landroid/view/WindowManager$LayoutParams;",
        "Landroidx/compose/ui/unit/IntRect;",
        "parentBounds",
        "getParentBounds",
        "()Landroidx/compose/ui/unit/IntRect;",
        "setParentBounds",
        "(Landroidx/compose/ui/unit/IntRect;)V",
        "parentBounds$delegate",
        "parentLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getParentLayoutDirection",
        "()Landroidx/compose/ui/unit/LayoutDirection;",
        "setParentLayoutDirection",
        "(Landroidx/compose/ui/unit/LayoutDirection;)V",
        "Landroidx/compose/ui/unit/IntSize;",
        "popupContentSize",
        "getPopupContentSize-bOM6tXw",
        "()Landroidx/compose/ui/unit/IntSize;",
        "setPopupContentSize-fhxjrPA",
        "(Landroidx/compose/ui/unit/IntSize;)V",
        "popupContentSize$delegate",
        "previousWindowVisibleFrame",
        "Landroid/graphics/Rect;",
        "shouldCreateCompositionOnAttachedToWindow",
        "getShouldCreateCompositionOnAttachedToWindow",
        "subCompositionView",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "tmpWindowVisibleFrame",
        "windowManager",
        "Landroid/view/WindowManager;",
        "Content",
        "(Landroidx/compose/runtime/Composer;I)V",
        "createLayoutParams",
        "dismiss",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "onGlobalLayout",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "parent",
        "Landroidx/compose/runtime/CompositionContext;",
        "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V",
        "setLayoutDirection",
        "layoutDirection",
        "",
        "show",
        "superSetLayoutDirection",
        "updateParameters",
        "updatePosition",
        "material3_release"
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
.field private final canCalculatePosition$delegate:Landroidx/compose/runtime/State;

.field private final composeView:Landroid/view/View;

.field private final content$delegate:Landroidx/compose/runtime/MutableState;

.field private final isTouchExplorationEnabled:Z

.field private final maxSupportedElevation:F

.field private onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Landroid/view/WindowManager$LayoutParams;

.field private final parentBounds$delegate:Landroidx/compose/runtime/MutableState;

.field private parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private final popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

.field private final positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

.field private final previousWindowVisibleFrame:Landroid/graphics/Rect;

.field private shouldCreateCompositionOnAttachedToWindow:Z

.field private final tmpWindowVisibleFrame:Landroid/graphics/Rect;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroidx/compose/ui/window/PopupPositionProvider;ZLandroidx/compose/ui/unit/Density;Ljava/util/UUID;)V
    .locals 6
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "composeView"    # Landroid/view/View;
    .param p3, "positionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p4, "isTouchExplorationEnabled"    # Z
    .param p5, "density"    # Landroidx/compose/ui/unit/Density;
    .param p6, "popupId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 204
    iput-object p1, p0, Landroidx/compose/material3/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 205
    iput-object p2, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 206
    iput-object p3, p0, Landroidx/compose/material3/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 207
    iput-boolean p4, p0, Landroidx/compose/material3/internal/PopupLayout;->isTouchExplorationEnabled:Z

    .line 215
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 216
    invoke-direct {p0}, Landroidx/compose/material3/internal/PopupLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 219
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 221
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 224
    new-instance v2, Landroidx/compose/material3/internal/PopupLayout$canCalculatePosition$2;

    invoke-direct {v2, p0}, Landroidx/compose/material3/internal/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/material3/internal/PopupLayout;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .line 228
    const/16 v2, 0x8

    .local v2, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 437
    .local v3, "$i$f$getDp":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 228
    .end local v2    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    iput v2, p0, Landroidx/compose/material3/internal/PopupLayout;->maxSupportedElevation:F

    .line 231
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 232
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    .line 236
    nop

    .line 237
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroidx/compose/material3/internal/PopupLayout;->setId(I)V

    .line 238
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 239
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 240
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 241
    iget-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 244
    sget v2, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Popup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/compose/material3/internal/PopupLayout;->setTag(ILjava/lang/Object;)V

    .line 247
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/material3/internal/PopupLayout;->setClipChildren(Z)V

    .line 249
    move-object v2, p5

    .line 438
    .local v2, "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v3, 0x0

    .line 249
    .local v3, "$i$a$-with-PopupLayout$1":I
    iget v4, p0, Landroidx/compose/material3/internal/PopupLayout;->maxSupportedElevation:F

    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/compose/material3/internal/PopupLayout;->setElevation(F)V

    .line 254
    .end local v2    # "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v3    # "$i$a$-with-PopupLayout$1":I
    new-instance v2, Landroidx/compose/material3/internal/PopupLayout$2;

    invoke-direct {v2}, Landroidx/compose/material3/internal/PopupLayout$2;-><init>()V

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/compose/material3/internal/PopupLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 262
    nop

    .line 264
    sget-object v2, Landroidx/compose/material3/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;->INSTANCE:Landroidx/compose/material3/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;

    invoke-virtual {v2}, Landroidx/compose/material3/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;->getLambda-1$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 203
    return-void
.end method

.method private final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 393
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v1, v0

    .local v1, "$this$createLayoutParams_u24lambda_u242":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 395
    .local v2, "$i$a$-apply-PopupLayout$createLayoutParams$1":I
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 398
    const v3, 0x60020

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 401
    iget-boolean v3, p0, Landroidx/compose/material3/internal/PopupLayout;->isTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    .line 404
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x21

    goto :goto_0

    .line 406
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 401
    :goto_0
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 409
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 411
    const/16 v3, 0x3e8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 414
    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 417
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 418
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 420
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 424
    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    nop

    .line 393
    .end local v1    # "$this$createLayoutParams_u24lambda_u242":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "$i$a$-apply-PopupLayout$createLayoutParams$1":I
    return-object v0
.end method

.method private final getContent()Lkotlin/jvm/functions/Function2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 446
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 264
    return-object v0
.end method

.method private final setContent(Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 448
    nop

    .line 264
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2
    .param p1, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 382
    sget-object v0, Landroidx/compose/material3/internal/PopupLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 384
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :pswitch_1
    const/4 v0, 0x0

    .line 382
    :goto_0
    nop

    .line 386
    .local v0, "direction":I
    invoke-super {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setLayoutDirection(I)V

    .line 387
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 280
    const v0, -0x4c8fa2da

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(Content)280@11042L9:ExposedDropdownMenuPopup.android.kt#mqatfk"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move v1, p2

    .local v1, "$dirty":I
    and-int/lit8 v2, p2, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v1, 0x3

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 282
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 280
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.internal.PopupLayout.Content (ExposedDropdownMenuPopup.android.kt:279)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 281
    :cond_4
    invoke-direct {p0}, Landroidx/compose/material3/internal/PopupLayout;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 282
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroidx/compose/material3/internal/PopupLayout$Content$4;

    invoke-direct {v2, p0, p2}, Landroidx/compose/material3/internal/PopupLayout$Content$4;-><init>(Landroidx/compose/material3/internal/PopupLayout;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 342
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 343
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 344
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 345
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 286
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 287
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 292
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 293
    :cond_1
    return v1

    .line 294
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 295
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 296
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    iget-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 298
    :cond_3
    return v1

    .line 302
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final getCanCalculatePosition()Z
    .locals 3

    .line 224
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 445
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 224
    return v0
.end method

.method public final getParentBounds()Landroidx/compose/ui/unit/IntRect;
    .locals 3

    .line 220
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 439
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntRect;

    .line 220
    return-object v0
.end method

.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;
    .locals 3

    .line 221
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 442
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 221
    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Landroidx/compose/material3/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    return v0
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 1

    .line 234
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 430
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 431
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/compose/material3/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->updatePosition()V

    .line 434
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 352
    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    .line 364
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    cmpg-float v0, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v1

    .line 366
    .local v0, "isOutsideClickOnKeyboard":Z
    :goto_2
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getParentBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    move v1, v3

    .line 367
    .local v1, "shouldDismiss":Z
    :cond_6
    if-eqz v1, :cond_8

    .line 368
    iget-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 369
    :cond_7
    return v3

    .line 372
    .end local v0    # "isOutsideClickOnKeyboard":Z
    .end local v1    # "shouldDismiss":Z
    :cond_8
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "parent"    # Landroidx/compose/runtime/CompositionContext;
    .param p2, "content"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/PopupLayout;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 275
    invoke-direct {p0, p2}, Landroidx/compose/material3/internal/PopupLayout;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material3/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 277
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 378
    return-void
.end method

.method public final setParentBounds(Landroidx/compose/ui/unit/IntRect;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/IntRect;

    .line 220
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 440
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 441
    nop

    .line 220
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 219
    iput-object p1, p0, Landroidx/compose/material3/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/IntSize;

    .line 221
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 443
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 444
    nop

    .line 221
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final show()V
    .locals 3

    .line 270
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/material3/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Landroidx/compose/material3/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 310
    invoke-direct {p0, p2}, Landroidx/compose/material3/internal/PopupLayout;->superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 311
    return-void
.end method

.method public final updatePosition()V
    .locals 10

    .line 317
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getParentBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 318
    .local v1, "parentBounds":Landroidx/compose/ui/unit/IntRect;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/internal/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v5

    .line 320
    .local v5, "popupContentSize":J
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 321
    .local v2, "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    iget-object v3, p0, Landroidx/compose/material3/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 322
    invoke-static {v0}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toComposeIntRect(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntRect;->getSize-YbymL2g()J

    move-result-wide v2

    .line 320
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v2    # "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    nop

    .line 325
    .local v2, "windowSize":J
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 326
    nop

    .line 327
    nop

    .line 328
    iget-object v4, p0, Landroidx/compose/material3/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 329
    nop

    .line 325
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/window/PopupPositionProvider;->calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J

    move-result-wide v7

    .line 332
    .local v7, "popupPosition":J
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 333
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 335
    iget-object v0, p0, Landroidx/compose/material3/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v4, p0

    check-cast v4, Landroid/view/View;

    iget-object v9, p0, Landroidx/compose/material3/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v4, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    return-void

    .line 318
    .end local v2    # "windowSize":J
    .end local v5    # "popupContentSize":J
    .end local v7    # "popupPosition":J
    :cond_1
    return-void
.end method
