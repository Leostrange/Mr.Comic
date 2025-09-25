.class public final enum Lcom/github/junrar/unpack/decode/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/junrar/unpack/decode/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_AUDIO:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_DELTA:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_E8:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_E8E9:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_E8E9V2:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_ITANIUM:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_NONE:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_PPM:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_RGB:Lcom/github/junrar/unpack/decode/FilterType;

.field public static final enum FILTER_UPCASETOLOW:Lcom/github/junrar/unpack/decode/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 27
    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_NONE:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_PPM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_PPM:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_E8"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_E8E9"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8E9:Lcom/github/junrar/unpack/decode/FilterType;

    .line 28
    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_UPCASETOLOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_UPCASETOLOW:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_AUDIO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_AUDIO:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_RGB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_RGB:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_DELTA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_DELTA:Lcom/github/junrar/unpack/decode/FilterType;

    .line 29
    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_ITANIUM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_ITANIUM:Lcom/github/junrar/unpack/decode/FilterType;

    new-instance v0, Lcom/github/junrar/unpack/decode/FilterType;

    const-string v1, "FILTER_E8E9V2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/github/junrar/unpack/decode/FilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8E9V2:Lcom/github/junrar/unpack/decode/FilterType;

    .line 26
    sget-object v3, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_NONE:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v4, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_PPM:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v5, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v6, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8E9:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v7, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_UPCASETOLOW:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v8, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_AUDIO:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v9, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_RGB:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v10, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_DELTA:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v11, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_ITANIUM:Lcom/github/junrar/unpack/decode/FilterType;

    sget-object v12, Lcom/github/junrar/unpack/decode/FilterType;->FILTER_E8E9V2:Lcom/github/junrar/unpack/decode/FilterType;

    filled-new-array/range {v3 .. v12}, [Lcom/github/junrar/unpack/decode/FilterType;

    move-result-object v0

    sput-object v0, Lcom/github/junrar/unpack/decode/FilterType;->$VALUES:[Lcom/github/junrar/unpack/decode/FilterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/decode/FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/github/junrar/unpack/decode/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/decode/FilterType;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/decode/FilterType;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/junrar/unpack/decode/FilterType;->$VALUES:[Lcom/github/junrar/unpack/decode/FilterType;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/decode/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/decode/FilterType;

    return-object v0
.end method
