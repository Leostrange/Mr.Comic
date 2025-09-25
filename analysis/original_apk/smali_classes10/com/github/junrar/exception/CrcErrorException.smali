.class public Lcom/github/junrar/exception/CrcErrorException;
.super Lcom/github/junrar/exception/RarException;
.source "CrcErrorException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/github/junrar/exception/RarException;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 5
    invoke-direct {p0, p1}, Lcom/github/junrar/exception/RarException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method
