.class public Landroidx/datastore/core/okio/OkioReadScope;
.super Ljava/lang/Object;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/ReadScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/ReadScope<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioReadScope\n+ 2 Okio.kt\nokio/Okio__OkioKt\n+ 3 FileSystem.kt\nokio/FileSystem\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n66#2:226\n52#2,5:228\n60#2,10:234\n57#2,2:244\n71#2,2:246\n67#3:227\n68#3:233\n1#4:248\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioReadScope\n*L\n177#1:226\n177#1:228,5\n177#1:234,10\n177#1:244,2\n177#1:246,2\n177#1:227\n177#1:233\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0004J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0015\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/datastore/core/okio/OkioReadScope;",
        "T",
        "Landroidx/datastore/core/ReadScope;",
        "fileSystem",
        "Lokio/FileSystem;",
        "path",
        "Lokio/Path;",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V",
        "closed",
        "Landroidx/datastore/core/okio/AtomicBoolean;",
        "getFileSystem",
        "()Lokio/FileSystem;",
        "getPath",
        "()Lokio/Path;",
        "getSerializer",
        "()Landroidx/datastore/core/okio/OkioSerializer;",
        "checkClose",
        "",
        "close",
        "readData",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "datastore-core-okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final closed:Landroidx/datastore/core/okio/AtomicBoolean;

.field private final fileSystem:Lokio/FileSystem;

.field private final path:Lokio/Path;

.field private final serializer:Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V
    .locals 2
    .param p1, "fileSystem"    # Lokio/FileSystem;
    .param p2, "path"    # Lokio/Path;
    .param p3, "serializer"    # Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    .line 167
    iput-object p2, p0, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    .line 168
    iput-object p3, p0, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 171
    new-instance v0, Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    .line 165
    return-void
.end method

