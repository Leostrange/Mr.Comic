.class public Lnet/lingala/zip4j/model/Zip4jConfig;
.super Ljava/lang/Object;
.source "Zip4jConfig.java"


# instance fields
.field private final bufferSize:I

.field private final charset:Ljava/nio/charset/Charset;

.field private final useUtf8CharsetForPasswords:Z


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "bufferSize"    # I
    .param p3, "useUtf8CharsetForPasswords"    # Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->charset:Ljava/nio/charset/Charset;

    .line 13
    iput p2, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->bufferSize:I

    .line 14
    iput-boolean p3, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->useUtf8CharsetForPasswords:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 22
    iget v0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->bufferSize:I

    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public isUseUtf8CharsetForPasswords()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/Zip4jConfig;->useUtf8CharsetForPasswords:Z

    return v0
.end method
