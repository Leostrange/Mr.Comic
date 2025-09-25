.class public final Landroidx/compose/foundation/text2/input/InputTransformationKt;
.super Ljava/lang/Object;
.source "InputTransformation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u001f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "then",
        "Landroidx/compose/foundation/text2/input/InputTransformation;",
        "next",
        "thenOrNull",
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


# direct methods
.method public static final then(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)Landroidx/compose/foundation/text2/input/InputTransformation;
    .locals 1
    .param p0, "$this$then"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p1, "next"    # Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 145
    new-instance v0, Landroidx/compose/foundation/text2/input/FilterChain;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/text2/input/FilterChain;-><init>(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)V

    check-cast v0, Landroidx/compose/foundation/text2/input/InputTransformation;

    return-object v0
.end method

.method public static final thenOrNull(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)Landroidx/compose/foundation/text2/input/InputTransformation;
    .locals 1
    .param p0, "$this$then"    # Landroidx/compose/foundation/text2/input/InputTransformation;
    .param p1, "next"    # Landroidx/compose/foundation/text2/input/InputTransformation;

    .line 125
    nop

    .line 126
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 127
    :cond_0
    if-nez p1, :cond_1

    move-object v0, p0

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/foundation/text2/input/InputTransformationKt;->then(Landroidx/compose/foundation/text2/input/InputTransformation;Landroidx/compose/foundation/text2/input/InputTransformation;)Landroidx/compose/foundation/text2/input/InputTransformation;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0
.end method
