.class public Landroidx/datastore/preferences/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

.field private extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

.field protected volatile value:Landroidx/datastore/preferences/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 0
    .param p1, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->checkArguments(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 120
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 121
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 122
    return-void
.end method

.method private static checkArguments(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 2
    .param p0, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 434
    if-eqz p0, :cond_1

    .line 437
    if-eqz p1, :cond_0

    .line 440
    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/LazyFieldLite;
    .locals 1
    .param p0, "value"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 132
    new-instance v0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;-><init>()V

    .line 133
    .local v0, "lf":Landroidx/datastore/preferences/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 134
    return-object v0
.end method

.method private static mergeValueAndBytes(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1
    .param p0, "value"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .param p1, "otherBytes"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "otherBytes",
            "extensionRegistry"
        }
    .end annotation

    .line 333
    :try_start_0
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->toBuilder()Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 193
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 194
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 195
    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    sget-object v1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3
    .param p1, "defaultInstance"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 414
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 416
    nop

    .line 417
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/MessageLite;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/Parser;->parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 418
    .local v0, "parsedValue":Landroidx/datastore/preferences/protobuf/MessageLite;
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 419
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 420
    .end local v0    # "parsedValue":Landroidx/datastore/preferences/protobuf/MessageLite;
    goto :goto_0

    .line 421
    :cond_2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 422
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :goto_0
    goto :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    :try_start_2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 428
    sget-object v1, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 430
    .end local v0    # "e":Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
    :goto_1
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 139
    if-ne p0, p1, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    .line 153
    .local v0, "other":Landroidx/datastore/preferences/protobuf/LazyFieldLite;
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 154
    .local v1, "value1":Landroidx/datastore/preferences/protobuf/MessageLite;
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 155
    .local v2, "value2":Landroidx/datastore/preferences/protobuf/MessageLite;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->toByteString()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->toByteString()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 157
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 159
    :cond_3
    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v1}, Landroidx/datastore/preferences/protobuf/MessageLite;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->getValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 162
    :cond_4
    invoke-interface {v2}, Landroidx/datastore/preferences/protobuf/MessageLite;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->getValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 361
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 364
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1
    .param p1, "defaultInstance"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 223
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->ensureInitialized(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 224
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)V
    .locals 3
    .param p1, "other"    # Landroidx/datastore/preferences/protobuf/LazyFieldLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->set(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)V

    .line 256
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 270
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->concat(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 272
    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->mergeValueAndBytes(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 280
    return-void

    .line 281
    :cond_4
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->mergeValueAndBytes(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 283
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite;->toBuilder()Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 288
    return-void
.end method

.method public mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "input"    # Landroidx/datastore/preferences/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setByteString(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 300
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 306
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 314
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString;->concat(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setByteString(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 316
    return-void

    .line 323
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite;->toBuilder()Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 328
    :goto_0
    return-void
.end method

.method public set(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)V
    .locals 1
    .param p1, "other"    # Landroidx/datastore/preferences/protobuf/LazyFieldLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 204
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 205
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 206
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 211
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 214
    :cond_0
    return-void
.end method

.method public setByteString(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "bytes"    # Landroidx/datastore/preferences/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "extensionRegistry"
        }
    .end annotation

    .line 343
    invoke-static {p2, p1}, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->checkArguments(Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 344
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 345
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->extensionRegistry:Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 347
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 348
    return-void
.end method

.method public setValue(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 2
    .param p1, "value"    # Landroidx/datastore/preferences/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 235
    .local v0, "originalValue":Landroidx/datastore/preferences/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 236
    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 237
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    .line 238
    return-object v0
.end method

.method public toByteString()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    .line 378
    :cond_1
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 382
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 383
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/MessageLite;->toByteString()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 387
    :goto_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Landroidx/datastore/preferences/protobuf/Writer;I)V
    .locals 1
    .param p1, "writer"    # Landroidx/datastore/preferences/protobuf/Writer;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->memoizedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->delayedBytes:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyFieldLite;->value:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 402
    :goto_0
    return-void
.end method
