.class public final Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
.super Landroidx/compose/animation/core/KeyframesSpecBaseConfig;
.source "AnimationSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/KeyframesSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyframesSpecConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/core/KeyframesSpecBaseConfig<",
        "TT;",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0006\u001a\u00028\u0001H\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003*\u00028\u00012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\u0096\u0004\u00a2\u0006\u0002\u0010\u000cJ \u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003*\u00028\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0096\u0004\u00a2\u0006\u0002\u0010\u0010J\u001b\u0010\u0011\u001a\u00020\u0012*\u0008\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0087\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;",
        "T",
        "Landroidx/compose/animation/core/KeyframesSpecBaseConfig;",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;",
        "()V",
        "createEntityFor",
        "value",
        "createEntityFor$animation_core_release",
        "(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;",
        "at",
        "timeStamp",
        "",
        "(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;",
        "atFraction",
        "fraction",
        "",
        "(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;",
        "with",
        "",
        "easing",
        "Landroidx/compose/animation/core/Easing;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 1
    .param p1, "$this$at"    # Ljava/lang/Object;
    .param p2, "timeStamp"    # I

    .line 505
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/KeyframeBaseEntity;

    return-object v0
.end method

.method public at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 4
    .param p1, "$this$at"    # Ljava/lang/Object;
    .param p2, "timeStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;"
        }
    .end annotation

    .line 519
    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "it":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    const/4 v2, 0x0

    .line 520
    .local v2, "$i$a$-also-KeyframesSpec$KeyframesSpecConfig$at$1":I
    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getKeyframes$animation_core_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 521
    nop

    .line 519
    .end local v1    # "it":Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .end local v2    # "$i$a$-also-KeyframesSpec$KeyframesSpecConfig$at$1":I
    return-object v0
.end method

.method public bridge synthetic atFraction(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 1
    .param p1, "$this$atFraction"    # Ljava/lang/Object;
    .param p2, "fraction"    # F

    .line 505
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->atFraction(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/KeyframeBaseEntity;

    return-object v0
.end method

.method public atFraction(Ljava/lang/Object;F)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 1
    .param p1, "$this$atFraction"    # Ljava/lang/Object;
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;"
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDurationMillis()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createEntityFor$animation_core_release(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframeBaseEntity;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 505
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->createEntityFor$animation_core_release(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/KeyframeBaseEntity;

    return-object v0
.end method

.method public createEntityFor$animation_core_release(Ljava/lang/Object;)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;"
        }
    .end annotation

    .line 506
    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final with(Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;Landroidx/compose/animation/core/Easing;)V
    .locals 0
    .param p1, "$this$with"    # Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .param p2, "easing"    # Landroidx/compose/animation/core/Easing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;",
            "Landroidx/compose/animation/core/Easing;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use version that returns an instance of the entity so it can be re-used in other keyframe builders."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this using easing"
            imports = {}
        .end subannotation
    .end annotation

    .line 551
    invoke-virtual {p1, p2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->setEasing$animation_core_release(Landroidx/compose/animation/core/Easing;)V

    .line 552
    return-void
.end method
