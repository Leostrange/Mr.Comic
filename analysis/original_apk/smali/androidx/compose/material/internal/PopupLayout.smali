.class final Landroidx/compose/material/internal/PopupLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "ExposedDropdownMenuPopup.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/internal/PopupLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenuPopup.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material/internal/PopupLayout\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,464:1\n154#2:465\n1#3:466\n81#4:467\n107#4,2:468\n81#4:470\n107#4,2:471\n81#4:473\n81#4:474\n107#4,2:475\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenuPopup.android.kt\nandroidx/compose/material/internal/PopupLayout\n*L\n241#1:465\n233#1:467\n233#1:468,2\n234#1:470\n234#1:471,2\n237#1:473\n286#1:474\n286#1:475,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B=\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\r\u0010P\u001a\u00020\u0006H\u0017\u00a2\u0006\u0002\u0010QJ\u0008\u0010R\u001a\u00020)H\u0002J\u0006\u0010S\u001a\u00020\u0006J\u0010\u0010T\u001a\u00020\u00132\u0006\u0010U\u001a\u00020VH\u0016J\u0008\u0010W\u001a\u00020\u0006H\u0016J\u0012\u0010X\u001a\u00020\u00132\u0008\u0010U\u001a\u0004\u0018\u00010YH\u0016J&\u0010\u001d\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020[2\u0011\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0019\u00a2\u0006\u0002\u0010\\J\u0010\u0010]\u001a\u00020\u00062\u0006\u0010^\u001a\u00020_H\u0016J\u0006\u0010`\u001a\u00020\u0006J\u0010\u0010a\u001a\u00020\u00062\u0006\u0010^\u001a\u000201H\u0002J&\u0010b\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010^\u001a\u000201J\u0006\u0010c\u001a\u00020\u0006J\u000c\u0010d\u001a\u00020$*\u00020CH\u0002R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000RA\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u00192\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u00198B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010!\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00130\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010%\u001a\u00020&X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\'R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010*\u001a\u0004\u0018\u00010$2\u0008\u0010\u0018\u001a\u0004\u0018\u00010$8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008/\u0010 \u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u00100\u001a\u000201X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R5\u00107\u001a\u0004\u0018\u0001062\u0008\u0010\u0018\u001a\u0004\u0018\u0001068F@FX\u0086\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0012\n\u0004\u0008<\u0010 \u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001a\u0010=\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u000e\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010D\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013@RX\u0094\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u0015R\u0014\u0010F\u001a\u00020\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u000e\u0010M\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020OX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006e"
    }
    d2 = {
        "Landroidx/compose/material/internal/PopupLayout;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "",
        "testTag",
        "",
        "composeView",
        "Landroid/view/View;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "initialPositionProvider",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "popupId",
        "Ljava/util/UUID;",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V",
        "canCalculatePosition",
        "",
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
        "dismissOnOutsideClick",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/unit/IntRect;",
        "maxSupportedElevation",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "params",
        "Landroid/view/WindowManager$LayoutParams;",
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
        "positionProvider",
        "getPositionProvider",
        "()Landroidx/compose/ui/window/PopupPositionProvider;",
        "setPositionProvider",
        "(Landroidx/compose/ui/window/PopupPositionProvider;)V",
        "previousWindowVisibleFrame",
        "Landroid/graphics/Rect;",
        "shouldCreateCompositionOnAttachedToWindow",
        "getShouldCreateCompositionOnAttachedToWindow",
        "subCompositionView",
        "getSubCompositionView",
        "()Landroidx/compose/ui/platform/AbstractComposeView;",
        "getTestTag",
        "()Ljava/lang/String;",
        "setTestTag",
        "(Ljava/lang/String;)V",
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
        "toIntBounds",
        "material_release"
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

.field private final dismissOnOutsideClick:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

.field private final previousWindowVisibleFrame:Landroid/graphics/Rect;

.field private shouldCreateCompositionOnAttachedToWindow:Z

.field private testTag:Ljava/lang/String;

.field private final tmpWindowVisibleFrame:Landroid/graphics/Rect;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V
    .locals 6
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "testTag"    # Ljava/lang/String;
    .param p3, "composeView"    # Landroid/view/View;
    .param p4, "density"    # Landroidx/compose/ui/unit/Density;
    .param p5, "initialPositionProvider"    # Landroidx/compose/ui/window/PopupPositionProvider;
    .param p6, "popupId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/window/PopupPositionProvider;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 215
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 216
    iput-object p2, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    .line 225
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    .line 226
    invoke-direct {p0}, Landroidx/compose/material/internal/PopupLayout;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    .line 229
    iput-object p5, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 232
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 233
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .line 234
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .line 237
    new-instance v2, Landroidx/compose/material/internal/PopupLayout$canCalculatePosition$2;

    invoke-direct {v2, p0}, Landroidx/compose/material/internal/PopupLayout$canCalculatePosition$2;-><init>(Landroidx/compose/material/internal/PopupLayout;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .line 241
    const/16 v2, 0x8

    .local v2, "$this$dp$iv":I
    const/4 v3, 0x0

    .line 465
    .local v3, "$i$f$getDp":I
    int-to-float v4, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 241
    .end local v2    # "$this$dp$iv":I
    .end local v3    # "$i$f$getDp":I
    iput v2, p0, Landroidx/compose/material/internal/PopupLayout;->maxSupportedElevation:F

    .line 244
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .line 245
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    .line 250
    sget-object v2, Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;->INSTANCE:Landroidx/compose/material/internal/PopupLayout$dismissOnOutsideClick$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->dismissOnOutsideClick:Lkotlin/jvm/functions/Function2;

    .line 258
    nop

    .line 259
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Landroidx/compose/material/internal/PopupLayout;->setId(I)V

    .line 260
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 261
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 262
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-static {v3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 263
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
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

    invoke-virtual {p0, v2, v3}, Landroidx/compose/material/internal/PopupLayout;->setTag(ILjava/lang/Object;)V

    .line 269
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/compose/material/internal/PopupLayout;->setClipChildren(Z)V

    .line 271
    move-object v2, p4

    .line 466
    .local v2, "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    const/4 v3, 0x0

    .line 271
    .local v3, "$i$a$-with-PopupLayout$1":I
    iget v4, p0, Landroidx/compose/material/internal/PopupLayout;->maxSupportedElevation:F

    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/compose/material/internal/PopupLayout;->setElevation(F)V

    .line 276
    .end local v2    # "$this$_init__u24lambda_u240":Landroidx/compose/ui/unit/Density;
    .end local v3    # "$i$a$-with-PopupLayout$1":I
    new-instance v2, Landroidx/compose/material/internal/PopupLayout$2;

    invoke-direct {v2}, Landroidx/compose/material/internal/PopupLayout$2;-><init>()V

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v2}, Landroidx/compose/material/internal/PopupLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 284
    nop

    .line 286
    sget-object v2, Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;->INSTANCE:Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;

    invoke-virtual {v2}, Landroidx/compose/material/internal/ComposableSingletons$ExposedDropdownMenuPopup_androidKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 214
    return-void
.end method

.method private final createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    .line 422
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v1, v0

    .local v1, "$this$createLayoutParams_u24lambda_u242":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 424
    .local v2, "$i$a$-apply-PopupLayout$createLayoutParams$1":I
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 427
    const v3, 0x60020

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 430
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 432
    const/16 v3, 0x3e8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 435
    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 438
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 439
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 441
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 445
    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    nop

    .line 422
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

    .line 286
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 474
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 286
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

    .line 286
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->content$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 475
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 476
    nop

    .line 286
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2
    .param p1, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 411
    sget-object v0, Landroidx/compose/material/internal/PopupLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 413
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 412
    :pswitch_1
    const/4 v0, 0x0

    .line 411
    :goto_0
    nop

    .line 415
    .local v0, "direction":I
    invoke-super {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setLayoutDirection(I)V

    .line 416
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .param p1, "$this$toIntBounds"    # Landroid/graphics/Rect;

    .line 449
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 450
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 451
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 452
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 453
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 449
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 454
    return-object v0
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 302
    const v0, -0x3384f299    # -6.5811868E7f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(Content)302@11866L9:ExposedDropdownMenuPopup.android.kt#mnwmf7"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.internal.PopupLayout.Content (ExposedDropdownMenuPopup.android.kt:301)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 303
    :cond_0
    invoke-direct {p0}, Landroidx/compose/material/internal/PopupLayout;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroidx/compose/material/internal/PopupLayout$Content$4;

    invoke-direct {v1, p0, p2}, Landroidx/compose/material/internal/PopupLayout$Content$4;-><init>(Landroidx/compose/material/internal/PopupLayout;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 304
    :cond_2
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 369
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 370
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 371
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 372
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 311
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 315
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 316
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 317
    :cond_1
    return v1

    .line 318
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 319
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 320
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 321
    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 322
    :cond_3
    return v1

    .line 326
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final getCanCalculatePosition()Z
    .locals 3

    .line 237
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->canCalculatePosition$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 473
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 237
    return v0
.end method

.method public final getParentBounds()Landroidx/compose/ui/unit/IntRect;
    .locals 3

    .line 233
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 467
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntRect;

    .line 233
    return-object v0
.end method

.method public final getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public final getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;
    .locals 3

    .line 234
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 470
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 234
    return-object v0
.end method

.method public final getPositionProvider()Landroidx/compose/ui/window/PopupPositionProvider;
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-object v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Landroidx/compose/material/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    return v0
.end method

.method public getSubCompositionView()Landroidx/compose/ui/platform/AbstractComposeView;
    .locals 1

    .line 247
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/platform/AbstractComposeView;

    return-object v0
.end method

.method public final getTestTag()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 459
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->tmpWindowVisibleFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->updatePosition()V

    .line 462
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 379
    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    .line 387
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getParentBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v0

    .line 390
    .local v0, "parentBounds":Landroidx/compose/ui/unit/IntRect;
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->dismissOnOutsideClick:Lkotlin/jvm/functions/Function2;

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    cmpg-float v4, v4, v1

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    if-nez v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    cmpg-float v1, v4, v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v5

    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v1, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 394
    :goto_2
    nop

    .line 390
    invoke-interface {v3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move v5, v2

    :cond_7
    move v1, v5

    .line 396
    .local v1, "shouldDismiss":Z
    if-eqz v1, :cond_9

    .line 397
    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 398
    :cond_8
    return v2

    .line 401
    .end local v0    # "parentBounds":Landroidx/compose/ui/unit/IntRect;
    .end local v1    # "shouldDismiss":Z
    :cond_9
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

    .line 296
    invoke-virtual {p0, p1}, Landroidx/compose/material/internal/PopupLayout;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 297
    invoke-direct {p0, p2}, Landroidx/compose/material/internal/PopupLayout;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material/internal/PopupLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 299
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 407
    return-void
.end method

.method public final setParentBounds(Landroidx/compose/ui/unit/IntRect;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/IntRect;

    .line 233
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->parentBounds$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 468
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 469
    nop

    .line 233
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 232
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-void
.end method

.method public final setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/IntSize;

    .line 234
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->popupContentSize$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 471
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 472
    nop

    .line 234
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setPositionProvider(Landroidx/compose/ui/window/PopupPositionProvider;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/window/PopupPositionProvider;

    .line 229
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    return-void
.end method

.method public final setTestTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    return-void
.end method

.method public final show()V
    .locals 3

    .line 292
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    return-void
.end method

.method public final updateParameters(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p2, "testTag"    # Ljava/lang/String;
    .param p3, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Landroidx/compose/material/internal/PopupLayout;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 335
    iput-object p2, p0, Landroidx/compose/material/internal/PopupLayout;->testTag:Ljava/lang/String;

    .line 336
    invoke-direct {p0, p3}, Landroidx/compose/material/internal/PopupLayout;->superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 337
    return-void
.end method

.method public final updatePosition()V
    .locals 10

    .line 343
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getParentBounds()Landroidx/compose/ui/unit/IntRect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 344
    .local v1, "parentBounds":Landroidx/compose/ui/unit/IntRect;
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/internal/PopupLayout;->getPopupContentSize-bOM6tXw()Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v5

    .line 346
    .local v5, "popupContentSize":J
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->previousWindowVisibleFrame:Landroid/graphics/Rect;

    .local v0, "it":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 347
    .local v2, "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    iget-object v3, p0, Landroidx/compose/material/internal/PopupLayout;->composeView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 348
    invoke-direct {p0, v0}, Landroidx/compose/material/internal/PopupLayout;->toIntBounds(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;

    move-result-object v3

    .line 349
    .local v3, "bounds":Landroidx/compose/ui/unit/IntRect;
    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    move-result v7

    invoke-static {v4, v7}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v2

    .line 346
    .end local v0    # "it":Landroid/graphics/Rect;
    .end local v2    # "$i$a$-let-PopupLayout$updatePosition$windowSize$1":I
    .end local v3    # "bounds":Landroidx/compose/ui/unit/IntRect;
    nop

    .line 352
    .local v2, "windowSize":J
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->positionProvider:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 353
    nop

    .line 354
    nop

    .line 355
    iget-object v4, p0, Landroidx/compose/material/internal/PopupLayout;->parentLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 356
    nop

    .line 352
    invoke-interface/range {v0 .. v6}, Landroidx/compose/ui/window/PopupPositionProvider;->calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J

    move-result-wide v7

    .line 359
    .local v7, "popupPosition":J
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 360
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 362
    iget-object v0, p0, Landroidx/compose/material/internal/PopupLayout;->windowManager:Landroid/view/WindowManager;

    move-object v4, p0

    check-cast v4, Landroid/view/View;

    iget-object v9, p0, Landroidx/compose/material/internal/PopupLayout;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v4, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    return-void

    .line 344
    .end local v2    # "windowSize":J
    .end local v5    # "popupContentSize":J
    .end local v7    # "popupPosition":J
    :cond_1
    return-void
.end method
