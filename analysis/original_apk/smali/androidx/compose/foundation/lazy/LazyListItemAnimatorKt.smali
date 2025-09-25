.class public final Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;
.super Ljava/lang/Object;
.source "LazyListItemAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimatorKt\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,331:1\n26#2:332\n*S KotlinDebug\n*F\n+ 1 LazyListItemAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemAnimatorKt\n*L\n330#1:332\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\"\u0018\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u0004\u0018\u00010\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "EmptyArray",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;",
        "specs",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;",
        "",
        "getSpecs",
        "(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EmptyArray:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "$i$f$emptyArray":I
    const/4 v1, 0x0

    new-array v0, v1, [Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    .line 330
    .end local v0    # "$i$f$emptyArray":I
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->EmptyArray:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    return-void
.end method

.method public static final synthetic access$getEmptyArray$p()[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->EmptyArray:[Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimation;

    return-object v0
.end method

.method public static final synthetic access$getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListItemAnimatorKt;->getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    move-result-object v0

    return-object v0
.end method

.method private static final getSpecs(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;
    .locals 1
    .param p0, "$this$specs"    # Ljava/lang/Object;

    .line 328
    instance-of v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
