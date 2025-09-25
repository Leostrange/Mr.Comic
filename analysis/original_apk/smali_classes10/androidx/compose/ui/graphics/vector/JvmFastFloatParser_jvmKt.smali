.class public final Landroidx/compose/ui/graphics/vector/JvmFastFloatParser_jvmKt;
.super Ljava/lang/Object;
.source "JvmFastFloatParser.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0080\u0008\u001a\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0006H\u0080\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "doubleFromBits",
        "",
        "bits",
        "",
        "floatFromBits",
        "",
        "",
        "ui-graphics_release"
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
.method public static final doubleFromBits(J)D
    .locals 3
    .param p0, "bits"    # J

    const/4 v0, 0x0

    .line 25
    .local v0, "$i$f$doubleFromBits":I
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1
.end method

.method public static final floatFromBits(I)F
    .locals 2
    .param p0, "bits"    # I

    const/4 v0, 0x0

    .line 22
    .local v0, "$i$f$floatFromBits":I
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method
