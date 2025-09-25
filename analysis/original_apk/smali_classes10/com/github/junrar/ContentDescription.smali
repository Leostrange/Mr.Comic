.class public Lcom/github/junrar/ContentDescription;
.super Ljava/lang/Object;
.source "ContentDescription.java"


# instance fields
.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lcom/github/junrar/ContentDescription;->size:J

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 24
    return v0

    .line 26
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 27
    return v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 30
    return v1

    .line 32
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/github/junrar/ContentDescription;

    .line 33
    .local v2, "other":Lcom/github/junrar/ContentDescription;
    iget-object v3, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 34
    iget-object v3, v2, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 35
    return v1

    .line 37
    :cond_3
    iget-object v3, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    iget-object v4, v2, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    iget-wide v3, p0, Lcom/github/junrar/ContentDescription;->size:J

    iget-wide v5, v2, Lcom/github/junrar/ContentDescription;->size:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 14
    const/16 v0, 0x1f

    .line 15
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 16
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 17
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/github/junrar/ContentDescription;->size:J

    iget-wide v5, p0, Lcom/github/junrar/ContentDescription;->size:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 18
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/junrar/ContentDescription;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/github/junrar/ContentDescription;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