.method static synthetic readData$suspendImpl(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/core/okio/OkioReadScope<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/okio/OkioReadScope$readData$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/okio/OkioReadScope$readData$1;-><init>(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 173
    iget v2, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$f$-read":I
    const/4 v1, 0x0

    .local v1, "$i$f$use":I
    const/4 v2, 0x0

    .local v2, "$i$a$-use-FileSystem$read$1$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$--read-OkioReadScope$readData$2":I
    iget-object v4, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/io/Closeable;

    .local v4, "$this$use$iv$iv":Ljava/io/Closeable;
    iget-object v5, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/core/okio/OkioReadScope;

    .local v5, "$this":Landroidx/datastore/core/okio/OkioReadScope;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    move-object v7, v6

    goto :goto_1

    .line 244
    .end local v2    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v3    # "$i$a$--read-OkioReadScope$readData$2":I
    :catchall_0
    move-exception v2

    move-object v3, v6

    .local v3, "result$iv$iv":Ljava/lang/Object;
    goto :goto_3

    .line 173
    .end local v1    # "$i$f$use":I
    .end local v3    # "result$iv$iv":Ljava/lang/Object;
    .end local v4    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v5    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    .line 174
    .restart local v5    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    invoke-virtual {v5}, Landroidx/datastore/core/okio/OkioReadScope;->checkClose()V

    .line 176
    nop

    .line 177
    :try_start_1
    iget-object p0, v5, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    .line 178
    .local p0, "this_$iv":Lokio/FileSystem;
    iget-object v2, v5, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    .line 177
    .local v2, "file$iv":Lokio/Path;
    nop

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "$i$f$-read":I
    invoke-virtual {p0, v2}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "file$iv":Lokio/Path;
    .end local p0    # "this_$iv":Lokio/FileSystem;
    .restart local v4    # "$this$use$iv$iv":Ljava/io/Closeable;
    const/4 p0, 0x0

    .line 228
    .local p0, "$i$f$use":I
    const/4 v6, 0x0

    .line 229
    .local v6, "result$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 231
    .local v2, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 232
    :try_start_2
    move-object v7, v4

    check-cast v7, Lokio/BufferedSource;

    .local v7, "it$iv":Lokio/BufferedSource;
    const/4 v8, 0x0

    .line 233
    .local v8, "$i$a$-use-FileSystem$read$1$iv":I
    nop

    .local v7, "$this$readData_u24lambda_u240":Lokio/BufferedSource;
    const/4 v9, 0x0

    .line 180
    .local v9, "$i$a$--read-OkioReadScope$readData$2":I
    iget-object v10, v5, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    iput-object v5, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, p1, Landroidx/datastore/core/okio/OkioReadScope$readData$1;->label:I

    invoke-interface {v10, v7, p1}, Landroidx/datastore/core/okio/OkioSerializer;->readFrom(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v7    # "$this$readData_u24lambda_u240":Lokio/BufferedSource;
    if-ne v10, v1, :cond_1

    .line 173
    return-object v1

    .line 180
    :cond_1
    move v1, p0

    move p0, v3

    move-object v7, v6

    move v3, v9

    move-object v6, v2

    move v2, v8

    .end local v6    # "result$iv$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v9    # "$i$a$--read-OkioReadScope$readData$2":I
    .restart local v1    # "$i$f$use":I
    .local v2, "$i$a$-use-FileSystem$read$1$iv":I
    .local v3, "$i$a$--read-OkioReadScope$readData$2":I
    .local p0, "$i$f$-read":I
    :goto_1
    nop

    .end local v2    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v3    # "$i$a$--read-OkioReadScope$readData$2":I
    move-object v2, v6

    .local v2, "thrown$iv$iv":Ljava/lang/Throwable;
    move-object v3, v7

    .line 233
    .local v3, "result$iv$iv":Ljava/lang/Object;
    nop

    .line 232
    move-object v3, v10

    .line 234
    nop

    .line 235
    if-eqz v4, :cond_2

    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 236
    .end local v2    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_1
    move-exception v2

    .line 237
    .local v2, "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 238
    move-object v4, v2

    .local v4, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 243
    .end local v4    # "thrown$iv$iv":Ljava/lang/Throwable;
    .local v2, "thrown$iv$iv":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    goto :goto_5

    .line 244
    .end local v1    # "$i$f$use":I
    .end local v2    # "thrown$iv$iv":Ljava/lang/Throwable;
    .local v3, "$i$f$-read":I
    .local v4, "$this$use$iv$iv":Ljava/io/Closeable;
    .restart local v6    # "result$iv$iv":Ljava/lang/Object;
    .local p0, "$i$f$use":I
    :catchall_2
    move-exception v2

    move v1, p0

    move p0, v3

    move-object v3, v6

    .line 245
    .end local v6    # "result$iv$iv":Ljava/lang/Object;
    .restart local v1    # "$i$f$use":I
    .local v2, "t$iv$iv":Ljava/lang/Throwable;
    .local v3, "result$iv$iv":Ljava/lang/Object;
    .local p0, "$i$f$-read":I
    :goto_3
    move-object v6, v2

    .line 234
    .end local v2    # "t$iv$iv":Ljava/lang/Throwable;
    .local v6, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 235
    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    .line 236
    .end local v4    # "$this$use$iv$iv":Ljava/io/Closeable;
    :catchall_3
    move-exception v2

    .line 237
    .restart local v2    # "t$iv$iv":Ljava/lang/Throwable;
    nop

    .line 226
    :try_start_5
    invoke-static {v6, v2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    nop

    .line 243
    .end local v2    # "t$iv$iv":Ljava/lang/Throwable;
    :cond_3
    :goto_4
    move-object v2, v6

    .line 246
    .end local v6    # "thrown$iv$iv":Ljava/lang/Throwable;
    .local v2, "thrown$iv$iv":Ljava/lang/Throwable;
    :goto_5
    if-nez v2, :cond_4

    .line 247
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    .end local v1    # "$i$f$use":I
    .end local v2    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v3    # "result$iv$iv":Ljava/lang/Object;
    nop

    .end local v5    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "$i$f$-read":I
    goto :goto_6

    .line 246
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$i$f$use":I
    .restart local v2    # "thrown$iv$iv":Ljava/lang/Throwable;
    .restart local v3    # "result$iv$iv":Ljava/lang/Object;
    .restart local p0    # "$i$f$-read":I
    :cond_4
    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 182
    .end local v1    # "$i$f$use":I
    .end local v2    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v3    # "result$iv$iv":Ljava/lang/Object;
    .end local p0    # "$i$f$-read":I
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v5    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catch_0
    move-exception p0

    .line 183
    .local p0, "ex":Ljava/io/FileNotFoundException;
    iget-object v1, v5, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    iget-object v2, v5, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 186
    iget-object v1, v5, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    invoke-interface {v1}, Landroidx/datastore/core/okio/OkioSerializer;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    .line 176
    .end local v5    # "$this":Landroidx/datastore/core/okio/OkioReadScope;
    .end local p0    # "ex":Ljava/io/FileNotFoundException;
    :goto_6
    return-object v3

    .line 184
    .restart local p0    # "ex":Ljava/io/FileNotFoundException;
    :cond_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected final checkClose()V
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    invoke-virtual {v0}, Landroidx/datastore/core/okio/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    .line 195
    .local v0, "$i$a$-check-OkioReadScope$checkClose$1":I
    nop

    .end local v0    # "$i$a$-check-OkioReadScope$checkClose$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This scope has already been closed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 191
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->closed:Landroidx/datastore/core/okio/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/core/okio/AtomicBoolean;->set(Z)V

    .line 192
    return-void
.end method

.method protected final getFileSystem()Lokio/FileSystem;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->fileSystem:Lokio/FileSystem;

    return-object v0
.end method

.method protected final getPath()Lokio/Path;
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->path:Lokio/Path;

    return-object v0
.end method

.method protected final getSerializer()Landroidx/datastore/core/okio/OkioSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioReadScope;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    return-object v0
.end method

.method public readData(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/datastore/core/okio/OkioReadScope;->readData$suspendImpl(Landroidx/datastore/core/okio/OkioReadScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
