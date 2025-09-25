.class Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "ZipStandardCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
        "Lnet/lingala/zip4j/crypto/StandardDecrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V
    .locals 0
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "password"    # [C
    .param p4, "bufferSize"    # I
    .param p5, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-direct/range {p0 .. p5}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V

    .line 15
    return-void
.end method

.method private getStandardDecrypterHeaderBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 26
    .local v0, "headerBytes":[B
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->readRaw([B)I

    .line 27
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/StandardDecrypter;

    move-result-object p1

    return-object p1
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/StandardDecrypter;
    .locals 9
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "password"    # [C
    .param p3, "useUtf8ForPassword"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance v8, Lnet/lingala/zip4j/crypto/StandardDecrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModifiedTime()J

    move-result-wide v4

    .line 21
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;->getStandardDecrypterHeaderBytes()[B

    move-result-object v6

    move-object v0, v8

    move-object v1, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/crypto/StandardDecrypter;-><init>([CJJ[BZ)V

    .line 20
    return-object v8
.end method
