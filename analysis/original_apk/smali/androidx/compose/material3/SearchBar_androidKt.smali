.class public final Landroidx/compose/material3/SearchBar_androidKt;
.super Ljava/lang/Object;
.source "SearchBar.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.android.kt\nandroidx/compose/material3/SearchBar_androidKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Strings.android.kt\nandroidx/compose/material3/Strings$Companion\n+ 5 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,741:1\n1116#2,6:742\n1116#2,6:750\n1116#2,6:756\n1116#2,6:762\n1116#2,6:768\n1116#2,6:774\n1116#2,6:780\n1116#2,6:786\n1116#2,6:792\n1116#2,6:798\n1116#2,6:805\n1116#2,6:811\n1116#2,6:817\n1116#2,6:823\n1116#2,6:834\n1116#2,6:840\n1116#2,6:847\n74#3:748\n74#3:749\n74#3:804\n74#3:831\n74#3:846\n60#4:829\n62#4:830\n658#5:832\n646#5:833\n81#6:853\n75#7:854\n154#8:855\n154#8:856\n154#8:857\n154#8:858\n154#8:859\n*S KotlinDebug\n*F\n+ 1 SearchBar.android.kt\nandroidx/compose/material3/SearchBar_androidKt\n*L\n176#1:742,6\n189#1:750,6\n192#1:756,6\n212#1:762,6\n213#1:768,6\n228#1:774,6\n232#1:780,6\n287#1:786,6\n296#1:792,6\n363#1:798,6\n416#1:805,6\n425#1:811,6\n444#1:817,6\n446#1:823,6\n460#1:834,6\n461#1:840,6\n476#1:847,6\n184#1:748\n185#1:749\n366#1:804\n449#1:831\n473#1:846\n447#1:829\n448#1:830\n449#1:832\n449#1:833\n189#1:853\n702#1:854\n703#1:855\n705#1:856\n706#1:857\n707#1:858\n709#1:859\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0087\u0002\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u00102\u0008\u0008\u0002\u00108\u001a\u00020\u00102\u0008\u0008\u0002\u00109\u001a\u00020:2\u001c\u0010;\u001a\u0018\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\"0&\u00a2\u0006\u0002\u00080\u00a2\u0006\u0002\u0008=H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008>\u0010?\u001a\u0091\u0002\u0010@\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00103\u001a\u0002042\u0008\u0008\u0002\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u00102\u0008\u0008\u0002\u00108\u001a\u00020\u00102\u0008\u0008\u0002\u0010A\u001a\u00020B2\u0008\u0008\u0002\u00109\u001a\u00020:2\u001c\u0010;\u001a\u0018\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020\"0&\u00a2\u0006\u0002\u00080\u00a2\u0006\u0002\u0008=H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008C\u0010D\u001a\u00c6\u0001\u0010E\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0&2\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\"0&2\u0008\u0008\u0002\u0010+\u001a\u00020,2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0015\u0008\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00101\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0015\u0008\u0002\u00102\u001a\u000f\u0012\u0004\u0012\u00020\"\u0018\u00010/\u00a2\u0006\u0002\u000802\u0008\u0008\u0002\u00105\u001a\u00020F2\u0008\u0008\u0002\u00109\u001a\u00020:H\u0003\u00a2\u0006\u0002\u0010G\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u000f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0018\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u0012\u0004\u0008\u0019\u0010\u001a\"\u0010\u0010\u001b\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\"\u0010\u0010\u001c\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013\"\u0016\u0010\u001d\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u0012\"\u0016\u0010\u001f\u001a\u00020\u0010X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008 \u0010\u0012\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006H\u00b2\u0006\n\u0010I\u001a\u00020)X\u008a\u0084\u0002\u00b2\u0006\n\u0010J\u001a\u00020)X\u008a\u0084\u0002"
    }
    d2 = {
        "AnimationDelayMillis",
        "",
        "AnimationEnterDurationMillis",
        "AnimationEnterEasing",
        "Landroidx/compose/animation/core/CubicBezierEasing;",
        "AnimationEnterFloatSpec",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "",
        "AnimationEnterSizeSpec",
        "Landroidx/compose/ui/unit/IntSize;",
        "AnimationExitDurationMillis",
        "AnimationExitEasing",
        "AnimationExitFloatSpec",
        "AnimationExitSizeSpec",
        "DockedActiveTableMaxHeightScreenRatio",
        "DockedActiveTableMinHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "getDockedActiveTableMinHeight",
        "()F",
        "F",
        "DockedEnterTransition",
        "Landroidx/compose/animation/EnterTransition;",
        "DockedExitTransition",
        "Landroidx/compose/animation/ExitTransition;",
        "SearchBarCornerRadius",
        "getSearchBarCornerRadius$annotations",
        "()V",
        "SearchBarIconOffsetX",
        "SearchBarMaxWidth",
        "SearchBarMinWidth",
        "getSearchBarMinWidth",
        "SearchBarVerticalPadding",
        "getSearchBarVerticalPadding",
        "DockedSearchBar",
        "",
        "query",
        "",
        "onQueryChange",
        "Lkotlin/Function1;",
        "onSearch",
        "active",
        "",
        "onActiveChange",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "enabled",
        "placeholder",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "leadingIcon",
        "trailingIcon",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "colors",
        "Landroidx/compose/material3/SearchBarColors;",
        "tonalElevation",
        "shadowElevation",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "content",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Lkotlin/ExtensionFunctionType;",
        "DockedSearchBar-eWTbjVg",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SearchBar",
        "windowInsets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "SearchBar-WuY5d9Q",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V",
        "SearchBarInputField",
        "Landroidx/compose/material3/TextFieldColors;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V",
        "material3_release",
        "useFullScreenShape",
        "showResults"
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
.field private static final AnimationDelayMillis:I = 0x64

.field private static final AnimationEnterDurationMillis:I = 0x258

.field private static final AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitDurationMillis:I = 0x15e

.field private static final AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

.field private static final AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final DockedActiveTableMaxHeightScreenRatio:F = 0.6666667f

.field private static final DockedActiveTableMinHeight:F

.field private static final DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

.field private static final DockedExitTransition:Landroidx/compose/animation/ExitTransition;

.field private static final SearchBarCornerRadius:F

.field private static final SearchBarIconOffsetX:F

.field private static final SearchBarMaxWidth:F

.field private static final SearchBarMinWidth:F

.field private static final SearchBarVerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 702
    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v0

    .local v0, "arg0$iv":F
    const/4 v1, 0x2

    .local v1, "other$iv":I
    const/4 v2, 0x0

    .line 854
    .local v2, "$i$f$div-u2uoSUM":I
    int-to-float v3, v1

    div-float v3, v0, v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 702
    .end local v0    # "arg0$iv":F
    .end local v1    # "other$iv":I
    .end local v2    # "$i$f$div-u2uoSUM":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarCornerRadius:F

    .line 703
    const/16 v0, 0xf0

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 855
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 703
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedActiveTableMinHeight:F

    .line 705
    const/16 v0, 0x168

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 856
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 705
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMinWidth:F

    .line 706
    const/16 v0, 0x2d0

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 857
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 706
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMaxWidth:F

    .line 707
    const/16 v0, 0x8

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 858
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 707
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarVerticalPadding:F

    .line 709
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 859
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 709
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarIconOffsetX:F

    .line 715
    sget-object v0, Landroidx/compose/material3/tokens/MotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/MotionTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/MotionTokens;->getEasingEmphasizedDecelerateCubicBezier()Landroidx/compose/animation/core/CubicBezierEasing;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 716
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v1}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 717
    nop

    .line 718
    nop

    .line 719
    nop

    .line 720
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 717
    const/16 v1, 0x258

    const/16 v3, 0x64

    invoke-static {v1, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 722
    nop

    .line 723
    nop

    .line 724
    nop

    .line 725
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 722
    const/16 v4, 0x15e

    invoke-static {v4, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 727
    nop

    .line 728
    nop

    .line 729
    nop

    .line 730
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 727
    invoke-static {v1, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 732
    nop

    .line 733
    nop

    .line 734
    nop

    .line 735
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    check-cast v0, Landroidx/compose/animation/core/Easing;

    .line 732
    invoke-static {v4, v3, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween(IILandroidx/compose/animation/core/Easing;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 738
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    sget-object v4, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/animation/EnterTransition;->plus(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    .line 740
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v0, v2, v1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sget-object v1, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitSizeSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/animation/ExitTransition;->plus(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-void
.end method

.method public static final DockedSearchBar-eWTbjVg(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 43
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "onQueryChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSearch"    # Lkotlin/jvm/functions/Function1;
    .param p3, "active"    # Z
    .param p4, "onActiveChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p6, "enabled"    # Z
    .param p7, "placeholder"    # Lkotlin/jvm/functions/Function2;
    .param p8, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p9, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p11, "colors"    # Landroidx/compose/material3/SearchBarColors;
    .param p12, "tonalElevation"    # F
    .param p13, "shadowElevation"    # F
    .param p14, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p15, "content"    # Lkotlin/jvm/functions/Function3;
    .param p16, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p17, "$changed"    # I
    .param p18, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 365
    move/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p17

    move/from16 v12, p18

    move/from16 v11, p19

    const v0, 0x4d6dffc5    # 2.49560144E8f

    move-object/from16 v1, p16

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p16    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(DockedSearchBar)P(11,8,9!1,7,6,3,10,5,15,13!1,14:c#ui.unit.Dp,12:c#ui.unit.Dp,4)358@17745L11,359@17806L8,362@17986L39,365@18121L7,370@18228L38,367@18134L1617,413@19791L25,415@19898L292,415@19875L315,424@20226L37,424@20196L67:SearchBar.android.kt#uh7d8r"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p17

    .local v1, "$dirty":I
    move/from16 v2, p18

    .local v2, "$dirty1":I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v13, 0x6

    if-nez v3, :cond_2

    move-object/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    :goto_1
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v1, v1, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v13, 0x30

    if-nez v3, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v3, v11, 0x4

    const/16 v16, 0x100

    const/16 v17, 0x80

    if-eqz v3, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x180

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move/from16 v18, v16

    goto :goto_4

    :cond_7
    move/from16 v18, v17

    :goto_4
    or-int v1, v1, v18

    goto :goto_5

    :cond_8
    move-object/from16 v3, p2

    :goto_5
    and-int/lit8 v18, v11, 0x8

    const/16 v19, 0x800

    const/16 v20, 0x400

    if-eqz v18, :cond_9

    or-int/lit16 v1, v1, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v4, v13, 0xc00

    if-nez v4, :cond_b

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v4, v19

    goto :goto_6

    :cond_a
    move/from16 v4, v20

    :goto_6
    or-int/2addr v1, v4

    :cond_b
    :goto_7
    and-int/lit8 v4, v11, 0x10

    const/16 v18, 0x2000

    if-eqz v4, :cond_c

    or-int/lit16 v1, v1, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v4, v13, 0x6000

    if-nez v4, :cond_e

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x4000

    goto :goto_8

    :cond_d
    move/from16 v4, v18

    :goto_8
    or-int/2addr v1, v4

    :cond_e
    :goto_9
    and-int/lit8 v4, v11, 0x20

    const/high16 v22, 0x30000

    if-eqz v4, :cond_f

    or-int v1, v1, v22

    move-object/from16 v0, p5

    goto :goto_b

    :cond_f
    and-int v23, v13, v22

    if-nez v23, :cond_11

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v24, 0x10000

    :goto_a
    or-int v1, v1, v24

    goto :goto_b

    :cond_11
    move-object/from16 v0, p5

    :goto_b
    and-int/lit8 v24, v11, 0x40

    const/high16 v25, 0x180000

    if-eqz v24, :cond_12

    or-int v1, v1, v25

    move/from16 v5, p6

    goto :goto_d

    :cond_12
    and-int v25, v13, v25

    if-nez v25, :cond_14

    move/from16 v5, p6

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v26

    if-eqz v26, :cond_13

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v26, 0x80000

    :goto_c
    or-int v1, v1, v26

    goto :goto_d

    :cond_14
    move/from16 v5, p6

    :goto_d
    and-int/lit16 v6, v11, 0x80

    const/high16 v27, 0xc00000

    if-eqz v6, :cond_15

    or-int v1, v1, v27

    move-object/from16 v7, p7

    goto :goto_f

    :cond_15
    and-int v28, v13, v27

    if-nez v28, :cond_17

    move-object/from16 v7, p7

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v29, 0x400000

    :goto_e
    or-int v1, v1, v29

    goto :goto_f

    :cond_17
    move-object/from16 v7, p7

    :goto_f
    and-int/lit16 v0, v11, 0x100

    const/high16 v29, 0x6000000

    if-eqz v0, :cond_18

    or-int v1, v1, v29

    move-object/from16 v3, p8

    goto :goto_11

    :cond_18
    and-int v29, v13, v29

    if-nez v29, :cond_1a

    move-object/from16 v3, p8

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v29, 0x2000000

    :goto_10
    or-int v1, v1, v29

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    and-int/lit16 v3, v11, 0x200

    const/high16 v29, 0x30000000

    if-eqz v3, :cond_1b

    or-int v1, v1, v29

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    and-int v29, v13, v29

    if-nez v29, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v29, 0x10000000

    :goto_12
    or-int v1, v1, v29

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit8 v29, v12, 0x6

    if-nez v29, :cond_20

    and-int/lit16 v5, v11, 0x400

    if-nez v5, :cond_1e

    move-object/from16 v5, p10

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v25, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p10

    :cond_1f
    const/16 v25, 0x2

    :goto_14
    or-int v2, v2, v25

    goto :goto_15

    :cond_20
    move-object/from16 v5, p10

    :goto_15
    and-int/lit8 v25, v12, 0x30

    if-nez v25, :cond_23

    and-int/lit16 v5, v11, 0x800

    if-nez v5, :cond_21

    move-object/from16 v5, p11

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    const/16 v28, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v5, p11

    :cond_22
    const/16 v28, 0x10

    :goto_16
    or-int v2, v2, v28

    goto :goto_17

    :cond_23
    move-object/from16 v5, p11

    :goto_17
    and-int/lit16 v9, v11, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v2, v2, 0x180

    move/from16 v5, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_26

    move/from16 v5, p12

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_25

    goto :goto_18

    :cond_25
    move/from16 v16, v17

    :goto_18
    or-int v2, v2, v16

    goto :goto_19

    :cond_26
    move/from16 v5, p12

    :goto_19
    move/from16 v16, v9

    and-int/lit16 v9, v11, 0x2000

    if-eqz v9, :cond_27

    or-int/lit16 v2, v2, 0xc00

    move/from16 v5, p13

    goto :goto_1b

    :cond_27
    and-int/lit16 v5, v12, 0xc00

    if-nez v5, :cond_29

    move/from16 v5, p13

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v19, v20

    :goto_1a
    or-int v2, v2, v19

    goto :goto_1b

    :cond_29
    move/from16 v5, p13

    :goto_1b
    move/from16 v17, v9

    and-int/lit16 v9, v11, 0x4000

    if-eqz v9, :cond_2a

    or-int/lit16 v2, v2, 0x6000

    move-object/from16 v5, p14

    goto :goto_1c

    :cond_2a
    and-int/lit16 v5, v12, 0x6000

    if-nez v5, :cond_2c

    move-object/from16 v5, p14

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    const/16 v18, 0x4000

    :cond_2b
    or-int v2, v2, v18

    goto :goto_1c

    :cond_2c
    move-object/from16 v5, p14

    :goto_1c
    const v18, 0x8000

    and-int v18, v11, v18

    if-eqz v18, :cond_2d

    or-int v2, v2, v22

    move/from16 v18, v9

    move-object/from16 v9, p15

    goto :goto_1e

    :cond_2d
    and-int v18, v12, v22

    if-nez v18, :cond_2f

    move/from16 v18, v9

    move-object/from16 v9, p15

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    const/high16 v19, 0x20000

    goto :goto_1d

    :cond_2e
    const/high16 v19, 0x10000

    :goto_1d
    or-int v2, v2, v19

    goto :goto_1e

    :cond_2f
    move/from16 v18, v9

    move-object/from16 v9, p15

    :goto_1e
    const v19, 0x12492493

    and-int v5, v1, v19

    move/from16 p16, v1

    .end local v1    # "$dirty":I
    .local p16, "$dirty":I
    const v1, 0x12492492

    if-ne v5, v1, :cond_31

    const v1, 0x12493

    and-int/2addr v1, v2

    const v5, 0x12492

    if-ne v1, v5, :cond_31

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_1f

    .line 428
    :cond_30
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v41, p5

    move/from16 v29, p6

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v35, p11

    move/from16 v36, p12

    move/from16 v37, p13

    move-object/from16 v38, p14

    move/from16 v39, p16

    move/from16 v40, v2

    move-object/from16 v30, v7

    move-object v13, v14

    move-object v14, v10

    goto/16 :goto_33

    .line 365
    :cond_31
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v13, 0x1

    const-string v5, "CC(remember):SearchBar.android.kt#9igjgp"

    if-eqz v1, :cond_35

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_20

    .line 363
    :cond_32
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v11, 0x400

    if-eqz v0, :cond_33

    and-int/lit8 v2, v2, -0xf

    :cond_33
    and-int/lit16 v0, v11, 0x800

    if-eqz v0, :cond_34

    and-int/lit8 v0, v2, -0x71

    move-object/from16 v8, p5

    move/from16 v29, p6

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v35, p11

    move/from16 v36, p12

    move/from16 v37, p13

    move-object/from16 v38, p14

    move/from16 v31, p16

    move-object v9, v5

    move-object/from16 v30, v7

    move v7, v0

    .end local v2    # "$dirty1":I
    .local v0, "$dirty1":I
    goto/16 :goto_2b

    .end local v0    # "$dirty1":I
    .restart local v2    # "$dirty1":I
    :cond_34
    move-object/from16 v8, p5

    move/from16 v29, p6

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v35, p11

    move/from16 v36, p12

    move/from16 v37, p13

    move-object/from16 v38, p14

    move/from16 v31, p16

    move-object v9, v5

    move-object/from16 v30, v7

    move v7, v2

    goto/16 :goto_2b

    .line 365
    :cond_35
    :goto_20
    if-eqz v4, :cond_36

    .line 354
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v19, v1

    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_21

    .line 365
    .end local v1    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_36
    move-object/from16 v19, p5

    .line 354
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    :goto_21
    if-eqz v24, :cond_37

    .line 355
    const/4 v1, 0x1

    move/from16 v20, v1

    .end local p6    # "enabled":Z
    .local v1, "enabled":Z
    goto :goto_22

    .line 354
    .end local v1    # "enabled":Z
    .restart local p6    # "enabled":Z
    :cond_37
    move/from16 v20, p6

    .line 355
    .end local p6    # "enabled":Z
    .local v20, "enabled":Z
    :goto_22
    if-eqz v6, :cond_38

    .line 356
    const/4 v1, 0x0

    move-object/from16 v22, v1

    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v1, "placeholder":Lkotlin/jvm/functions/Function2;
    goto :goto_23

    .line 355
    .end local v1    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    :cond_38
    move-object/from16 v22, v7

    .line 356
    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v22, "placeholder":Lkotlin/jvm/functions/Function2;
    :goto_23
    if-eqz v0, :cond_39

    .line 357
    const/4 v0, 0x0

    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_24

    .line 356
    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_39
    move-object/from16 v0, p8

    .line 357
    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_24
    if-eqz v3, :cond_3a

    .line 358
    const/4 v1, 0x0

    move-object/from16 v24, v1

    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v1, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_25

    .line 357
    .end local v1    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_3a
    move-object/from16 v24, p9

    .line 358
    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v24, "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_25
    and-int/lit16 v1, v11, 0x400

    if-eqz v1, :cond_3b

    .line 359
    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v3, 0x6

    invoke-virtual {v1, v10, v3}, Landroidx/compose/material3/SearchBarDefaults;->getDockedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    .end local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v1, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit8 v2, v2, -0xf

    move-object/from16 v25, v1

    move/from16 v26, v2

    goto :goto_26

    .line 358
    .end local v1    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_3b
    move-object/from16 v25, p10

    move/from16 v26, v2

    .line 359
    .end local v2    # "$dirty1":I
    .end local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v25, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v26, "$dirty1":I
    :goto_26
    and-int/lit16 v1, v11, 0x800

    if-eqz v1, :cond_3c

    .line 360
    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xc00

    const/16 v30, 0x7

    move/from16 v4, p16

    .end local p16    # "$dirty":I
    .local v4, "$dirty":I
    move/from16 v31, v4

    move-object/from16 v32, v5

    .end local v4    # "$dirty":I
    .local v31, "$dirty":I
    move-wide v4, v6

    move-object/from16 v6, v28

    move-object v7, v10

    move/from16 v8, v29

    move/from16 v9, v30

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v1

    .end local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    .local v1, "colors":Landroidx/compose/material3/SearchBarColors;
    and-int/lit8 v26, v26, -0x71

    goto :goto_27

    .line 359
    .end local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    .end local v31    # "$dirty":I
    .restart local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    .restart local p16    # "$dirty":I
    :cond_3c
    move/from16 v31, p16

    move-object/from16 v32, v5

    .end local p16    # "$dirty":I
    .restart local v31    # "$dirty":I
    move-object/from16 v1, p11

    .line 360
    .end local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    .restart local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    :goto_27
    if-eqz v16, :cond_3d

    .line 361
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v2

    .end local p12    # "tonalElevation":F
    .local v2, "tonalElevation":F
    goto :goto_28

    .line 360
    .end local v2    # "tonalElevation":F
    .restart local p12    # "tonalElevation":F
    :cond_3d
    move/from16 v2, p12

    .line 361
    .end local p12    # "tonalElevation":F
    .restart local v2    # "tonalElevation":F
    :goto_28
    if-eqz v17, :cond_3e

    .line 362
    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v3

    .end local p13    # "shadowElevation":F
    .local v3, "shadowElevation":F
    goto :goto_29

    .line 361
    .end local v3    # "shadowElevation":F
    .restart local p13    # "shadowElevation":F
    :cond_3e
    move/from16 v3, p13

    .line 362
    .end local p13    # "shadowElevation":F
    .restart local v3    # "shadowElevation":F
    :goto_29
    if-eqz v18, :cond_40

    .line 363
    const v4, -0x1e96214

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v9, v32

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "invalid$iv":Z
    move-object v5, v10

    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v6, 0x0

    .line 798
    .local v6, "$i$f$cache":I
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, "it$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 799
    .local v8, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p5, v0

    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local p5, "leadingIcon":Lkotlin/jvm/functions/Function2;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v7, v0, :cond_3f

    .line 800
    const/4 v0, 0x0

    .line 363
    .local v0, "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v0

    .line 800
    .end local v0    # "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$1":I
    nop

    .line 801
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 802
    nop

    .end local v0    # "value$iv":Ljava/lang/Object;
    goto :goto_2a

    .line 803
    :cond_3f
    move-object v0, v7

    .line 799
    :goto_2a
    nop

    .line 798
    .end local v7    # "it$iv":Ljava/lang/Object;
    .end local v8    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 363
    .end local v4    # "invalid$iv":Z
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v6    # "$i$f$cache":I
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p14    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v32, p5

    move-object/from16 v38, v0

    move-object/from16 v35, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v8, v19

    move/from16 v29, v20

    move-object/from16 v30, v22

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v7, v26

    goto :goto_2b

    .line 362
    .end local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p14    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_40
    move-object/from16 p5, v0

    move-object/from16 v9, v32

    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    move-object/from16 v32, p5

    move-object/from16 v38, p14

    move-object/from16 v35, v1

    move/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v8, v19

    move/from16 v29, v20

    move-object/from16 v30, v22

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v7, v26

    .line 363
    .end local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    .end local v2    # "tonalElevation":F
    .end local v3    # "shadowElevation":F
    .end local v19    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v20    # "enabled":Z
    .end local v22    # "placeholder":Lkotlin/jvm/functions/Function2;
    .end local v24    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .end local v25    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local v26    # "$dirty1":I
    .end local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .end local p14    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v7, "$dirty1":I
    .local v8, "modifier":Landroidx/compose/ui/Modifier;
    .local v29, "enabled":Z
    .local v30, "placeholder":Lkotlin/jvm/functions/Function2;
    .local v32, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v33, "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v34, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v35, "colors":Landroidx/compose/material3/SearchBarColors;
    .local v36, "tonalElevation":F
    .local v37, "shadowElevation":F
    .local v38, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_2b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 365
    const-string/jumbo v0, "androidx.compose.material3.DockedSearchBar (SearchBar.android.kt:364)"

    move/from16 v6, v31

    const v1, 0x4d6dffc5    # 2.49560144E8f

    .end local v31    # "$dirty":I
    .local v6, "$dirty":I
    invoke-static {v1, v6, v7, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_2c

    .line 363
    .end local v6    # "$dirty":I
    .restart local v31    # "$dirty":I
    :cond_41
    move/from16 v6, v31

    .line 366
    .end local v31    # "$dirty":I
    .restart local v6    # "$dirty":I
    :goto_2c
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 804
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    const-string v4, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 366
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$getCurrent":I
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/focus/FocusManager;

    .line 370
    .local v5, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v18

    .line 371
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v0

    const/4 v4, 0x0

    invoke-static {v0, v1, v10, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    .line 374
    nop

    .line 375
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v8, v0}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 376
    sget v1, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMinWidth:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    const/16 v24, 0x0

    .line 377
    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$2;

    const/16 v2, 0x4000

    move-object v0, v3

    move-object/from16 v1, p0

    move v13, v2

    move-object/from16 v2, p1

    move-object v13, v3

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object v14, v5

    .end local v5    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v14, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    move-object/from16 v5, p4

    move/from16 v39, v6

    .end local v6    # "$dirty":I
    .local v39, "$dirty":I
    move/from16 v6, v29

    move/from16 v40, v7

    .end local v7    # "$dirty1":I
    .local v40, "$dirty1":I
    move-object/from16 v7, v30

    move-object/from16 v41, v8

    .end local v8    # "modifier":Landroidx/compose/ui/Modifier;
    .local v41, "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v8, v32

    move-object/from16 p5, v14

    move-object v14, v9

    .end local v14    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local p5, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    move-object/from16 v9, v33

    move-object/from16 p6, v14

    move-object v14, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v35

    move-object/from16 v11, v38

    move-object/from16 v12, p15

    invoke-direct/range {v0 .. v12}, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SearchBarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;)V

    const v0, 0x40e3e2ca

    const/4 v4, 0x1

    invoke-static {v14, v0, v4, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v40, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int v0, v0, v27

    shl-int/lit8 v1, v40, 0x6

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, v40, 0x6

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v27, v0, v1

    const/16 v28, 0x40

    .line 368
    move-object/from16 v17, v34

    move/from16 v22, v36

    move/from16 v23, v37

    move-object/from16 v26, v14

    invoke-static/range {v16 .. v28}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 414
    move-object/from16 v0, v38

    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v1, v40, 0xc

    and-int/lit8 v1, v1, 0xe

    invoke-static {v0, v14, v1}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 415
    .local v0, "isFocused":Z
    if-nez v15, :cond_42

    if-eqz v0, :cond_42

    move v1, v4

    goto :goto_2d

    :cond_42
    const/4 v1, 0x0

    .line 416
    .local v1, "shouldClearFocus":Z
    :goto_2d
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, -0x1e95a9c

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v3, p6

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    move-object/from16 v6, p5

    .end local p5    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v6, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .local v5, "invalid$iv":Z
    move-object v7, v14

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 805
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 806
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_44

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_43

    goto :goto_2e

    .line 810
    :cond_43
    move-object v11, v9

    goto :goto_2f

    .line 807
    :cond_44
    :goto_2e
    const/4 v11, 0x0

    .line 416
    .local v11, "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$3":I
    new-instance v12, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$3$1;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v6, v13}, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$3$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 807
    .end local v11    # "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$3":I
    move-object v11, v12

    .line 808
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 809
    nop

    .line 806
    .end local v11    # "value$iv":Ljava/lang/Object;
    :goto_2f
    nop

    .line 805
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 416
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v5, v39, 0x9

    and-int/lit8 v5, v5, 0xe

    invoke-static {v2, v11, v14, v5}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 425
    const v2, -0x1e95954

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v2, 0xe000

    and-int v2, v39, v2

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_45

    goto :goto_30

    :cond_45
    const/4 v4, 0x0

    :goto_30
    move v2, v4

    .local v2, "invalid$iv":Z
    move-object v3, v14

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 811
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 812
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_47

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_46

    goto :goto_31

    .line 816
    :cond_46
    move-object/from16 v13, p4

    move-object v8, v5

    goto :goto_32

    .line 813
    :cond_47
    :goto_31
    const/4 v8, 0x0

    .line 425
    .local v8, "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$4":I
    new-instance v9, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$4$1;

    move-object/from16 v13, p4

    invoke-direct {v9, v13}, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$4$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 813
    .end local v8    # "$i$a$-cache-SearchBar_androidKt$DockedSearchBar$4":I
    move-object v8, v9

    .line 814
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 815
    nop

    .line 812
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 811
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 425
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v2, v39, 0x9

    and-int/lit8 v2, v2, 0xe

    const/4 v3, 0x0

    invoke-static {v15, v8, v14, v2, v3}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 428
    .end local v0    # "isFocused":Z
    .end local v1    # "shouldClearFocus":Z
    .end local v6    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    :cond_48
    :goto_33
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_49

    new-instance v20, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v41

    move/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v32

    move-object/from16 v10, v33

    move-object/from16 v11, v34

    move-object/from16 v42, v12

    move-object/from16 v12, v35

    move/from16 v13, v36

    move-object/from16 v21, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v14, v37

    move-object/from16 v15, v38

    move-object/from16 v16, p15

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    invoke-direct/range {v0 .. v19}, Landroidx/compose/material3/SearchBar_androidKt$DockedSearchBar$5;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v42

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_34

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_49
    move-object/from16 v21, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_34
    return-void
.end method

.method public static final SearchBar-WuY5d9Q(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 46
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "onQueryChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSearch"    # Lkotlin/jvm/functions/Function1;
    .param p3, "active"    # Z
    .param p4, "onActiveChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p6, "enabled"    # Z
    .param p7, "placeholder"    # Lkotlin/jvm/functions/Function2;
    .param p8, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p9, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "shape"    # Landroidx/compose/ui/graphics/Shape;
    .param p11, "colors"    # Landroidx/compose/material3/SearchBarColors;
    .param p12, "tonalElevation"    # F
    .param p13, "shadowElevation"    # F
    .param p14, "windowInsets"    # Landroidx/compose/foundation/layout/WindowInsets;
    .param p15, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p16, "content"    # Lkotlin/jvm/functions/Function3;
    .param p17, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p18, "$changed"    # I
    .param p19, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 178
    move/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p18

    move/from16 v12, p19

    move/from16 v11, p20

    const v0, 0x3bb1de91

    move-object/from16 v1, p17

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p17    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v0, "C(SearchBar)P(11,8,9!1,7,6,3,10,5,15,13!1,14:c#ui.unit.Dp,12:c#ui.unit.Dp,16,4)170@8780L15,171@8845L8,174@9026L12,175@9090L39,178@9226L160,183@9429L7,184@9468L7,186@9528L15,187@9595L15,188@9641L101,191@9767L578,211@10793L34,212@10849L179,222@11136L38,227@11355L112,231@11539L1082,219@11034L2762,284@13836L25,286@13943L292,286@13920L315,295@14271L37,295@14241L67:SearchBar.android.kt#uh7d8r"

    invoke-static {v10, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v0, p18

    .local v0, "$dirty":I
    move/from16 v1, p19

    .local v1, "$dirty1":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v0, v2

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v7, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x30

    if-nez v2, :cond_5

    move-object/from16 v7, p1

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    goto :goto_3

    :cond_5
    move-object/from16 v7, p1

    :goto_3
    and-int/lit8 v2, v11, 0x4

    const/16 v16, 0x80

    if-eqz v2, :cond_6

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v2, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v2, v13, 0x180

    if-nez v2, :cond_8

    move-object/from16 v2, p2

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x100

    goto :goto_4

    :cond_7
    move/from16 v17, v16

    :goto_4
    or-int v0, v0, v17

    goto :goto_5

    :cond_8
    move-object/from16 v2, p2

    :goto_5
    and-int/lit8 v17, v11, 0x8

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-eqz v17, :cond_9

    or-int/lit16 v0, v0, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v3, v13, 0xc00

    if-nez v3, :cond_b

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v3, v18

    goto :goto_6

    :cond_a
    move/from16 v3, v19

    :goto_6
    or-int/2addr v0, v3

    :cond_b
    :goto_7
    and-int/lit8 v3, v11, 0x10

    const/16 v17, 0x2000

    if-eqz v3, :cond_c

    or-int/lit16 v0, v0, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v3, v13, 0x6000

    if-nez v3, :cond_e

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0x4000

    goto :goto_8

    :cond_d
    move/from16 v3, v17

    :goto_8
    or-int/2addr v0, v3

    :cond_e
    :goto_9
    and-int/lit8 v3, v11, 0x20

    const/high16 v21, 0x10000

    const/high16 v22, 0x30000

    if-eqz v3, :cond_f

    or-int v0, v0, v22

    move-object/from16 v4, p5

    goto :goto_b

    :cond_f
    and-int v23, v13, v22

    if-nez v23, :cond_11

    move-object/from16 v4, p5

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000

    goto :goto_a

    :cond_10
    move/from16 v24, v21

    :goto_a
    or-int v0, v0, v24

    goto :goto_b

    :cond_11
    move-object/from16 v4, p5

    :goto_b
    and-int/lit8 v24, v11, 0x40

    const/high16 v25, 0x180000

    if-eqz v24, :cond_12

    or-int v0, v0, v25

    move/from16 v5, p6

    goto :goto_d

    :cond_12
    and-int v26, v13, v25

    if-nez v26, :cond_14

    move/from16 v5, p6

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v27

    if-eqz v27, :cond_13

    const/high16 v27, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v27, 0x80000

    :goto_c
    or-int v0, v0, v27

    goto :goto_d

    :cond_14
    move/from16 v5, p6

    :goto_d
    and-int/lit16 v6, v11, 0x80

    const/high16 v28, 0xc00000

    if-eqz v6, :cond_15

    or-int v0, v0, v28

    move-object/from16 v9, p7

    goto :goto_f

    :cond_15
    and-int v28, v13, v28

    if-nez v28, :cond_17

    move-object/from16 v9, p7

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    const/high16 v29, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v29, 0x400000

    :goto_e
    or-int v0, v0, v29

    goto :goto_f

    :cond_17
    move-object/from16 v9, p7

    :goto_f
    and-int/lit16 v2, v11, 0x100

    const/high16 v29, 0x6000000

    if-eqz v2, :cond_18

    or-int v0, v0, v29

    move-object/from16 v4, p8

    goto :goto_11

    :cond_18
    and-int v29, v13, v29

    if-nez v29, :cond_1a

    move-object/from16 v4, p8

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_19

    const/high16 v29, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v29, 0x2000000

    :goto_10
    or-int v0, v0, v29

    goto :goto_11

    :cond_1a
    move-object/from16 v4, p8

    :goto_11
    and-int/lit16 v4, v11, 0x200

    const/high16 v29, 0x30000000

    if-eqz v4, :cond_1b

    or-int v0, v0, v29

    move-object/from16 v5, p9

    goto :goto_13

    :cond_1b
    and-int v29, v13, v29

    if-nez v29, :cond_1d

    move-object/from16 v5, p9

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v29, 0x10000000

    :goto_12
    or-int v0, v0, v29

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p9

    :goto_13
    and-int/lit8 v29, v12, 0x6

    if-nez v29, :cond_20

    and-int/lit16 v5, v11, 0x400

    if-nez v5, :cond_1e

    move-object/from16 v5, p10

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v29, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p10

    :cond_1f
    const/16 v29, 0x2

    :goto_14
    or-int v1, v1, v29

    goto :goto_15

    :cond_20
    move-object/from16 v5, p10

    :goto_15
    and-int/lit8 v29, v12, 0x30

    if-nez v29, :cond_23

    and-int/lit16 v5, v11, 0x800

    if-nez v5, :cond_21

    move-object/from16 v5, p11

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_22

    const/16 v23, 0x20

    goto :goto_16

    :cond_21
    move-object/from16 v5, p11

    :cond_22
    const/16 v23, 0x10

    :goto_16
    or-int v1, v1, v23

    goto :goto_17

    :cond_23
    move-object/from16 v5, p11

    :goto_17
    and-int/lit16 v9, v11, 0x1000

    if-eqz v9, :cond_24

    or-int/lit16 v1, v1, 0x180

    move/from16 v5, p12

    goto :goto_19

    :cond_24
    and-int/lit16 v5, v12, 0x180

    if-nez v5, :cond_26

    move/from16 v5, p12

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_25

    const/16 v27, 0x100

    goto :goto_18

    :cond_25
    move/from16 v27, v16

    :goto_18
    or-int v1, v1, v27

    goto :goto_19

    :cond_26
    move/from16 v5, p12

    :goto_19
    move/from16 v16, v9

    and-int/lit16 v9, v11, 0x2000

    if-eqz v9, :cond_27

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p13

    goto :goto_1b

    :cond_27
    and-int/lit16 v5, v12, 0xc00

    if-nez v5, :cond_29

    move/from16 v5, p13

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v23

    if-eqz v23, :cond_28

    goto :goto_1a

    :cond_28
    move/from16 v18, v19

    :goto_1a
    or-int v1, v1, v18

    goto :goto_1b

    :cond_29
    move/from16 v5, p13

    :goto_1b
    and-int/lit16 v5, v12, 0x6000

    if-nez v5, :cond_2c

    and-int/lit16 v5, v11, 0x4000

    if-nez v5, :cond_2a

    move-object/from16 v5, p14

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    const/16 v17, 0x4000

    goto :goto_1c

    :cond_2a
    move-object/from16 v5, p14

    :cond_2b
    :goto_1c
    or-int v1, v1, v17

    goto :goto_1d

    :cond_2c
    move-object/from16 v5, p14

    :goto_1d
    const v17, 0x8000

    and-int v17, v11, v17

    if-eqz v17, :cond_2d

    or-int v1, v1, v22

    move/from16 v18, v9

    move-object/from16 v9, p15

    goto :goto_1f

    :cond_2d
    and-int v18, v12, v22

    if-nez v18, :cond_2f

    move/from16 v18, v9

    move-object/from16 v9, p15

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    const/high16 v19, 0x20000

    goto :goto_1e

    :cond_2e
    move/from16 v19, v21

    :goto_1e
    or-int v1, v1, v19

    goto :goto_1f

    :cond_2f
    move/from16 v18, v9

    move-object/from16 v9, p15

    :goto_1f
    and-int v19, v11, v21

    if-eqz v19, :cond_30

    or-int v1, v1, v25

    move-object/from16 v9, p16

    goto :goto_21

    :cond_30
    and-int v19, v12, v25

    if-nez v19, :cond_32

    move-object/from16 v9, p16

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    const/high16 v19, 0x100000

    goto :goto_20

    :cond_31
    const/high16 v19, 0x80000

    :goto_20
    or-int v1, v1, v19

    goto :goto_21

    :cond_32
    move-object/from16 v9, p16

    :goto_21
    const v19, 0x12492493

    and-int v5, v0, v19

    const v7, 0x12492492

    if-ne v5, v7, :cond_34

    const v5, 0x92493

    and-int/2addr v5, v1

    const v7, 0x92492

    if-ne v5, v7, :cond_34

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_22

    .line 299
    :cond_33
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v44, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move-object/from16 v28, p10

    move-object/from16 v25, p11

    move/from16 v26, p12

    move/from16 v27, p13

    move-object/from16 v40, p14

    move-object/from16 v29, p15

    move/from16 v34, v0

    move/from16 v39, v1

    move v13, v15

    move-object v15, v14

    move-object v14, v10

    goto/16 :goto_45

    .line 178
    :cond_34
    :goto_22
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v13, 0x1

    const-string v7, "CC(remember):SearchBar.android.kt#9igjgp"

    const/4 v9, 0x6

    if-eqz v5, :cond_39

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_23

    .line 176
    :cond_35
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_36

    and-int/lit8 v1, v1, -0xf

    :cond_36
    and-int/lit16 v2, v11, 0x800

    if-eqz v2, :cond_37

    and-int/lit8 v1, v1, -0x71

    :cond_37
    and-int/lit16 v2, v11, 0x4000

    if-eqz v2, :cond_38

    const v2, -0xe001

    and-int/2addr v1, v2

    :cond_38
    move-object/from16 v12, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move-object/from16 v8, p10

    move-object/from16 v16, p11

    move/from16 v17, p12

    move/from16 v19, p13

    move-object/from16 v25, p15

    move v6, v1

    move-object v9, v7

    move-object/from16 v7, p14

    goto/16 :goto_2f

    .line 178
    :cond_39
    :goto_23
    if-eqz v3, :cond_3a

    .line 166
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object/from16 v19, v3

    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v3, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_24

    .line 178
    .end local v3    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_3a
    move-object/from16 v19, p5

    .line 166
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v19, "modifier":Landroidx/compose/ui/Modifier;
    :goto_24
    if-eqz v24, :cond_3b

    .line 167
    const/4 v3, 0x1

    move/from16 v21, v3

    .end local p6    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_25

    .line 166
    .end local v3    # "enabled":Z
    .restart local p6    # "enabled":Z
    :cond_3b
    move/from16 v21, p6

    .line 167
    .end local p6    # "enabled":Z
    .local v21, "enabled":Z
    :goto_25
    if-eqz v6, :cond_3c

    .line 168
    const/4 v3, 0x0

    move-object/from16 v22, v3

    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v3, "placeholder":Lkotlin/jvm/functions/Function2;
    goto :goto_26

    .line 167
    .end local v3    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    :cond_3c
    move-object/from16 v22, p7

    .line 168
    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v22, "placeholder":Lkotlin/jvm/functions/Function2;
    :goto_26
    if-eqz v2, :cond_3d

    .line 169
    const/4 v2, 0x0

    move-object/from16 v23, v2

    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v2, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_27

    .line 168
    .end local v2    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_3d
    move-object/from16 v23, p8

    .line 169
    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v23, "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_27
    if-eqz v4, :cond_3e

    .line 170
    const/4 v2, 0x0

    move-object/from16 v24, v2

    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v2, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_28

    .line 169
    .end local v2    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_3e
    move-object/from16 v24, p9

    .line 170
    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v24, "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_28
    and-int/lit16 v2, v11, 0x400

    if-eqz v2, :cond_3f

    .line 171
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2, v10, v9}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    .end local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v2, "shape":Landroidx/compose/ui/graphics/Shape;
    and-int/lit8 v1, v1, -0xf

    move/from16 v26, v1

    move-object/from16 v25, v2

    goto :goto_29

    .line 170
    .end local v2    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_3f
    move-object/from16 v25, p10

    move/from16 v26, v1

    .line 171
    .end local v1    # "$dirty1":I
    .end local p10    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v25, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v26, "$dirty1":I
    :goto_29
    and-int/lit16 v1, v11, 0x800

    if-eqz v1, :cond_40

    .line 172
    sget-object v1, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v27, 0xc00

    const/16 v29, 0x7

    move-object/from16 v30, v7

    move-object v7, v10

    move/from16 v8, v27

    move v12, v9

    move/from16 v9, v29

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/SearchBarDefaults;->colors-Klgx-Pg(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;

    move-result-object v1

    .end local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    .local v1, "colors":Landroidx/compose/material3/SearchBarColors;
    and-int/lit8 v26, v26, -0x71

    goto :goto_2a

    .line 171
    .end local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    .restart local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    :cond_40
    move-object/from16 v30, v7

    move v12, v9

    move-object/from16 v1, p11

    .line 172
    .end local p11    # "colors":Landroidx/compose/material3/SearchBarColors;
    .restart local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    :goto_2a
    if-eqz v16, :cond_41

    .line 173
    sget-object v2, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v2}, Landroidx/compose/material3/SearchBarDefaults;->getTonalElevation-D9Ej5fM()F

    move-result v2

    .end local p12    # "tonalElevation":F
    .local v2, "tonalElevation":F
    goto :goto_2b

    .line 172
    .end local v2    # "tonalElevation":F
    .restart local p12    # "tonalElevation":F
    :cond_41
    move/from16 v2, p12

    .line 173
    .end local p12    # "tonalElevation":F
    .restart local v2    # "tonalElevation":F
    :goto_2b
    if-eqz v18, :cond_42

    .line 174
    sget-object v3, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v3}, Landroidx/compose/material3/SearchBarDefaults;->getShadowElevation-D9Ej5fM()F

    move-result v3

    .end local p13    # "shadowElevation":F
    .local v3, "shadowElevation":F
    goto :goto_2c

    .line 173
    .end local v3    # "shadowElevation":F
    .restart local p13    # "shadowElevation":F
    :cond_42
    move/from16 v3, p13

    .line 174
    .end local p13    # "shadowElevation":F
    .restart local v3    # "shadowElevation":F
    :goto_2c
    and-int/lit16 v4, v11, 0x4000

    if-eqz v4, :cond_43

    .line 175
    sget-object v4, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v4, v10, v12}, Landroidx/compose/material3/SearchBarDefaults;->getWindowInsets(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    .end local p14    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v4, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    const v5, -0xe001

    and-int v26, v26, v5

    goto :goto_2d

    .line 174
    .end local v4    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local p14    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :cond_43
    move-object/from16 v4, p14

    .line 175
    .end local p14    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .restart local v4    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    :goto_2d
    if-eqz v17, :cond_45

    .line 176
    const v5, 0x32c085ba

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v9, v30

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, "invalid$iv":Z
    move-object v6, v10

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v7, 0x0

    .line 742
    .local v7, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 743
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v8, v12, :cond_44

    .line 744
    const/4 v12, 0x0

    .line 176
    .local v12, "$i$a$-cache-SearchBar_androidKt$SearchBar$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v12

    .line 744
    .end local v12    # "$i$a$-cache-SearchBar_androidKt$SearchBar$1":I
    nop

    .line 745
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 746
    nop

    .end local v12    # "value$iv":Ljava/lang/Object;
    goto :goto_2e

    .line 747
    :cond_44
    move-object v12, v8

    .line 743
    :goto_2e
    nop

    .line 742
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 176
    .end local v5    # "invalid$iv":Z
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v7    # "$i$f$cache":I
    move-object v5, v12

    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p15    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v5, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object v7, v4

    move-object/from16 v12, v19

    move-object/from16 v8, v25

    move/from16 v6, v26

    move/from16 v19, v3

    move-object/from16 v25, v5

    goto :goto_2f

    .line 175
    .end local v5    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p15    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_45
    move-object/from16 v9, v30

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object v7, v4

    move-object/from16 v12, v19

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v25, p15

    move/from16 v19, v3

    .line 176
    .end local v1    # "colors":Landroidx/compose/material3/SearchBarColors;
    .end local v2    # "tonalElevation":F
    .end local v3    # "shadowElevation":F
    .end local v4    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .end local v26    # "$dirty1":I
    .end local p15    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v6, "$dirty1":I
    .local v7, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v8, "shape":Landroidx/compose/ui/graphics/Shape;
    .local v12, "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "colors":Landroidx/compose/material3/SearchBarColors;
    .local v17, "tonalElevation":F
    .local v19, "shadowElevation":F
    .local v25, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 178
    const v1, 0x3bb1de91

    const-string/jumbo v2, "androidx.compose.material3.SearchBar (SearchBar.android.kt:177)"

    invoke-static {v1, v0, v6, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 180
    :cond_46
    if-eqz v15, :cond_47

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_30

    :cond_47
    const/4 v1, 0x0

    .line 181
    :goto_30
    if-eqz v15, :cond_48

    sget-object v2, Landroidx/compose/material3/SearchBar_androidKt;->AnimationEnterFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    goto :goto_31

    :cond_48
    sget-object v2, Landroidx/compose/material3/SearchBar_androidKt;->AnimationExitFloatSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    :goto_31
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c

    .line 179
    move/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 p7, v3

    move-object/from16 p8, v4

    move-object/from16 p9, v5

    move-object/from16 p10, v10

    move/from16 p11, v26

    move/from16 p12, v27

    invoke-static/range {p5 .. p12}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v5

    .line 184
    .local v5, "animationProgress":Landroidx/compose/runtime/State;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFocusManager()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    .local v1, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v2, 0x0

    .local v2, "$changed$iv":I
    const/4 v3, 0x0

    .line 748
    .local v3, "$i$f$getCurrent":I
    const v4, 0x789c5f52

    move/from16 p17, v0

    .end local v0    # "$dirty":I
    .local p17, "$dirty":I
    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v4, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 184
    .end local v1    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$changed$iv":I
    .end local v3    # "$i$f$getCurrent":I
    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/focus/FocusManager;

    .line 185
    .local v4, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/CompositionLocal;

    .local v0, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .line 749
    .local v2, "$i$f$getCurrent":I
    const v3, 0x789c5f52

    move/from16 p5, v1

    .end local v1    # "$changed$iv":I
    .local p5, "$changed$iv":I
    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v10, v3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 185
    .end local v0    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v2    # "$i$f$getCurrent":I
    .end local p5    # "$changed$iv":I
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 187
    .local v3, "density":Landroidx/compose/ui/unit/Density;
    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    .line 188
    .local v2, "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    sget-object v0, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/SearchBarDefaults;->getFullScreenShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v26

    .local v26, "defaultFullScreenShape":Landroidx/compose/ui/graphics/Shape;
    const v0, 0x32c087e1

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 189
    move-object v0, v10

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v1, 0x0

    move/from16 v27, v1

    .local v27, "invalid$iv":Z
    const/16 v28, 0x0

    .line 750
    .local v28, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v29, 0x0

    .line 751
    .local v29, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v30, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 p6, v4

    .end local v4    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local p6, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_49

    .line 752
    const/4 v4, 0x0

    .line 190
    .local v4, "$i$a$-cache-SearchBar_androidKt$SearchBar$useFullScreenShape$2":I
    move-object/from16 p7, v1

    .end local v1    # "it$iv":Ljava/lang/Object;
    .local p7, "it$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v1

    move/from16 p8, v4

    .end local v4    # "$i$a$-cache-SearchBar_androidKt$SearchBar$useFullScreenShape$2":I
    .local p8, "$i$a$-cache-SearchBar_androidKt$SearchBar$useFullScreenShape$2":I
    new-instance v4, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$useFullScreenShape$2$1;

    invoke-direct {v4, v5}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$useFullScreenShape$2$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 752
    .end local p8    # "$i$a$-cache-SearchBar_androidKt$SearchBar$useFullScreenShape$2":I
    nop

    .line 753
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 754
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_32

    .line 755
    .end local p7    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    :cond_49
    move-object/from16 p7, v1

    .line 751
    .end local v1    # "it$iv":Ljava/lang/Object;
    .restart local p7    # "it$iv":Ljava/lang/Object;
    :goto_32
    nop

    .line 750
    .end local v29    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 189
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v27    # "invalid$iv":Z
    .end local v28    # "$i$f$cache":I
    move-object/from16 v27, v1

    check-cast v27, Landroidx/compose/runtime/State;

    .local v27, "useFullScreenShape$delegate":Landroidx/compose/runtime/State;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 192
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBar_WuY5d9Q$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result v0

    const v1, 0x32c0885f

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    and-int/lit8 v1, v6, 0xe

    const/4 v4, 0x6

    xor-int/2addr v1, v4

    const/4 v4, 0x4

    if-le v1, v4, :cond_4a

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_4a
    and-int/lit8 v1, v6, 0x6

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4c

    :cond_4b
    const/4 v1, 0x1

    goto :goto_33

    :cond_4c
    const/4 v1, 0x0

    :goto_33
    or-int/2addr v0, v1

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 756
    .local v4, "$i$f$cache":I
    move/from16 p8, v4

    .end local v4    # "$i$f$cache":I
    .local p8, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 757
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_4e

    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p9, v0

    .end local v0    # "invalid$iv":Z
    .local p9, "invalid$iv":Z
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_4d

    goto :goto_34

    .line 761
    :cond_4d
    move-object/from16 p11, v2

    move-object v0, v4

    goto :goto_36

    .line 757
    .end local p9    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_4e
    move/from16 p9, v0

    .line 758
    .end local v0    # "invalid$iv":Z
    .restart local p9    # "invalid$iv":Z
    :goto_34
    const/4 v0, 0x0

    .line 193
    .local v0, "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    nop

    .line 194
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4f

    .line 196
    move/from16 p10, v0

    .end local v0    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    .local p10, "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    new-instance v0, Landroidx/compose/foundation/shape/GenericShape;

    move-object/from16 p11, v2

    .end local v2    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    .local p11, "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    new-instance v2, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$animatedShape$1$1;

    invoke-direct {v2, v3, v5}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$animatedShape$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v2}, Landroidx/compose/foundation/shape/GenericShape;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Landroidx/compose/ui/graphics/Shape;

    goto :goto_35

    .line 202
    .end local p10    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    .end local p11    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    .restart local v0    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    .restart local v2    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    :cond_4f
    move/from16 p10, v0

    move-object/from16 p11, v2

    .end local v0    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    .end local v2    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    .restart local p10    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    .restart local p11    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    invoke-static/range {v27 .. v27}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBar_WuY5d9Q$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result v0

    if-eqz v0, :cond_50

    move-object/from16 v0, v26

    goto :goto_35

    .line 203
    :cond_50
    move-object v0, v8

    .line 193
    :goto_35
    nop

    .line 758
    .end local p10    # "$i$a$-cache-SearchBar_androidKt$SearchBar$animatedShape$1":I
    nop

    .line 759
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 760
    nop

    .line 757
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_36
    nop

    .line 756
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 192
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p8    # "$i$f$cache":I
    .end local p9    # "invalid$iv":Z
    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/ui/graphics/Shape;

    .local v18, "animatedShape":Landroidx/compose/ui/graphics/Shape;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x32c08c61

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    move v1, v0

    .local v1, "invalid$iv":Z
    move-object v0, v10

    .local v0, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 762
    .local v2, "$i$f$cache":I
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 763
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v28, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v1

    .end local v1    # "invalid$iv":Z
    .local p8, "invalid$iv":Z
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_51

    .line 764
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-cache-SearchBar_androidKt$SearchBar$unconsumedInsets$1":I
    move/from16 p9, v1

    .end local v1    # "$i$a$-cache-SearchBar_androidKt$SearchBar$unconsumedInsets$1":I
    .local p9, "$i$a$-cache-SearchBar_androidKt$SearchBar$unconsumedInsets$1":I
    new-instance v1, Landroidx/compose/material3/MutableWindowInsets;

    move/from16 p10, v2

    .end local v2    # "$i$f$cache":I
    .local p10, "$i$f$cache":I
    const/4 v2, 0x0

    move-object/from16 p12, v4

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local p12, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object/from16 v28, v8

    const/4 v8, 0x1

    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .local v28, "shape":Landroidx/compose/ui/graphics/Shape;
    invoke-direct {v1, v2, v8, v4}, Landroidx/compose/material3/MutableWindowInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 764
    .end local p9    # "$i$a$-cache-SearchBar_androidKt$SearchBar$unconsumedInsets$1":I
    nop

    .line 765
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 766
    nop

    .end local v1    # "value$iv":Ljava/lang/Object;
    goto :goto_37

    .line 767
    .end local v28    # "shape":Landroidx/compose/ui/graphics/Shape;
    .end local p10    # "$i$f$cache":I
    .end local p12    # "it$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$cache":I
    .restart local v4    # "it$iv":Ljava/lang/Object;
    .restart local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    :cond_51
    move/from16 p10, v2

    move-object/from16 p12, v4

    move-object/from16 v28, v8

    const/4 v8, 0x1

    .end local v2    # "$i$f$cache":I
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v8    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local v28    # "shape":Landroidx/compose/ui/graphics/Shape;
    .restart local p10    # "$i$f$cache":I
    .restart local p12    # "it$iv":Ljava/lang/Object;
    move-object/from16 v1, p12

    .line 763
    :goto_37
    nop

    .line 762
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p12    # "it$iv":Ljava/lang/Object;
    nop

    .line 212
    .end local v0    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local p8    # "invalid$iv":Z
    .end local p10    # "$i$f$cache":I
    move-object v4, v1

    check-cast v4, Landroidx/compose/material3/MutableWindowInsets;

    .local v4, "unconsumedInsets":Landroidx/compose/material3/MutableWindowInsets;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v0, 0x32c08c99

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 213
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v1, v10

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 768
    .restart local v2    # "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 769
    .restart local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_53

    sget-object v29, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p8, v0

    .end local v0    # "invalid$iv":Z
    .restart local p8    # "invalid$iv":Z
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_52

    goto :goto_38

    .line 773
    :cond_52
    move-object v0, v8

    goto :goto_39

    .line 769
    .end local p8    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_53
    move/from16 p8, v0

    .line 770
    .end local v0    # "invalid$iv":Z
    .restart local p8    # "invalid$iv":Z
    :goto_38
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-cache-SearchBar_androidKt$SearchBar$topPadding$1":I
    move/from16 p9, v0

    .end local v0    # "$i$a$-cache-SearchBar_androidKt$SearchBar$topPadding$1":I
    .local p9, "$i$a$-cache-SearchBar_androidKt$SearchBar$topPadding$1":I
    new-instance v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$topPadding$1$1;

    invoke-direct {v0, v4, v3}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$topPadding$1$1;-><init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/ui/unit/Density;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 770
    .end local p9    # "$i$a$-cache-SearchBar_androidKt$SearchBar$topPadding$1":I
    nop

    .line 771
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 772
    nop

    .line 769
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_39
    nop

    .line 768
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 213
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    .end local p8    # "invalid$iv":Z
    move-object v8, v0

    check-cast v8, Landroidx/compose/runtime/State;

    .local v8, "topPadding":Landroidx/compose/runtime/State;
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 222
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v29

    .line 223
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/material3/SearchBarColors;->getContainerColor-0d7_KjU()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v32

    .line 226
    nop

    .line 227
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v12, v0}, Landroidx/compose/ui/ZIndexModifierKt;->zIndex(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x32c08e93

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v1, 0xe000

    and-int/2addr v1, v6

    xor-int/lit16 v1, v1, 0x6000

    const/16 v15, 0x4000

    if-le v1, v15, :cond_54

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    :cond_54
    and-int/lit16 v1, v6, 0x6000

    if-ne v1, v15, :cond_56

    :cond_55
    const/4 v1, 0x1

    goto :goto_3a

    :cond_56
    move v1, v2

    .line 228
    :goto_3a
    nop

    .local v1, "invalid$iv":Z
    move-object/from16 p5, v10

    .local p5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 774
    .local v20, "$i$f$cache":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 775
    .local v34, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_58

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v2, v15, :cond_57

    goto :goto_3b

    .line 779
    :cond_57
    move-object/from16 v15, p5

    move/from16 p9, v1

    move-object v1, v2

    goto :goto_3c

    .line 776
    :cond_58
    :goto_3b
    const/4 v15, 0x0

    .line 228
    .local v15, "$i$a$-cache-SearchBar_androidKt$SearchBar$2":I
    move/from16 p9, v1

    .end local v1    # "invalid$iv":Z
    .local p9, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1;

    invoke-direct {v1, v4, v7}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$2$1;-><init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 776
    .end local v15    # "$i$a$-cache-SearchBar_androidKt$SearchBar$2":I
    nop

    .line 777
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 v15, p5

    .end local p5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 778
    nop

    .line 775
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_3c
    nop

    .line 774
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v34    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 228
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$f$cache":I
    .end local p9    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->onConsumedWindowInsetsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 231
    move-object v1, v4

    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->consumeWindowInsets(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x32c08f4b

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 232
    nop

    .local v1, "invalid$iv":Z
    move-object v2, v10

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 780
    .local v15, "$i$f$cache":I
    move-object/from16 p5, v3

    .end local v3    # "density":Landroidx/compose/ui/unit/Density;
    .local p5, "density":Landroidx/compose/ui/unit/Density;
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 781
    .local v20, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_5a

    sget-object v34, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p9, v1

    .end local v1    # "invalid$iv":Z
    .restart local p9    # "invalid$iv":Z
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_59

    goto :goto_3d

    .line 785
    :cond_59
    move-object v1, v3

    goto :goto_3e

    .line 781
    .end local p9    # "invalid$iv":Z
    .restart local v1    # "invalid$iv":Z
    :cond_5a
    move/from16 p9, v1

    .line 782
    .end local v1    # "invalid$iv":Z
    .restart local p9    # "invalid$iv":Z
    :goto_3d
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$a$-cache-SearchBar_androidKt$SearchBar$3":I
    move/from16 p10, v1

    .end local v1    # "$i$a$-cache-SearchBar_androidKt$SearchBar$3":I
    .local p10, "$i$a$-cache-SearchBar_androidKt$SearchBar$3":I
    new-instance v1, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$3$1;

    invoke-direct {v1, v8, v5}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 782
    .end local p10    # "$i$a$-cache-SearchBar_androidKt$SearchBar$3":I
    nop

    .line 783
    .local v1, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 784
    nop

    .line 781
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_3e
    nop

    .line 780
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 232
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    .end local p9    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 224
    nop

    .line 225
    const/16 v20, 0x0

    .line 253
    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$4;

    move/from16 v34, p17

    .end local p17    # "$dirty":I
    .local v34, "$dirty":I
    move-object v0, v3

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v31, p11

    .end local p11    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    .local v31, "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    move-object/from16 v2, p1

    move-object/from16 v35, p5

    move-object/from16 p5, v15

    move-object v15, v3

    .end local p5    # "density":Landroidx/compose/ui/unit/Density;
    .local v35, "density":Landroidx/compose/ui/unit/Density;
    move-object/from16 v3, p2

    move-object/from16 v36, p6

    move-object/from16 v37, v4

    .end local v4    # "unconsumedInsets":Landroidx/compose/material3/MutableWindowInsets;
    .end local p6    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v36, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v37, "unconsumedInsets":Landroidx/compose/material3/MutableWindowInsets;
    move/from16 v4, p3

    move-object/from16 v38, v5

    .end local v5    # "animationProgress":Landroidx/compose/runtime/State;
    .local v38, "animationProgress":Landroidx/compose/runtime/State;
    move-object/from16 v5, p4

    move/from16 v39, v6

    .end local v6    # "$dirty1":I
    .local v39, "$dirty1":I
    move/from16 v6, v21

    move-object/from16 v40, v7

    .end local v7    # "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    .local v40, "windowInsets":Landroidx/compose/foundation/layout/WindowInsets;
    move-object/from16 v7, v22

    move-object/from16 v41, v8

    .end local v8    # "topPadding":Landroidx/compose/runtime/State;
    .local v41, "topPadding":Landroidx/compose/runtime/State;
    move-object/from16 v8, v23

    move-object/from16 v42, v9

    move-object/from16 v9, v24

    move-object/from16 v43, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v43, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v10, v16

    move-object/from16 v11, v25

    move-object/from16 v44, v12

    .end local v12    # "modifier":Landroidx/compose/ui/Modifier;
    .local v44, "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v12, v38

    move-object/from16 v13, v41

    move-object/from16 v14, p16

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/SearchBarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function3;)V

    const v0, 0x1ccc7bec

    move-object/from16 v14, v43

    const/4 v13, 0x1

    .end local v43    # "$composer":Landroidx/compose/runtime/Composer;
    .local v14, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static {v14, v0, v13, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, v39, 0x6

    const v1, 0xe000

    and-int/2addr v0, v1

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    shl-int/lit8 v1, v39, 0x6

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v12, v0, v1

    const/16 v0, 0x40

    .line 220
    move-object/from16 v1, p5

    move-object/from16 v2, v18

    move-wide/from16 v3, v29

    move-wide/from16 v5, v32

    move/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object v11, v14

    move v15, v13

    move v13, v0

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 285
    move-object/from16 v0, v25

    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v1, v39, 0xf

    and-int/lit8 v1, v1, 0xe

    invoke-static {v0, v14, v1}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 286
    .local v0, "isFocused":Z
    move/from16 v13, p3

    const/16 v1, 0x4000

    if-nez v13, :cond_5b

    if-eqz v0, :cond_5b

    move v2, v15

    goto :goto_3f

    :cond_5b
    const/4 v2, 0x0

    .line 287
    .local v2, "shouldClearFocus":Z
    :goto_3f
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, 0x32c098af

    invoke-interface {v14, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v4, v42

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v5

    move-object/from16 v6, v36

    .end local v36    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .local v6, "focusManager":Landroidx/compose/ui/focus/FocusManager;
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    .local v5, "invalid$iv":Z
    move-object v7, v14

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 786
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 787
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v5, :cond_5d

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_5c

    goto :goto_40

    .line 791
    :cond_5c
    move-object v11, v9

    goto :goto_41

    .line 788
    :cond_5d
    :goto_40
    const/4 v11, 0x0

    .line 287
    .local v11, "$i$a$-cache-SearchBar_androidKt$SearchBar$5":I
    new-instance v12, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$5$1;

    const/4 v15, 0x0

    invoke-direct {v12, v2, v6, v15}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$5$1;-><init>(ZLandroidx/compose/ui/focus/FocusManager;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 788
    .end local v11    # "$i$a$-cache-SearchBar_androidKt$SearchBar$5":I
    move-object v11, v12

    .line 789
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 790
    nop

    .line 787
    .end local v11    # "value$iv":Ljava/lang/Object;
    :goto_41
    nop

    .line 786
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 287
    .end local v5    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v5, v34, 0x9

    and-int/lit8 v5, v5, 0xe

    invoke-static {v3, v11, v14, v5}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 296
    const v3, 0x32c099f7

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v14, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v3, 0xe000

    and-int v3, v34, v3

    if-ne v3, v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_42

    :cond_5e
    const/4 v1, 0x0

    .local v1, "invalid$iv":Z
    :goto_42
    move-object v3, v14

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 792
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 793
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v1, :cond_60

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v5, v8, :cond_5f

    goto :goto_43

    .line 797
    :cond_5f
    move-object/from16 v15, p4

    move-object v8, v5

    goto :goto_44

    .line 794
    :cond_60
    :goto_43
    const/4 v8, 0x0

    .line 296
    .local v8, "$i$a$-cache-SearchBar_androidKt$SearchBar$6":I
    new-instance v9, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$6$1;

    move-object/from16 v15, p4

    invoke-direct {v9, v15}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$6$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 794
    .end local v8    # "$i$a$-cache-SearchBar_androidKt$SearchBar$6":I
    move-object v8, v9

    .line 795
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 796
    nop

    .line 793
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_44
    nop

    .line 792
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 296
    .end local v1    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v1, v34, 0x9

    and-int/lit8 v1, v1, 0xe

    const/4 v3, 0x0

    invoke-static {v13, v8, v14, v1, v3}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 299
    .end local v0    # "isFocused":Z
    .end local v2    # "shouldClearFocus":Z
    .end local v6    # "focusManager":Landroidx/compose/ui/focus/FocusManager;
    .end local v18    # "animatedShape":Landroidx/compose/ui/graphics/Shape;
    .end local v26    # "defaultFullScreenShape":Landroidx/compose/ui/graphics/Shape;
    .end local v27    # "useFullScreenShape$delegate":Landroidx/compose/runtime/State;
    .end local v31    # "defaultInputFieldShape":Landroidx/compose/ui/graphics/Shape;
    .end local v35    # "density":Landroidx/compose/ui/unit/Density;
    .end local v37    # "unconsumedInsets":Landroidx/compose/material3/MutableWindowInsets;
    .end local v38    # "animationProgress":Landroidx/compose/runtime/State;
    .end local v41    # "topPadding":Landroidx/compose/runtime/State;
    :cond_61
    move/from16 v26, v17

    move/from16 v27, v19

    move-object/from16 v29, v25

    move-object/from16 v25, v16

    .end local v16    # "colors":Landroidx/compose/material3/SearchBarColors;
    .end local v17    # "tonalElevation":F
    .end local v19    # "shadowElevation":F
    .local v25, "colors":Landroidx/compose/material3/SearchBarColors;
    .local v26, "tonalElevation":F
    .local v27, "shadowElevation":F
    .local v29, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_45
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_62

    new-instance v30, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$7;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v44

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v28

    move-object/from16 v45, v12

    move-object/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v31, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .local v31, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v14, v27

    move-object/from16 v15, v40

    move-object/from16 v16, v29

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    invoke-direct/range {v0 .. v20}, Landroidx/compose/material3/SearchBar_androidKt$SearchBar$7;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V

    move-object/from16 v0, v30

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v45

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_46

    .end local v31    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v14    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_62
    move-object/from16 v31, v14

    .end local v14    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v31    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_46
    return-void
.end method

.method private static final SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 81
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "onQueryChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSearch"    # Lkotlin/jvm/functions/Function1;
    .param p3, "active"    # Z
    .param p4, "onActiveChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p6, "enabled"    # Z
    .param p7, "placeholder"    # Lkotlin/jvm/functions/Function2;
    .param p8, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p9, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "colors"    # Landroidx/compose/material3/TextFieldColors;
    .param p11, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 445
    move-object/from16 v13, p0

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v3, p4

    move/from16 v2, p13

    move/from16 v1, p15

    const v0, 0x1d966289

    move-object/from16 v4, p12

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v4, "C(SearchBarInputField)P(10,7,8!1,6,5,2,9,4,11)442@20766L18,443@20836L39,445@20906L29,446@20962L34,447@21037L39,459@21490L42,460@21556L304,472@21951L7,473@22036L28,475@22199L19,452@21246L2004:SearchBar.android.kt#uh7d8r"

    invoke-static {v12, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v4, p13

    .local v4, "$dirty":I
    move/from16 v7, p14

    .local v7, "$dirty1":I
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_0

    or-int/lit8 v4, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v8, v2, 0x6

    if-nez v8, :cond_2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v4, v8

    :cond_2
    :goto_1
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v4, v4, 0x30

    move-object/from16 v8, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v8, v2, 0x30

    if-nez v8, :cond_5

    move-object/from16 v8, p1

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x20

    goto :goto_2

    :cond_4
    const/16 v15, 0x10

    :goto_2
    or-int/2addr v4, v15

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit8 v15, v1, 0x4

    if-eqz v15, :cond_6

    or-int/lit16 v4, v4, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v15, v2, 0x180

    if-nez v15, :cond_8

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x100

    goto :goto_4

    :cond_7
    const/16 v15, 0x80

    :goto_4
    or-int/2addr v4, v15

    :cond_8
    :goto_5
    and-int/lit8 v15, v1, 0x8

    if-eqz v15, :cond_9

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v15, v2, 0xc00

    if-nez v15, :cond_b

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_6

    :cond_a
    const/16 v15, 0x400

    :goto_6
    or-int/2addr v4, v15

    :cond_b
    :goto_7
    and-int/lit8 v15, v1, 0x10

    if-eqz v15, :cond_c

    or-int/lit16 v4, v4, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v15, v2, 0x6000

    if-nez v15, :cond_e

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v4, v15

    :cond_e
    :goto_9
    and-int/lit8 v15, v1, 0x20

    const/high16 v46, 0x30000

    if-eqz v15, :cond_f

    or-int v4, v4, v46

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v17, v2, v46

    if-nez v17, :cond_11

    move-object/from16 v14, p5

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v18, 0x10000

    :goto_a
    or-int v4, v4, v18

    goto :goto_b

    :cond_11
    move-object/from16 v14, p5

    :goto_b
    and-int/lit8 v18, v1, 0x40

    const/high16 v19, 0x180000

    if-eqz v18, :cond_12

    or-int v4, v4, v19

    move/from16 v9, p6

    goto :goto_d

    :cond_12
    and-int v19, v2, v19

    if-nez v19, :cond_14

    move/from16 v9, p6

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_13

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v19, 0x80000

    :goto_c
    or-int v4, v4, v19

    goto :goto_d

    :cond_14
    move/from16 v9, p6

    :goto_d
    and-int/lit16 v11, v1, 0x80

    const/high16 v19, 0xc00000

    if-eqz v11, :cond_15

    or-int v4, v4, v19

    move-object/from16 v10, p7

    goto :goto_f

    :cond_15
    and-int v19, v2, v19

    if-nez v19, :cond_17

    move-object/from16 v10, p7

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v4, v4, v19

    goto :goto_f

    :cond_17
    move-object/from16 v10, p7

    :goto_f
    and-int/lit16 v0, v1, 0x100

    const/high16 v19, 0x6000000

    if-eqz v0, :cond_18

    or-int v4, v4, v19

    move-object/from16 v8, p8

    goto :goto_11

    :cond_18
    and-int v19, v2, v19

    if-nez v19, :cond_1a

    move-object/from16 v8, p8

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/high16 v19, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v19, 0x2000000

    :goto_10
    or-int v4, v4, v19

    goto :goto_11

    :cond_1a
    move-object/from16 v8, p8

    :goto_11
    and-int/lit16 v8, v1, 0x200

    const/high16 v19, 0x30000000

    if-eqz v8, :cond_1b

    or-int v4, v4, v19

    move-object/from16 v9, p9

    goto :goto_13

    :cond_1b
    and-int v19, v2, v19

    if-nez v19, :cond_1d

    move-object/from16 v9, p9

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/high16 v19, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v19, 0x10000000

    :goto_12
    or-int v4, v4, v19

    goto :goto_13

    :cond_1d
    move-object/from16 v9, p9

    :goto_13
    and-int/lit8 v19, p14, 0x6

    if-nez v19, :cond_20

    and-int/lit16 v9, v1, 0x400

    if-nez v9, :cond_1e

    move-object/from16 v9, p10

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    const/16 v19, 0x4

    goto :goto_14

    :cond_1e
    move-object/from16 v9, p10

    :cond_1f
    const/16 v19, 0x2

    :goto_14
    or-int v7, v7, v19

    goto :goto_15

    :cond_20
    move-object/from16 v9, p10

    :goto_15
    and-int/lit16 v9, v1, 0x800

    if-eqz v9, :cond_21

    or-int/lit8 v7, v7, 0x30

    move-object/from16 v10, p11

    goto :goto_17

    :cond_21
    and-int/lit8 v19, p14, 0x30

    if-nez v19, :cond_23

    move-object/from16 v10, p11

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    const/16 v16, 0x20

    goto :goto_16

    :cond_22
    const/16 v16, 0x10

    :goto_16
    or-int v7, v7, v16

    goto :goto_17

    :cond_23
    move-object/from16 v10, p11

    :goto_17
    const v16, 0x12492493

    and-int v10, v4, v16

    const v14, 0x12492492

    if-ne v10, v14, :cond_25

    and-int/lit8 v10, v7, 0x13

    const/16 v14, 0x12

    if-ne v10, v14, :cond_25

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v10

    if-nez v10, :cond_24

    goto :goto_18

    .line 500
    :cond_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v31, p5

    move/from16 v47, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v30, p10

    move-object/from16 v23, p11

    move/from16 v25, v4

    move/from16 v29, v7

    move-object/from16 v27, v12

    goto/16 :goto_2f

    .line 445
    :cond_25
    :goto_18
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v2, 0x1

    const-string v14, "CC(remember):SearchBar.android.kt#9igjgp"

    if-eqz v10, :cond_28

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_19

    .line 444
    :cond_26
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_27

    and-int/lit8 v7, v7, -0xf

    :cond_27
    move-object/from16 v2, p5

    move/from16 v47, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v1, p10

    move-object/from16 v23, p11

    move v15, v7

    move-object v0, v14

    goto/16 :goto_21

    .line 445
    :cond_28
    :goto_19
    if-eqz v15, :cond_29

    .line 438
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v10, Landroidx/compose/ui/Modifier;

    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .local v10, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_1a

    .line 445
    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p5    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_29
    move-object/from16 v10, p5

    .line 438
    .end local p5    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v10    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_1a
    if-eqz v18, :cond_2a

    .line 439
    const/4 v15, 0x1

    move/from16 v47, v15

    .end local p6    # "enabled":Z
    .local v15, "enabled":Z
    goto :goto_1b

    .line 438
    .end local v15    # "enabled":Z
    .restart local p6    # "enabled":Z
    :cond_2a
    move/from16 v47, p6

    .line 439
    .end local p6    # "enabled":Z
    .local v47, "enabled":Z
    :goto_1b
    if-eqz v11, :cond_2b

    .line 440
    const/4 v11, 0x0

    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .local v11, "placeholder":Lkotlin/jvm/functions/Function2;
    goto :goto_1c

    .line 439
    .end local v11    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    :cond_2b
    move-object/from16 v11, p7

    .line 440
    .end local p7    # "placeholder":Lkotlin/jvm/functions/Function2;
    .restart local v11    # "placeholder":Lkotlin/jvm/functions/Function2;
    :goto_1c
    if-eqz v0, :cond_2c

    .line 441
    const/4 v0, 0x0

    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v0, "leadingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_1d

    .line 440
    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :cond_2c
    move-object/from16 v0, p8

    .line 441
    .end local p8    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    :goto_1d
    if-eqz v8, :cond_2d

    .line 442
    const/4 v8, 0x0

    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v8, "trailingIcon":Lkotlin/jvm/functions/Function2;
    goto :goto_1e

    .line 441
    .end local v8    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :cond_2d
    move-object/from16 v8, p9

    .line 442
    .end local p9    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v8    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    :goto_1e
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_2e

    .line 443
    sget-object v15, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    move-object/from16 p5, v0

    move-object v0, v14

    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local p5, "leadingIcon":Lkotlin/jvm/functions/Function2;
    move-object v14, v15

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x6000

    const/16 v45, 0x3fff

    move-object/from16 v42, v12

    invoke-virtual/range {v14 .. v45}, Landroidx/compose/material3/SearchBarDefaults;->inputFieldColors-ITpI4ow(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;

    move-result-object v14

    .end local p10    # "colors":Landroidx/compose/material3/TextFieldColors;
    .local v14, "colors":Landroidx/compose/material3/TextFieldColors;
    and-int/lit8 v7, v7, -0xf

    goto :goto_1f

    .line 442
    .end local v14    # "colors":Landroidx/compose/material3/TextFieldColors;
    .end local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p10    # "colors":Landroidx/compose/material3/TextFieldColors;
    :cond_2e
    move-object/from16 p5, v0

    move-object v0, v14

    .end local v0    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .restart local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    move-object/from16 v14, p10

    .line 443
    .end local p10    # "colors":Landroidx/compose/material3/TextFieldColors;
    .restart local v14    # "colors":Landroidx/compose/material3/TextFieldColors;
    :goto_1f
    if-eqz v9, :cond_30

    .line 444
    const v9, 0x1b92382c

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v9, 0x0

    .local v9, "invalid$iv":Z
    move-object v15, v12

    .local v15, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 817
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 818
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2f

    .line 819
    const/4 v2, 0x0

    .line 444
    .local v2, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 819
    .end local v2    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$1":I
    nop

    .line 820
    .local v2, "value$iv":Ljava/lang/Object;
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 821
    nop

    .end local v2    # "value$iv":Ljava/lang/Object;
    goto :goto_20

    .line 822
    :cond_2f
    move-object v2, v1

    .line 818
    :goto_20
    nop

    .line 817
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 444
    .end local v9    # "invalid$iv":Z
    .end local v15    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object/from16 v21, p5

    move-object/from16 v23, v1

    move v15, v7

    move-object/from16 v22, v8

    move-object v2, v10

    move-object/from16 v20, v11

    move-object v1, v14

    goto :goto_21

    .line 443
    .end local v1    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_30
    move-object/from16 v21, p5

    move-object/from16 v23, p11

    move v15, v7

    move-object/from16 v22, v8

    move-object v2, v10

    move-object/from16 v20, v11

    move-object v1, v14

    .line 444
    .end local v7    # "$dirty1":I
    .end local v8    # "trailingIcon":Lkotlin/jvm/functions/Function2;
    .end local v10    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v11    # "placeholder":Lkotlin/jvm/functions/Function2;
    .end local v14    # "colors":Landroidx/compose/material3/TextFieldColors;
    .end local p5    # "leadingIcon":Lkotlin/jvm/functions/Function2;
    .end local p11    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "colors":Landroidx/compose/material3/TextFieldColors;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .local v15, "$dirty1":I
    .local v20, "placeholder":Lkotlin/jvm/functions/Function2;
    .local v21, "leadingIcon":Lkotlin/jvm/functions/Function2;
    .local v22, "trailingIcon":Lkotlin/jvm/functions/Function2;
    .local v23, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_21
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 445
    const-string/jumbo v7, "androidx.compose.material3.SearchBarInputField (SearchBar.android.kt:444)"

    const v8, 0x1d966289

    invoke-static {v8, v4, v15, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_31
    const v7, 0x1b923872

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 446
    const/4 v7, 0x0

    move v8, v7

    .local v8, "invalid$iv":Z
    move-object v9, v12

    .local v9, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v10, 0x0

    .line 823
    .local v10, "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 824
    .local v14, "$i$a$-let-ComposerKt$cache$1$iv":I
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v11, v7, :cond_32

    .line 825
    const/4 v7, 0x0

    .line 446
    .local v7, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$focusRequester$1":I
    new-instance v16, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct/range {v16 .. v16}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 825
    .end local v7    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$focusRequester$1":I
    move-object/from16 v7, v16

    .line 826
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 827
    nop

    .end local v7    # "value$iv":Ljava/lang/Object;
    goto :goto_22

    .line 828
    :cond_32
    move-object v7, v11

    .line 824
    :goto_22
    nop

    .line 823
    .end local v11    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 446
    .end local v8    # "invalid$iv":Z
    .end local v9    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v10    # "$i$f$cache":I
    move-object v14, v7

    check-cast v14, Landroidx/compose/ui/focus/FocusRequester;

    .local v14, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 447
    sget-object v7, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .local v7, "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v8, 0x0

    .line 829
    .local v8, "$i$f$getSearchBarSearch-adMyvUU":I
    sget v9, Landroidx/compose/material3/R$string;->m3c_search_bar_search:I

    invoke-static {v9}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v7

    .line 447
    .end local v7    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v8    # "$i$f$getSearchBarSearch-adMyvUU":I
    const/4 v8, 0x0

    invoke-static {v7, v12, v8}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    .line 448
    .local v11, "searchSemantics":Ljava/lang/String;
    sget-object v7, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    .restart local v7    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    const/4 v9, 0x0

    .line 830
    .local v9, "$i$f$getSuggestionsAvailable-adMyvUU":I
    sget v10, Landroidx/compose/material3/R$string;->m3c_suggestions_available:I

    invoke-static {v10}, Landroidx/compose/material3/Strings;->constructor-impl(I)I

    move-result v7

    .line 448
    .end local v7    # "this_$iv":Landroidx/compose/material3/Strings$Companion;
    .end local v9    # "$i$f$getSuggestionsAvailable-adMyvUU":I
    invoke-static {v7, v12, v8}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    .local v10, "suggestionsAvailableSemantics":Ljava/lang/String;
    const v7, 0x1b92394e

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "*448@21112L7,449@21154L74"

    invoke-static {v12, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .local v7, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v8, 0x6

    .local v8, "$changed$iv":I
    const/4 v9, 0x0

    .line 831
    .local v9, "$i$f$getCurrent":I
    move/from16 p5, v8

    .end local v8    # "$changed$iv":I
    .local p5, "$changed$iv":I
    const v8, 0x789c5f52

    move/from16 p6, v9

    .end local v9    # "$i$f$getCurrent":I
    .local p6, "$i$f$getCurrent":I
    const-string v9, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v7    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local p5    # "$changed$iv":I
    .end local p6    # "$i$f$getCurrent":I
    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    .line 449
    invoke-virtual {v8}, Landroidx/compose/ui/text/TextStyle;->getColor-0d7_KjU()J

    move-result-wide v7

    .local v7, "$this$takeOrElse_u2dDxMtmZc$iv":J
    const/4 v9, 0x0

    .line 832
    .local v9, "$i$f$takeOrElse-DxMtmZc":I
    move-wide/from16 v16, v7

    .local v16, "$this$isSpecified$iv$iv":J
    const/16 v18, 0x0

    .line 833
    .local v18, "$i$f$isSpecified-8_81llA":I
    sget-object v19, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v24

    cmp-long v19, v16, v24

    move/from16 p12, v9

    .end local v9    # "$i$f$takeOrElse-DxMtmZc":I
    .local p12, "$i$f$takeOrElse-DxMtmZc":I
    if-eqz v19, :cond_33

    const/16 v16, 0x1

    goto :goto_23

    :cond_33
    const/16 v16, 0x0

    .line 832
    .end local v16    # "$this$isSpecified$iv$iv":J
    .end local v18    # "$i$f$isSpecified-8_81llA":I
    :goto_23
    if-eqz v16, :cond_34

    move-wide/from16 v49, v7

    goto :goto_24

    :cond_34
    const/16 v16, 0x0

    .line 450
    .local v16, "$i$a$-takeOrElse-DxMtmZc-SearchBar_androidKt$SearchBarInputField$textColor$1":I
    const/16 v17, 0x0

    move-object/from16 v18, v23

    check-cast v18, Landroidx/compose/foundation/interaction/InteractionSource;

    shr-int/lit8 v19, v4, 0x12

    and-int/lit8 v19, v19, 0xe

    or-int/lit8 v19, v19, 0x30

    shl-int/lit8 v9, v15, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int v9, v19, v9

    move-wide/from16 v25, v7

    .end local v7    # "$this$takeOrElse_u2dDxMtmZc$iv":J
    .local v25, "$this$takeOrElse_u2dDxMtmZc$iv":J
    shl-int/lit8 v7, v15, 0x9

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v7, v9

    move-object/from16 p5, v1

    move/from16 p6, v47

    move/from16 p7, v17

    move-object/from16 p8, v18

    move-object/from16 p9, v12

    move/from16 p10, v7

    invoke-virtual/range {p5 .. p10}, Landroidx/compose/material3/TextFieldColors;->textColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v7

    .line 832
    .end local v16    # "$i$a$-takeOrElse-DxMtmZc-SearchBar_androidKt$SearchBarInputField$textColor$1":I
    move-wide/from16 v49, v7

    .line 449
    .end local v25    # "$this$takeOrElse_u2dDxMtmZc$iv":J
    .end local p12    # "$i$f$takeOrElse-DxMtmZc":I
    :goto_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 456
    .local v49, "textColor":J
    nop

    .line 457
    sget-object v7, Landroidx/compose/material3/SearchBarDefaults;->INSTANCE:Landroidx/compose/material3/SearchBarDefaults;

    invoke-virtual {v7}, Landroidx/compose/material3/SearchBarDefaults;->getInputFieldHeight-D9Ej5fM()F

    move-result v7

    invoke-static {v2, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 458
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v16, "modifier":Landroidx/compose/ui/Modifier;
    invoke-static {v7, v8, v2, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 459
    invoke-static {v7, v14}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v7, 0x1b923aba

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const v7, 0xe000

    and-int/2addr v7, v4

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_35

    const/4 v7, 0x1

    goto :goto_25

    :cond_35
    const/4 v7, 0x0

    .line 460
    :goto_25
    move-object v8, v12

    .local v7, "invalid$iv":Z
    .local v8, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 834
    .local v17, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 835
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_37

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v7

    .end local v7    # "invalid$iv":Z
    .local p6, "invalid$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v9, v7, :cond_36

    goto :goto_26

    .line 839
    :cond_36
    move-object v7, v9

    goto :goto_27

    .line 835
    .end local p6    # "invalid$iv":Z
    .restart local v7    # "invalid$iv":Z
    :cond_37
    move/from16 p6, v7

    .line 836
    .end local v7    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    :goto_26
    const/4 v7, 0x0

    .line 460
    .local v7, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$2":I
    move/from16 p7, v7

    .end local v7    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$2":I
    .local p7, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$2":I
    new-instance v7, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$2$1;

    invoke-direct {v7, v3}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$2$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 836
    .end local p7    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$2":I
    nop

    .line 837
    .local v7, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 838
    nop

    .line 835
    .end local v7    # "value$iv":Ljava/lang/Object;
    :goto_27
    nop

    .line 834
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 460
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v2, v7}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->onFocusChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 461
    const v7, 0x1b923afc

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    and-int/lit16 v8, v4, 0x1c00

    const/16 v9, 0x800

    if-ne v8, v9, :cond_38

    const/4 v8, 0x1

    goto :goto_28

    :cond_38
    const/4 v8, 0x0

    :goto_28
    or-int/2addr v7, v8

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    .local v7, "invalid$iv":Z
    move-object v8, v12

    .restart local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 840
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 841
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v7, :cond_3a

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p6, v7

    .end local v7    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v3, v7, :cond_39

    goto :goto_29

    .line 845
    :cond_39
    move-object/from16 p7, v3

    goto :goto_2a

    .line 841
    .end local p6    # "invalid$iv":Z
    .restart local v7    # "invalid$iv":Z
    :cond_3a
    move/from16 p6, v7

    .line 842
    .end local v7    # "invalid$iv":Z
    .restart local p6    # "invalid$iv":Z
    :goto_29
    const/4 v7, 0x0

    .line 461
    .local v7, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$3":I
    move-object/from16 p7, v3

    .end local v3    # "it$iv":Ljava/lang/Object;
    .local p7, "it$iv":Ljava/lang/Object;
    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$3$1;

    invoke-direct {v3, v11, v5, v10, v14}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$3$1;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroidx/compose/ui/focus/FocusRequester;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 842
    .end local v7    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$3":I
    nop

    .line 843
    .local v3, "value$iv":Ljava/lang/Object;
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 844
    nop

    .line 841
    .end local v3    # "value$iv":Ljava/lang/Object;
    :goto_2a
    nop

    .line 840
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local p7    # "it$iv":Ljava/lang/Object;
    nop

    .line 461
    .end local v8    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    .end local p6    # "invalid$iv":Z
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v2, v8, v3, v9, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 473
    invoke-static {}, Landroidx/compose/material3/TextKt;->getLocalTextStyle()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/4 v7, 0x6

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .line 846
    .local v8, "$i$f$getCurrent":I
    const v9, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v12, v9, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v7    # "$changed$iv":I
    .end local v8    # "$i$f$getCurrent":I
    check-cast v5, Landroidx/compose/ui/text/TextStyle;

    .line 473
    new-instance v3, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v48, v3

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-wide/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-wide/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const v78, 0xfffffe

    const/16 v79, 0x0

    invoke-direct/range {v48 .. v79}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    .line 474
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    shl-int/lit8 v7, v15, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/lit8 v7, v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v12, v7}, Landroidx/compose/material3/TextFieldColors;->cursorColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v7

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v8

    const/4 v7, 0x0

    invoke-direct {v3, v8, v9, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 475
    new-instance v33, Landroidx/compose/foundation/text/KeyboardOptions;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget-object v7, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v29

    const/16 v30, 0x0

    const/16 v31, 0x17

    const/16 v32, 0x0

    move-object/from16 v25, v33

    invoke-direct/range {v25 .. v32}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(IZIILandroidx/compose/ui/text/input/PlatformImeOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 476
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v7, 0x1b923d7f

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v12, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit16 v0, v4, 0x380

    const/16 v7, 0x100

    if-ne v0, v7, :cond_3b

    const/4 v8, 0x1

    goto :goto_2b

    :cond_3b
    const/4 v8, 0x0

    :goto_2b
    and-int/lit8 v0, v4, 0xe

    const/4 v7, 0x4

    if-ne v0, v7, :cond_3c

    const/4 v7, 0x1

    goto :goto_2c

    :cond_3c
    const/4 v7, 0x0

    :goto_2c
    or-int v0, v8, v7

    .local v0, "invalid$iv":Z
    move-object v7, v12

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 847
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 848
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_3e

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p5, v0

    .end local v0    # "invalid$iv":Z
    .local p5, "invalid$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v9, v0, :cond_3d

    goto :goto_2d

    .line 852
    :cond_3d
    move-object v0, v9

    goto :goto_2e

    .line 848
    .end local p5    # "invalid$iv":Z
    .restart local v0    # "invalid$iv":Z
    :cond_3e
    move/from16 p5, v0

    .line 849
    .end local v0    # "invalid$iv":Z
    .restart local p5    # "invalid$iv":Z
    :goto_2d
    const/4 v0, 0x0

    .line 476
    .local v0, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$4":I
    move/from16 p6, v0

    .end local v0    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$4":I
    .local p6, "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$4":I
    new-instance v0, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$4$1;

    invoke-direct {v0, v6, v13}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$4$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 849
    .end local p6    # "$i$a$-cache-SearchBar_androidKt$SearchBarInputField$4":I
    nop

    .line 850
    .local v0, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 851
    nop

    .line 848
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_2e
    nop

    .line 847
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 476
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    .end local p5    # "invalid$iv":Z
    move-object/from16 v39, v0

    check-cast v39, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v40, 0x0

    const/16 v41, 0x2f

    const/16 v42, 0x0

    new-instance v34, Landroidx/compose/foundation/text/KeyboardActions;

    move-object/from16 v7, v34

    invoke-direct/range {v34 .. v42}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 454
    nop

    .line 455
    nop

    .line 461
    nop

    .line 471
    const/4 v0, 0x0

    move/from16 v25, v4

    .end local v4    # "$dirty":I
    .local v25, "$dirty":I
    move v4, v0

    .line 473
    nop

    .line 475
    nop

    .line 476
    nop

    .line 472
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x1

    const/16 v17, 0x0

    move-object/from16 v24, v10

    .end local v10    # "suggestionsAvailableSemantics":Ljava/lang/String;
    .local v24, "suggestionsAvailableSemantics":Ljava/lang/String;
    move/from16 v10, v17

    const/16 v17, 0x0

    move-object/from16 v26, v11

    .end local v11    # "searchSemantics":Ljava/lang/String;
    .local v26, "searchSemantics":Ljava/lang/String;
    move-object/from16 v11, v17

    move-object v4, v12

    .end local v12    # "$composer":Landroidx/compose/runtime/Composer;
    .local v4, "$composer":Landroidx/compose/runtime/Composer;
    move-object/from16 v12, v17

    .line 477
    nop

    .line 474
    check-cast v3, Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v28, v14

    .end local v14    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .local v28, "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    move-object v14, v3

    .line 478
    new-instance v3, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$5;

    move-object/from16 p5, v3

    move-object/from16 p6, p0

    move/from16 p7, v47

    move-object/from16 p8, v23

    move-object/from16 p9, v20

    move-object/from16 p10, v21

    move-object/from16 p11, v22

    move-object/from16 p12, v1

    invoke-direct/range {p5 .. p12}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$5;-><init>(Ljava/lang/String;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;)V

    const v8, -0x38bc0041

    invoke-static {v4, v8, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move/from16 v29, v15

    .end local v15    # "$dirty1":I
    .local v29, "$dirty1":I
    move-object v15, v0

    and-int/lit8 v0, v25, 0xe

    const/high16 v3, 0x6180000

    or-int/2addr v0, v3

    and-int/lit8 v3, v25, 0x70

    or-int/2addr v0, v3

    shr-int/lit8 v3, v25, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int v17, v0, v3

    shl-int/lit8 v0, v29, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int v18, v0, v46

    const/16 v19, 0x1e10

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v30, v1

    .end local v1    # "colors":Landroidx/compose/material3/TextFieldColors;
    .local v30, "colors":Landroidx/compose/material3/TextFieldColors;
    move-object/from16 v1, p1

    move-object/from16 v31, v16

    .end local v16    # "modifier":Landroidx/compose/ui/Modifier;
    .local v31, "modifier":Landroidx/compose/ui/Modifier;
    move/from16 v3, v47

    move-object/from16 v6, v33

    move-object/from16 v13, v23

    move-object/from16 v16, v4

    move-object/from16 v27, v4

    const/4 v4, 0x0

    const/4 v8, 0x1

    .end local v4    # "$composer":Landroidx/compose/runtime/Composer;
    .local v27, "$composer":Landroidx/compose/runtime/Composer;
    invoke-static/range {v0 .. v19}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 500
    .end local v24    # "suggestionsAvailableSemantics":Ljava/lang/String;
    .end local v26    # "searchSemantics":Ljava/lang/String;
    .end local v28    # "focusRequester":Landroidx/compose/ui/focus/FocusRequester;
    .end local v49    # "textColor":J
    :cond_3f
    :goto_2f
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_40

    new-instance v16, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, v31

    move/from16 v7, v47

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v30

    move-object/from16 v12, v23

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v80, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/SearchBar_androidKt$SearchBarInputField$6;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v80

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_40
    return-void
.end method

.method private static final SearchBar_WuY5d9Q$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 4
    .param p0, "$useFullScreenShape$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 853
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 189
    return v0
.end method

.method public static final synthetic access$SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
    .locals 0
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "onQueryChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "onSearch"    # Lkotlin/jvm/functions/Function1;
    .param p3, "active"    # Z
    .param p4, "onActiveChange"    # Lkotlin/jvm/functions/Function1;
    .param p5, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p6, "enabled"    # Z
    .param p7, "placeholder"    # Lkotlin/jvm/functions/Function2;
    .param p8, "leadingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p9, "trailingIcon"    # Lkotlin/jvm/functions/Function2;
    .param p10, "colors"    # Landroidx/compose/material3/TextFieldColors;
    .param p11, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p12, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p13, "$changed"    # I
    .param p14, "$changed1"    # I
    .param p15, "$default"    # I

    .line 1
    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public static final synthetic access$getDockedEnterTransition$p()Landroidx/compose/animation/EnterTransition;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedEnterTransition:Landroidx/compose/animation/EnterTransition;

    return-object v0
.end method

.method public static final synthetic access$getDockedExitTransition$p()Landroidx/compose/animation/ExitTransition;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedExitTransition:Landroidx/compose/animation/ExitTransition;

    return-object v0
.end method

.method public static final synthetic access$getSearchBarCornerRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarCornerRadius:F

    return v0
.end method

.method public static final synthetic access$getSearchBarIconOffsetX$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarIconOffsetX:F

    return v0
.end method

.method public static final synthetic access$getSearchBarMaxWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMaxWidth:F

    return v0
.end method

.method public static final getDockedActiveTableMinHeight()F
    .locals 1

    .line 703
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->DockedActiveTableMinHeight:F

    return v0
.end method

.method private static synthetic getSearchBarCornerRadius$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSearchBarMinWidth()F
    .locals 1

    .line 705
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarMinWidth:F

    return v0
.end method

.method public static final getSearchBarVerticalPadding()F
    .locals 1

    .line 707
    sget v0, Landroidx/compose/material3/SearchBar_androidKt;->SearchBarVerticalPadding:F

    return v0
.end method
