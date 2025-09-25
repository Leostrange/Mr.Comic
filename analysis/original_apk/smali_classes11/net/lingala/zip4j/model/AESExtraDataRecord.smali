.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "AESExtraDataRecord.java"


# instance fields
.field private aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private dataSize:I

.field private vendorID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    .line 35
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 36
    const-string v0, "AE"

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    .line 37
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 38
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 39
    return-void
.end method


# virtual methods
.method public getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 42
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    return v0
.end method

.method public getVendorID()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    return-object v0
.end method

.method public setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 0
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 70
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 71
    return-void
.end method

.method public setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .locals 0
    .param p1, "aesVersion"    # Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 54
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 55
    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0
    .param p1, "compressionMethod"    # Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 78
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 79
    return-void
.end method

.method public setDataSize(I)V
    .locals 0
    .param p1, "dataSize"    # I

    .line 46
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    .line 47
    return-void
.end method

.method public setVendorID(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorID"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    .line 63
    return-void
.end method
