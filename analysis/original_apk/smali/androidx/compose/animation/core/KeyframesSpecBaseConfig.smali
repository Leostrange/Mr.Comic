.class public abstract Landroidx/compose/animation/core/KeyframesSpecBaseConfig;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Landroidx/compose/animation/core/KeyframeBaseEntity<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u000e\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u0004B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0013\u001a\u00028\u00012\u0006\u0010\u0014\u001a\u00028\u0000H \u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001c\u0010\u0017\u001a\u00028\u0001*\u00028\u00002\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0007H\u0096\u0004\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\u001a\u001a\u00028\u0001*\u00028\u00002\u0006\u0010\u001b\u001a\u00020\u001cH\u0096\u0004\u00a2\u0006\u0002\u0010\u001dJ\u001a\u0010\u001e\u001a\u00028\u0001*\u00028\u00012\u0006\u0010\u001f\u001a\u00020 H\u0086\u0004\u00a2\u0006\u0002\u0010!R\u001c\u0010\u0006\u001a\u00020\u00078GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u00020\u00078GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u0082\u0001\u0002\"#\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/animation/core/KeyframesSpecBaseConfig;",
        "T",
        "E",
        "Landroidx/compose/animation/core/KeyframeBaseEntity;",
        "",
        "()V",
        "delayMillis",
        "",
        "getDelayMillis",
        "()I",
        "setDelayMillis",
        "(I)V",
        "durationMillis",
        "getDurationMillis",
        "setDurationMillis",
        "keyframes",
        "Landroidx/collection/MutableIntObjectMap;",
        "getKeyframes$animation_core_release",
        "()Landroidx/collection/MutableIntObjectMap;",
        "createEntityFor",
        "value",
        "createEntityFor$animation_core_release",
        "(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframeBaseEntity;",
        "at",
        "timeStamp",
        "(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframeBaseEntity;",
        "atFraction",
        "fraction",
        "",
        "(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframeBaseEntity;",
        "using",
        "easing",
        "Landroidx/compose/animation/core/Easing;",
        "(Landroidx/compose/animation/core/KeyframeBaseEntity;Landroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/KeyframeBaseEntity;",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;",
        "Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;",
        "animation-core_release"
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
.field private delayMillis:I

.field private durationMillis:I

.field private final keyframes:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/16 v0, 0x12c

    iput v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    .line 416
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->keyframes:Landroidx/collection/MutableIntObjectMap;

    .line 401
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 2
    .param p1, "$this$at"    # Ljava/lang/Object;
    .param p2, "timeStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TE;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->createEntityFor$animation_core_release(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframeBaseEntity;

    move-result-object v0

    .line 435
    .local v0, "entity":Landroidx/compose/animation/core/KeyframeBaseEntity;
    iget-object v1, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->keyframes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 436
    return-object v0
.end method

.method public atFraction(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 1
    .param p1, "$this$atFraction"    # Ljava/lang/Object;
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TE;"
        }
    .end annotation

    .line 451
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframeBaseEntity;

    move-result-object v0

    return-object v0
.end method

.method public abstract createEntityFor$animation_core_release(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TE;"
        }
    .end annotation
.end method

.method public final getDelayMillis()I
    .locals 1

    .line 414
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->delayMillis:I

    return v0
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 407
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    return v0
.end method

.method public final getKeyframes$animation_core_release()Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "TE;>;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->keyframes:Landroidx/collection/MutableIntObjectMap;

    return-object v0
.end method

.method public final setDelayMillis(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 414
    iput p1, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->delayMillis:I

    return-void
.end method

.method public final setDurationMillis(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 407
    iput p1, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->durationMillis:I

    return-void
.end method

.method public final using(Landroidx/compose/animation/core/KeyframeBaseEntity;Landroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 0
    .param p1, "$this$using"    # Landroidx/compose/animation/core/KeyframeBaseEntity;
    .param p2, "easing"    # Landroidx/compose/animation/core/Easing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroidx/compose/animation/core/Easing;",
            ")TE;"
        }
    .end annotation

    .line 463
    invoke-virtual {p1, p2}, Landroidx/compose/animation/core/KeyframeBaseEntity;->setEasing$animation_core_release(Landroidx/compose/animation/core/Easing;)V

    .line 464
    return-object p1
.end method
