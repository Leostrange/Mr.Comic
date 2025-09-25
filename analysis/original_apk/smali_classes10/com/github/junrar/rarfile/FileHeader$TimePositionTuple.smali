.class final Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;
.super Ljava/lang/Object;
.source "FileHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/junrar/rarfile/FileHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimePositionTuple"
.end annotation


# instance fields
.field private final position:I

.field private final time:Ljava/nio/file/attribute/FileTime;


# direct methods
.method private constructor <init>(ILjava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->position:I

    .line 245
    iput-object p2, p0, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->time:Ljava/nio/file/attribute/FileTime;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(ILjava/nio/file/attribute/FileTime;Lcom/github/junrar/rarfile/FileHeader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "x2"    # Lcom/github/junrar/rarfile/FileHeader$1;

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;-><init>(ILjava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method static synthetic access$000(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "x0"    # Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    .line 239
    iget-object v0, p0, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->time:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;)I
    .locals 1
    .param p0, "x0"    # Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;

    .line 239
    iget v0, p0, Lcom/github/junrar/rarfile/FileHeader$TimePositionTuple;->position:I

    return v0
.end method
