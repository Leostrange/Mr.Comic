.class public final enum Lcom/github/junrar/rarfile/UnrarHeadertype;
.super Ljava/lang/Enum;
.source "UnrarHeadertype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/rarfile/UnrarHeadertype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum AvHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum CommHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum MainHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum ProtectHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum SignHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

.field public static final enum SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;


# instance fields
.field private final headerByte:B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 30
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x0

    const/16 v2, 0x73

    const-string v3, "MainHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 31
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x1

    const/16 v2, 0x72

    const-string v3, "MarkHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 32
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x2

    const/16 v2, 0x74

    const-string v3, "FileHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 33
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x3

    const/16 v2, 0x75

    const-string v3, "CommHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 34
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x4

    const/16 v2, 0x76

    const-string v3, "AvHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 35
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x5

    const/16 v2, 0x77

    const-string v3, "SubHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 36
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x6

    const/16 v2, 0x78

    const-string v3, "ProtectHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 37
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/4 v1, 0x7

    const/16 v2, 0x79

    const-string v3, "SignHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 38
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/16 v1, 0x8

    const/16 v2, 0x7a

    const-string v3, "NewSubHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 39
    new-instance v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    const/16 v1, 0x9

    const/16 v2, 0x7b

    const-string v3, "EndArcHeader"

    invoke-direct {v0, v3, v1, v2}, Lcom/github/junrar/rarfile/UnrarHeadertype;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    .line 27
    sget-object v4, Lcom/github/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v5, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v6, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v7, Lcom/github/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v8, Lcom/github/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v9, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v10, Lcom/github/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v11, Lcom/github/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v12, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    sget-object v13, Lcom/github/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    filled-new-array/range {v4 .. v13}, [Lcom/github/junrar/rarfile/UnrarHeadertype;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "headerByte"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-byte p3, p0, Lcom/github/junrar/rarfile/UnrarHeadertype;->headerByte:B

    .line 84
    return-void
.end method

.method public static findType(B)Lcom/github/junrar/rarfile/UnrarHeadertype;
    .locals 1
    .param p0, "headerType"    # B

    .line 47
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MarkHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->MainHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 53
    :cond_1
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->FileHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 56
    :cond_2
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->EndArcHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 59
    :cond_3
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->NewSubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 62
    :cond_4
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SubHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 65
    :cond_5
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 66
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->SignHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 68
    :cond_6
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->ProtectHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 71
    :cond_7
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->CommHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 74
    :cond_8
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0, p0}, Lcom/github/junrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->AvHeader:Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0

    .line 77
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/rarfile/UnrarHeadertype;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/rarfile/UnrarHeadertype;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/junrar/rarfile/UnrarHeadertype;->$VALUES:[Lcom/github/junrar/rarfile/UnrarHeadertype;

    invoke-virtual {v0}, [Lcom/github/junrar/rarfile/UnrarHeadertype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/rarfile/UnrarHeadertype;

    return-object v0
.end method


# virtual methods
.method public equals(B)Z
    .locals 1
    .param p1, "header"    # B

    .line 92
    iget-byte v0, p0, Lcom/github/junrar/rarfile/UnrarHeadertype;->headerByte:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeaderByte()B
    .locals 1

    .line 100
    iget-byte v0, p0, Lcom/github/junrar/rarfile/UnrarHeadertype;->headerByte:B

    return v0
.end method
