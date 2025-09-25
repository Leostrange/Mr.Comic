.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;
.super Landroidx/compose/foundation/relocation/BringIntoViewChildNode;
.source "BringIntoViewResponder.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewParent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBringIntoViewResponder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BringIntoViewResponder.kt\nandroidx/compose/foundation/relocation/BringIntoViewResponderNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J&\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012H\u0096@\u00a2\u0006\u0002\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;",
        "Landroidx/compose/foundation/relocation/BringIntoViewChildNode;",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        "responder",
        "Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V",
        "providedValues",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "getResponder",
        "()Landroidx/compose/foundation/relocation/BringIntoViewResponder;",
        "setResponder",
        "bringChildIntoView",
        "",
        "childCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "boundsProvider",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

.field private responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 1
    .param p1, "responder"    # Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 143
    invoke-direct {p0}, Landroidx/compose/foundation/relocation/BringIntoViewChildNode;-><init>()V

    .line 142
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 146
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewKt;->getModifierLocalBringIntoViewParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf(Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    .line 141
    return-void
.end method

.method public static final synthetic access$bringChildIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p0, "this$0"    # Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;
    .param p1, "$childCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$boundsProvider"    # Lkotlin/jvm/functions/Function0;

    .line 140
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->bringChildIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static final bringChildIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0, "this$0"    # Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;
    .param p1, "$childCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "$boundsProvider"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)",
            "Landroidx/compose/ui/geometry/Rect;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 161
    .local v0, "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_0
    move-object v2, p1

    .line 215
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$a$-takeIf-BringIntoViewResponderNode$bringChildIntoView$localRect$childCoordinates$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v2

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "$i$a$-takeIf-BringIntoViewResponderNode$bringChildIntoView$localRect$childCoordinates$1":I
    if-eqz v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    return-object v1

    .line 162
    .local v2, "childCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/geometry/Rect;

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    move-object v1, v3

    .line 163
    .local v1, "rect":Landroidx/compose/ui/geometry/Rect;
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->access$localRectOf(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bringChildIntoView(Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "childCoordinates"    # Landroidx/compose/ui/layout/LayoutCoordinates;
    .param p2, "boundsProvider"    # Lkotlin/jvm/functions/Function0;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringChildIntoView$parentRect$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringChildIntoView$parentRect$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 168
    .local v0, "parentRect":Lkotlin/jvm/functions/Function0;
    new-instance v7, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringChildIntoView$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode$bringChildIntoView$2;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    return-object v1
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->providedValues:Landroidx/compose/ui/modifier/ModifierLocalMap;

    return-object v0
.end method

.method public final getResponder()Landroidx/compose/foundation/relocation/BringIntoViewResponder;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    return-object v0
.end method

.method public final setResponder(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    .line 142
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/relocation/BringIntoViewResponder;

    return-void
.end method
