.class Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;
.super Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
.source "NoCipherInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/CipherInputStream<",
        "Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V
    .locals 6
    .param p1, "zipEntryInputStream"    # Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;
    .param p2, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p3, "password"    # [C
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/io/inputstream/CipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CIZ)V

    .line 13
    return-void
.end method


# virtual methods
.method protected bridge synthetic initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;->initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;

    move-result-object p1

    return-object p1
.end method

.method protected initializeDecrypter(Lnet/lingala/zip4j/model/LocalFileHeader;[CZ)Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;
    .locals 1
    .param p1, "localFileHeader"    # Lnet/lingala/zip4j/model/LocalFileHeader;
    .param p2, "password"    # [C
    .param p3, "useUtf8ForPassword"    # Z

    .line 17
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;

    invoke-direct {v0}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream$NoDecrypter;-><init>()V

    return-object v0
.end method
