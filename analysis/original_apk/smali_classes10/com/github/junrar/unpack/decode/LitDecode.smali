.class public Lcom/github/junrar/unpack/decode/LitDecode;
.super Lcom/github/junrar/unpack/decode/Decode;
.source "LitDecode.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/github/junrar/unpack/decode/Decode;-><init>()V

    .line 31
    const/16 v0, 0x12b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/junrar/unpack/decode/LitDecode;->decodeNum:[I

    .line 32
    return-void
.end method
