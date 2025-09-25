.class final Lcom/github/junrar/Archive$ExtractorExecutorHolder;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/junrar/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorExecutorHolder"
.end annotation


# static fields
.field private static final cachedExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static final threadIndex:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static synthetic $r8$lambda$Igo2_uSZRCxpiknzZ5VtqFp77VI(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 595
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->threadIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 600
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    .line 601
    invoke-static {}, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->getMaxThreads()I

    move-result v3

    .line 602
    invoke-static {}, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->getThreadKeepAlive()I

    move-result v1

    int-to-long v4, v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda1;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->cachedExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 600
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 591
    sget-object v0, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->cachedExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static getMaxThreads()I
    .locals 3

    .line 611
    new-instance v0, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda0;-><init>()V

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "junrar.extractor.max-threads"

    invoke-static {v2, v0, v1}, Lcom/github/junrar/Archive;->access$000(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getThreadKeepAlive()I
    .locals 3

    .line 615
    new-instance v0, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/github/junrar/Archive$ExtractorExecutorHolder$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "junrar.extractor.thread-keep-alive-seconds"

    invoke-static {v2, v0, v1}, Lcom/github/junrar/Archive;->access$000(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 605
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "junrar-extractor-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/github/junrar/Archive$ExtractorExecutorHolder;->threadIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 606
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 607
    return-object v0
.end method
