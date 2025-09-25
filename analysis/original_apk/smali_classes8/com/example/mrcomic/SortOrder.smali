.class public final enum Lcom/example/mrcomic/SortOrder;
.super Ljava/lang/Enum;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/mrcomic/SortOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/example/mrcomic/SortOrder;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DATE_ADDED",
        "NAME",
        "TYPE",
        "PAGES",
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

.field private static final synthetic $VALUES:[Lcom/example/mrcomic/SortOrder;

.field public static final enum DATE_ADDED:Lcom/example/mrcomic/SortOrder;

.field public static final enum NAME:Lcom/example/mrcomic/SortOrder;

.field public static final enum PAGES:Lcom/example/mrcomic/SortOrder;

.field public static final enum TYPE:Lcom/example/mrcomic/SortOrder;


# direct methods
.method private static final synthetic $values()[Lcom/example/mrcomic/SortOrder;
    .locals 4

    sget-object v0, Lcom/example/mrcomic/SortOrder;->DATE_ADDED:Lcom/example/mrcomic/SortOrder;

    sget-object v1, Lcom/example/mrcomic/SortOrder;->NAME:Lcom/example/mrcomic/SortOrder;

    sget-object v2, Lcom/example/mrcomic/SortOrder;->TYPE:Lcom/example/mrcomic/SortOrder;

    sget-object v3, Lcom/example/mrcomic/SortOrder;->PAGES:Lcom/example/mrcomic/SortOrder;

    filled-new-array {v0, v1, v2, v3}, [Lcom/example/mrcomic/SortOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 106
    new-instance v0, Lcom/example/mrcomic/SortOrder;

    const-string v1, "DATE_ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/SortOrder;->DATE_ADDED:Lcom/example/mrcomic/SortOrder;

    new-instance v0, Lcom/example/mrcomic/SortOrder;

    const-string v1, "NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/SortOrder;->NAME:Lcom/example/mrcomic/SortOrder;

    new-instance v0, Lcom/example/mrcomic/SortOrder;

    const-string v1, "TYPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/SortOrder;->TYPE:Lcom/example/mrcomic/SortOrder;

    new-instance v0, Lcom/example/mrcomic/SortOrder;

    const-string v1, "PAGES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/example/mrcomic/SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/mrcomic/SortOrder;->PAGES:Lcom/example/mrcomic/SortOrder;

    invoke-static {}, Lcom/example/mrcomic/SortOrder;->$values()[Lcom/example/mrcomic/SortOrder;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/SortOrder;->$VALUES:[Lcom/example/mrcomic/SortOrder;

    sget-object v0, Lcom/example/mrcomic/SortOrder;->$VALUES:[Lcom/example/mrcomic/SortOrder;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/example/mrcomic/SortOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/example/mrcomic/SortOrder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/example/mrcomic/SortOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 106
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/mrcomic/SortOrder;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/example/mrcomic/SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 106
    check-cast v0, Lcom/example/mrcomic/SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/example/mrcomic/SortOrder;
    .locals 1

    sget-object v0, Lcom/example/mrcomic/SortOrder;->$VALUES:[Lcom/example/mrcomic/SortOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 106
    check-cast v0, [Lcom/example/mrcomic/SortOrder;

    return-object v0
.end method
