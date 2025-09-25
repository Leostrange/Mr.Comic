.class public final enum Lcom/mrcomic/core/model/ComicFormat;
.super Ljava/lang/Enum;
.source "Comic.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mrcomic/core/model/ComicFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/mrcomic/core/model/ComicFormat;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CBZ",
        "CBR",
        "PDF",
        "EPUB",
        "core-model_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/mrcomic/core/model/ComicFormat;

.field public static final enum CBR:Lcom/mrcomic/core/model/ComicFormat;

.field public static final enum CBZ:Lcom/mrcomic/core/model/ComicFormat;

.field public static final enum EPUB:Lcom/mrcomic/core/model/ComicFormat;

.field public static final enum PDF:Lcom/mrcomic/core/model/ComicFormat;


# direct methods
.method private static final synthetic $values()[Lcom/mrcomic/core/model/ComicFormat;
    .locals 4

    sget-object v0, Lcom/mrcomic/core/model/ComicFormat;->CBZ:Lcom/mrcomic/core/model/ComicFormat;

    sget-object v1, Lcom/mrcomic/core/model/ComicFormat;->CBR:Lcom/mrcomic/core/model/ComicFormat;

    sget-object v2, Lcom/mrcomic/core/model/ComicFormat;->PDF:Lcom/mrcomic/core/model/ComicFormat;

    sget-object v3, Lcom/mrcomic/core/model/ComicFormat;->EPUB:Lcom/mrcomic/core/model/ComicFormat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/mrcomic/core/model/ComicFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/mrcomic/core/model/ComicFormat;

    const-string v1, "CBZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mrcomic/core/model/ComicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->CBZ:Lcom/mrcomic/core/model/ComicFormat;

    new-instance v0, Lcom/mrcomic/core/model/ComicFormat;

    const-string v1, "CBR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mrcomic/core/model/ComicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->CBR:Lcom/mrcomic/core/model/ComicFormat;

    new-instance v0, Lcom/mrcomic/core/model/ComicFormat;

    const-string v1, "PDF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mrcomic/core/model/ComicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->PDF:Lcom/mrcomic/core/model/ComicFormat;

    new-instance v0, Lcom/mrcomic/core/model/ComicFormat;

    const-string v1, "EPUB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mrcomic/core/model/ComicFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->EPUB:Lcom/mrcomic/core/model/ComicFormat;

    invoke-static {}, Lcom/mrcomic/core/model/ComicFormat;->$values()[Lcom/mrcomic/core/model/ComicFormat;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->$VALUES:[Lcom/mrcomic/core/model/ComicFormat;

    sget-object v0, Lcom/mrcomic/core/model/ComicFormat;->$VALUES:[Lcom/mrcomic/core/model/ComicFormat;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/mrcomic/core/model/ComicFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/mrcomic/core/model/ComicFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mrcomic/core/model/ComicFormat;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 29
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mrcomic/core/model/ComicFormat;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/mrcomic/core/model/ComicFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/mrcomic/core/model/ComicFormat;

    return-object v0
.end method

.method public static values()[Lcom/mrcomic/core/model/ComicFormat;
    .locals 1

    sget-object v0, Lcom/mrcomic/core/model/ComicFormat;->$VALUES:[Lcom/mrcomic/core/model/ComicFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, [Lcom/mrcomic/core/model/ComicFormat;

    return-object v0
.end method
