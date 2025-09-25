.class final Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;
.super Landroidx/compose/ui/Modifier$Node;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "enabled",
        "",
        "(Z)V",
        "getEnabled",
        "()Z",
        "setEnabled",
        "modifierLocalMap",
        "Landroidx/compose/ui/modifier/ModifierLocalMap;",
        "providedValues",
        "getProvidedValues",
        "()Landroidx/compose/ui/modifier/ModifierLocalMap;",
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


# instance fields
.field private enabled:Z

.field private final modifierLocalMap:Landroidx/compose/ui/modifier/ModifierLocalMap;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1004
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 1002
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->enabled:Z

    .line 1006
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getModifierLocalScrollableContainer()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf(Lkotlin/Pair;)Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->modifierLocalMap:Landroidx/compose/ui/modifier/ModifierLocalMap;

    .line 1002
    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1002
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->enabled:Z

    return v0
.end method

.method public getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 1

    .line 1008
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->enabled:Z

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->modifierLocalMap:Landroidx/compose/ui/modifier/ModifierLocalMap;

    goto :goto_0

    .line 1011
    :cond_0
    invoke-static {}, Landroidx/compose/ui/modifier/ModifierLocalModifierNodeKt;->modifierLocalMapOf()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v0

    .line 1012
    :goto_0
    return-object v0
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 1002
    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->enabled:Z

    return-void
.end method
