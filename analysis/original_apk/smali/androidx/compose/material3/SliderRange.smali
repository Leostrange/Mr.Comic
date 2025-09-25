.class public final Landroidx/compose/material3/SliderRange;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/SliderRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderRange\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,2151:1\n34#2:2152\n41#2:2153\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material3/SliderRange\n*L\n2076#1:2152\n2089#1:2153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0081@\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u00078FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\u0088\u0001\u0002\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/material3/SliderRange;",
        "",
        "packedValue",
        "",
        "constructor-impl",
        "(J)J",
        "endInclusive",
        "",
        "getEndInclusive$annotations",
        "()V",
        "getEndInclusive-impl",
        "(J)F",
        "getPackedValue",
        "()J",
        "start",
        "getStart$annotations",
        "getStart-impl",
        "equals",
        "",
        "other",
        "equals-impl",
        "(JLjava/lang/Object;)Z",
        "hashCode",
        "",
        "hashCode-impl",
        "(J)I",
        "toString",
        "",
        "toString-impl",
        "(J)Ljava/lang/String;",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material3/SliderRange$Companion;

.field private static final Unspecified:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SliderRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/SliderRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/SliderRange;->Companion:Landroidx/compose/material3/SliderRange$Companion;

    .line 2098
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0, v0}, Landroidx/compose/material3/SliderKt;->SliderRange(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material3/SliderRange;->Unspecified:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0
    .param p1, "packedValue"    # J

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    return-void
.end method

.method public static final synthetic access$getUnspecified$cp()J
    .locals 2

    .line 2061
    sget-wide v0, Landroidx/compose/material3/SliderRange;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/material3/SliderRange;
    .locals 1

    new-instance v0, Landroidx/compose/material3/SliderRange;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/SliderRange;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/material3/SliderRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/compose/material3/SliderRange;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderRange;->unbox-impl()J

    move-result-wide v2

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic getEndInclusive$annotations()V
    .locals 0

    return-void
.end method

.method public static final getEndInclusive-impl(J)F
    .locals 5
    .param p0, "arg0"    # J

    .line 2086
    sget-wide v0, Landroidx/compose/material3/SliderRange;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2089
    move-wide v0, p0

    .local v0, "value$iv":J
    const/4 v2, 0x0

    .line 2153
    .local v2, "$i$f$unpackFloat2":I
    sget-object v3, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const-wide v3, 0xffffffffL

    and-long/2addr v3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 2089
    .end local v0    # "value$iv":J
    .end local v2    # "$i$f$unpackFloat2":I
    return v3

    .line 2086
    :cond_1
    const/4 v0, 0x0

    .line 2087
    .local v0, "$i$a$-check-SliderRange$endInclusive$1":I
    nop

    .line 2086
    .end local v0    # "$i$a$-check-SliderRange$endInclusive$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SliderRange is unspecified"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getStart$annotations()V
    .locals 0

    return-void
.end method

.method public static final getStart-impl(J)F
    .locals 5
    .param p0, "arg0"    # J

    .line 2073
    sget-wide v0, Landroidx/compose/material3/SliderRange;->Unspecified:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2076
    move-wide v0, p0

    .local v0, "value$iv":J
    const/4 v2, 0x0

    .line 2152
    .local v2, "$i$f$unpackFloat1":I
    sget-object v3, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 2076
    .end local v0    # "value$iv":J
    .end local v2    # "$i$f$unpackFloat1":I
    return v3

    .line 2073
    :cond_1
    const/4 v0, 0x0

    .line 2074
    .local v0, "$i$a$-check-SliderRange$start$1":I
    nop

    .line 2073
    .end local v0    # "$i$a$-check-SliderRange$start$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SliderRange is unspecified"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hashCode-impl(J)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 2
    .param p0, "arg0"    # J

    .line 2104
    invoke-static {p0, p1}, Landroidx/compose/material3/SliderKt;->isSpecified-If1S1O4(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderRange;->getStart-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderRange;->getEndInclusive-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2107
    :cond_0
    const-string v0, "FloatRange.Unspecified"

    .line 2108
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/material3/SliderRange;->equals-impl(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getPackedValue()J
    .locals 2

    .line 2064
    iget-wide v0, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2104
    iget-wide v0, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/material3/SliderRange;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    .line 2108
    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderRange;->packedValue:J

    return-wide v0
.end method
