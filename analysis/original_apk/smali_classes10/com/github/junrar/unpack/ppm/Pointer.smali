.class public abstract Lcom/github/junrar/unpack/ppm/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mem:[B

.field protected pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "mem"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/github/junrar/unpack/ppm/Pointer;->mem:[B

    .line 36
    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Lcom/github/junrar/unpack/ppm/Pointer;->pos:I

    return v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setAddress(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 53
    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/Pointer;->mem:[B

    if-eqz v0, :cond_1

    .line 54
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/github/junrar/unpack/ppm/Pointer;->mem:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 55
    iput p1, p0, Lcom/github/junrar/unpack/ppm/Pointer;->pos:I

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
