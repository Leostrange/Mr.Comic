.class public final Landroidx/compose/ui/graphics/colorspace/Oklab;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Oklab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOklab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Oklab.kt\nandroidx/compose/ui/graphics/colorspace/Oklab\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,172:1\n25#2,3:173\n*S KotlinDebug\n*F\n+ 1 Oklab.kt\nandroidx/compose/ui/graphics/colorspace/Oklab\n*L\n78#1:173,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J%\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J%\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0019J=\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u0001H\u0010\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008!\u0010\"R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Oklab;",
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
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

.field private static final InverseM1:[F

.field private static final InverseM2:[F

.field private static final M1:[F

.field private static final M2:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->Companion:Landroidx/compose/ui/graphics/colorspace/Oklab$Companion;

    .line 138
    nop

    .line 140
    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    .line 141
    nop

    .line 140
    nop

    .line 141
    nop

    .line 140
    nop

    .line 141
    nop

    .line 140
    nop

    .line 142
    nop

    .line 140
    nop

    .line 142
    nop

    .line 140
    nop

    .line 142
    nop

    .line 140
    nop

    .line 145
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    move-result-object v2

    .line 146
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v3

    .line 147
    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v4

    .line 144
    invoke-static {v2, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    move-result-object v1

    sput-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    .line 154
    nop

    .line 155
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 156
    nop

    .line 155
    nop

    .line 156
    nop

    .line 155
    nop

    .line 156
    nop

    .line 155
    nop

    .line 157
    nop

    .line 155
    nop

    .line 157
    nop

    .line 155
    nop

    .line 157
    nop

    .line 155
    nop

    .line 154
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    .line 163
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    .line 169
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f51a598
        0x3d071acd
        0x3d456dae
        0x3eb94699
        0x3f6de762
        0x3e875b04
        -0x41fc0c33
        0x3d140d73
        0x3f22441b
    .end array-data

    :array_1
    .array-data 4
        0x3e578152
        0x3ffd2f0e
        0x3cd434b4
        0x3f4b2a89
        -0x3fe491f2
        0x3f4863bb
        -0x447a9132
        0x3ee6b438
        -0x40b0faa0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 32
    nop

    .line 33
    nop

    .line 34
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getLab-xdoWZVw()J

    move-result-wide v3

    const/4 v6, 0x0

    .line 32
    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    return-void
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 6
    .param p1, "v"    # [F

    .line 122
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 124
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const v4, 0x3eaaaaab

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 125
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 126
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 128
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 129
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 45
    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 41
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    :goto_0
    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public toXy$ui_graphics_release(FFF)J
    .locals 23
    .param p1, "v0"    # F
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 63
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v2, p1

    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 64
    .local v0, "v00":F
    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v4, p2

    invoke-static {v4, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    .line 65
    .local v5, "v10":F
    move/from16 v6, p3

    invoke-static {v6, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 67
    .local v1, "v20":F
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v3, v0, v5, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v3

    .line 68
    .local v3, "v01":F
    sget-object v7, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v7, v0, v5, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v7

    .line 69
    .local v7, "v11":F
    sget-object v8, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v8, v0, v5, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result v8

    .line 71
    .local v8, "v21":F
    mul-float v9, v3, v3

    mul-float/2addr v9, v3

    .line 72
    .local v9, "v02":F
    mul-float v10, v7, v7

    mul-float/2addr v10, v7

    .line 73
    .local v10, "v12":F
    mul-float v11, v8, v8

    mul-float/2addr v11, v8

    .line 75
    .local v11, "v22":F
    sget-object v12, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    invoke-static {v12, v9, v10, v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v12

    .line 76
    .local v12, "v03":F
    sget-object v13, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    invoke-static {v13, v9, v10, v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v13

    .line 78
    .local v13, "v13":F
    const/4 v14, 0x0

    .line 173
    .local v14, "$i$f$packFloats":I
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v16, v0

    move/from16 v17, v1

    .end local v0    # "v00":F
    .end local v1    # "v20":F
    .local v16, "v00":F
    .local v17, "v20":F
    int-to-long v0, v15

    .line 174
    .local v0, "v1$iv":J
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    move/from16 v18, v3

    .end local v3    # "v01":F
    .local v18, "v01":F
    int-to-long v2, v15

    .line 175
    .local v2, "v2$iv":J
    const/16 v15, 0x20

    shl-long v19, v0, v15

    const-wide v21, 0xffffffffL

    and-long v21, v2, v21

    or-long v0, v19, v21

    .line 78
    .end local v0    # "v1$iv":J
    .end local v2    # "v2$iv":J
    .end local v14    # "$i$f$packFloats":I
    return-wide v0
.end method

.method public toXyz([F)[F
    .locals 6
    .param p1, "v"    # [F

    .line 49
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    aput v1, p1, v0

    .line 50
    const/4 v1, 0x1

    aget v2, p1, v1

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    aput v2, p1, v1

    .line 51
    const/4 v2, 0x2

    aget v5, p1, v2

    invoke-static {v5, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    aput v3, p1, v2

    .line 53
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v3, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 54
    aget v3, p1, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    aget v4, p1, v0

    mul-float/2addr v3, v4

    aput v3, p1, v0

    .line 55
    aget v0, p1, v1

    aget v3, p1, v1

    mul-float/2addr v0, v3

    aget v3, p1, v1

    mul-float/2addr v0, v3

    aput v0, p1, v1

    .line 56
    aget v0, p1, v2

    aget v1, p1, v2

    mul-float/2addr v0, v1

    aget v1, p1, v2

    mul-float/2addr v0, v1

    aput v0, p1, v2

    .line 57
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 59
    return-object p1
.end method

.method public toZ$ui_graphics_release(FFF)F
    .locals 10
    .param p1, "v0"    # F
    .param p2, "v1"    # F
    .param p3, "v2"    # F

    .line 82
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 83
    .local v0, "v00":F
    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 84
    .local v3, "v10":F
    invoke-static {p3, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    .line 86
    .local v1, "v20":F
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v2, v0, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v2

    .line 87
    .local v2, "v01":F
    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v4, v0, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v4

    .line 88
    .local v4, "v11":F
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM2:[F

    invoke-static {v5, v0, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result v5

    .line 90
    .local v5, "v21":F
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    .line 91
    .local v6, "v02":F
    mul-float v7, v4, v4

    mul-float/2addr v7, v4

    .line 92
    .local v7, "v12":F
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    .line 94
    .local v8, "v22":F
    sget-object v9, Landroidx/compose/ui/graphics/colorspace/Oklab;->InverseM1:[F

    invoke-static {v9, v6, v7, v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result v9

    .line 96
    .local v9, "v23":F
    return v9
.end method

.method public xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "a"    # F
    .param p5, "colorSpace"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 106
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v0

    .line 107
    .local v0, "v0":F
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    invoke-static {v1, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v1

    .line 108
    .local v1, "v1":F
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Oklab;->M1:[F

    invoke-static {v2, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result v2

    .line 110
    .local v2, "v2":F
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const v6, 0x3eaaaaab

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    .line 111
    .end local v0    # "v0":F
    .local v3, "v0":F
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    .line 112
    .end local v1    # "v1":F
    .local v0, "v1":F
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    .line 114
    .end local v2    # "v2":F
    .local v1, "v2":F
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_0([FFFF)F

    move-result v2

    .line 115
    .local v2, "v01":F
    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    invoke-static {v4, v3, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_1([FFFF)F

    move-result v4

    .line 116
    .local v4, "v11":F
    sget-object v5, Landroidx/compose/ui/graphics/colorspace/Oklab;->M2:[F

    invoke-static {v5, v3, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3_2([FFFF)F

    move-result v5

    .line 118
    .local v5, "v21":F
    invoke-static {v2, v4, v5, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide v6

    return-wide v6
.end method
