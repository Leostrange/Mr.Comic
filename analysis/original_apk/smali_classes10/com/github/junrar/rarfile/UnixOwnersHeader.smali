.class public Lcom/github/junrar/rarfile/UnixOwnersHeader;
.super Lcom/github/junrar/rarfile/SubBlockHeader;
.source "UnixOwnersHeader.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private group:Ljava/lang/String;

.field private groupNameSize:I

.field private owner:Ljava/lang/String;

.field private ownerNameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/github/junrar/rarfile/SubBlockHeader;[B)V
    .locals 3
    .param p1, "sb"    # Lcom/github/junrar/rarfile/SubBlockHeader;
    .param p2, "uoHeader"    # [B

    .line 16
    invoke-direct {p0, p1}, Lcom/github/junrar/rarfile/SubBlockHeader;-><init>(Lcom/github/junrar/rarfile/SubBlockHeader;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "pos":I
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 19
    add-int/lit8 v0, v0, 0x2

    .line 20
    invoke-static {p2, v0}, Lcom/github/junrar/io/Raw;->readShortLittleEndian([BI)S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/2addr v1, v0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 23
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-direct {v1, p2, v0, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 25
    :cond_0
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    add-int/2addr v0, v1

    .line 26
    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    add-int/2addr v1, v0

    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 27
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-direct {v1, p2, v0, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupNameSize()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerNameSize()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    return v0
.end method

.method public print()V
    .locals 3

    .line 83
    invoke-super {p0}, Lcom/github/junrar/rarfile/SubBlockHeader;->print()V

    .line 84
    sget-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ownerNameSize: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    const-string/jumbo v1, "owner: {}"

    iget-object v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    iget v1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "groupNameSize: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->logger:Lorg/slf4j/Logger;

    const-string v1, "group: {}"

    iget-object v2, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->group:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setGroupNameSize(I)V
    .locals 0
    .param p1, "groupNameSize"    # I

    .line 52
    iput p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->groupNameSize:I

    .line 53
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->owner:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setOwnerNameSize(I)V
    .locals 0
    .param p1, "ownerNameSize"    # I

    .line 76
    iput p1, p0, Lcom/github/junrar/rarfile/UnixOwnersHeader;->ownerNameSize:I

    .line 77
    return-void
.end method
