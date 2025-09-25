.class public final synthetic Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/mrcomic/core/data/cache/EnhancedImageCache;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;->f$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iput-wide p2, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;->f$0:Lcom/mrcomic/core/data/cache/EnhancedImageCache;

    iget-wide v1, p0, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Lcom/mrcomic/core/data/cache/CacheStatistics;

    invoke-static {v0, v1, v2, p1}, Lcom/mrcomic/core/data/cache/EnhancedImageCache$getBitmap$2;->$r8$lambda$6tVwz_5f51hZMDZVR06qHS0bXnc(Lcom/mrcomic/core/data/cache/EnhancedImageCache;JLcom/mrcomic/core/data/cache/CacheStatistics;)Lcom/mrcomic/core/data/cache/CacheStatistics;

    move-result-object p1

    return-object p1
.end method
