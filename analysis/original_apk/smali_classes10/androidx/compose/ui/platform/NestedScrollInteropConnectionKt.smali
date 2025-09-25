.class public final Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;
.super Ljava/lang/Object;
.source "NestedScrollInteropConnection.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedScrollInteropConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedScrollInteropConnection.android.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,239:1\n74#2:240\n36#3:241\n1116#4,6:242\n*S KotlinDebug\n*F\n+ 1 NestedScrollInteropConnection.android.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n*L\n235#1:240\n236#1:241\n236#1:242,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0001H\u0000\u001a\u0017\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\r\u001a\"\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u000c\u0010\u0014\u001a\u00020\u0001*\u00020\u0001H\u0002\u001a\u000c\u0010\u0015\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\u0016\u0010\u0016\u001a\u00020\u0003*\u00020\u0017H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u000c\u0010\u001a\u001a\u00020\u0001*\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001b"
    }
    d2 = {
        "ScrollingAxesThreshold",
        "",
        "scrollAxes",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "getScrollAxes-k-4lQ0M",
        "(J)I",
        "composeToViewOffset",
        "offset",
        "rememberNestedScrollInteropConnection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "hostView",
        "Landroid/view/View;",
        "(Landroid/view/View;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "toOffset",
        "consumed",
        "",
        "available",
        "toOffset-Uv8p0NA",
        "([IJ)J",
        "ceilAwayFromZero",
        "reverseAxis",
        "toViewType",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;",
        "toViewType-GyEprt8",
        "(I)I",
        "toViewVelocity",
        "ui_release"
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
.field private static final ScrollingAxesThreshold:F = 0.5f


# direct methods
.method public static final synthetic access$getScrollAxes-k-4lQ0M(J)I
    .locals 1
    .param p0, "$receiver"    # J

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->getScrollAxes-k-4lQ0M(J)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$toOffset-Uv8p0NA([IJ)J
    .locals 2
    .param p0, "consumed"    # [I
    .param p1, "available"    # J

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toOffset-Uv8p0NA([IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$toViewType-GyEprt8(I)I
    .locals 1
    .param p0, "$receiver"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toViewType-GyEprt8(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$toViewVelocity(F)F
    .locals 1
    .param p0, "$receiver"    # F

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->toViewVelocity(F)F

    move-result v0

    return v0
.end method

.method private static final ceilAwayFromZero(F)F
    .locals 2
    .param p0, "$this$ceilAwayFromZero"    # F

    .line 160
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    double-to-float v0, v0

    return v0
.end method

.method public static final composeToViewOffset(F)I
    .locals 1
    .param p0, "offset"    # F

    .line 163
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->ceilAwayFromZero(F)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static final getScrollAxes-k-4lQ0M(J)I
    .locals 3
    .param p0, "$this$scrollAxes"    # J

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "axes":I
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 207
    or-int/lit8 v0, v0, 0x1

    .line 209
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 210
    or-int/lit8 v0, v0, 0x2

    .line 212
    :cond_1
    return v0
.end method

.method public static final rememberNestedScrollInteropConnection(Landroid/view/View;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
    .locals 8
    .param p0, "hostView"    # Landroid/view/View;
    .param p1, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p2, "$changed"    # I

    const v0, 0x40209863

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberNestedScrollInteropConnection)234@8194L7,235@8230L66:NestedScrollInteropConnection.android.kt#itgzvw"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 235
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/CompositionLocal;

    .local p3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x6

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 240
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {p1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p1, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    .end local p3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    move-object p0, v3

    check-cast p0, Landroid/view/View;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 236
    const/4 p3, -0x1

    const-string v1, "androidx.compose.ui.platform.rememberNestedScrollInteropConnection (NestedScrollInteropConnection.android.kt:235)"

    invoke-static {v0, p2, p3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/16 p3, 0x8

    .local p3, "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    const v1, 0x44faf204

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 241
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid$iv$iv":Z
    move-object v2, p1

    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 242
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 243
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v1, :cond_3

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 247
    :cond_2
    move-object v6, v4

    goto :goto_1

    .line 244
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 237
    .local v6, "$i$a$-remember-NestedScrollInteropConnectionKt$rememberNestedScrollInteropConnection$1":I
    new-instance v7, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    invoke-direct {v7, p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnection;-><init>(Landroid/view/View;)V

    .line 244
    .end local v6    # "$i$a$-remember-NestedScrollInteropConnectionKt$rememberNestedScrollInteropConnection$1":I
    move-object v6, v7

    .line 245
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    nop

    .line 243
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 242
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 241
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 236
    .end local v0    # "$i$f$remember":I
    .end local p3    # "$changed$iv":I
    check-cast v6, Landroidx/compose/ui/platform/NestedScrollInteropConnection;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    return-object v6
.end method

.method private static final reverseAxis(I)F
    .locals 2
    .param p0, "$this$reverseAxis"    # I

    .line 166
    int-to-float v0, p0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private static final toOffset-Uv8p0NA([IJ)J
    .locals 4
    .param p0, "consumed"    # [I
    .param p1, "available"    # J

    .line 176
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 177
    aget v0, p0, v2

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    goto :goto_0

    .line 179
    :cond_0
    aget v0, p0, v2

    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    .line 176
    :goto_0
    nop

    .line 182
    .local v0, "offsetX":F
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpl-float v1, v2, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    .line 183
    aget v1, p0, v2

    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v1

    goto :goto_1

    .line 185
    :cond_1
    aget v1, p0, v2

    invoke-static {v1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->reverseAxis(I)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v1

    .line 182
    :goto_1
    nop

    .line 188
    .local v1, "offsetY":F
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    return-wide v2
.end method

.method private static final toViewType-GyEprt8(I)I
    .locals 1
    .param p0, "$this$toViewType_u2dGyEprt8"    # I

    .line 191
    nop

    .line 192
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0
.end method

.method private static final toViewVelocity(F)F
    .locals 1
    .param p0, "$this$toViewVelocity"    # F

    .line 168
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v0, p0

    return v0
.end method
