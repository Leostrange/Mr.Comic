.class public Lcom/github/junrar/unpack/decode/RepDecode;
.super Lcom/github/junrar/unpack/decode/Decode;
.source "RepDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/github/junrar/unpack/decode/Decode;-><init>()V

    .line 31
    const/16 v0, 0x1c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/decode/RepDecode;->decodeNum:[I

    .line 32
    return-void
.end method
