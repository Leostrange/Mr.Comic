.class public final enum Lnet/lingala/zip4j/model/enums/CompressionMethod;
.super Ljava/lang/Enum;
.source "CompressionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/CompressionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const-string v1, "STORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 19
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const-string v3, "DEFLATE"

    invoke-direct {v0, v3, v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 23
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const/4 v1, 0x2

    const/16 v2, 0x63

    const-string v3, "AES_INTERNAL_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 9
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    filled-new-array {v0, v1, v2}, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    .line 29
    return-void
.end method

.method public static getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 5
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 46
    invoke-static {}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    .local v3, "compressionMethod":Lnet/lingala/zip4j/model/enums/CompressionMethod;
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 48
    return-object v3

    .line 46
    .end local v3    # "compressionMethod":Lnet/lingala/zip4j/model/enums/CompressionMethod;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Unknown compression method"

    sget-object v2, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 9
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 36
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    return v0
.end method
