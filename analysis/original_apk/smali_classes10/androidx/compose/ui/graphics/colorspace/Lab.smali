.class public final Landroidx/compose/ui/graphics/colorspace/Lab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Lab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Lab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Lab.kt\nandroidx/compose/ui/graphics/colorspace/Lab\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,141:1\n25#2,3:142\n*S KotlinDebug\n*F\n+ 1 Lab.kt\nandroidx/compose/ui/graphics/colorspace/Lab\n*L\n74#1:142,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J%\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J%\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0019J=\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Lab;",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "name",
        "",
        "id",
        "",
        "(Ljava/lang/String;I)V",
        "isWideGamut",
        "",
        "()Z",
        "fromXyz",
        "",
        "v",
        "getMaxValue",
        "",
        "component",
        "getMinValue",
        "toXy",
        "",
        "v0",
        "v1",
        "v2",
        "toXy$ui_graphics_release",
        "toXyz",
        "toZ",
        "toZ$ui_graphics_release",
        "xyzaToColor",
        "Landroidx/compose/ui/graphics/Color;",
        "x",
        "y",
        "z",
        "a",
        "colorSpace",
        "xyzaToColor-JlNiLsg$ui_graphics_release",
        "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J",
        "Companion",
        "ui-graphics_release"
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
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

