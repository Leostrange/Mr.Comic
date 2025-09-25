.class final Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShadowViewInfo.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt;->stitchTrees(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Landroidx/compose/ui/layout/LayoutInfo;",
        "+",
        "Landroidx/compose/ui/tooling/ShadowViewInfo;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/layout/LayoutInfo;",
        "Landroidx/compose/ui/tooling/ShadowViewInfo;",
        "invoke",
        "(Lkotlin/Pair;)Ljava/lang/Boolean;"
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
.field final synthetic $rootToAttach:Landroidx/compose/ui/tooling/ShadowViewInfo;


# direct methods
.method constructor <init>(Landroidx/compose/ui/tooling/ShadowViewInfo;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;->$rootToAttach:Landroidx/compose/ui/tooling/ShadowViewInfo;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "it"    # Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/layout/LayoutInfo;",
            "Landroidx/compose/ui/tooling/ShadowViewInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/tooling/ShadowViewInfo;

    invoke-virtual {v0}, Landroidx/compose/ui/tooling/ShadowViewInfo;->findRoot()Landroidx/compose/ui/tooling/ShadowViewInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;->$rootToAttach:Landroidx/compose/ui/tooling/ShadowViewInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 103
    move-object v0, p1

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/tooling/ShadowViewInfo_androidKt$stitchTrees$1$2;->invoke(Lkotlin/Pair;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
