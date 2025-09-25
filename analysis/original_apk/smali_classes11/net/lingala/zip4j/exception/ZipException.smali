.class public Lnet/lingala/zip4j/exception/ZipException;
.super Ljava/io/IOException;
.source "ZipException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/exception/ZipException$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private type:Lnet/lingala/zip4j/exception/ZipException$Type;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "rootException"    # Ljava/lang/Exception;

    .line 32
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rootException"    # Ljava/lang/Exception;

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "type"    # Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 46
    iput-object p3, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN:Lnet/lingala/zip4j/exception/ZipException$Type;

    iput-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 41
    iput-object p2, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 42
    return-void
.end method


# virtual methods
.method public getType()Lnet/lingala/zip4j/exception/ZipException$Type;
    .locals 1

    .line 50
    iget-object v0, p0, Lnet/lingala/zip4j/exception/ZipException;->type:Lnet/lingala/zip4j/exception/ZipException$Type;

    return-object v0
.end method
