.class public Lnet/lingala/zip4j/model/UnzipParameters;
.super Ljava/lang/Object;
.source "UnzipParameters.java"


# instance fields
.field private extractSymbolicLinks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/UnzipParameters;->extractSymbolicLinks:Z

    return-void
.end method


# virtual methods
.method public isExtractSymbolicLinks()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/UnzipParameters;->extractSymbolicLinks:Z

    return v0
.end method

.method public setExtractSymbolicLinks(Z)V
    .locals 0
    .param p1, "extractSymbolicLinks"    # Z

    .line 12
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/UnzipParameters;->extractSymbolicLinks:Z

    .line 13
    return-void
.end method
