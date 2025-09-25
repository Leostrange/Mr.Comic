.class public final Landroidx/compose/material3/carousel/KeylineKt;
.super Ljava/lang/Object;
.source "Keyline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a1\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\nH\u0000\u001a9\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00032\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\nH\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "keylineListOf",
        "Landroidx/compose/material3/carousel/KeylineList;",
        "carouselMainAxisSize",
        "",
        "carouselAlignment",
        "Landroidx/compose/material3/carousel/CarouselAlignment;",
        "keylines",
        "Lkotlin/Function1;",
        "Landroidx/compose/material3/carousel/KeylineListScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "pivotIndex",
        "",
        "pivotOffset",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final keylineListOf(FIFLkotlin/jvm/functions/Function1;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2
    .param p0, "carouselMainAxisSize"    # F
    .param p1, "pivotIndex"    # I
    .param p2, "pivotOffset"    # F
    .param p3, "keylines"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIF",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/carousel/KeylineListScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/material3/carousel/KeylineList;"
        }
    .end annotation

    .line 232
    new-instance v0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;

    invoke-direct {v0}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;-><init>()V

    .line 233
    .local v0, "keylineListScope":Landroidx/compose/material3/carousel/KeylineListScopeImpl;
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->createWithPivot(FIF)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v1

    return-object v1
.end method

.method public static final keylineListOf(FLandroidx/compose/material3/carousel/CarouselAlignment;Lkotlin/jvm/functions/Function1;)Landroidx/compose/material3/carousel/KeylineList;
    .locals 2
    .param p0, "carouselMainAxisSize"    # F
    .param p1, "carouselAlignment"    # Landroidx/compose/material3/carousel/CarouselAlignment;
    .param p2, "keylines"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/material3/carousel/CarouselAlignment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/carousel/KeylineListScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/material3/carousel/KeylineList;"
        }
    .end annotation

    .line 217
    new-instance v0, Landroidx/compose/material3/carousel/KeylineListScopeImpl;

    invoke-direct {v0}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;-><init>()V

    .line 218
    .local v0, "keylineListScope":Landroidx/compose/material3/carousel/KeylineListScopeImpl;
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0, p0, p1}, Landroidx/compose/material3/carousel/KeylineListScopeImpl;->createWithAlignment(FLandroidx/compose/material3/carousel/CarouselAlignment;)Landroidx/compose/material3/carousel/KeylineList;

    move-result-object v1

    return-object v1
.end method
