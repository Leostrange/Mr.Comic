.class final Landroidx/compose/material3/ModalBottomSheetWindow;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheetWindow$Api33Impl;,
        Landroidx/compose/material3/ModalBottomSheetWindow$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheetWindow\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,702:1\n81#2:703\n107#2,2:704\n1#3:706\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheetWindow\n*L\n557#1:703\n557#1:704,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00019B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\r\u0010%\u001a\u00020\u0008H\u0017\u00a2\u0006\u0002\u0010&J\u0006\u0010\'\u001a\u00020\u0008J\u0010\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u0008H\u0002J\u0008\u0010,\u001a\u00020\u0008H\u0002J\u0008\u0010-\u001a\u00020\u0008H\u0014J\u0008\u0010.\u001a\u00020\u0008H\u0014J\u0008\u0010/\u001a\u00020\u0008H\u0016J*\u00100\u001a\u00020\u00082\n\u0008\u0002\u00101\u001a\u0004\u0018\u0001022\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u00103J\u0010\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u001aH\u0016J\u0006\u00106\u001a\u00020\u0008J\u000e\u00107\u001a\u00020\u00082\u0006\u00105\u001a\u000208R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000RA\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\u00112\u0011\u0010\u0010\u001a\r\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\u00118B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010\u0010\u001a\u00020\u001f@RX\u0094\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Landroidx/compose/material3/ModalBottomSheetWindow;",
        "Landroidx/compose/ui/platform/AbstractComposeView;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "properties",
        "Landroidx/compose/material3/ModalBottomSheetProperties;",
        "onDismissRequest",
        "Lkotlin/Function0;",
        "",
        "composeView",
        "Landroid/view/View;",
        "saveId",
        "Ljava/util/UUID;",
        "(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroid/view/View;Ljava/util/UUID;)V",
        "backCallback",
        "",
        "<set-?>",
        "Landroidx/compose/runtime/Composable;",
        "content",
        "getContent",
        "()Lkotlin/jvm/functions/Function2;",
        "setContent",
        "(Lkotlin/jvm/functions/Function2;)V",
        "content$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "displayWidth",
        "",
        "getDisplayWidth",
        "()I",
        "params",
        "Landroid/view/WindowManager$LayoutParams;",
        "",
        "shouldCreateCompositionOnAttachedToWindow",
        "getShouldCreateCompositionOnAttachedToWindow",
        "()Z",
        "windowManager",
        "Landroid/view/WindowManager;",
        "Content",
        "(Landroidx/compose/runtime/Composer;I)V",
        "dismiss",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "maybeRegisterBackCallback",
        "maybeUnregisterBackCallback",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onGlobalLayout",
        "setCustomContent",
        "parent",
        "Landroidx/compose/runtime/CompositionContext;",
        "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V",
        "setLayoutDirection",
        "layoutDirection",
        "show",
        "superSetLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Api33Impl",
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
.field private backCallback:Ljava/lang/Object;

.field private final composeView:Landroid/view/View;

.field private final content$delegate:Landroidx/compose/runtime/MutableState;

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

.field private final properties:Landroidx/compose/material3/ModalBottomSheetProperties;

