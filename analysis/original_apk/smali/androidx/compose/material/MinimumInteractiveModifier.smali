.class public final Landroidx/compose/material/MinimumInteractiveModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "InteractiveComponentSize.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material/MinimumInteractiveModifierNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u000c\u0010\u000e\u001a\u00020\u000c*\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/material/MinimumInteractiveModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material/MinimumInteractiveModifierNode;",
        "()V",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/MinimumInteractiveModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material/MinimumInteractiveModifier;

    invoke-direct {v0}, Landroidx/compose/material/MinimumInteractiveModifier;-><init>()V

    sput-object v0, Landroidx/compose/material/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material/MinimumInteractiveModifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material/MinimumInteractiveModifierNode;
    .locals 1

    .line 54
    new-instance v0, Landroidx/compose/material/MinimumInteractiveModifierNode;

    invoke-direct {v0}, Landroidx/compose/material/MinimumInteractiveModifierNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroidx/compose/material/MinimumInteractiveModifier;->create()Landroidx/compose/material/MinimumInteractiveModifierNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 67
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3
    .param p1, "$this$inspectableProperties"    # Landroidx/compose/ui/platform/InspectorInfo;

    .line 59
    const-string/jumbo v0, "minimumInteractiveComponentSize"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string/jumbo v1, "README"

    const-string/jumbo v2, "Reserves at least 48.dp in size to disambiguate touch interactions if the element would measure smaller"

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public update(Landroidx/compose/material/MinimumInteractiveModifierNode;)V
    .locals 0
    .param p1, "node"    # Landroidx/compose/material/MinimumInteractiveModifierNode;

    .line 56
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 51
    move-object v0, p1

    check-cast v0, Landroidx/compose/material/MinimumInteractiveModifierNode;

    invoke-virtual {p0, v0}, Landroidx/compose/material/MinimumInteractiveModifier;->update(Landroidx/compose/material/MinimumInteractiveModifierNode;)V

    return-void
.end method
