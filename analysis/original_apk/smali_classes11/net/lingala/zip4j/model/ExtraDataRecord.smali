.class public Lnet/lingala/zip4j/model/ExtraDataRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "ExtraDataRecord.java"


# instance fields
.field private data:[B

.field private header:J

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    return-object v0
.end method

.method public getHeader()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    return-wide v0
.end method

.method public getSizeOfData()I
    .locals 1

    .line 34
    iget v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 46
    iput-object p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    .line 47
    return-void
.end method

.method public setHeader(J)V
    .locals 0
    .param p1, "header"    # J

    .line 30
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    .line 31
    return-void
.end method

.method public setSizeOfData(I)V
    .locals 0
    .param p1, "sizeOfData"    # I

    .line 38
    iput p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    .line 39
    return-void
.end method
