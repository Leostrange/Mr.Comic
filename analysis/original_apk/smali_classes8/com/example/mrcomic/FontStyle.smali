.class public final enum Lcom/example/mrcomic/FontStyle;
.super Ljava/lang/Enum;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/mrcomic/FontStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/example/mrcomic/FontStyle;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DEFAULT",
        "SERIF",
        "MONOSPACE",
        "app_debug"
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

.field private static final synthetic $VALUES:[Lcom/example/mrcomic/FontStyle;

.field public static final enum DEFAULT:Lcom/example/mrcomic/FontStyle;

.field public static final enum MONOSPACE:Lcom/example/mrcomic/FontStyle;

.field public static final enum SERIF:Lcom/example/mrcomic/FontStyle;


# direct methods
.method private static final synthetic $values()[Lcom/example/mrcomic/FontStyle;
    .locals 3

    sget-object v0, Lcom/example/mrcomic/FontStyle;->DEFAULT:Lcom/example/mrcomic/FontStyle;

    sget-object v1, Lcom/example/mrcomic/FontStyle;->SERIF:Lcom/example/mrcomic/FontStyle;

    sget-object v2, Lcom/example/mrcomic/FontStyle;->MONOSPACE:Lcom/example/mrcomic/FontStyle;

    filled-new-array {v0, v1, v2}, [Lcom/example/mrcomic/FontStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lcom/example/mrcomic/FontStyle;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/FontStyle;->DEFAULT:Lcom/example/mrcomic/FontStyle;

    new-instance v0, Lcom/example/mrcomic/FontStyle;

    const-string v1, "SERIF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/FontStyle;->SERIF:Lcom/example/mrcomic/FontStyle;

    new-instance v0, Lcom/example/mrcomic/FontStyle;

    const-string v1, "MONOSPACE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/FontStyle;->MONOSPACE:Lcom/example/mrcomic/FontStyle;

    invoke-static {}, Lcom/example/mrcomic/FontStyle;->$values()[Lcom/example/mrcomic/FontStyle;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/FontStyle;->$VALUES:[Lcom/example/mrcomic/FontStyle;

    sget-object v0, Lcom/example/mrcomic/FontStyle;->$VALUES:[Lcom/example/mrcomic/FontStyle;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/FontStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/example/mrcomic/FontStyle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/example/mrcomic/FontStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 107
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/mrcomic/FontStyle;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/example/mrcomic/FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 107
    check-cast v0, Lcom/example/mrcomic/FontStyle;

    return-object v0
.end method

.method public static values()[Lcom/example/mrcomic/FontStyle;
    .locals 1

    sget-object v0, Lcom/example/mrcomic/FontStyle;->$VALUES:[Lcom/example/mrcomic/FontStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 107
    check-cast v0, [Lcom/example/mrcomic/FontStyle;

    return-object v0
.end method
