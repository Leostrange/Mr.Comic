.class public final Lcom/jakewharton/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/disklrucache/DiskLruCache$Entry;,
        Lcom/jakewharton/disklrucache/DiskLruCache$Editor;,
        Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/jakewharton/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 713
    new-instance v0, Lcom/jakewharton/disklrucache/DiskLruCache$2;

    invoke-direct {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 180
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    .line 150
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 159
    iput-wide v2, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 162
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 164
    new-instance v2, Lcom/jakewharton/disklrucache/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/jakewharton/disklrucache/DiskLruCache$1;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    iput-object v2, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 181
    iput-object v1, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 182
    move/from16 v2, p2

    iput v2, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->appVersion:I

    .line 183
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 184
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 185
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 186
    move/from16 v3, p3

    iput v3, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    .line 187
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/jakewharton/disklrucache/DiskLruCache;->maxSize:J

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 88
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/jakewharton/disklrucache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 88
    iget v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/jakewharton/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 88
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jakewharton/disklrucache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/io/OutputStream;
    .locals 1

    .line 88
    sget-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .param p1, "x1"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/disklrucache/DiskLruCache;->completeEdit(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/jakewharton/disklrucache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jakewharton/disklrucache/DiskLruCache;
    .param p1, "x1"    # I

    .line 88
    iput p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 616
    return-void

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;Z)V
    .locals 10
    .param p1, "editor"    # Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 509
    :try_start_0
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->access$1400(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    move-result-object v0

    .line 510
    .local v0, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 515
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_2

    .line 517
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->access$1500(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 516
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .line 519
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5

    .line 529
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 530
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 532
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 533
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 534
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 535
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 536
    .local v6, "newLength":J
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 537
    iget-wide v8, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    .line 538
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_2

    .line 540
    :cond_3
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 528
    .end local v2    # "dirty":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    .end local v1    # "i":I
    :cond_5
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 545
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$702(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 546
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_6

    .line 547
    invoke-static {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$602(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Z)Z

    .line 548
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    if-eqz p2, :cond_7

    .line 550
    iget-wide v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1202(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;J)J

    goto :goto_3

    .line 553
    :cond_6
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 556
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 558
    iget-wide v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_8

    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 559
    :cond_8
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :cond_9
    monitor-exit p0

    return-void

    .line 511
    :cond_a
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    .end local v0    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .end local p1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 388
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 455
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 457
    .local v0, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v3, p2

    if-eqz v1, :cond_1

    .line 459
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-object v2

    .line 461
    :cond_1
    if-nez v0, :cond_2

    .line 462
    :try_start_1
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    move-object v0, v1

    .line 463
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 465
    monitor-exit p0

    return-object v2

    .line 468
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    .line 469
    .local v1, "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$702(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 472
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    monitor-exit p0

    return-object v1

    .line 453
    .end local v0    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .end local v1    # "editor":Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/jakewharton/disklrucache/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/jakewharton/disklrucache/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 568
    const/16 v0, 0x7d0

    .line 569
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    .line 204
    if-lez p2, :cond_3

    .line 209
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 216
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 221
    .end local v1    # "journalFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/jakewharton/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 222
    .local v1, "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    iget-object v2, v1, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    :try_start_0
    invoke-direct {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->readJournal()V

    .line 225
    invoke-direct {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->processJournal()V

    .line 226
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/jakewharton/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, v1, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return-object v1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V

    .line 241
    .end local v2    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v2, Lcom/jakewharton/disklrucache/DiskLruCache;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/jakewharton/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v1, v2

    .line 243
    invoke-direct {v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 244
    return-object v1

    .line 205
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "cache":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jakewharton/disklrucache/DiskLruCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 326
    .local v1, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 327
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 328
    iget-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "t":I
    :cond_0
    goto :goto_3

    .line 331
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$702(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 332
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 333
    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    invoke-virtual {v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/jakewharton/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 336
    .end local v2    # "t":I
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 338
    .end local v1    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    :goto_3
    goto :goto_0

    .line 339
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/jakewharton/disklrucache/DiskLruCache$Entry;>;"
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const-string v0, ", "

    new-instance v1, Lcom/jakewharton/disklrucache/StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/jakewharton/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 250
    .local v1, "reader":Lcom/jakewharton/disklrucache/StrictLineReader;
    :try_start_0
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "magic":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    .local v0, "lineCount":I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/jakewharton/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jakewharton/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 273
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_2
    iget-object v7, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    nop

    .line 277
    return-void

    .line 260
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reader":Lcom/jakewharton/disklrucache/StrictLineReader;
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "reader":Lcom/jakewharton/disklrucache/StrictLineReader;
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 281
    .local v1, "firstSpace":I
    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 285
    add-int/lit8 v4, v1, 0x1

    .line 286
    .local v4, "keyBegin":I
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 288
    .local v0, "secondSpace":I
    if-ne v0, v3, :cond_0

    .line 289
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    iget-object v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void

    .line 295
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 298
    .restart local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 299
    .local v6, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 300
    new-instance v8, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    invoke-direct {v8, p0, v5, v7}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    move-object v6, v8

    .line 301
    iget-object v8, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_2
    if-eq v0, v3, :cond_3

    const-string v8, "CLEAN"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_3

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 305
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v6, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$602(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Z)Z

    .line 307
    invoke-static {v6, v7}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$702(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    .line 308
    invoke-static {v6, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$800(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 309
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const-string v8, "DIRTY"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_4

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 310
    new-instance v2, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v6, v7}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$1;)V

    invoke-static {v6, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$702(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    goto :goto_0

    .line 311
    :cond_4
    if-ne v0, v3, :cond_5

    const-string v3, "READ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v0    # "secondSpace":I
    .end local v4    # "keyBegin":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 350
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/jakewharton/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 355
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 364
    .local v2, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1100(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    :goto_1
    goto :goto_0

    .line 371
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 372
    nop

    .line 374
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v1, v3, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/jakewharton/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 378
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 380
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v2, Lcom/jakewharton/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 345
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    if-eqz p2, :cond_0

    .line 392
    invoke-static {p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    return-void

    .line 395
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    nop

    :goto_0
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 644
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jakewharton/disklrucache/DiskLruCache$Entry;>;"
    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 658
    sget-object v0, Lcom/jakewharton/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 659
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    return-void

    .line 660
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 628
    monitor-exit p0

    return-void

    .line 630
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 631
    .local v1, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 632
    invoke-static {v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V

    .end local v1    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_1
    goto :goto_0

    .line 635
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->trimToSize()V

    .line 636
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    monitor-exit p0

    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->close()V

    .line 654
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 655
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 621
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->trimToSize()V

    .line 622
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 619
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 406
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .local v0, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 409
    monitor-exit p0

    return-object v1

    .line 412
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$600(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 413
    monitor-exit p0

    return-object v1

    .line 419
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    .local v2, "ins":[Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_2

    .line 422
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v2, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_2
    nop

    .line 436
    :try_start_4
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 437
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 438
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 442
    :cond_3
    new-instance v1, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1200(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v10}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/jakewharton/disklrucache/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    .line 424
    :catch_0
    move-exception v3

    .line 426
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_5
    iget v5, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v4, v5, :cond_4

    .line 427
    aget-object v5, v2, v4

    if-eqz v5, :cond_4

    .line 428
    aget-object v5, v2, v4

    invoke-static {v5}, Lcom/jakewharton/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    .end local v4    # "i":I
    :cond_4
    monitor-exit p0

    return-object v1

    .line 404
    .end local v0    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .end local v2    # "ins":[Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 487
    :try_start_0
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 487
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 609
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 580
    :try_start_0
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 581
    invoke-direct {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;

    .line 583
    .local v0, "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$700(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 587
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 588
    invoke-virtual {v0, v1}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 589
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 590
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :cond_2
    :goto_1
    iget-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J

    .line 593
    invoke-static {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Entry;->access$1000(Lcom/jakewharton/disklrucache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 587
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 597
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-direct {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 601
    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_4
    monitor-exit p0

    return v2

    .line 584
    :cond_5
    :goto_2
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 579
    .end local v0    # "entry":Lcom/jakewharton/disklrucache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 495
    :try_start_0
    iput-wide p1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->maxSize:J

    .line 496
    iget-object v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 494
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    .end local p1    # "maxSize":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 505
    :try_start_0
    iget-wide v0, p0, Lcom/jakewharton/disklrucache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 505
    .end local p0    # "this":Lcom/jakewharton/disklrucache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
