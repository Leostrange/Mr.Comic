.class public final Landroidx/compose/ui/unit/AndroidDensity_androidKt;
.super Ljava/lang/Object;
.source "AndroidDensity.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Density",
        "Landroidx/compose/ui/unit/Density;",
        "context",
        "Landroid/content/Context;",
        "ui-unit_release"
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
.method public static final Density(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 32
    .local v0, "fontScale":F
    invoke-static {}, Landroidx/compose/ui/unit/FontScalingKt;->getDisableNonLinearFontScalingInCompose()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/ui/unit/LinearFontScaleConverter;

    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/LinearFontScaleConverter;-><init>(F)V

    check-cast v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    goto :goto_0

    .line 33
    :cond_0
    sget-object v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->INSTANCE:Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/compose/ui/unit/LinearFontScaleConverter;

    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/LinearFontScaleConverter;-><init>(F)V

    check-cast v1, Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    .line 32
    :cond_1
    :goto_0
    nop

    .line 35
    .local v1, "converter":Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;
    new-instance v2, Landroidx/compose/ui/unit/DensityWithConverter;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 37
    nop

    .line 38
    nop

    .line 35
    invoke-direct {v2, v3, v0, v1}, Landroidx/compose/ui/unit/DensityWithConverter;-><init>(FFLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    check-cast v2, Landroidx/compose/ui/unit/Density;

    return-object v2
.end method
