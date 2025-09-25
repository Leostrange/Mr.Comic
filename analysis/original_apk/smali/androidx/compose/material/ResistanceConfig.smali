.class public final Landroidx/compose/material/ResistanceConfig;
.super Ljava/lang/Object;
.source "Swipeable.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Material\'s Swipeable has been replaced by Foundation\'s AnchoredDraggable APIs. Please see developer.android.com for an overview of the changes and a migration guide."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/material/ResistanceConfig;",
        "",
        "basis",
        "",
        "factorAtMin",
        "factorAtMax",
        "(FFF)V",
        "getBasis",
        "()F",
        "getFactorAtMax",
        "getFactorAtMin",
        "computeResistance",
        "overflow",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final basis:F

.field private final factorAtMax:F

.field private final factorAtMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "basis"    # F
    .param p2, "factorAtMin"    # F
    .param p3, "factorAtMax"    # F

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput p1, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    .line 704
    iput p2, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    .line 706
    iput p3, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    .line 700
    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 700
    and-int/lit8 p5, p4, 0x2

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p5, :cond_0

    .line 704
    move p2, v0

    .line 700
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 706
    move p3, v0

    .line 700
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ResistanceConfig;-><init>(FFF)V

    .line 736
    return-void
.end method


# virtual methods
.method public final computeResistance(F)F
    .locals 5
    .param p1, "overflow"    # F

    .line 709
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    .line 710
    .local v1, "factor":F
    :goto_0
    cmpg-float v2, v1, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    return v0

    .line 711
    :cond_2
    iget v0, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    div-float v0, p1, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 712
    .local v0, "progress":F
    iget v2, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    div-float/2addr v2, v1

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, v0

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 716
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 717
    :cond_0
    instance-of v1, p1, Landroidx/compose/material/ResistanceConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 719
    :cond_1
    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    move-object v3, p1

    check-cast v3, Landroidx/compose/material/ResistanceConfig;

    iget v3, v3, Landroidx/compose/material/ResistanceConfig;->basis:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    return v2

    .line 720
    :cond_3
    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    move-object v3, p1

    check-cast v3, Landroidx/compose/material/ResistanceConfig;

    iget v3, v3, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-nez v1, :cond_5

    return v2

    .line 721
    :cond_5
    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    move-object v3, p1

    check-cast v3, Landroidx/compose/material/ResistanceConfig;

    iget v3, v3, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-nez v1, :cond_7

    return v2

    .line 723
    :cond_7
    return v0
.end method

.method public final getBasis()F
    .locals 1

    .line 702
    iget v0, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    return v0
.end method

.method public final getFactorAtMax()F
    .locals 1

    .line 706
    iget v0, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    return v0
.end method

.method public final getFactorAtMin()F
    .locals 1

    .line 704
    iget v0, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 727
    iget v0, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    .line 728
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 729
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 730
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ResistanceConfig(basis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->basis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", factorAtMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", factorAtMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/ResistanceConfig;->factorAtMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
