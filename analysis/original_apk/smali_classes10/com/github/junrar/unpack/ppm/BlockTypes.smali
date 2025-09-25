.class public final enum Lcom/github/junrar/unpack/ppm/BlockTypes;
.super Ljava/lang/Enum;
.source "BlockTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/ppm/BlockTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/ppm/BlockTypes;

.field public static final enum BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

.field public static final enum BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;


# instance fields
.field private final blockType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/ppm/BlockTypes;

    const-string v1, "BLOCK_LZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

    new-instance v0, Lcom/github/junrar/unpack/ppm/BlockTypes;

    const-string v1, "BLOCK_PPM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/github/junrar/unpack/ppm/BlockTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    .line 27
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

    sget-object v1, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    filled-new-array {v0, v1}, [Lcom/github/junrar/unpack/ppm/BlockTypes;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->$VALUES:[Lcom/github/junrar/unpack/ppm/BlockTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "blockType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/github/junrar/unpack/ppm/BlockTypes;->blockType:I

    .line 34
    return-void
.end method

.method public static findBlockType(I)Lcom/github/junrar/unpack/ppm/BlockTypes;
    .locals 1
    .param p0, "blockType"    # I

    .line 45
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/BlockTypes;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_LZ:Lcom/github/junrar/unpack/ppm/BlockTypes;

    return-object v0

    .line 48
    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/ppm/BlockTypes;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->BLOCK_PPM:Lcom/github/junrar/unpack/ppm/BlockTypes;

    return-object v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/ppm/BlockTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/github/junrar/unpack/ppm/BlockTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/ppm/BlockTypes;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/ppm/BlockTypes;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/junrar/unpack/ppm/BlockTypes;->$VALUES:[Lcom/github/junrar/unpack/ppm/BlockTypes;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/ppm/BlockTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/ppm/BlockTypes;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "blockType"    # I

    .line 41
    iget v0, p0, Lcom/github/junrar/unpack/ppm/BlockTypes;->blockType:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBlockType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/github/junrar/unpack/ppm/BlockTypes;->blockType:I

    return v0
.end method
