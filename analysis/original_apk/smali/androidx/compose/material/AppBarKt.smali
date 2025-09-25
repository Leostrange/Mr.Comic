.class public final Landroidx/compose/material/AppBarKt;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,758:1\n606#1:761\n606#1:762\n606#1:763\n606#1:764\n606#1:765\n606#1:766\n74#2:759\n74#2:760\n154#3:767\n154#3:768\n154#3:769\n154#3:771\n154#3:773\n154#3:774\n154#3:775\n58#4:770\n58#4:772\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt\n*L\n632#1:761\n664#1:762\n665#1:763\n667#1:764\n674#1:765\n675#1:766\n343#1:759\n411#1:760\n743#1:767\n745#1:768\n747#1:769\n750#1:771\n753#1:773\n755#1:774\n757#1:775\n747#1:770\n750#1:772\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aj\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001av\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!\u001an\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#\u001a\u008c\u0001\u0010$\u001a\u00020\u000c2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u000c0&\u00a2\u0006\u0002\u0008\u001a2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0015\u0008\u0002\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u000c\u0018\u00010&\u00a2\u0006\u0002\u0008\u001a2\u001e\u0008\u0002\u0010(\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0001H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001a\u0084\u0001\u0010$\u001a\u00020\u000c2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u000c0&\u00a2\u0006\u0002\u0008\u001a2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0015\u0008\u0002\u0010\'\u001a\u000f\u0012\u0004\u0012\u00020\u000c\u0018\u00010&\u00a2\u0006\u0002\u0008\u001a2\u001e\u0008\u0002\u0010(\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0001H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,\u001aj\u0010$\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010.\u001ab\u0010$\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000c0\u0018\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0008\u001bH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u00100\u001a\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002022\u0006\u00104\u001a\u000202H\u0080\u0008\u001a,\u00105\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000202062\u0006\u00107\u001a\u0002022\u0006\u00104\u001a\u0002022\u0006\u00108\u001a\u000202H\u0000\u001a\u0011\u00109\u001a\u0002022\u0006\u0010:\u001a\u000202H\u0082\u0008\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0005\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006;"
    }
    d2 = {
        "AppBarHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "AppBarHorizontalPadding",
        "BottomAppBarCutoutOffset",
        "BottomAppBarRoundedEdgeRadius",
        "TitleIconModifier",
        "Landroidx/compose/ui/Modifier;",
        "TitleInsetWithoutIcon",
        "ZeroInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "AppBar",
        "",
        "backgroundColor",
        "Landroidx/compose/ui/graphics/Color;",
        "contentColor",
        "elevation",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "windowInsets",
        "modifier",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "AppBar-HkEspTQ",
        "(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "BottomAppBar",
        "cutoutShape",
        "BottomAppBar-DanWW-k",
        "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "BottomAppBar-Y1yfwus",
        "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "TopAppBar",
        "title",
        "Lkotlin/Function0;",
        "navigationIcon",
        "actions",
        "TopAppBar-Rx1qByU",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V",
        "TopAppBar-xWeB9-s",
        "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V",
        "TopAppBar-afqeVBk",
        "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "TopAppBar-HsRjFd4",
        "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V",
        "calculateCutoutCircleYIntercept",
        "",
        "cutoutRadius",
        "verticalOffset",
        "calculateRoundedEdgeIntercept",
        "Lkotlin/Pair;",
        "controlPointX",
        "radius",
        "square",
        "x",
        "material_release"
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
.field private static final AppBarHeight:F

.field private static final AppBarHorizontalPadding:F

.field private static final BottomAppBarCutoutOffset:F

.field private static final BottomAppBarRoundedEdgeRadius:F

.field private static final TitleIconModifier:Landroidx/compose/ui/Modifier;

.field private static final TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

.field private static final ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 743
    const/16 v0, 0x38

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 767
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 743
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    .line 745
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 768
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 745
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .line 747
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x10

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 769
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 747
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    sget v2, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .local v1, "arg0$iv":F
    .local v2, "other$iv":F
    const/4 v3, 0x0

    .line 770
    .local v3, "$i$f$minus-5rwHm24":I
    sub-float v4, v1, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 747
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":F
    .end local v3    # "$i$f$minus-5rwHm24":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    .line 750
    nop

    .line 749
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 750
    const/16 v1, 0x48

    .local v1, "$this$dp$iv":I
    const/4 v2, 0x0

    .line 771
    .local v2, "$i$f$getDp":I
    int-to-float v3, v1

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 750
    .end local v1    # "$this$dp$iv":I
    .end local v2    # "$i$f$getDp":I
    sget v2, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .local v1, "arg0$iv":F
    .local v2, "other$iv":F
    const/4 v3, 0x0

    .line 772
    .restart local v3    # "$i$f$minus-5rwHm24":I
    sub-float v4, v1, v2

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 750
    .end local v1    # "arg0$iv":F
    .end local v2    # "other$iv":F
    .end local v3    # "$i$f$minus-5rwHm24":I
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    .line 753
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 773
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 753
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    .line 755
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 774
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 755
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    .line 757
    const/4 v0, 0x0

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 775
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 757
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets-a9UjIt4$default(FFFFILjava/lang/Object;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/AppBarKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method

.method private static final AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "backgroundColor"    # J
    .param p2, "contentColor"    # J
    .param p4, "elevation"    # F
    .param p5, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p6, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p7, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p8, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p9, "content"    # Lkotlin/jvm/functions/Function3;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 720
    move-object/from16 v13, p5

    move-object/from16 v14, p7

    move-object/from16 v15, p9

    move/from16 v12, p11

    move/from16 v11, p12

    const v0, -0x2a77f922

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(AppBar)P(0:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.unit.Dp,3,6,7,5)720@31583L659:AppBar.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-wide/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-wide/from16 v8, p0

    invoke-interface {v10, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-wide/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-wide/from16 v6, p2

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    move-wide/from16 v6, p2

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-wide/from16 v6, p2

    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move/from16 v5, p4

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_8

    move/from16 v5, p4

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x100

    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    goto :goto_5

    :cond_8
    move/from16 v5, p4

    :goto_5
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_b

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x800

    goto :goto_6

    :cond_a
    const/16 v2, 0x400

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    :goto_7
    and-int/lit8 v2, v11, 0x10

    if-eqz v2, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v3, p6

    goto :goto_9

    :cond_c
    const v2, 0xe000

    and-int/2addr v2, v12

    if-nez v2, :cond_e

    move-object/from16 v3, p6

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x4000

    goto :goto_8

    :cond_d
    const/16 v2, 0x2000

    :goto_8
    or-int/2addr v1, v2

    goto :goto_9

    :cond_e
    move-object/from16 v3, p6

    :goto_9
    and-int/lit8 v2, v11, 0x20

    const/high16 v4, 0x70000

    if-eqz v2, :cond_f

    const/high16 v2, 0x30000

    :goto_a
    or-int/2addr v1, v2

    goto :goto_b

    :cond_f
    and-int v2, v12, v4

    if-nez v2, :cond_11

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v2, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v2, v11, 0x40

    const/high16 v16, 0x180000

    if-eqz v2, :cond_12

    or-int v1, v1, v16

    move-object/from16 v4, p8

    goto :goto_d

    :cond_12
    const/high16 v17, 0x380000

    and-int v17, v12, v17

    if-nez v17, :cond_14

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v17, 0x80000

    :goto_c
    or-int v1, v1, v17

    goto :goto_d

    :cond_14
    move-object/from16 v4, p8

    :goto_d
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_15

    const/high16 v0, 0xc00000

    :goto_e
    or-int/2addr v1, v0

    goto :goto_f

    :cond_15
    const/high16 v0, 0x1c00000

    and-int/2addr v0, v12

    if-nez v0, :cond_17

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v0, 0x400000

    goto :goto_e

    :cond_17
    :goto_f
    const v0, 0x16db6db

    and-int/2addr v0, v1

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 741
    :cond_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v16, v4

    goto :goto_11

    .line 720
    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    .line 718
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v4, v0

    .end local p8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v4, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 720
    const/4 v0, -0x1

    const-string/jumbo v2, "androidx.compose.material.AppBar (AppBar.kt:719)"

    const v3, -0x2a77f922

    invoke-static {v3, v1, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 726
    :cond_1b
    nop

    .line 725
    nop

    .line 722
    nop

    .line 723
    const/16 v22, 0x0

    .line 724
    nop

    .line 727
    new-instance v0, Landroidx/compose/material/AppBarKt$AppBar$1;

    invoke-direct {v0, v14, v13, v15}, Landroidx/compose/material/AppBarKt$AppBar$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;)V

    const v2, 0xcb64a1a

    const/4 v3, 0x1

    invoke-static {v10, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lkotlin/jvm/functions/Function2;

    shr-int/lit8 v0, v1, 0x12

    and-int/lit8 v0, v0, 0xe

    or-int v0, v0, v16

    shr-int/lit8 v2, v1, 0x9

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x6

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x9

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v26, v0, v2

    const/16 v27, 0x10

    .line 721
    move-object/from16 v16, v4

    move-object/from16 v17, p6

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    move/from16 v23, p4

    move-object/from16 v25, v10

    invoke-static/range {v16 .. v27}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 741
    :cond_1c
    move-object/from16 v16, v4

    .end local v4    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-eqz v3, :cond_1d

    new-instance v17, Landroidx/compose/material/AppBarKt$AppBar$2;

    move-object/from16 v0, v17

    move/from16 v18, v1

    .end local v1    # "$dirty":I
    .local v18, "$dirty":I
    move-wide/from16 v1, p0

    move-object v13, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, v16

    move-object/from16 v19, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v19, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/AppBarKt$AppBar$2;-><init>(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_12

    .end local v18    # "$dirty":I
    .end local v19    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v1    # "$dirty":I
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1d
    move/from16 v18, v1

    move-object/from16 v19, v10

    .end local v1    # "$dirty":I
    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v18    # "$dirty":I
    .restart local v19    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_12
    return-void
.end method

.method public static final BottomAppBar-DanWW-k(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "backgroundColor"    # J
    .param p4, "contentColor"    # J
    .param p6, "cutoutShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p7, "elevation"    # F
    .param p8, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p9, "content"    # Lkotlin/jvm/functions/Function3;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 342
    move/from16 v13, p11

    move/from16 v12, p12

    const v0, 0x16cee727

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomAppBar)P(7,6,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4,5:c#ui.unit.Dp,3)335@15300L6,336@15349L32,342@15630L7,348@15820L174:AppBar.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    move-object/from16 v10, p0

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v10, p0

    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v4, v13, 0x380

    if-nez v4, :cond_8

    and-int/lit8 v4, v12, 0x4

    if-nez v4, :cond_6

    move-wide/from16 v4, p2

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v4, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-wide/from16 v4, p2

    :goto_5
    and-int/lit16 v6, v13, 0x1c00

    if-nez v6, :cond_b

    and-int/lit8 v6, v12, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v6, p4

    invoke-interface {v11, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v6, p4

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v6, p4

    :goto_7
    and-int/lit8 v8, v12, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v9, p6

    goto :goto_9

    :cond_c
    const v9, 0xe000

    and-int/2addr v9, v13

    if-nez v9, :cond_e

    move-object/from16 v9, p6

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v9, p6

    :goto_9
    and-int/lit8 v14, v12, 0x20

    const/high16 v15, 0x70000

    if-eqz v14, :cond_f

    const/high16 v16, 0x30000

    or-int v1, v1, v16

    move/from16 v15, p7

    goto :goto_b

    :cond_f
    and-int v16, v13, v15

    if-nez v16, :cond_11

    move/from16 v15, p7

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move/from16 v15, p7

    :goto_b
    and-int/lit8 v16, v12, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v18, 0x180000

    or-int v1, v1, v18

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v18, v13, v17

    if-nez v18, :cond_14

    move-object/from16 v0, p8

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v1, v1, v19

    goto :goto_d

    :cond_14
    move-object/from16 v0, p8

    :goto_d
    and-int/lit16 v0, v12, 0x80

    const/high16 v19, 0x1c00000

    if-eqz v0, :cond_15

    const/high16 v0, 0xc00000

    or-int/2addr v1, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    and-int v0, v13, v19

    if-nez v0, :cond_17

    move-object/from16 v0, p9

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v20, 0x400000

    :goto_e
    or-int v1, v1, v20

    goto :goto_f

    :cond_17
    move-object/from16 v0, p9

    :goto_f
    const v20, 0x16db6db

    and-int v0, v1, v20

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 359
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v14, p1

    move-object/from16 v21, p8

    move/from16 v22, v1

    move-wide/from16 v17, v6

    move-object/from16 v19, v9

    move/from16 v20, v15

    move-wide v15, v4

    goto/16 :goto_15

    .line 342
    :cond_19
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_1d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 340
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1b

    and-int/lit16 v1, v1, -0x381

    :cond_1b
    and-int/lit8 v0, v12, 0x8

    if-eqz v0, :cond_1c

    and-int/lit16 v0, v1, -0x1c01

    move-object/from16 v2, p8

    move v3, v0

    move v1, v15

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_13

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v2, p8

    move v3, v1

    move v1, v15

    goto :goto_13

    .line 342
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 335
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 342
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v0, p1

    .line 335
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_1f

    .line 336
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v11, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v2

    .end local p2    # "backgroundColor":J
    .local v2, "backgroundColor":J
    and-int/lit16 v1, v1, -0x381

    move-wide v4, v2

    .end local v2    # "backgroundColor":J
    .local v4, "backgroundColor":J
    :cond_1f
    and-int/lit8 v2, v12, 0x8

    if-eqz v2, :cond_20

    .line 337
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    invoke-static {v4, v5, v11, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p4    # "contentColor":J
    .local v2, "contentColor":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide v6, v2

    .end local v2    # "contentColor":J
    .local v6, "contentColor":J
    :cond_20
    if-eqz v8, :cond_21

    .line 338
    const/4 v2, 0x0

    move-object v9, v2

    .end local p6    # "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v9, "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    :cond_21
    if-eqz v14, :cond_22

    .line 339
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getBottomAppBarElevation-D9Ej5fM()F

    move-result v2

    move v15, v2

    .end local p7    # "elevation":F
    .local v15, "elevation":F
    :cond_22
    if-eqz v16, :cond_23

    .line 340
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    move v3, v1

    move v1, v15

    .end local p8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v2, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_13

    .line 339
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_23
    move-object/from16 v2, p8

    move v3, v1

    move v1, v15

    .line 340
    .end local v15    # "elevation":F
    .end local p8    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v1, "elevation":F
    .restart local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v3, "$dirty":I
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 342
    const/4 v8, -0x1

    const-string/jumbo v14, "androidx.compose.material.BottomAppBar (AppBar.kt:341)"

    const v15, 0x16cee727

    invoke-static {v15, v3, v8, v14}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 343
    :cond_24
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->getLocalFabPlacement()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v14, 0x6

    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .line 759
    .local v15, "$i$f$getCurrent":I
    const v10, 0x789c5f52

    const-string v12, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 343
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$getCurrent":I
    move-object v8, v10

    check-cast v8, Landroidx/compose/material/FabPlacement;

    .line 344
    .local v8, "fabPlacement":Landroidx/compose/material/FabPlacement;
    if-eqz v9, :cond_26

    const/4 v10, 0x0

    if-eqz v8, :cond_25

    invoke-virtual {v8}, Landroidx/compose/material/FabPlacement;->isDocked()Z

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_25

    move v10, v14

    :cond_25
    if-eqz v10, :cond_26

    .line 345
    new-instance v10, Landroidx/compose/material/BottomAppBarCutoutShape;

    invoke-direct {v10, v9, v8}, Landroidx/compose/material/BottomAppBarCutoutShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/FabPlacement;)V

    check-cast v10, Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v20, v10

    goto :goto_14

    .line 347
    :cond_26
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    move-object/from16 v20, v10

    .line 344
    :goto_14
    nop

    .line 350
    .local v20, "shape":Landroidx/compose/ui/graphics/Shape;
    nop

    .line 351
    nop

    .line 352
    nop

    .line 353
    nop

    .line 354
    nop

    .line 355
    nop

    .line 356
    nop

    .line 357
    shr-int/lit8 v10, v3, 0x6

    and-int/lit8 v10, v10, 0xe

    shr-int/lit8 v12, v3, 0x6

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v10, v12

    shr-int/lit8 v12, v3, 0x9

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v10, v12

    shr-int/lit8 v12, v3, 0x9

    and-int/lit16 v12, v12, 0x1c00

    or-int/2addr v10, v12

    shl-int/lit8 v12, v3, 0xf

    const/high16 v14, 0x70000

    and-int/2addr v12, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v3, 0xf

    and-int v12, v12, v17

    or-int/2addr v10, v12

    and-int v12, v3, v19

    or-int v25, v10, v12

    const/16 v26, 0x0

    .line 349
    move-wide v14, v4

    move-wide/from16 v16, v6

    move/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v21, p0

    move-object/from16 v22, v0

    move-object/from16 v23, p9

    move-object/from16 v24, v11

    invoke-static/range {v14 .. v26}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 359
    .end local v8    # "fabPlacement":Landroidx/compose/material/FabPlacement;
    .end local v20    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_27
    move-object v14, v0

    move/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-object/from16 v19, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "elevation":F
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v3    # "$dirty":I
    .end local v4    # "backgroundColor":J
    .end local v6    # "contentColor":J
    .end local v9    # "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v14, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "backgroundColor":J
    .local v17, "contentColor":J
    .local v19, "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v20, "elevation":F
    .local v21, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v22, "$dirty":I
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_28

    new-instance v23, Landroidx/compose/material/AppBarKt$BottomAppBar$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, p9

    move-object/from16 v24, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v24, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    move-object v13, v12

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/AppBarKt$BottomAppBar$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v23

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_16

    .end local v24    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_28
    move-object/from16 v24, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v24    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_16
    return-void
.end method

.method public static final BottomAppBar-Y1yfwus(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backgroundColor"    # J
    .param p3, "contentColor"    # J
    .param p5, "cutoutShape"    # Landroidx/compose/ui/graphics/Shape;
    .param p6, "elevation"    # F
    .param p7, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "content"    # Lkotlin/jvm/functions/Function3;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 410
    move/from16 v12, p10

    const v0, -0x6276bdad

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(BottomAppBar)P(6,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4,5:c#ui.unit.Dp,3)403@18483L6,404@18532L32,410@18813L7,416@19003L172:AppBar.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v12, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v12, 0x70

    if-nez v4, :cond_5

    and-int/lit8 v4, p11, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit16 v6, v12, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, p11, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p3

    invoke-interface {v11, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p3

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p3

    :goto_5
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v9, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v12, 0x1c00

    if-nez v9, :cond_b

    move-object/from16 v9, p5

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x800

    goto :goto_6

    :cond_a
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v1, v10

    goto :goto_7

    :cond_b
    move-object/from16 v9, p5

    :goto_7
    and-int/lit8 v10, p11, 0x10

    if-eqz v10, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v13, p6

    goto :goto_9

    :cond_c
    const v13, 0xe000

    and-int/2addr v13, v12

    if-nez v13, :cond_e

    move/from16 v13, p6

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move/from16 v13, p6

    :goto_9
    and-int/lit8 v14, p11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v1, v15

    move-object/from16 v15, p7

    goto :goto_b

    :cond_f
    const/high16 v16, 0x70000

    and-int v16, v12, v16

    if-nez v16, :cond_11

    move-object/from16 v15, p7

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p7

    :goto_b
    and-int/lit8 v16, p11, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v16, 0x180000

    or-int v1, v1, v16

    move-object/from16 v0, p8

    goto :goto_d

    :cond_12
    and-int v16, v12, v17

    if-nez v16, :cond_14

    move-object/from16 v0, p8

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move-object/from16 v0, p8

    :goto_d
    const v18, 0x2db6db

    and-int v0, v1, v18

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 427
    :cond_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v1

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    move/from16 v19, v13

    move-object/from16 v20, v15

    move-object/from16 v13, p0

    move-wide v14, v4

    goto/16 :goto_13

    .line 410
    :cond_16
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 408
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_18

    and-int/lit8 v1, v1, -0x71

    :cond_18
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_19

    and-int/lit16 v0, v1, -0x381

    move v3, v0

    move v1, v13

    move-object v2, v15

    move-object/from16 v0, p0

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_11

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_19
    move-object/from16 v0, p0

    move v3, v1

    move v1, v13

    move-object v2, v15

    goto :goto_11

    .line 410
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1b

    .line 403
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 410
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v0, p0

    .line 403
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_1c

    .line 404
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v11, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v2

    .end local p1    # "backgroundColor":J
    .local v2, "backgroundColor":J
    and-int/lit8 v1, v1, -0x71

    move-wide v4, v2

    .end local v2    # "backgroundColor":J
    .local v4, "backgroundColor":J
    :cond_1c
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_1d

    .line 405
    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0xe

    invoke-static {v4, v5, v11, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p3    # "contentColor":J
    .local v2, "contentColor":J
    and-int/lit16 v1, v1, -0x381

    move-wide v6, v2

    .end local v2    # "contentColor":J
    .local v6, "contentColor":J
    :cond_1d
    if-eqz v8, :cond_1e

    .line 406
    const/4 v2, 0x0

    move-object v9, v2

    .end local p5    # "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v9, "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    :cond_1e
    if-eqz v10, :cond_1f

    .line 407
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getBottomAppBarElevation-D9Ej5fM()F

    move-result v2

    move v13, v2

    .end local p6    # "elevation":F
    .local v13, "elevation":F
    :cond_1f
    if-eqz v14, :cond_20

    .line 408
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    move v3, v1

    move v1, v13

    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v2, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_11

    .line 407
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_20
    move v3, v1

    move v1, v13

    move-object v2, v15

    .line 408
    .end local v13    # "elevation":F
    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v1, "elevation":F
    .restart local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v3, "$dirty":I
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 410
    const/4 v8, -0x1

    const-string/jumbo v10, "androidx.compose.material.BottomAppBar (AppBar.kt:409)"

    const v13, -0x6276bdad

    invoke-static {v13, v3, v8, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 411
    :cond_21
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->getLocalFabPlacement()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/CompositionLocal;

    .local v8, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v10, 0x6

    .local v10, "$changed$iv":I
    const/4 v13, 0x0

    .line 760
    .local v13, "$i$f$getCurrent":I
    const v14, 0x789c5f52

    const-string v15, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v11, v14, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 411
    .end local v8    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v10    # "$changed$iv":I
    .end local v13    # "$i$f$getCurrent":I
    move-object v8, v14

    check-cast v8, Landroidx/compose/material/FabPlacement;

    .line 412
    .local v8, "fabPlacement":Landroidx/compose/material/FabPlacement;
    if-eqz v9, :cond_23

    const/4 v10, 0x0

    if-eqz v8, :cond_22

    invoke-virtual {v8}, Landroidx/compose/material/FabPlacement;->isDocked()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_22

    move v10, v14

    :cond_22
    if-eqz v10, :cond_23

    .line 413
    new-instance v10, Landroidx/compose/material/BottomAppBarCutoutShape;

    invoke-direct {v10, v9, v8}, Landroidx/compose/material/BottomAppBarCutoutShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/FabPlacement;)V

    check-cast v10, Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v19, v10

    goto :goto_12

    .line 415
    :cond_23
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    move-object/from16 v19, v10

    .line 412
    :goto_12
    nop

    .line 418
    .local v19, "shape":Landroidx/compose/ui/graphics/Shape;
    nop

    .line 419
    nop

    .line 420
    nop

    .line 421
    nop

    .line 422
    nop

    .line 423
    sget-object v20, Landroidx/compose/material/AppBarKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 424
    nop

    .line 425
    shr-int/lit8 v10, v3, 0x3

    and-int/lit8 v10, v10, 0xe

    const/high16 v13, 0x30000

    or-int/2addr v10, v13

    shr-int/lit8 v13, v3, 0x3

    and-int/lit8 v13, v13, 0x70

    or-int/2addr v10, v13

    shr-int/lit8 v13, v3, 0x6

    and-int/lit16 v13, v13, 0x380

    or-int/2addr v10, v13

    shr-int/lit8 v13, v3, 0x6

    and-int/lit16 v13, v13, 0x1c00

    or-int/2addr v10, v13

    shl-int/lit8 v13, v3, 0x12

    and-int v13, v13, v17

    or-int/2addr v10, v13

    const/high16 v13, 0x1c00000

    shl-int/lit8 v14, v3, 0x3

    and-int/2addr v13, v14

    or-int v24, v10, v13

    const/16 v25, 0x0

    .line 417
    move-wide v13, v4

    move-wide v15, v6

    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v0

    move-object/from16 v22, p8

    move-object/from16 v23, v11

    invoke-static/range {v13 .. v25}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 427
    .end local v8    # "fabPlacement":Landroidx/compose/material/FabPlacement;
    .end local v19    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_24
    move-object v13, v0

    move/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "elevation":F
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v3    # "$dirty":I
    .end local v4    # "backgroundColor":J
    .end local v6    # "contentColor":J
    .end local v9    # "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "backgroundColor":J
    .local v16, "contentColor":J
    .local v18, "cutoutShape":Landroidx/compose/ui/graphics/Shape;
    .local v19, "elevation":F
    .local v20, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v21, "$dirty":I
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_25

    new-instance v22, Landroidx/compose/material/AppBarKt$BottomAppBar$2;

    move-object/from16 v0, v22

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, p8

    move-object v12, v10

    move/from16 v10, p10

    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$BottomAppBar$2;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_14

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_25
    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_14
    return-void
.end method

.method public static final TopAppBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "backgroundColor"    # J
    .param p3, "contentColor"    # J
    .param p5, "elevation"    # F
    .param p6, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p7, "content"    # Lkotlin/jvm/functions/Function3;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 275
    move/from16 v11, p9

    const v0, 0x7112d116

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TopAppBar)P(5,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.unit.Dp,3)269@12098L6,270@12147L32,275@12356L202:AppBar.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, p10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v3, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v11, 0xe

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p0

    :goto_1
    and-int/lit8 v4, v11, 0x70

    if-nez v4, :cond_5

    and-int/lit8 v4, p10, 0x2

    if-nez v4, :cond_3

    move-wide/from16 v4, p1

    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p1

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v1, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v4, p1

    :goto_3
    and-int/lit16 v6, v11, 0x380

    if-nez v6, :cond_8

    and-int/lit8 v6, p10, 0x4

    if-nez v6, :cond_6

    move-wide/from16 v6, p3

    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v6, p3

    :cond_7
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v1, v8

    goto :goto_5

    :cond_8
    move-wide/from16 v6, p3

    :goto_5
    and-int/lit8 v8, p10, 0x8

    if-eqz v8, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v9, p5

    goto :goto_7

    :cond_9
    and-int/lit16 v9, v11, 0x1c00

    if-nez v9, :cond_b

    move/from16 v9, p5

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v1, v12

    goto :goto_7

    :cond_b
    move/from16 v9, p5

    :goto_7
    and-int/lit8 v12, p10, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v13, p6

    goto :goto_9

    :cond_c
    const v13, 0xe000

    and-int/2addr v13, v11

    if-nez v13, :cond_e

    move-object/from16 v13, p6

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v1, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p6

    :goto_9
    and-int/lit8 v14, p10, 0x20

    if-eqz v14, :cond_f

    const/high16 v14, 0x30000

    or-int/2addr v1, v14

    move-object/from16 v14, p7

    goto :goto_b

    :cond_f
    const/high16 v14, 0x70000

    and-int/2addr v14, v11

    if-nez v14, :cond_11

    move-object/from16 v14, p7

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-object/from16 v14, p7

    :goto_b
    const v15, 0x5b6db

    and-int/2addr v15, v1

    const v0, 0x12492

    if-ne v15, v0, :cond_13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    .line 286
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v19, v1

    move-object v12, v3

    move-wide v15, v6

    move/from16 v17, v9

    move-object/from16 v18, v13

    move-wide v13, v4

    goto/16 :goto_11

    .line 275
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_17

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    .line 273
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_15

    and-int/lit8 v1, v1, -0x71

    :cond_15
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_16

    and-int/lit16 v0, v1, -0x381

    move v1, v0

    move-object v0, v3

    move-wide v2, v4

    move-object v4, v13

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_10

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_16
    move-object v0, v3

    move-wide v2, v4

    move-object v4, v13

    goto :goto_10

    .line 275
    :cond_17
    :goto_d
    if-eqz v2, :cond_18

    .line 269
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_e

    .line 275
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p0    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_18
    move-object v0, v3

    .line 269
    .end local p0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_e
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_19

    .line 270
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v10, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v2

    .end local p1    # "backgroundColor":J
    .local v2, "backgroundColor":J
    and-int/lit8 v1, v1, -0x71

    goto :goto_f

    .line 269
    .end local v2    # "backgroundColor":J
    .restart local p1    # "backgroundColor":J
    :cond_19
    move-wide v2, v4

    .line 270
    .end local p1    # "backgroundColor":J
    .restart local v2    # "backgroundColor":J
    :goto_f
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_1a

    .line 271
    shr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v2, v3, v10, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    .end local p3    # "contentColor":J
    .local v4, "contentColor":J
    and-int/lit16 v1, v1, -0x381

    move-wide v6, v4

    .end local v4    # "contentColor":J
    .local v6, "contentColor":J
    :cond_1a
    if-eqz v8, :cond_1b

    .line 272
    sget-object v4, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    move-result v4

    move v9, v4

    .end local p5    # "elevation":F
    .local v9, "elevation":F
    :cond_1b
    if-eqz v12, :cond_1c

    .line 273
    sget-object v4, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v4}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v4

    .end local p6    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v4, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_10

    .line 272
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p6    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_1c
    move-object v4, v13

    .line 273
    .end local p6    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 275
    const/4 v5, -0x1

    const-string/jumbo v8, "androidx.compose.material.TopAppBar (AppBar.kt:274)"

    const v12, 0x7112d116

    invoke-static {v12, v1, v5, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 277
    :cond_1d
    nop

    .line 278
    nop

    .line 279
    nop

    .line 280
    nop

    .line 281
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v18

    .line 282
    sget-object v19, Landroidx/compose/material/AppBarKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 283
    nop

    .line 284
    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v5, v5, 0xe

    const v8, 0x36000

    or-int/2addr v5, v8

    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v5, v8

    shr-int/lit8 v8, v1, 0x3

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v5, v8

    shr-int/lit8 v8, v1, 0x3

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v5, v8

    shl-int/lit8 v8, v1, 0x12

    const/high16 v12, 0x380000

    and-int/2addr v8, v12

    or-int/2addr v5, v8

    shl-int/lit8 v8, v1, 0x6

    const/high16 v12, 0x1c00000

    and-int/2addr v8, v12

    or-int v23, v5, v8

    const/16 v24, 0x0

    .line 276
    move-wide v12, v2

    move-wide v14, v6

    move/from16 v16, v9

    move-object/from16 v17, v4

    move-object/from16 v20, v0

    move-object/from16 v21, p7

    move-object/from16 v22, v10

    invoke-static/range {v12 .. v24}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 286
    :cond_1e
    move-object v12, v0

    move/from16 v19, v1

    move-wide v13, v2

    move-object/from16 v18, v4

    move-wide v15, v6

    move/from16 v17, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$dirty":I
    .end local v2    # "backgroundColor":J
    .end local v4    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v6    # "contentColor":J
    .end local v9    # "elevation":F
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v13, "backgroundColor":J
    .local v15, "contentColor":J
    .local v17, "elevation":F
    .local v18, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v19, "$dirty":I
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_1f

    new-instance v20, Landroidx/compose/material/AppBarKt$TopAppBar$5;

    move-object/from16 v0, v20

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, p7

    move-object v11, v9

    move/from16 v9, p9

    move-object/from16 v21, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/AppBarKt$TopAppBar$5;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_12

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1f
    move-object/from16 v21, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_12
    return-void
.end method

.method public static final TopAppBar-Rx1qByU(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0, "title"    # Lkotlin/jvm/functions/Function2;
    .param p1, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "navigationIcon"    # Lkotlin/jvm/functions/Function2;
    .param p4, "actions"    # Lkotlin/jvm/functions/Function3;
    .param p5, "backgroundColor"    # J
    .param p7, "contentColor"    # J
    .param p9, "elevation"    # F
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 94
    move-object/from16 v13, p0

    move/from16 v14, p11

    move/from16 v12, p12

    const v0, -0x2d8655cb

    move-object/from16 v1, p10

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TopAppBar)P(6,7,4,5!1,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.unit.Dp)90@4376L6,91@4425L32,94@4522L1310:AppBar.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p11

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v14, 0xe

    if-nez v2, :cond_2

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_2
    :goto_1
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v10, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v14, 0x70

    if-nez v2, :cond_5

    move-object/from16 v10, p1

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move-object/from16 v10, p1

    :goto_3
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v14, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x100

    goto :goto_4

    :cond_7
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v1, v4

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v4, v12, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v14, 0x1c00

    if-nez v5, :cond_b

    move-object/from16 v5, p3

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v1, v6

    goto :goto_7

    :cond_b
    move-object/from16 v5, p3

    :goto_7
    and-int/lit8 v6, v12, 0x10

    if-eqz v6, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move-object/from16 v7, p4

    goto :goto_9

    :cond_c
    const v7, 0xe000

    and-int/2addr v7, v14

    if-nez v7, :cond_e

    move-object/from16 v7, p4

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/16 v8, 0x4000

    goto :goto_8

    :cond_d
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v1, v8

    goto :goto_9

    :cond_e
    move-object/from16 v7, p4

    :goto_9
    const/high16 v8, 0x70000

    and-int v9, v14, v8

    if-nez v9, :cond_11

    and-int/lit8 v9, v12, 0x20

    if-nez v9, :cond_f

    move-wide/from16 v8, p5

    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v8, p5

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-wide/from16 v8, p5

    :goto_b
    const/high16 v15, 0x380000

    and-int v16, v14, v15

    if-nez v16, :cond_14

    and-int/lit8 v16, v12, 0x40

    if-nez v16, :cond_12

    move/from16 v17, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .local v17, "$dirty":I
    invoke-interface {v11, v0, v1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    .end local v17    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_12
    move/from16 v17, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v17    # "$dirty":I
    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v17, v17, v18

    goto :goto_d

    .end local v17    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_14
    move/from16 v17, v1

    move-wide/from16 v0, p7

    .end local v1    # "$dirty":I
    .restart local v17    # "$dirty":I
    :goto_d
    and-int/lit16 v15, v12, 0x80

    if-eqz v15, :cond_15

    const/high16 v19, 0xc00000

    or-int v17, v17, v19

    move/from16 v0, p9

    goto :goto_f

    :cond_15
    const/high16 v19, 0x1c00000

    and-int v19, v14, v19

    if-nez v19, :cond_17

    move/from16 v0, p9

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v1, 0x400000

    :goto_e
    or-int v17, v17, v1

    goto :goto_f

    :cond_17
    move/from16 v0, p9

    :goto_f
    const v1, 0x16db6db

    and-int v1, v17, v1

    const v0, 0x492492

    if-ne v1, v0, :cond_19

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 138
    :cond_18
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v20, p7

    move/from16 v22, p9

    move-object v15, v3

    move-object/from16 v16, v5

    move-wide/from16 v18, v8

    move/from16 v23, v17

    move-object/from16 v17, v7

    goto/16 :goto_14

    .line 94
    :cond_19
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v14, 0x1

    const v1, -0x380001

    const v19, -0x70001

    if-eqz v0, :cond_1d

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 93
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1b

    and-int v17, v17, v19

    :cond_1b
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_1c

    and-int v0, v17, v1

    move/from16 v2, p9

    move v4, v0

    move-wide/from16 v0, p7

    .end local v17    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_13

    .end local v0    # "$dirty":I
    .restart local v17    # "$dirty":I
    :cond_1c
    move-wide/from16 v0, p7

    move/from16 v2, p9

    move/from16 v4, v17

    goto :goto_13

    .line 94
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 88
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    move-object v3, v0

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    if-eqz v4, :cond_1f

    .line 89
    const/4 v0, 0x0

    move-object v5, v0

    .end local p3    # "navigationIcon":Lkotlin/jvm/functions/Function2;
    .local v5, "navigationIcon":Lkotlin/jvm/functions/Function2;
    :cond_1f
    if-eqz v6, :cond_20

    sget-object v0, Landroidx/compose/material/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$AppBarKt;

    invoke-virtual {v0}, Landroidx/compose/material/ComposableSingletons$AppBarKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    move-object v7, v0

    .end local p4    # "actions":Lkotlin/jvm/functions/Function3;
    .local v7, "actions":Lkotlin/jvm/functions/Function3;
    :cond_20
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_21

    .line 91
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v2, 0x6

    invoke-virtual {v0, v11, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v8

    .end local p5    # "backgroundColor":J
    .local v8, "backgroundColor":J
    and-int v17, v17, v19

    :cond_21
    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_22

    .line 92
    shr-int/lit8 v0, v17, 0xf

    and-int/lit8 v0, v0, 0xe

    invoke-static {v8, v9, v11, v0}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v19

    .end local p7    # "contentColor":J
    .local v19, "contentColor":J
    and-int v17, v17, v1

    goto :goto_12

    .line 91
    .end local v19    # "contentColor":J
    .restart local p7    # "contentColor":J
    :cond_22
    move-wide/from16 v19, p7

    .line 92
    .end local p7    # "contentColor":J
    .restart local v19    # "contentColor":J
    :goto_12
    if-eqz v15, :cond_23

    .line 93
    sget-object v0, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v0}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    move-result v0

    move v2, v0

    move/from16 v4, v17

    move-wide/from16 v0, v19

    .end local p9    # "elevation":F
    .local v0, "elevation":F
    goto :goto_13

    .line 92
    .end local v0    # "elevation":F
    .restart local p9    # "elevation":F
    :cond_23
    move/from16 v2, p9

    move/from16 v4, v17

    move-wide/from16 v0, v19

    .line 93
    .end local v17    # "$dirty":I
    .end local v19    # "contentColor":J
    .end local p9    # "elevation":F
    .local v0, "contentColor":J
    .local v2, "elevation":F
    .local v4, "$dirty":I
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 94
    const/4 v6, -0x1

    const-string/jumbo v15, "androidx.compose.material.TopAppBar (AppBar.kt:93)"

    const v10, -0x2d8655cb

    invoke-static {v10, v4, v6, v15}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 96
    :cond_24
    nop

    .line 97
    nop

    .line 98
    nop

    .line 99
    sget-object v6, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v6}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v20

    .line 100
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v21

    .line 101
    nop

    .line 102
    nop

    .line 103
    new-instance v6, Landroidx/compose/material/AppBarKt$TopAppBar$1;

    invoke-direct {v6, v5, v13, v7}, Landroidx/compose/material/AppBarKt$TopAppBar$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    const v10, 0x6e3ff187

    const/4 v15, 0x1

    invoke-static {v11, v10, v15, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Lkotlin/jvm/functions/Function3;

    shr-int/lit8 v6, v4, 0xf

    and-int/lit8 v6, v6, 0xe

    const v10, 0xc06c00

    or-int/2addr v6, v10

    shr-int/lit8 v10, v4, 0xf

    and-int/lit8 v10, v10, 0x70

    or-int/2addr v6, v10

    shr-int/lit8 v10, v4, 0xf

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v6, v10

    shl-int/lit8 v10, v4, 0xc

    const/high16 v15, 0x70000

    and-int/2addr v10, v15

    or-int/2addr v6, v10

    shl-int/lit8 v10, v4, 0xc

    const/high16 v15, 0x380000

    and-int/2addr v10, v15

    or-int v26, v6, v10

    const/16 v27, 0x0

    .line 95
    move-wide v15, v8

    move-wide/from16 v17, v0

    move/from16 v19, v2

    move-object/from16 v22, p1

    move-object/from16 v23, v3

    move-object/from16 v25, v11

    invoke-static/range {v15 .. v27}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 138
    :cond_25
    move-wide/from16 v20, v0

    move/from16 v22, v2

    move-object v15, v3

    move/from16 v23, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    .end local v0    # "contentColor":J
    .end local v2    # "elevation":F
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v4    # "$dirty":I
    .end local v5    # "navigationIcon":Lkotlin/jvm/functions/Function2;
    .end local v7    # "actions":Lkotlin/jvm/functions/Function3;
    .end local v8    # "backgroundColor":J
    .local v15, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "navigationIcon":Lkotlin/jvm/functions/Function2;
    .local v17, "actions":Lkotlin/jvm/functions/Function3;
    .local v18, "backgroundColor":J
    .local v20, "contentColor":J
    .local v22, "elevation":F
    .local v23, "$dirty":I
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_26

    new-instance v24, Landroidx/compose/material/AppBarKt$TopAppBar$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    move-object v13, v10

    move/from16 v10, v22

    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v25, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/AppBarKt$TopAppBar$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFII)V

    move-object/from16 v0, v24

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_15

    .end local v25    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_26
    move-object/from16 v25, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v25    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_15
    return-void
.end method

.method public static final TopAppBar-afqeVBk(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "backgroundColor"    # J
    .param p4, "contentColor"    # J
    .param p6, "elevation"    # F
    .param p7, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p8, "content"    # Lkotlin/jvm/functions/Function3;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 228
    move/from16 v12, p10

    const v0, 0x34ad2c8e

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TopAppBar)P(6,5,0:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.unit.Dp,3)222@9964L6,223@10013L32,228@10222L204:AppBar.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v10, p0

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v10, p0

    :goto_1
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v4, v12, 0x380

    if-nez v4, :cond_8

    and-int/lit8 v4, p11, 0x4

    if-nez v4, :cond_6

    move-wide/from16 v4, p2

    invoke-interface {v11, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_6
    move-wide/from16 v4, p2

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-wide/from16 v4, p2

    :goto_5
    and-int/lit16 v6, v12, 0x1c00

    if-nez v6, :cond_b

    and-int/lit8 v6, p11, 0x8

    if-nez v6, :cond_9

    move-wide/from16 v6, p4

    invoke-interface {v11, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_9
    move-wide/from16 v6, p4

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-wide/from16 v6, p4

    :goto_7
    and-int/lit8 v8, p11, 0x10

    if-eqz v8, :cond_c

    or-int/lit16 v1, v1, 0x6000

    move/from16 v9, p6

    goto :goto_9

    :cond_c
    const v9, 0xe000

    and-int/2addr v9, v12

    if-nez v9, :cond_e

    move/from16 v9, p6

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x4000

    goto :goto_8

    :cond_d
    const/16 v13, 0x2000

    :goto_8
    or-int/2addr v1, v13

    goto :goto_9

    :cond_e
    move/from16 v9, p6

    :goto_9
    and-int/lit8 v13, p11, 0x20

    const/high16 v14, 0x70000

    if-eqz v13, :cond_f

    const/high16 v15, 0x30000

    or-int/2addr v1, v15

    move-object/from16 v15, p7

    goto :goto_b

    :cond_f
    and-int v15, v12, v14

    if-nez v15, :cond_11

    move-object/from16 v15, p7

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v1, v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p7

    :goto_b
    and-int/lit8 v16, p11, 0x40

    const/high16 v17, 0x380000

    if-eqz v16, :cond_12

    const/high16 v16, 0x180000

    or-int v1, v1, v16

    move-object/from16 v14, p8

    goto :goto_d

    :cond_12
    and-int v16, v12, v17

    if-nez v16, :cond_14

    move-object/from16 v14, p8

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v1, v1, v16

    goto :goto_d

    :cond_14
    move-object/from16 v14, p8

    :goto_d
    const v16, 0x2db6db

    and-int v0, v1, v16

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 239
    :cond_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v13, p1

    move/from16 v20, v1

    move-wide/from16 v16, v6

    move/from16 v18, v9

    move-object/from16 v19, v15

    move-wide v14, v4

    goto/16 :goto_12

    .line 228
    :cond_16
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 226
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_18

    and-int/lit16 v1, v1, -0x381

    :cond_18
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_19

    and-int/lit16 v0, v1, -0x1c01

    move v1, v0

    move-object v2, v15

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_11

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_19
    move-object/from16 v0, p1

    move-object v2, v15

    goto :goto_11

    .line 228
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1b

    .line 222
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 228
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v0, p1

    .line 222
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_1c

    .line 223
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v3, 0x6

    invoke-virtual {v2, v11, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v2

    .end local p2    # "backgroundColor":J
    .local v2, "backgroundColor":J
    and-int/lit16 v1, v1, -0x381

    move-wide v4, v2

    .end local v2    # "backgroundColor":J
    .local v4, "backgroundColor":J
    :cond_1c
    and-int/lit8 v2, p11, 0x8

    if-eqz v2, :cond_1d

    .line 224
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    invoke-static {v4, v5, v11, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v2

    .end local p4    # "contentColor":J
    .local v2, "contentColor":J
    and-int/lit16 v1, v1, -0x1c01

    move-wide v6, v2

    .end local v2    # "contentColor":J
    .local v6, "contentColor":J
    :cond_1d
    if-eqz v8, :cond_1e

    .line 225
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    move-result v2

    move v9, v2

    .end local p6    # "elevation":F
    .local v9, "elevation":F
    :cond_1e
    if-eqz v13, :cond_1f

    .line 226
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v2, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    goto :goto_11

    .line 225
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :cond_1f
    move-object v2, v15

    .line 226
    .end local p7    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .restart local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 228
    const/4 v3, -0x1

    const-string/jumbo v8, "androidx.compose.material.TopAppBar (AppBar.kt:227)"

    const v13, 0x34ad2c8e

    invoke-static {v13, v1, v3, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 230
    :cond_20
    nop

    .line 231
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v19

    .line 235
    nop

    .line 236
    nop

    .line 237
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xe

    or-int/lit16 v3, v3, 0x6000

    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v3, v8

    shr-int/lit8 v8, v1, 0x6

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v3, v8

    shr-int/lit8 v8, v1, 0x6

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v3, v8

    shl-int/lit8 v8, v1, 0xf

    const/high16 v13, 0x70000

    and-int/2addr v8, v13

    or-int/2addr v3, v8

    shl-int/lit8 v8, v1, 0xf

    and-int v8, v8, v17

    or-int/2addr v3, v8

    shl-int/lit8 v8, v1, 0x3

    const/high16 v13, 0x1c00000

    and-int/2addr v8, v13

    or-int v24, v3, v8

    const/16 v25, 0x0

    .line 229
    move-wide v13, v4

    move-wide v15, v6

    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v20, p0

    move-object/from16 v21, v0

    move-object/from16 v22, p8

    move-object/from16 v23, v11

    invoke-static/range {v13 .. v25}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 239
    :cond_21
    move-object v13, v0

    move/from16 v20, v1

    move-object/from16 v19, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move/from16 v18, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$dirty":I
    .end local v2    # "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .end local v4    # "backgroundColor":J
    .end local v6    # "contentColor":J
    .end local v9    # "elevation":F
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "backgroundColor":J
    .local v16, "contentColor":J
    .local v18, "elevation":F
    .local v19, "contentPadding":Landroidx/compose/foundation/layout/PaddingValues;
    .local v20, "$dirty":I
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v9

    if-eqz v9, :cond_22

    new-instance v21, Landroidx/compose/material/AppBarKt$TopAppBar$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v13

    move-wide v3, v14

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object v12, v9

    move-object/from16 v9, p8

    move/from16 v10, p10

    move-object/from16 v22, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v22, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$TopAppBar$4;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;II)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    .end local v22    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_22
    move-object/from16 v22, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v22    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_13
    return-void
.end method

.method public static final TopAppBar-xWeB9-s(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 26
    .param p0, "title"    # Lkotlin/jvm/functions/Function2;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "navigationIcon"    # Lkotlin/jvm/functions/Function2;
    .param p3, "actions"    # Lkotlin/jvm/functions/Function3;
    .param p4, "backgroundColor"    # J
    .param p6, "contentColor"    # J
    .param p8, "elevation"    # F
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;JJF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 176
    move/from16 v12, p10

    const v0, -0x7c70822b

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v11, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(TopAppBar)P(6,4,5!1,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.unit.Dp)172@7722L6,173@7771L32,176@7867L175:AppBar.kt#jmzs0o"

    invoke-static {v11, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v10, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v10, p0

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    goto :goto_1

    :cond_2
    move-object/from16 v10, p0

    :goto_1
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v12, 0x70

    if-nez v3, :cond_5

    move-object/from16 v3, p1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v1, v4

    goto :goto_3

    :cond_5
    move-object/from16 v3, p1

    :goto_3
    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v5, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v5, v12, 0x380

    if-nez v5, :cond_8

    move-object/from16 v5, p2

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v1, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p2

    :goto_5
    and-int/lit8 v6, p11, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move-object/from16 v7, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v7, v12, 0x1c00

    if-nez v7, :cond_b

    move-object/from16 v7, p3

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x800

    goto :goto_6

    :cond_a
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v1, v8

    goto :goto_7

    :cond_b
    move-object/from16 v7, p3

    :goto_7
    const v8, 0xe000

    and-int v9, v12, v8

    if-nez v9, :cond_e

    and-int/lit8 v9, p11, 0x10

    if-nez v9, :cond_c

    move-wide/from16 v13, p4

    invoke-interface {v11, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_8

    :cond_c
    move-wide/from16 v13, p4

    :cond_d
    const/16 v9, 0x2000

    :goto_8
    or-int/2addr v1, v9

    goto :goto_9

    :cond_e
    move-wide/from16 v13, p4

    :goto_9
    const/high16 v9, 0x70000

    and-int v15, v12, v9

    if-nez v15, :cond_11

    and-int/lit8 v15, p11, 0x20

    if-nez v15, :cond_f

    move-wide/from16 v9, p6

    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_f
    move-wide/from16 v9, p6

    :cond_10
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v1, v15

    goto :goto_b

    :cond_11
    move-wide/from16 v9, p6

    :goto_b
    and-int/lit8 v15, p11, 0x40

    const/high16 v16, 0x380000

    if-eqz v15, :cond_12

    const/high16 v17, 0x180000

    or-int v1, v1, v17

    move/from16 v8, p8

    goto :goto_d

    :cond_12
    and-int v17, v12, v16

    if-nez v17, :cond_14

    move/from16 v8, p8

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v1, v1, v18

    goto :goto_d

    :cond_14
    move/from16 v8, p8

    :goto_d
    const v18, 0x2db6db

    and-int v0, v1, v18

    const v3, 0x92492

    if-ne v0, v3, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_e

    .line 187
    :cond_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v21, v1

    move-object v15, v7

    move/from16 v20, v8

    move-wide/from16 v18, v9

    move-wide/from16 v16, v13

    move-object/from16 v13, p1

    move-object v14, v5

    goto/16 :goto_12

    .line 176
    :cond_16
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v3, -0x70001

    const v18, -0xe001

    if-eqz v0, :cond_1a

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    .line 175
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_18

    and-int v1, v1, v18

    :cond_18
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_19

    and-int v0, v1, v3

    move v3, v0

    move-wide v1, v13

    move-object/from16 v0, p1

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_11

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_19
    move-object/from16 v0, p1

    move v3, v1

    move-wide v1, v13

    goto :goto_11

    .line 176
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1b

    .line 170
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_10

    .line 176
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p1    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1b
    move-object/from16 v0, p1

    .line 170
    .end local p1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_10
    if-eqz v4, :cond_1c

    .line 171
    const/4 v2, 0x0

    move-object v5, v2

    .end local p2    # "navigationIcon":Lkotlin/jvm/functions/Function2;
    .local v5, "navigationIcon":Lkotlin/jvm/functions/Function2;
    :cond_1c
    if-eqz v6, :cond_1d

    sget-object v2, Landroidx/compose/material/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$AppBarKt;

    invoke-virtual {v2}, Landroidx/compose/material/ComposableSingletons$AppBarKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function3;

    move-result-object v2

    move-object v7, v2

    .end local p3    # "actions":Lkotlin/jvm/functions/Function3;
    .local v7, "actions":Lkotlin/jvm/functions/Function3;
    :cond_1d
    and-int/lit8 v2, p11, 0x10

    if-eqz v2, :cond_1e

    .line 173
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v4, 0x6

    invoke-virtual {v2, v11, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    move-result-wide v13

    .end local p4    # "backgroundColor":J
    .local v13, "backgroundColor":J
    and-int v1, v1, v18

    :cond_1e
    and-int/lit8 v2, p11, 0x20

    if-eqz v2, :cond_1f

    .line 174
    shr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0xe

    invoke-static {v13, v14, v11, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v9

    .end local p6    # "contentColor":J
    .local v9, "contentColor":J
    and-int/2addr v1, v3

    :cond_1f
    if-eqz v15, :cond_20

    .line 175
    sget-object v2, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    move-result v2

    move v3, v1

    move v8, v2

    move-wide v1, v13

    .end local p8    # "elevation":F
    .local v2, "elevation":F
    goto :goto_11

    .line 174
    .end local v2    # "elevation":F
    .restart local p8    # "elevation":F
    :cond_20
    move v3, v1

    move-wide v1, v13

    .line 175
    .end local v13    # "backgroundColor":J
    .end local p8    # "elevation":F
    .local v1, "backgroundColor":J
    .local v3, "$dirty":I
    .local v8, "elevation":F
    :goto_11
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 176
    const/4 v4, -0x1

    const-string/jumbo v6, "androidx.compose.material.TopAppBar (AppBar.kt:175)"

    const v13, -0x7c70822b

    invoke-static {v13, v3, v4, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 178
    :cond_21
    nop

    .line 179
    sget-object v14, Landroidx/compose/material/AppBarKt;->ZeroInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    nop

    .line 185
    and-int/lit8 v4, v3, 0xe

    or-int/lit8 v4, v4, 0x30

    shl-int/lit8 v6, v3, 0x3

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x3

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x3

    const v13, 0xe000

    and-int/2addr v6, v13

    or-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x3

    const/high16 v13, 0x70000

    and-int/2addr v6, v13

    or-int/2addr v4, v6

    shl-int/lit8 v6, v3, 0x3

    and-int v6, v6, v16

    or-int/2addr v4, v6

    const/high16 v6, 0x1c00000

    shl-int/lit8 v13, v3, 0x3

    and-int/2addr v6, v13

    or-int v24, v4, v6

    const/16 v25, 0x0

    .line 177
    move-object/from16 v13, p0

    move-object v15, v0

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-wide/from16 v18, v1

    move-wide/from16 v20, v9

    move/from16 v22, v8

    move-object/from16 v23, v11

    invoke-static/range {v13 .. v25}, Landroidx/compose/material/AppBarKt;->TopAppBar-Rx1qByU(Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 187
    :cond_22
    move-object v13, v0

    move-wide/from16 v16, v1

    move/from16 v21, v3

    move-object v14, v5

    move-object v15, v7

    move/from16 v20, v8

    move-wide/from16 v18, v9

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "backgroundColor":J
    .end local v3    # "$dirty":I
    .end local v5    # "navigationIcon":Lkotlin/jvm/functions/Function2;
    .end local v7    # "actions":Lkotlin/jvm/functions/Function3;
    .end local v8    # "elevation":F
    .end local v9    # "contentColor":J
    .local v13, "modifier":Landroidx/compose/ui/Modifier;
    .local v14, "navigationIcon":Lkotlin/jvm/functions/Function2;
    .local v15, "actions":Lkotlin/jvm/functions/Function3;
    .local v16, "backgroundColor":J
    .local v18, "contentColor":J
    .local v20, "elevation":F
    .local v21, "$dirty":I
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_23

    new-instance v22, Landroidx/compose/material/AppBarKt$TopAppBar$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move/from16 v9, v20

    move-object v12, v10

    move/from16 v10, p10

    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v23, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$TopAppBar$3;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJFII)V

    move-object/from16 v0, v22

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_13

    .end local v23    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_23
    move-object/from16 v23, v11

    .end local v11    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v23    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_13
    return-void
.end method

.method public static final synthetic access$AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "backgroundColor"    # J
    .param p2, "contentColor"    # J
    .param p4, "elevation"    # F
    .param p5, "contentPadding"    # Landroidx/compose/foundation/layout/PaddingValues;
    .param p6, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p7, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p8, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p9, "content"    # Lkotlin/jvm/functions/Function3;
    .param p10, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p11, "$changed"    # I
    .param p12, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p12}, Landroidx/compose/material/AppBarKt;->AppBar-HkEspTQ(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$getAppBarHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    return v0
.end method

.method public static final synthetic access$getAppBarHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    return v0
.end method

.method public static final synthetic access$getBottomAppBarCutoutOffset$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    return v0
.end method

.method public static final synthetic access$getBottomAppBarRoundedEdgeRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    return v0
.end method

.method public static final synthetic access$getTitleIconModifier$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final synthetic access$getTitleInsetWithoutIcon$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    return-object v0
.end method

.method public static final calculateCutoutCircleYIntercept(FF)F
    .locals 3
    .param p0, "cutoutRadius"    # F
    .param p1, "verticalOffset"    # F

    const/4 v0, 0x0

    .line 632
    .local v0, "$i$f$calculateCutoutCircleYIntercept":I
    const/4 v1, 0x0

    .line 761
    .local v1, "$i$f$square":I
    mul-float v1, p0, p0

    .line 632
    .end local v1    # "$i$f$square":I
    const/4 v2, 0x0

    .line 761
    .local v2, "$i$f$square":I
    mul-float v2, p1, p1

    .line 632
    .end local v2    # "$i$f$square":I
    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    return v1
.end method

.method public static final calculateRoundedEdgeIntercept(FFF)Lkotlin/Pair;
    .locals 15
    .param p0, "controlPointX"    # F
    .param p1, "verticalOffset"    # F
    .param p2, "radius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 659
    move v0, p0

    .line 660
    .local v0, "a":F
    move/from16 v1, p1

    .line 661
    .local v1, "b":F
    move/from16 v2, p2

    .line 664
    .local v2, "r":F
    const/4 v3, 0x0

    .line 762
    .local v3, "$i$f$square":I
    mul-float v3, v1, v1

    .line 664
    .end local v3    # "$i$f$square":I
    const/4 v4, 0x0

    .line 762
    .local v4, "$i$f$square":I
    mul-float v4, v2, v2

    .line 664
    .end local v4    # "$i$f$square":I
    mul-float/2addr v3, v4

    const/4 v4, 0x0

    .line 762
    .restart local v4    # "$i$f$square":I
    mul-float v4, v0, v0

    .line 664
    .end local v4    # "$i$f$square":I
    const/4 v5, 0x0

    .line 762
    .local v5, "$i$f$square":I
    mul-float v5, v1, v1

    .line 664
    .end local v5    # "$i$f$square":I
    add-float/2addr v4, v5

    const/4 v5, 0x0

    .line 762
    .restart local v5    # "$i$f$square":I
    mul-float v5, v2, v2

    .line 664
    .end local v5    # "$i$f$square":I
    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 665
    .local v3, "discriminant":F
    const/4 v4, 0x0

    .line 763
    .restart local v4    # "$i$f$square":I
    mul-float v4, v0, v0

    .line 665
    .end local v4    # "$i$f$square":I
    const/4 v5, 0x0

    .line 763
    .restart local v5    # "$i$f$square":I
    mul-float v5, v1, v1

    .line 665
    .end local v5    # "$i$f$square":I
    add-float/2addr v4, v5

    .line 667
    .local v4, "divisor":F
    const/4 v5, 0x0

    .line 764
    .restart local v5    # "$i$f$square":I
    mul-float v5, v2, v2

    .line 667
    .end local v5    # "$i$f$square":I
    mul-float/2addr v5, v0

    .line 670
    .local v5, "bCoefficient":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float v6, v5, v6

    div-float/2addr v6, v4

    .line 671
    .local v6, "xSolutionA":F
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v7, v4

    .line 674
    .local v7, "xSolutionB":F
    const/4 v8, 0x0

    .line 765
    .local v8, "$i$f$square":I
    mul-float v8, v2, v2

    .line 674
    .end local v8    # "$i$f$square":I
    const/4 v9, 0x0

    .line 765
    .local v9, "$i$f$square":I
    mul-float v9, v6, v6

    .line 674
    .end local v9    # "$i$f$square":I
    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 675
    .local v8, "ySolutionA":F
    const/4 v9, 0x0

    .line 766
    .restart local v9    # "$i$f$square":I
    mul-float v9, v2, v2

    .line 675
    .end local v9    # "$i$f$square":I
    const/4 v10, 0x0

    .line 766
    .local v10, "$i$f$square":I
    mul-float v10, v7, v7

    .line 675
    .end local v10    # "$i$f$square":I
    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 684
    .local v9, "ySolutionB":F
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_1

    .line 688
    cmpl-float v10, v8, v9

    if-lez v10, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_0

    :cond_0
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    :goto_0
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    goto :goto_2

    .line 693
    :cond_1
    cmpg-float v10, v8, v9

    if-gez v10, :cond_2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    :goto_1
    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 684
    :goto_2
    invoke-virtual {v10}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .local v11, "xSolution":F
    invoke-virtual {v10}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    .line 699
    .local v10, "ySolution":F
    cmpg-float v12, v11, p0

    if-gez v12, :cond_3

    neg-float v12, v10

    goto :goto_3

    :cond_3
    move v12, v10

    .line 700
    .local v12, "adjustedYSolution":F
    :goto_3
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    return-object v13
.end method

.method private static final square(F)F
    .locals 2
    .param p0, "x"    # F

    const/4 v0, 0x0

    .line 606
    .local v0, "$i$f$square":I
    mul-float v1, p0, p0

    return v1
.end method
