.class public final enum Lnet/lingala/zip4j/model/enums/CompressionLevel;
.super Ljava/lang/Enum;
.source "CompressionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum NO_COMPRESSION:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;


# instance fields
.field private final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "NO_COMPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NO_COMPRESSION:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FASTEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 20
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FASTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 24
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FAST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 28
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "MEDIUM_FAST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 32
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 36
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "HIGHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 40
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "MAXIMUM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 44
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "PRE_ULTRA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 48
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "ULTRA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 7
    sget-object v3, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NO_COMPRESSION:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v4, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v5, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v6, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v7, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v8, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v9, Lnet/lingala/zip4j/model/enums/CompressionLevel;->HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v10, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v11, Lnet/lingala/zip4j/model/enums/CompressionLevel;->PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    sget-object v12, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    filled-new-array/range {v3 .. v12}, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v0

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1

    .line 7
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 61
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    return v0
.end method
