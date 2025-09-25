.class final Lcom/github/junrar/Archive$EmptyInputStream;
.super Ljava/io/InputStream;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/junrar/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyInputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/junrar/Archive$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/junrar/Archive$1;

    .line 641
    invoke-direct {p0}, Lcom/github/junrar/Archive$EmptyInputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .line 650
    const/4 v0, -0x1

    return v0
.end method
