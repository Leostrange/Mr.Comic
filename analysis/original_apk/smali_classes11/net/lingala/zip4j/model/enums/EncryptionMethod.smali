.class public final enum Lnet/lingala/zip4j/model/enums/EncryptionMethod;
.super Ljava/lang/Enum;
.source "EncryptionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/EncryptionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public static final enum AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public static final enum NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public static final enum ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field public static final enum ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const-string v1, "ZIP_STANDARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 20
    new-instance v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const-string v1, "ZIP_STANDARD_VARIANT_STRONG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 25
    new-instance v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/model/enums/EncryptionMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 7
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    sget-object v3, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    filled-new-array {v0, v1, v2, v3}, [Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .line 7
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/EncryptionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method
