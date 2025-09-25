.class public final Landroidx/work/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Data$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/work/Data;

.field public static final MAX_DATA_BYTES:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "Data"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .locals 2
    .param p1, "other"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 79
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public static convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 517
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 518
    .local v0, "returnValue":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 519
    aget-boolean v2, p0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertPrimitiveByteArray([B)[Ljava/lang/Byte;
    .locals 3
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 529
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 530
    .local v0, "returnValue":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 531
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertPrimitiveDoubleArray([D)[Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 577
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 578
    .local v0, "returnValue":[Ljava/lang/Double;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 579
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertPrimitiveFloatArray([F)[Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 565
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 566
    .local v0, "returnValue":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 567
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertPrimitiveIntArray([I)[Ljava/lang/Integer;
    .locals 3
    .param p0, "value"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 541
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 542
    .local v0, "returnValue":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 543
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertPrimitiveLongArray([J)[Ljava/lang/Long;
    .locals 4
    .param p0, "value"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 553
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 554
    .local v0, "returnValue":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 555
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 601
    array-length v0, p0

    new-array v0, v0, [B

    .line 602
    .local v0, "returnArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 603
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 649
    array-length v0, p0

    new-array v0, v0, [D

    .line 650
    .local v0, "returnArray":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 651
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 637
    array-length v0, p0

    new-array v0, v0, [F

    .line 638
    .local v0, "returnArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 639
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 613
    array-length v0, p0

    new-array v0, v0, [I

    .line 614
    .local v0, "returnArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 615
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 625
    array-length v0, p0

    new-array v0, v0, [J

    .line 626
    .local v0, "returnArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 627
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Boolean;)[Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 589
    array-length v0, p0

    new-array v0, v0, [Z

    .line 590
    .local v0, "returnArray":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 591
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static fromByteArray([B)Landroidx/work/Data;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 421
    const-string v0, "Error in Data#fromByteArray: "

    array-length v1, p0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_3

    .line 426
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 428
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 430
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 431
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_0

    .line 432
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 437
    .end local v4    # "i":I
    :cond_0
    nop

    .line 439
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    goto :goto_1

    .line 440
    :catch_0
    move-exception v4

    .line 441
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    :goto_2
    goto :goto_5

    .line 446
    :catch_1
    move-exception v4

    .line 447
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 437
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 434
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v4

    .line 435
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 439
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 442
    goto :goto_4

    .line 440
    :catch_4
    move-exception v4

    .line 441
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 450
    :goto_5
    new-instance v0, Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 437
    :goto_6
    if-eqz v3, :cond_2

    .line 439
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 442
    goto :goto_7

    .line 440
    :catch_5
    move-exception v5

    .line 441
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 448
    goto :goto_8

    .line 446
    :catch_6
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    .end local v5    # "e":Ljava/io/IOException;
    :goto_8
    throw v4

    .line 422
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArrayInternal(Landroidx/work/Data;)[B
    .locals 7
    .param p0, "data"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 374
    const-string v0, "Error in Data#toByteArray: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 375
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 377
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 378
    invoke-virtual {p0}, Landroidx/work/Data;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 379
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 380
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 381
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 387
    :cond_0
    nop

    .line 391
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    goto :goto_1

    .line 392
    :catch_0
    move-exception v3

    .line 393
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    goto :goto_2

    .line 398
    :catch_1
    move-exception v3

    .line 399
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 403
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v3, 0x2800

    if-gt v0, v3, :cond_1

    .line 408
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 404
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 383
    :catch_2
    move-exception v3

    .line 384
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    if-eqz v2, :cond_2

    .line 391
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 394
    goto :goto_3

    .line 392
    :catch_3
    move-exception v5

    .line 393
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 400
    goto :goto_4

    .line 398
    :catch_4
    move-exception v5

    .line 399
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    return-object v4

    .line 387
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v2, :cond_3

    .line 391
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 394
    goto :goto_6

    .line 392
    :catch_5
    move-exception v4

    .line 393
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 400
    goto :goto_7

    .line 398
    :catch_6
    move-exception v4

    .line 399
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 455
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 456
    return v0

    .line 458
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 462
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/work/Data;

    .line 463
    .local v2, "other":Landroidx/work/Data;
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 464
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 465
    return v1

    .line 468
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 469
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 470
    .local v6, "value":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 472
    .local v7, "otherValue":Ljava/lang/Object;
    if-eqz v6, :cond_5

    if-nez v7, :cond_3

    goto :goto_1

    .line 474
    :cond_3
    instance-of v8, v6, [Ljava/lang/Object;

    if-eqz v8, :cond_4

    instance-of v8, v7, [Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 475
    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    .local v8, "equal":Z
    goto :goto_2

    .line 477
    .end local v8    # "equal":Z
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .restart local v8    # "equal":Z
    goto :goto_2

    .line 473
    .end local v8    # "equal":Z
    :cond_5
    :goto_1
    if-ne v6, v7, :cond_6

    move v8, v0

    goto :goto_2

    :cond_6
    move v8, v1

    .line 480
    .restart local v8    # "equal":Z
    :goto_2
    if-nez v8, :cond_7

    .line 481
    return v1

    .line 483
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "otherValue":Ljava/lang/Object;
    .end local v8    # "equal":Z
    :cond_7
    goto :goto_0

    .line 484
    :cond_8
    return v0

    .line 459
    .end local v2    # "other":Landroidx/work/Data;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9
    :goto_3
    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 93
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 95
    :cond_0
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 109
    move-object v1, v0

    check-cast v1, [Ljava/lang/Boolean;

    .line 110
    .local v1, "array":[Ljava/lang/Boolean;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Boolean;)[Z

    move-result-object v2

    return-object v2

    .line 112
    .end local v1    # "array":[Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 128
    :cond_0
    return p2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 142
    move-object v1, v0

    check-cast v1, [Ljava/lang/Byte;

    .line 143
    .local v1, "array":[Ljava/lang/Byte;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Byte;)[B

    move-result-object v2

    return-object v2

    .line 145
    .end local v1    # "array":[Ljava/lang/Byte;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 258
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 260
    :cond_0
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 274
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 275
    .local v1, "array":[Ljava/lang/Double;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Double;)[D

    move-result-object v2

    return-object v2

    .line 277
    .end local v1    # "array":[Ljava/lang/Double;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 225
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 227
    :cond_0
    return p2
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 241
    move-object v1, v0

    check-cast v1, [Ljava/lang/Float;

    .line 242
    .local v1, "array":[Ljava/lang/Float;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Float;)[F

    move-result-object v2

    return-object v2

    .line 244
    .end local v1    # "array":[Ljava/lang/Float;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 161
    :cond_0
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    check-cast v1, [Ljava/lang/Integer;

    .line 176
    .local v1, "array":[Ljava/lang/Integer;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Integer;)[I

    move-result-object v2

    return-object v2

    .line 178
    .end local v1    # "array":[Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyValueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 194
    :cond_0
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 208
    move-object v1, v0

    check-cast v1, [Ljava/lang/Long;

    .line 209
    .local v1, "array":[Ljava/lang/Long;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Long;)[J

    move-result-object v2

    return-object v2

    .line 211
    .end local v1    # "array":[Ljava/lang/Long;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 293
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 307
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 309
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasKeyWithValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 349
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 489
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .locals 1

    .line 359
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 335
    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    iget-object v1, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 500
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 501
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 503
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    :goto_1
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 508
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
