.class public final Landroidx/compose/ui/graphics/colorspace/Connector$Companion;
.super Ljava/lang/Object;
.source "Connector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0015\u0010\u0014\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u0015R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/Connector$Companion;",
        "",
        "()V",
        "OklabToSrgbPerceptual",
        "Landroidx/compose/ui/graphics/colorspace/Connector;",
        "getOklabToSrgbPerceptual$ui_graphics_release",
        "()Landroidx/compose/ui/graphics/colorspace/Connector;",
        "SrgbIdentity",
        "getSrgbIdentity$ui_graphics_release",
        "SrgbToOklabPerceptual",
        "getSrgbToOklabPerceptual$ui_graphics_release",
        "computeTransform",
        "",
        "source",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "destination",
        "intent",
        "Landroidx/compose/ui/graphics/colorspace/RenderIntent;",
        "computeTransform-YBCOT_4",
        "(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F",
        "identity",
        "identity$ui_graphics_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Connector$Companion;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/ui/graphics/colorspace/Connector$Companion;
    .param p1, "source"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .param p2, "destination"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .param p3, "intent"    # I

    .line 283
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F

    move-result-object v0

    return-object v0
.end method

.method private final computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F
    .locals 9
    .param p1, "source"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .param p2, "destination"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .param p3, "intent"    # I

    .line 293
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getAbsolute-uksYyKA()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v2

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    .line 296
    .local v0, "srcRGB":Z
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v2

    sget-object v4, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v2

    .line 298
    .local v2, "dstRGB":Z
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    return-object v1

    .line 300
    :cond_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    return-object v1

    .line 301
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    move-object v1, p1

    goto :goto_1

    :cond_4
    move-object v1, p2

    :goto_1
    const-string/jumbo v3, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 302
    .local v1, "rgb":Landroidx/compose/ui/graphics/colorspace/Rgb;
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v3

    goto :goto_2

    :cond_5
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v3

    .line 303
    .local v3, "srcXYZ":[F
    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    move-result-object v4

    goto :goto_3

    :cond_6
    sget-object v4, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    move-result-object v4

    .line 305
    .local v4, "dstXYZ":[F
    :goto_3
    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    aget v7, v3, v6

    aget v8, v4, v6

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 306
    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v4, v6

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 305
    nop

    .line 307
    const/4 v6, 0x2

    aget v7, v3, v6

    aget v8, v4, v6

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 305
    nop

    .line 304
    return-object v5
.end method


# virtual methods
.method public final getOklabToSrgbPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 337
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getOklabToSrgbPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object v0

    return-object v0
.end method

.method public final getSrgbIdentity$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 334
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getSrgbIdentity$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object v0

    return-object v0
.end method

.method public final getSrgbToOklabPerceptual$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 335
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/Connector;->access$getSrgbToOklabPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object v0

    return-object v0
.end method

.method public final identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 2
    .param p1, "source"    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 323
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getRelative-uksYyKA()I

    move-result v0

    new-instance v1, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;

    invoke-direct {v1, p1, v0}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion$identity$1;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    check-cast v1, Landroidx/compose/ui/graphics/colorspace/Connector;

    return-object v1
.end method
