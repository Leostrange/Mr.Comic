.class final Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Utils.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->createTransitionInfo(Landroidx/compose/animation/core/Animation;Ljava/lang/String;Landroidx/compose/animation/core/AnimationSpec;J)Landroidx/compose/animation/tooling/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $endTimeMs:J

.field final synthetic $startTimeMs$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stepMs:J

.field final synthetic $this_createTransitionInfo:Landroidx/compose/animation/core/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Animation;JJLkotlin/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;JJ",
            "Lkotlin/Lazy<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Animation;

    iput-wide p2, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$endTimeMs:J

    iput-wide p4, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$stepMs:J

    iput-object p6, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 115
    .local v0, "values":Ljava/util/Map;
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->access$createTransitionInfo$lambda$1(Lkotlin/Lazy;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Animation;

    .line 116
    iget-object v3, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v3}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->access$createTransitionInfo$lambda$1(Lkotlin/Lazy;)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->millisToNanos(J)J

    move-result-wide v3

    .line 115
    invoke-interface {v2, v3, v4}, Landroidx/compose/animation/core/Animation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-wide v1, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Animation;

    iget-wide v3, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$endTimeMs:J

    invoke-static {v3, v4}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->millisToNanos(J)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/compose/animation/core/Animation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$startTimeMs$delegate:Lkotlin/Lazy;

    invoke-static {v1}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->access$createTransitionInfo$lambda$1(Lkotlin/Lazy;)J

    move-result-wide v1

    .line 121
    .local v1, "millis":J
    :goto_0
    iget-wide v3, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$endTimeMs:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 122
    iget-object v4, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$this_createTransitionInfo:Landroidx/compose/animation/core/Animation;

    invoke-static {v1, v2}, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt;->millisToNanos(J)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroidx/compose/animation/core/Animation;->getValueFromNanos(J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-wide v3, p0, Landroidx/compose/ui/tooling/animation/clock/Utils_androidKt$createTransitionInfo$values$2;->$stepMs:J

    add-long/2addr v1, v3

    goto :goto_0

    .line 125
    :cond_0
    return-object v0
.end method
