.class public final enum Lcom/github/junrar/rarfile/HostSystem;
.super Ljava/lang/Enum;
.source "HostSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/rarfile/HostSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum beos:Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum macos:Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum msdos:Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum os2:Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum unix:Lcom/github/junrar/rarfile/HostSystem;

.field public static final enum win32:Lcom/github/junrar/rarfile/HostSystem;


# instance fields
.field private final hostByte:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string/jumbo v1, "msdos"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->msdos:Lcom/github/junrar/rarfile/HostSystem;

    .line 29
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string/jumbo v1, "os2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->os2:Lcom/github/junrar/rarfile/HostSystem;

    .line 30
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string/jumbo v1, "win32"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->win32:Lcom/github/junrar/rarfile/HostSystem;

    .line 31
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string/jumbo v1, "unix"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->unix:Lcom/github/junrar/rarfile/HostSystem;

    .line 32
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string/jumbo v1, "macos"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->macos:Lcom/github/junrar/rarfile/HostSystem;

    .line 33
    new-instance v0, Lcom/github/junrar/rarfile/HostSystem;

    const-string v1, "beos"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/rarfile/HostSystem;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->beos:Lcom/github/junrar/rarfile/HostSystem;

    .line 27
    sget-object v3, Lcom/github/junrar/rarfile/HostSystem;->msdos:Lcom/github/junrar/rarfile/HostSystem;

    sget-object v4, Lcom/github/junrar/rarfile/HostSystem;->os2:Lcom/github/junrar/rarfile/HostSystem;

    sget-object v5, Lcom/github/junrar/rarfile/HostSystem;->win32:Lcom/github/junrar/rarfile/HostSystem;

    sget-object v6, Lcom/github/junrar/rarfile/HostSystem;->unix:Lcom/github/junrar/rarfile/HostSystem;

    sget-object v7, Lcom/github/junrar/rarfile/HostSystem;->macos:Lcom/github/junrar/rarfile/HostSystem;

    sget-object v8, Lcom/github/junrar/rarfile/HostSystem;->beos:Lcom/github/junrar/rarfile/HostSystem;

    filled-new-array/range {v3 .. v8}, [Lcom/github/junrar/rarfile/HostSystem;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/HostSystem;->$VALUES:[Lcom/github/junrar/rarfile/HostSystem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "hostByte"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-byte p3, p0, Lcom/github/junrar/rarfile/HostSystem;->hostByte:B

    .line 62
    return-void
.end method

.method public static findHostSystem(B)Lcom/github/junrar/rarfile/HostSystem;
    .locals 1
    .param p0, "hostByte"    # B

    .line 38
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->msdos:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->msdos:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->os2:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->os2:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 44
    :cond_1
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->win32:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->win32:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 47
    :cond_2
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->unix:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->unix:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 50
    :cond_3
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->macos:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->macos:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 53
    :cond_4
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->beos:Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/HostSystem;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->beos:Lcom/github/junrar/rarfile/HostSystem;

    return-object v0

    .line 56
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/rarfile/HostSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/github/junrar/rarfile/HostSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/rarfile/HostSystem;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/rarfile/HostSystem;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/junrar/rarfile/HostSystem;->$VALUES:[Lcom/github/junrar/rarfile/HostSystem;

    invoke-virtual {v0}, [Lcom/github/junrar/rarfile/HostSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/rarfile/HostSystem;

    return-object v0
.end method


# virtual methods
.method public equals(B)Z
    .locals 1
    .param p1, "hostByte"    # B

    .line 65
    iget-byte v0, p0, Lcom/github/junrar/rarfile/HostSystem;->hostByte:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHostByte()B
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/github/junrar/rarfile/HostSystem;->hostByte:B

    return v0
.end method
