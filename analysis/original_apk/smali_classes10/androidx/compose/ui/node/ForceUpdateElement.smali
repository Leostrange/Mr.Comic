.class final Landroidx/compose/ui/node/ForceUpdateElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "NodeChain.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/Modifier$Node;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u00c6\u0003J\u0017\u0010\u0008\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u00c6\u0001J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u0015\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/node/ForceUpdateElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/Modifier$Node;",
        "original",
        "(Landroidx/compose/ui/node/ModifierNodeElement;)V",
        "getOriginal",
        "()Landroidx/compose/ui/node/ModifierNodeElement;",
        "component1",
        "copy",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "update",
        "",
        "node",
        "ui_release"
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
.field private final original:Landroidx/compose/ui/node/ModifierNodeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/ModifierNodeElement;)V
    .locals 0
    .param p1, "original"    # Landroidx/compose/ui/node/ModifierNodeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "*>;)V"
        }
    .end annotation

    .line 853
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 852
    iput-object p1, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/node/ForceUpdateElement;Landroidx/compose/ui/node/ModifierNodeElement;ILjava/lang/Object;)Landroidx/compose/ui/node/ForceUpdateElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/ForceUpdateElement;->copy(Landroidx/compose/ui/node/ModifierNodeElement;)Landroidx/compose/ui/node/ForceUpdateElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/node/ModifierNodeElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    return-object v0
.end method

.method public final copy(Landroidx/compose/ui/node/ModifierNodeElement;)Landroidx/compose/ui/node/ForceUpdateElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "*>;)",
            "Landroidx/compose/ui/node/ForceUpdateElement;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/ui/node/ForceUpdateElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/node/ForceUpdateElement;-><init>(Landroidx/compose/ui/node/ModifierNodeElement;)V

    return-object v0
.end method

.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/node/ForceUpdateElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/node/ForceUpdateElement;

    iget-object v3, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    iget-object v1, v1, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOriginal()Landroidx/compose/ui/node/ModifierNodeElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/node/ModifierNodeElement<",
            "*>;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ModifierNodeElement;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceUpdateElement(original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/ForceUpdateElement;->original:Landroidx/compose/ui/node/ModifierNodeElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 859
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
