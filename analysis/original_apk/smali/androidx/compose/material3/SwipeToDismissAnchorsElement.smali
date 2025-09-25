.class final Landroidx/compose/material3/SwipeToDismissAnchorsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SwipeToDismissBox.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/SwipeToDismissAnchorsNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeToDismissBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToDismissBox.kt\nandroidx/compose/material3/SwipeToDismissAnchorsElement\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,480:1\n135#2:481\n*S KotlinDebug\n*F\n+ 1 SwipeToDismissBox.kt\nandroidx/compose/material3/SwipeToDismissAnchorsElement\n*L\n427#1:481\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u000c\u0010\u0012\u001a\u00020\u0010*\u00020\u0013H\u0016R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/material3/SwipeToDismissAnchorsElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/SwipeToDismissAnchorsNode;",
        "state",
        "Landroidx/compose/material3/SwipeToDismissBoxState;",
        "enableDismissFromStartToEnd",
        "",
        "enableDismissFromEndToStart",
        "(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V",
        "create",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final enableDismissFromEndToStart:Z

.field private final enableDismissFromStartToEnd:Z

.field private final state:Landroidx/compose/material3/SwipeToDismissBoxState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/material3/SwipeToDismissBoxState;
    .param p2, "enableDismissFromStartToEnd"    # Z
    .param p3, "enableDismissFromEndToStart"    # Z

    .line 396
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 393
    iput-object p1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    .line 394
    iput-boolean p2, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    .line 395
    iput-boolean p3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    .line 392
    return-void
.end method

.method public static final synthetic access$getEnableDismissFromEndToStart$p(Landroidx/compose/material3/SwipeToDismissAnchorsElement;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    .line 391
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    return v0
.end method

.method public static final synthetic access$getEnableDismissFromStartToEnd$p(Landroidx/compose/material3/SwipeToDismissAnchorsElement;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    .line 391
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    return v0
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/material3/SwipeToDismissAnchorsElement;)Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    .line 391
    iget-object v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    return-object v0
.end method


# virtual methods
.method public create()Landroidx/compose/material3/SwipeToDismissAnchorsNode;
    .locals 4

    .line 398
    new-instance v0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;

    .line 399
    iget-object v1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    .line 400
    iget-boolean v2, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    .line 401
    iget-boolean v3, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    .line 398
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/material3/SwipeToDismissAnchorsNode;-><init>(Landroidx/compose/material3/SwipeToDismissBoxState;ZZ)V

    .line 402
    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 391
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->create()Landroidx/compose/material3/SwipeToDismissAnchorsNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 411
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 412
    :cond_0
    const-string/jumbo v1, "null cannot be cast to non-null type androidx.compose.material3.SwipeToDismissAnchorsElement"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    .line 413
    iget-object v1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    move-object v2, p1

    check-cast v2, Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    iget-object v2, v2, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 414
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    move-object v3, p1

    check-cast v3, Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    iget-boolean v3, v3, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 415
    :cond_2
    iget-boolean v1, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    move-object v3, p1

    check-cast v3, Landroidx/compose/material3/SwipeToDismissAnchorsElement;

    iget-boolean v3, v3, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 416
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 420
    iget-object v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-virtual {v0}, Landroidx/compose/material3/SwipeToDismissBoxState;->hashCode()I

    move-result v0

    .line 421
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 2
    .param p1, "$this$inspectableProperties"    # Landroidx/compose/ui/platform/InspectorInfo;

    .line 427
    const/4 v0, 0x0

    .line 481
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/material3/SwipeToDismissAnchorsElement$inspectableProperties$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p0}, Landroidx/compose/material3/SwipeToDismissAnchorsElement$inspectableProperties$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/material3/SwipeToDismissAnchorsElement;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 432
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    return-void
.end method

.method public update(Landroidx/compose/material3/SwipeToDismissAnchorsNode;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/material3/SwipeToDismissAnchorsNode;

    .line 405
    iget-object v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->state:Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-virtual {p1, v0}, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->setState(Landroidx/compose/material3/SwipeToDismissBoxState;)V

    .line 406
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromStartToEnd:Z

    invoke-virtual {p1, v0}, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->setEnableDismissFromStartToEnd(Z)V

    .line 407
    iget-boolean v0, p0, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->enableDismissFromEndToStart:Z

    invoke-virtual {p1, v0}, Landroidx/compose/material3/SwipeToDismissAnchorsNode;->setEnableDismissFromEndToStart(Z)V

    .line 408
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 391
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/SwipeToDismissAnchorsNode;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/SwipeToDismissAnchorsElement;->update(Landroidx/compose/material3/SwipeToDismissAnchorsNode;)V

    return-void
.end method