.field private shouldCreateCompositionOnAttachedToWindow:Z

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function0;Landroid/view/View;Ljava/util/UUID;)V
    .locals 6
    .param p1, "properties"    # Landroidx/compose/material3/ModalBottomSheetProperties;
    .param p2, "onDismissRequest"    # Lkotlin/jvm/functions/Function0;
    .param p3, "composeView"    # Landroid/view/View;
    .param p4, "saveId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/ModalBottomSheetProperties;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 489
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 484
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    .line 485
    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 486
    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    .line 495
    nop

    .line 496
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/compose/material3/ModalBottomSheetWindow;->setId(I)V

    .line 498
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-static {v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 499
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-static {v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 500
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-static {v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->get(Landroid/view/View;)Landroidx/savedstate/SavedStateRegistryOwner;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 501
    sget v0, Landroidx/compose/ui/R$id;->compose_view_saveable_id_tag:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Popup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/ModalBottomSheetWindow;->setTag(ILjava/lang/Object;)V

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/ModalBottomSheetWindow;->setClipChildren(Z)V

    .line 504
    nop

    .line 507
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->windowManager:Landroid/view/WindowManager;

    .line 513
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object v1, v0

    .local v1, "$this$params_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 515
    .local v2, "$i$a$-apply-ModalBottomSheetWindow$params$1":I
    const v3, 0x800053

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 517
    const/16 v3, 0x3e8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 519
    invoke-direct {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getDisplayWidth()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 520
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 523
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 526
    iget-object v3, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 527
    sget v4, Landroidx/compose/ui/R$string;->default_popup_window_title:I

    .line 526
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v3, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 533
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 536
    nop

    .line 533
    const v4, -0x28001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 538
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 542
    iget-object v3, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-virtual {v3}, Landroidx/compose/material3/ModalBottomSheetProperties;->getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-static {v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$isFlagSecureEnabled(Landroid/view/View;)Z

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$shouldApplySecureFlag(Landroidx/compose/ui/window/SecureFlagPolicy;Z)Z

    move-result v3

    .line 541
    nop

    .line 543
    .local v3, "secureFlagEnabled":Z
    if-eqz v3, :cond_0

    .line 544
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 546
    :cond_0
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x2001

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 550
    :goto_0
    iget-object v4, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-virtual {v4}, Landroidx/compose/material3/ModalBottomSheetProperties;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 551
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 553
    :cond_1
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 555
    :goto_1
    nop

    .line 513
    .end local v1    # "$this$params_u24lambda_u240":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "$i$a$-apply-ModalBottomSheetWindow$params$1":I
    .end local v3    # "secureFlagEnabled":Z
    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->params:Landroid/view/WindowManager$LayoutParams;

    .line 557
    sget-object v0, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;

    invoke-virtual {v0}, Landroidx/compose/material3/ComposableSingletons$ModalBottomSheet_androidKt;->getLambda-2$material3_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->content$delegate:Landroidx/compose/runtime/MutableState;

    .line 483
    return-void
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

    .line 557
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->content$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 703
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 557
    return-object v0
.end method

.method private final getDisplayWidth()I
    .locals 1

    .line 510
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private final maybeRegisterBackCallback()V
    .locals 2

    .line 623
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-virtual {v0}, Landroidx/compose/material3/ModalBottomSheetProperties;->getShouldDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->backCallback:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 627
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/material3/ModalBottomSheetWindow$Api33Impl;->createBackCallback(Lkotlin/jvm/functions/Function0;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->backCallback:Ljava/lang/Object;

    .line 629
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->backCallback:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/material3/ModalBottomSheetWindow$Api33Impl;->maybeRegisterBackCallback(Landroid/view/View;Ljava/lang/Object;)V

    .line 630
    return-void

    .line 624
    :cond_2
    :goto_0
    return-void
.end method

.method private final maybeUnregisterBackCallback()V
    .locals 2

    .line 633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 634
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->backCallback:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/material3/ModalBottomSheetWindow$Api33Impl;->maybeUnregisterBackCallback(Landroid/view/View;Ljava/lang/Object;)V

    .line 636
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->backCallback:Ljava/lang/Object;

    .line 637
    return-void
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

    .line 557
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->content$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 704
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 705
    nop

    .line 557
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public static synthetic setCustomContent$default(Landroidx/compose/material3/ModalBottomSheetWindow;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    .line 567
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 568
    const/4 p1, 0x0

    .line 567
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetWindow;->setCustomContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public Content(Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    .line 563
    const v0, -0x1b9d8b83

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v1, "C(Content)563@23901L9:ModalBottomSheet.android.kt#uh7d8r"

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

    .line 565
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 563
    :cond_3
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string/jumbo v3, "androidx.compose.material3.ModalBottomSheetWindow.Content (ModalBottomSheet.android.kt:562)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 564
    :cond_4
    invoke-direct {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getContent()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 565
    :cond_5
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroidx/compose/material3/ModalBottomSheetWindow$Content$4;

    invoke-direct {v2, p0, p2}, Landroidx/compose/material3/ModalBottomSheetWindow$Content$4;-><init>(Landroidx/compose/material3/ModalBottomSheetWindow;I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_6
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 581
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 582
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 583
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->composeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 584
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 585
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 591
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-virtual {v0}, Landroidx/compose/material3/ModalBottomSheetProperties;->getShouldDismissOnBackPress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 596
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 597
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 598
    :cond_1
    return v1

    .line 599
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 600
    invoke-virtual {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 601
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 602
    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 603
    return v1

    .line 607
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroidx/compose/ui/platform/AbstractComposeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->shouldCreateCompositionOnAttachedToWindow:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 611
    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onAttachedToWindow()V

    .line 613
    invoke-direct {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->maybeRegisterBackCallback()V

    .line 614
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 617
    invoke-super {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->onDetachedFromWindow()V

    .line 619
    invoke-direct {p0}, Landroidx/compose/material3/ModalBottomSheetWindow;->maybeUnregisterBackCallback()V

    .line 620
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 641
    return-void
.end method

.method public final setCustomContent(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V
    .locals 2
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

    .line 571
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 706
    .local v0, "it":Landroidx/compose/runtime/CompositionContext;
    const/4 v1, 0x0

    .line 571
    .local v1, "$i$a$-let-ModalBottomSheetWindow$setCustomContent$1":I
    invoke-virtual {p0, v0}, Landroidx/compose/material3/ModalBottomSheetWindow;->setParentCompositionContext(Landroidx/compose/runtime/CompositionContext;)V

    .line 572
    .end local v0    # "it":Landroidx/compose/runtime/CompositionContext;
    .end local v1    # "$i$a$-let-ModalBottomSheetWindow$setCustomContent$1":I
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/material3/ModalBottomSheetWindow;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->shouldCreateCompositionOnAttachedToWindow:Z

    .line 574
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 646
    return-void
.end method

.method public final show()V
    .locals 3

    .line 577
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->windowManager:Landroid/view/WindowManager;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/compose/material3/ModalBottomSheetWindow;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    return-void
.end method

.method public final superSetLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 2
    .param p1, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 650
    sget-object v0, Landroidx/compose/material3/ModalBottomSheetWindow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :pswitch_1
    const/4 v0, 0x0

    .line 650
    :goto_0
    nop

    .line 654
    .local v0, "direction":I
    invoke-super {p0, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setLayoutDirection(I)V

    .line 655
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
