.class public final enum Lnet/lingala/zip4j/exception/ZipException$Type;
.super Ljava/lang/Enum;
.source "ZipException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/exception/ZipException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/exception/ZipException$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

.field public static final enum WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 54
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "WRONG_PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 55
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "TASK_CANCELLED_EXCEPTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 56
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "CHECKSUM_MISMATCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 57
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "UNKNOWN_COMPRESSION_METHOD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 58
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "FILE_NOT_FOUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 59
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "UNSUPPORTED_ENCRYPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 60
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/ZipException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 53
    sget-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v4, Lnet/lingala/zip4j/exception/ZipException$Type;->TASK_CANCELLED_EXCEPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v5, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v6, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v7, Lnet/lingala/zip4j/exception/ZipException$Type;->FILE_NOT_FOUND:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v8, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    sget-object v9, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    filled-new-array/range {v3 .. v9}, [Lnet/lingala/zip4j/exception/ZipException$Type;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->$VALUES:[Lnet/lingala/zip4j/exception/ZipException$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/exception/ZipException$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 53
    const-class v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/exception/ZipException$Type;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/exception/ZipException$Type;
    .locals 1

    .line 53
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->$VALUES:[Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/exception/ZipException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/exception/ZipException$Type;

    return-object v0
.end method
