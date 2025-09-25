.class final Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ListItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,436:1\n69#2,6:437\n*S KotlinDebug\n*F\n+ 1 ListItem.kt\nandroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2\n*L\n378#1:437,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $y:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;[",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;->$placeables:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;->$y:[Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 377
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 17
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;->$placeables:Ljava/util/List;

    .local v1, "$this$fastForEachIndexed$iv":Ljava/util/List;
    iget-object v2, v0, Landroidx/compose/material/ListItemKt$BaselinesOffsetColumn$1$2;->$y:[Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 437
    .local v3, "$i$f$fastForEachIndexed":I
    nop

    .line 438
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 439
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 440
    .local v6, "item$iv":Ljava/lang/Object;
    move-object v14, v6

    check-cast v14, Landroidx/compose/ui/layout/Placeable;

    .local v14, "placeable":Landroidx/compose/ui/layout/Placeable;
    move v7, v4

    .local v7, "index":I
    move v15, v7

    .end local v7    # "index":I
    .local v15, "index":I
    const/16 v16, 0x0

    .line 379
    .local v16, "$i$a$-fastForEachIndexed-ListItemKt$BaselinesOffsetColumn$1$2$1":I
    const/4 v9, 0x0

    aget-object v7, v2, v15

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 380
    nop

    .line 440
    .end local v14    # "placeable":Landroidx/compose/ui/layout/Placeable;
    .end local v15    # "index":I
    .end local v16    # "$i$a$-fastForEachIndexed-ListItemKt$BaselinesOffsetColumn$1$2$1":I
    nop

    .line 438
    .end local v6    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 442
    .end local v4    # "index$iv":I
    :cond_0
    nop

    .line 381
    .end local v1    # "$this$fastForEachIndexed$iv":Ljava/util/List;
    .end local v3    # "$i$f$fastForEachIndexed":I
    return-void
.end method
