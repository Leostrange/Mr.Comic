.class public final Landroidx/compose/material3/carousel/Strategy;
.super Ljava/lang/Object;
.source "Strategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/carousel/Strategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014BK\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\'\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/material3/carousel/Strategy;",
        "",
        "defaultKeylines",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "startKeylineSteps",
        "",
        "endKeylineSteps",
        "startShiftDistance",
        "",
        "endShiftDistance",
        "startShiftPoints",
        "Landroidx/collection/FloatList;",
        "endShiftPoints",
        "(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;)V",
        "getKeylineListForScrollOffset",
        "scrollOffset",
        "maxScrollOffset",
        "roundToNearestStep",
        "",
        "getKeylineListForScrollOffset$material3_release",
        "Companion",
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

.field public static final Companion:Landroidx/compose/material3/carousel/Strategy$Companion;


# instance fields
.field private final defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

.field private final endKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final endShiftDistance:F

.field private final endShiftPoints:Landroidx/collection/FloatList;

.field private final startKeylineSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;"
        }
    .end annotation
.end field

.field private final startShiftDistance:F

.field private final startShiftPoints:Landroidx/collection/FloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/carousel/Strategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/carousel/Strategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/carousel/Strategy;->Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/material3/carousel/Strategy;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;)V
    .locals 0
    .param p1, "defaultKeylines"    # Landroidx/compose/material3/carousel/KeylineList;
    .param p2, "startKeylineSteps"    # Ljava/util/List;
    .param p3, "endKeylineSteps"    # Ljava/util/List;
    .param p4, "startShiftDistance"    # F
    .param p5, "endShiftDistance"    # F
    .param p6, "startShiftPoints"    # Landroidx/collection/FloatList;
    .param p7, "endShiftPoints"    # Landroidx/collection/FloatList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/carousel/KeylineList;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/material3/carousel/KeylineList;",
            ">;FF",
            "Landroidx/collection/FloatList;",
            "Landroidx/collection/FloatList;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    .line 80
    iput-object p2, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    .line 81
    iput-object p3, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    .line 82
    iput p4, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    .line 83
    iput p5, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    .line 84
    iput-object p6, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    .line 85
    iput-object p7, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    .line 78
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/carousel/Strategy;-><init>(Landroidx/compose/material3/carousel/KeylineList;Ljava/util/List;Ljava/util/List;FFLandroidx/collection/FloatList;Landroidx/collection/FloatList;)V

    return-void
.end method

.method public static synthetic getKeylineListForScrollOffset$material3_release$default(Landroidx/compose/material3/carousel/Strategy;FFZILjava/lang/Object;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 0

    .line 95
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 98
    const/4 p3, 0x0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/carousel/Strategy;->getKeylineListForScrollOffset$material3_release(FFZ)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getKeylineListForScrollOffset$material3_release(FFZ)Landroidx/compose/material3/carousel/KeylineList;
    .locals 9
    .param p1, "scrollOffset"    # F
    .param p2, "maxScrollOffset"    # F
    .param p3, "roundToNearestStep"    # Z

    .line 100
    iget v0, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftDistance:F

    .line 101
    .local v0, "startShiftOffset":F
    iget v1, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftDistance:F

    sub-float v1, p2, v1

    .line 104
    .local v1, "endShiftOffset":F
    cmpg-float v2, v0, p1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 105
    iget-object v2, p0, Landroidx/compose/material3/carousel/Strategy;->defaultKeylines:Landroidx/compose/material3/carousel/KeylineList;

    return-object v2

    .line 109
    :cond_1
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 108
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v0, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v4

    .line 115
    .local v4, "interpolation":F
    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->startShiftPoints:Landroidx/collection/FloatList;

    .line 116
    .local v5, "shiftPoints":Landroidx/collection/FloatList;
    iget-object v6, p0, Landroidx/compose/material3/carousel/Strategy;->startKeylineSteps:Ljava/util/List;

    .line 118
    .local v6, "steps":Ljava/util/List;
    cmpl-float v7, p1, v1

    if-lez v7, :cond_2

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 119
    invoke-static {v3, v2, v1, p2, p1}, Landroidx/compose/material3/carousel/StrategyKt;->access$lerp(FFFFF)F

    move-result v4

    .line 126
    iget-object v5, p0, Landroidx/compose/material3/carousel/Strategy;->endShiftPoints:Landroidx/collection/FloatList;

    .line 127
    iget-object v6, p0, Landroidx/compose/material3/carousel/Strategy;->endKeylineSteps:Ljava/util/List;

    .line 130
    :cond_2
    sget-object v2, Landroidx/compose/material3/carousel/Strategy;->Companion:Landroidx/compose/material3/carousel/Strategy$Companion;

    .line 131
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 132
    nop

    .line 133
    nop

    .line 130
    invoke-static {v2, v3, v5, v4}, Landroidx/compose/material3/carousel/Strategy$Companion;->access$getShiftPointRange(Landroidx/compose/material3/carousel/Strategy$Companion;ILandroidx/collection/FloatList;F)Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;

    move-result-object v2

    .line 136
    .local v2, "shiftPointRange":Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;
    if-eqz p3, :cond_4

    .line 137
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getSteppedInterpolation()F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    if-nez v3, :cond_3

    .line 138
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getFromStepIndex()I

    move-result v3

    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getToStepIndex()I

    move-result v3

    .line 137
    :goto_0
    nop

    .line 142
    .local v3, "roundedStepIndex":I
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/carousel/KeylineList;

    return-object v7

    .line 146
    .end local v3    # "roundedStepIndex":I
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getFromStepIndex()I

    move-result v3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/carousel/KeylineList;

    .line 147
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getToStepIndex()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/material3/carousel/KeylineList;

    .line 148
    invoke-virtual {v2}, Landroidx/compose/material3/carousel/Strategy$Companion$ShiftPointRange;->getSteppedInterpolation()F

    move-result v8

    .line 145
    invoke-static {v3, v7, v8}, Landroidx/compose/material3/carousel/StrategyKt;->lerp(Landroidx/compose/material3/carousel/KeylineList;Landroidx/compose/material3/carousel/KeylineList;F)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v3

    return-object v3
.end method
