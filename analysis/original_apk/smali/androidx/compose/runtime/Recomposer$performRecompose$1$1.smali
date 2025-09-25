.class final Landroidx/compose/runtime/Recomposer$performRecompose$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$performRecompose$1$1\n+ 2 IdentityArraySet.kt\nandroidx/compose/runtime/collection/IdentityArraySet\n*L\n1#1,1564:1\n108#2,7:1565\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$performRecompose$1$1\n*L\n1152#1:1565,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $composition:Landroidx/compose/runtime/ControlledComposition;

.field final synthetic $modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/ControlledComposition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/ControlledComposition;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;->$modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;->$composition:Landroidx/compose/runtime/ControlledComposition;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1151
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 1152
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;->$modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$performRecompose$1$1;->$composition:Landroidx/compose/runtime/ControlledComposition;

    const/4 v2, 0x0

    .line 1565
    .local v2, "$i$f$fastForEach":I
    nop

    .line 1566
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->getValues()[Ljava/lang/Object;

    move-result-object v3

    .line 1567
    .local v3, "values$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/IdentityArraySet;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 1569
    aget-object v6, v3, v4

    const-string/jumbo v7, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v6, "it":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1152
    .local v7, "$i$a$-fastForEach-Recomposer$performRecompose$1$1$1":I
    invoke-interface {v1, v6}, Landroidx/compose/runtime/ControlledComposition;->recordWriteOf(Ljava/lang/Object;)V

    .line 1569
    .end local v6    # "it":Ljava/lang/Object;
    .end local v7    # "$i$a$-fastForEach-Recomposer$performRecompose$1$1$1":I
    nop

    .line 1567
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1571
    .end local v4    # "i$iv":I
    :cond_0
    nop

    .line 1153
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/IdentityArraySet;
    .end local v2    # "$i$f$fastForEach":I
    .end local v3    # "values$iv":[Ljava/lang/Object;
    return-void
.end method
