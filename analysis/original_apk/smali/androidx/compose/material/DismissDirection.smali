.class public final enum Landroidx/compose/material/DismissDirection;
.super Ljava/lang/Enum;
.source "SwipeToDismiss.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/DismissDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/material/DismissDirection;",
        "",
        "(Ljava/lang/String;I)V",
        "StartToEnd",
        "EndToStart",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/compose/material/DismissDirection;

.field public static final enum EndToStart:Landroidx/compose/material/DismissDirection;

.field public static final enum StartToEnd:Landroidx/compose/material/DismissDirection;


# direct methods
.method private static final synthetic $values()[Landroidx/compose/material/DismissDirection;
    .locals 2

    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    sget-object v1, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    filled-new-array {v0, v1}, [Landroidx/compose/material/DismissDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Landroidx/compose/material/DismissDirection;

    const-string/jumbo v1, "StartToEnd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DismissDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 57
    new-instance v0, Landroidx/compose/material/DismissDirection;

    const-string v1, "EndToStart"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/DismissDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    invoke-static {}, Landroidx/compose/material/DismissDirection;->$values()[Landroidx/compose/material/DismissDirection;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/DismissDirection;->$VALUES:[Landroidx/compose/material/DismissDirection;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/DismissDirection;
    .locals 1

    const-class v0, Landroidx/compose/material/DismissDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/DismissDirection;

    return-object v0
.end method

.method public static values()[Landroidx/compose/material/DismissDirection;
    .locals 1

    sget-object v0, Landroidx/compose/material/DismissDirection;->$VALUES:[Landroidx/compose/material/DismissDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material/DismissDirection;

    return-object v0
.end method