.field private static final D:F = 0.20689656f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Lab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Lab;->Companion:Landroidx/compose/ui/graphics/colorspace/Lab$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 30
    nop

    .line 31
    nop

    .line 32
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    .line 30
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 15
    .param p1, "v"    # [F

    .line 115
    const/4 v0, 0x0

    aget v1, p1, v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v2

    aget v2, v2, v0

    div-float/2addr v1, v2

    .line 116
    .local v1, "x":F
    const/4 v2, 0x1

    aget v3, p1, v2

    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v4

    aget v4, v4, v2

    div-float/2addr v3, v4

    .line 117
    .local v3, "y":F
    const/4 v4, 0x2

    aget v5, p1, v4

    sget-object v6, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v6

    aget v6, v6, v4

    div-float/2addr v5, v6

    .line 119
    .local v5, "z":F
    const v6, 0x3c111aa7

    cmpl-float v7, v1, v6

    const v8, 0x3eaaaaab

    const v9, 0x3e0d3dcb

    const v10, 0x40f92f68

    if-lez v7, :cond_0

    float-to-double v11, v1

    float-to-double v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v7, v11

    goto :goto_0

    :cond_0
    mul-float v7, v1, v10

    add-float/2addr v7, v9

    .line 120
    .local v7, "fx":F
    :goto_0
    cmpl-float v11, v3, v6

    if-lez v11, :cond_1

    float-to-double v11, v3

    float-to-double v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    goto :goto_1

    :cond_1
    mul-float v11, v3, v10

    add-float/2addr v11, v9

    .line 121
    .local v11, "fy":F
    :goto_1
    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    float-to-double v9, v5

    float-to-double v12, v8

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    goto :goto_2

    :cond_2
    mul-float/2addr v10, v5

    add-float v6, v10, v9

    .line 123
    .local v6, "fz":F
    :goto_2
    const/high16 v8, 0x42e80000    # 116.0f

    mul-float/2addr v8, v11

    const/high16 v9, 0x41800000    # 16.0f

    sub-float/2addr v8, v9

    .line 124
    .local v8, "l":F
    const/high16 v9, 0x43fa0000    # 500.0f

    sub-float v10, v7, v11

    mul-float/2addr v10, v9

    .line 125
    .local v10, "a":F
    const/high16 v9, 0x43480000    # 200.0f

    sub-float v12, v11, v6

    mul-float/2addr v12, v9

    .line 127
    .local v12, "b":F
    const/4 v9, 0x0

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-static {v8, v9, v13}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v9

    aput v9, p1, v0

    .line 128
    const/high16 v0, -0x3d000000    # -128.0f

    const/high16 v9, 0x43000000    # 128.0f

    invoke-static {v10, v0, v9}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v13

    aput v13, p1, v2

    .line 129
    invoke-static {v12, v0, v9}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    aput v0, p1, v4

    .line 131
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 43
    if-nez p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43000000    # 128.0f

    :goto_0
    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3d000000    # -128.0f

    :goto_0
    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public toXy$ui_graphics_release(FFF)J
    .locals 19
    .param p1, "v0"    # F
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 66
    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    move/from16 v2, p1

    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 67
    .local v0, "v00":F
    const/high16 v1, -0x3d000000    # -128.0f

    const/high16 v3, 0x43000000    # 128.0f

    move/from16 v4, p2

    invoke-static {v4, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 69
    .local v1, "v10":F
    const/high16 v3, 0x41800000    # 16.0f

    add-float/2addr v3, v0

    const/high16 v5, 0x42e80000    # 116.0f

    div-float/2addr v3, v5

    .line 70
    .local v3, "fy":F
    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    .line 71
    .local v5, "fx":F
    const v6, 0x3e53dcb1

    cmpl-float v7, v5, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_0

    mul-float v7, v5, v5

    mul-float/2addr v7, v5

    goto :goto_0

    :cond_0
    sub-float v7, v5, v8

    mul-float/2addr v7, v9

    .line 72
    .local v7, "x":F
    :goto_0
    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    mul-float v6, v3, v3

    mul-float/2addr v6, v3

    goto :goto_1

    :cond_1
    sub-float v6, v3, v8

    mul-float/2addr v6, v9

    .line 74
    .local v6, "y":F
    :goto_1
    sget-object v8, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-float/2addr v8, v7

    .local v8, "val1$iv":F
    sget-object v9, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v9, v6

    .local v9, "val2$iv":F
    const/4 v10, 0x0

    .line 142
    .local v10, "$i$f$packFloats":I
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    .line 143
    .local v11, "v1$iv":J
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    int-to-long v13, v13

    .line 144
    .local v13, "v2$iv":J
    const/16 v15, 0x20

    shl-long v15, v11, v15

    const-wide v17, 0xffffffffL

    and-long v17, v13, v17

    or-long v8, v15, v17

    .line 74
    .end local v8    # "val1$iv":F
    .end local v9    # "val2$iv":F
    .end local v10    # "$i$f$packFloats":I
    .end local v11    # "v1$iv":J
    .end local v13    # "v2$iv":J
    return-wide v8
.end method

.method public toXyz([F)[F
    .locals 11
    .param p1, "v"    # [F

    .line 47
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 48
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x3d000000    # -128.0f

    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 49
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 51
    aget v3, p1, v0

    const/high16 v4, 0x41800000    # 16.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42e80000    # 116.0f

    div-float/2addr v3, v4

    .line 52
    .local v3, "fy":F
    aget v4, p1, v1

    const v5, 0x3b03126f    # 0.002f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    .line 53
    .local v4, "fx":F
    aget v5, p1, v2

    const v6, 0x3ba3d70a    # 0.005f

    mul-float/2addr v5, v6

    sub-float v5, v3, v5

    .line 54
    .local v5, "fz":F
    const v6, 0x3e53dcb1

    cmpl-float v7, v4, v6

    const v8, 0x3e0d3dcb

    const v9, 0x3e038027

    if-lez v7, :cond_0

    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    goto :goto_0

    :cond_0
    sub-float v7, v4, v8

    mul-float/2addr v7, v9

    .line 55
    .local v7, "x":F
    :goto_0
    cmpl-float v10, v3, v6

    if-lez v10, :cond_1

    mul-float v10, v3, v3

    mul-float/2addr v10, v3

    goto :goto_1

    :cond_1
    sub-float v10, v3, v8

    mul-float/2addr v10, v9

    .line 56
    .local v10, "y":F
    :goto_1
    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    mul-float v6, v5, v5

    mul-float/2addr v6, v5

    goto :goto_2

    :cond_2
    sub-float v6, v5, v8

    mul-float/2addr v6, v9

    .line 58
    .local v6, "z":F
    :goto_2
    sget-object v8, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v8

    aget v8, v8, v0

    mul-float/2addr v8, v7

    aput v8, p1, v0

    .line 59
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    aget v0, v0, v1

    mul-float/2addr v0, v10

    aput v0, p1, v1

    .line 60
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v6

    aput v0, p1, v2

    .line 62
    return-object p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 7
    .param p1, "v0"    # F
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 78
    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 79
    .local v0, "v00":F
    const/high16 v1, -0x3d000000    # -128.0f

    const/high16 v2, 0x43000000    # 128.0f

    invoke-static {p3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 80
    .local v1, "v20":F
    const/high16 v2, 0x41800000    # 16.0f

    add-float/2addr v2, v0

    const/high16 v3, 0x42e80000    # 116.0f

    div-float/2addr v2, v3

    .line 81
    .local v2, "fy":F
    const v3, 0x3ba3d70a    # 0.005f

    mul-float/2addr v3, v1

    sub-float v3, v2, v3

    .line 82
    .local v3, "fz":F
    const v4, 0x3e53dcb1

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    mul-float v4, v3, v3

    mul-float/2addr v4, v3

    goto :goto_0

    :cond_0
    const v4, 0x3e0d3dcb

    sub-float v4, v3, v4

    const v5, 0x3e038027

    mul-float/2addr v4, v5

    .line 83
    .local v4, "z":F
    :goto_0
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-float/2addr v5, v4

    return v5
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "a"    # F
    .param p5, "colorSpace"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 93
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    div-float v0, p1, v0

    .line 94
    .local v0, "x1":F
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    div-float v1, p2, v1

    .line 95
    .local v1, "y1":F
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    div-float v2, p3, v2

    .line 97
    .local v2, "z1":F
    const v3, 0x3c111aa7

    cmpl-float v4, v0, v3

    const v5, 0x3eaaaaab

    const v6, 0x3e0d3dcb

    const v7, 0x40f92f68

    if-lez v4, :cond_0

    float-to-double v8, v0

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    goto :goto_0

    :cond_0
    mul-float v4, v0, v7

    add-float/2addr v4, v6

    .line 98
    .local v4, "fx":F
    :goto_0
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1

    float-to-double v8, v1

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    goto :goto_1

    :cond_1
    mul-float v8, v1, v7

    add-float/2addr v8, v6

    .line 99
    .local v8, "fy":F
    :goto_1
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    float-to-double v6, v2

    float-to-double v9, v5

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    goto :goto_2

    :cond_2
    mul-float/2addr v7, v2

    add-float v3, v7, v6

    .line 101
    .local v3, "fz":F
    :goto_2
    const/high16 v5, 0x42e80000    # 116.0f

    mul-float/2addr v5, v8

    const/high16 v6, 0x41800000    # 16.0f

    sub-float/2addr v5, v6

    .line 102
    .local v5, "l":F
    const/high16 v6, 0x43fa0000    # 500.0f

    sub-float v7, v4, v8

    mul-float/2addr v7, v6

    .line 103
    .local v7, "a1":F
    const/high16 v6, 0x43480000    # 200.0f

    sub-float v9, v8, v3

    mul-float/2addr v9, v6

    .line 106
    .local v9, "b":F
    const/4 v6, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v5, v6, v10}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 107
    const/high16 v10, -0x3d000000    # -128.0f

    const/high16 v11, 0x43000000    # 128.0f

    invoke-static {v7, v10, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v12

    .line 108
    invoke-static {v9, v10, v11}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v10

    .line 109
    nop

    .line 110
    nop

    .line 105
    move/from16 v11, p4

    move-object/from16 v13, p5

    invoke-static {v6, v12, v10, v11, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v14

    return-wide v14
.end method
