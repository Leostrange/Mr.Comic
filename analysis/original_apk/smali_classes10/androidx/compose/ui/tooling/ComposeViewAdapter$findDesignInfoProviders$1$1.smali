.class final Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComposeViewAdapter.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/ComposeViewAdapter;->findDesignInfoProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/tooling/data/Group;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposeViewAdapter.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeViewAdapter.android.kt\nandroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,668:1\n1747#2,3:669\n*S KotlinDebug\n*F\n+ 1 ComposeViewAdapter.android.kt\nandroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1\n*L\n335#1:669,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "group",
        "Landroidx/compose/ui/tooling/data/Group;",
        "invoke",
        "(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/Boolean;"
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
.field final synthetic this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/ComposeViewAdapter;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "group"    # Landroidx/compose/ui/tooling/data/Group;

    .line 335
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remember"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    invoke-static {v0, p1}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->access$hasDesignInfo(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/tooling/data/Group;->getChildren()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    iget-object v3, p0, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;->this$0:Landroidx/compose/ui/tooling/ComposeViewAdapter;

    const/4 v4, 0x0

    .line 669
    .local v4, "$i$f$any":I
    instance-of v5, v0, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v6

    goto :goto_1

    .line 670
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/tooling/data/Group;

    .local v8, "child":Landroidx/compose/ui/tooling/data/Group;
    const/4 v9, 0x0

    .line 336
    .local v9, "$i$a$-any-ComposeViewAdapter$findDesignInfoProviders$1$1$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/tooling/data/Group;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v3, v8}, Landroidx/compose/ui/tooling/ComposeViewAdapter;->access$hasDesignInfo(Landroidx/compose/ui/tooling/ComposeViewAdapter;Landroidx/compose/ui/tooling/data/Group;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v8, v2

    goto :goto_0

    :cond_3
    move v8, v6

    .line 670
    .end local v8    # "child":Landroidx/compose/ui/tooling/data/Group;
    .end local v9    # "$i$a$-any-ComposeViewAdapter$findDesignInfoProviders$1$1$1":I
    :goto_0
    if-eqz v8, :cond_2

    move v0, v2

    goto :goto_1

    .line 671
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_4
    move v0, v6

    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_1
    if-eqz v0, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 335
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 334
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/tooling/data/Group;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/tooling/ComposeViewAdapter$findDesignInfoProviders$1$1;->invoke(Landroidx/compose/ui/tooling/data/Group;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
