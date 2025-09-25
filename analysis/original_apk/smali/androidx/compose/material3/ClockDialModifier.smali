.class public final Landroidx/compose/material3/ClockDialModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "TimePicker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/ClockDialNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0008\u001a\u00020\u0004H\u00c2\u0003J\t\u0010\t\u001a\u00020\u0006H\u00c2\u0003J\u001d\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0013\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u000c\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/material3/ClockDialModifier;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/ClockDialNode;",
        "state",
        "Landroidx/compose/material3/TimePickerState;",
        "autoSwitchToMinute",
        "",
        "(Landroidx/compose/material3/TimePickerState;Z)V",
        "component1",
        "component2",
        "copy",
        "create",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final autoSwitchToMinute:Z

.field private final state:Landroidx/compose/material3/TimePickerState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/TimePickerState;Z)V
    .locals 0
    .param p1, "state"    # Landroidx/compose/material3/TimePickerState;
    .param p2, "autoSwitchToMinute"    # Z

    .line 1247
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 1245
    iput-object p1, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    .line 1246
    iput-boolean p2, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    .line 1244
    return-void
.end method

.method private final component1()Landroidx/compose/material3/TimePickerState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    return-object v0
.end method

.method private final component2()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    return v0
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/ClockDialModifier;Landroidx/compose/material3/TimePickerState;ZILjava/lang/Object;)Landroidx/compose/material3/ClockDialModifier;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ClockDialModifier;->copy(Landroidx/compose/material3/TimePickerState;Z)Landroidx/compose/material3/ClockDialModifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/material3/TimePickerState;Z)Landroidx/compose/material3/ClockDialModifier;
    .locals 1

    new-instance v0, Landroidx/compose/material3/ClockDialModifier;

    invoke-direct {v0, p1, p2}, Landroidx/compose/material3/ClockDialModifier;-><init>(Landroidx/compose/material3/TimePickerState;Z)V

    return-object v0
.end method

.method public create()Landroidx/compose/material3/ClockDialNode;
    .locals 3

    .line 1249
    new-instance v0, Landroidx/compose/material3/ClockDialNode;

    .line 1250
    iget-object v1, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    .line 1251
    iget-boolean v2, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    .line 1249
    invoke-direct {v0, v1, v2}, Landroidx/compose/material3/ClockDialNode;-><init>(Landroidx/compose/material3/TimePickerState;Z)V

    .line 1252
    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    .line 1243
    invoke-virtual {p0}, Landroidx/compose/material3/ClockDialModifier;->create()Landroidx/compose/material3/ClockDialNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/ClockDialModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/compose/material3/ClockDialModifier;

    iget-object v3, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    iget-object v4, v1, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    iget-boolean v1, v1, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v0}, Landroidx/compose/material3/TimePickerState;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0
    .param p1, "$this$inspectableProperties"    # Landroidx/compose/ui/platform/InspectorInfo;

    .line 1263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClockDialModifier(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoSwitchToMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroidx/compose/material3/ClockDialNode;)V
    .locals 2
    .param p1, "node"    # Landroidx/compose/material3/ClockDialNode;

    .line 1255
    nop

    .line 1256
    iget-object v0, p0, Landroidx/compose/material3/ClockDialModifier;->state:Landroidx/compose/material3/TimePickerState;

    .line 1257
    iget-boolean v1, p0, Landroidx/compose/material3/ClockDialModifier;->autoSwitchToMinute:Z

    .line 1255
    invoke-virtual {p1, v0, v1}, Landroidx/compose/material3/ClockDialNode;->updateNode(Landroidx/compose/material3/TimePickerState;Z)V

    .line 1259
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 1243
    move-object v0, p1

    check-cast v0, Landroidx/compose/material3/ClockDialNode;

    invoke-virtual {p0, v0}, Landroidx/compose/material3/ClockDialModifier;->update(Landroidx/compose/material3/ClockDialNode;)V

    return-void
.end method
