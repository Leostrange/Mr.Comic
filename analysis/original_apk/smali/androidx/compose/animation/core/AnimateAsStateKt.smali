.class public final Landroidx/compose/animation/core/AnimateAsStateKt;
.super Ljava/lang/Object;
.source "AnimateAsState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimateAsState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,584:1\n36#2:585\n25#2:592\n25#2:599\n25#2:606\n25#2:613\n25#2:620\n1116#3,6:586\n1116#3,6:593\n1116#3,6:600\n1116#3,6:607\n1116#3,6:614\n1116#3,6:621\n81#4:627\n81#4:628\n*S KotlinDebug\n*F\n+ 1 AnimateAsState.kt\nandroidx/compose/animation/core/AnimateAsStateKt\n*L\n72#1:585\n394#1:592\n400#1:599\n401#1:606\n414#1:613\n573#1:620\n72#1:586,6\n394#1:593,6\n400#1:600,6\n401#1:607,6\n414#1:614,6\n573#1:621,6\n402#1:627\n403#1:628\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aH\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001aR\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001aM\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00022\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010!\u001aW\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00152\u0008\u0008\u0002\u0010 \u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010\"\u001aC\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010$\u001aM\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010%\u001aH\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\u001aR\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00122\u0006\u0010\u0013\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008)\u0010*\u001aH\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008,\u0010(\u001aR\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008-\u0010*\u001aH\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008/\u0010(\u001aR\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00122\u0006\u0010\u0013\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00080\u0010*\u001aC\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u00102\u001aM\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u00103\u001aH\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00152\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u0010(\u001aR\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00122\u0006\u0010\u0013\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00152\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0004\u00086\u0010*\u001as\u00107\u001a\u0008\u0012\u0004\u0012\u0002H80\u0012\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:2\u0006\u0010\u0013\u001a\u0002H82\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H90<2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H80\u00152\n\u0008\u0002\u0010 \u001a\u0004\u0018\u0001H82\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010=\u001a}\u00107\u001a\u0008\u0012\u0004\u0012\u0002H80\u0012\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:2\u0006\u0010\u0013\u001a\u0002H82\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u0002H90<2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H80\u00152\n\u0008\u0002\u0010 \u001a\u0004\u0018\u0001H82\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0016\u0008\u0002\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007\u00a2\u0006\u0002\u0010>\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006?\u00b2\u0006(\u0010@\u001a\u0010\u0012\u0004\u0012\u0002H8\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:X\u008a\u0084\u0002\u00b2\u0006 \u0010A\u001a\u0008\u0012\u0004\u0012\u0002H80\u0015\"\u0004\u0008\u0000\u00108\"\u0008\u0008\u0001\u00109*\u00020:X\u008a\u0084\u0002"
    }
    d2 = {
        "defaultAnimation",
        "Landroidx/compose/animation/core/SpringSpec;",
        "",
        "dpDefaultSpring",
        "Landroidx/compose/ui/unit/Dp;",
        "intDefaultSpring",
        "",
        "intOffsetDefaultSpring",
        "Landroidx/compose/ui/unit/IntOffset;",
        "intSizeDefaultSpring",
        "Landroidx/compose/ui/unit/IntSize;",
        "offsetDefaultSpring",
        "Landroidx/compose/ui/geometry/Offset;",
        "rectDefaultSpring",
        "Landroidx/compose/ui/geometry/Rect;",
        "sizeDefaultSpring",
        "Landroidx/compose/ui/geometry/Size;",
        "animateDpAsState",
        "Landroidx/compose/runtime/State;",
        "targetValue",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "finishedListener",
        "Lkotlin/Function1;",
        "",
        "animateDpAsState-Kz89ssw",
        "(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "label",
        "",
        "animateDpAsState-AjpBEmI",
        "(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateFloatAsState",
        "visibilityThreshold",
        "(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntAsState",
        "(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(ILandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntOffsetAsState",
        "animateIntOffsetAsState-8f6pmRE",
        "(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntOffsetAsState-HyPO7BM",
        "(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateIntSizeAsState",
        "animateIntSizeAsState-zTRF_AQ",
        "animateIntSizeAsState-4goxYXU",
        "animateOffsetAsState",
        "animateOffsetAsState-N6fFfp4",
        "animateOffsetAsState-7362WCg",
        "animateRectAsState",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateSizeAsState",
        "animateSizeAsState-LjSzlW0",
        "animateSizeAsState-YLp_XPw",
        "animateValueAsState",
        "T",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animation-core_release",
        "listener",
        "animSpec"
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
.field private static final defaultAnimation:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field private static final rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v1, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    .line 124
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/Dp$Companion;)F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 165
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Size$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 205
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Offset$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 246
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 284
    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Lkotlin/jvm/internal/IntCompanionObject;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 324
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 362
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    invoke-static {v1, v1, v0, v3, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final synthetic access$animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$listener$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p0, "$animSpec$delegate"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method public static final animateDpAsState-AjpBEmI(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # F
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, -0x53df67ee

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateDpAsState)P(3:c#ui.unit.Dp!1,2)114@5081L165:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p1

    .line 111
    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "DpAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 112
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x0

    move-object v13, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 112
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p3

    .line 113
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateDpAsState (AnimateAsState.kt:113)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 116
    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    .line 117
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 118
    const/4 v3, 0x0

    .line 119
    nop

    .line 120
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 115
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateDpAsState-Kz89ssw(FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .param p0, "targetValue"    # F
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, 0x29f7c821

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateDpAsState)P(2:c#ui.unit.Dp)463@20491L142:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 461
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 462
    const/4 p2, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 463
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.animateDpAsState (AnimateAsState.kt:462)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 465
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v1

    .line 466
    sget-object p5, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p5}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    .line 467
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 468
    and-int/lit8 p5, p4, 0xe

    shl-int/lit8 v0, p4, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr p5, v0

    shl-int/lit8 v0, p4, 0x9

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    or-int v8, p5, v0

    const/16 v9, 0x18

    .line 464
    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 16
    .param p0, "targetValue"    # F
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "visibilityThreshold"    # F
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;F",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, 0x27ddbb58

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateFloatAsState)P(3!1,4,2)75@3368L173:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p1

    .line 65
    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 66
    const v1, 0x3c23d70a    # 0.01f

    move v12, v1

    .end local p2    # "visibilityThreshold":F
    .local v1, "visibilityThreshold":F
    goto :goto_1

    .line 65
    .end local v1    # "visibilityThreshold":F
    .restart local p2    # "visibilityThreshold":F
    :cond_1
    move/from16 v12, p2

    .line 66
    .end local p2    # "visibilityThreshold":F
    .local v12, "visibilityThreshold":F
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "FloatAnimation"

    move-object v13, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_2

    .line 66
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_2
    move-object/from16 v13, p3

    .line 67
    .end local p3    # "label":Ljava/lang/String;
    .local v13, "label":Ljava/lang/String;
    :goto_2
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_3

    .line 68
    const/4 v1, 0x0

    move-object v14, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_3

    .line 67
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_3
    move-object/from16 v14, p4

    .line 68
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v14, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateFloatAsState (AnimateAsState.kt:68)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const v0, 0x3226a5fe

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "71@3220L83"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 71
    sget-object v0, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    if-ne v11, v0, :cond_7

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    shr-int/lit8 v1, v10, 0x6

    and-int/lit8 v1, v1, 0xe

    .line 72
    nop

    .local v0, "key1$iv":Ljava/lang/Object;
    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, 0x44faf204

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 585
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "invalid$iv$iv":Z
    move-object/from16 v4, p5

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 586
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 587
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v3, :cond_6

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_5

    goto :goto_4

    .line 591
    :cond_5
    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move-object v0, v6

    goto :goto_5

    .line 588
    :cond_6
    :goto_4
    const/4 v8, 0x0

    .line 72
    .local v8, "$i$a$-remember-AnimateAsStateKt$animateFloatAsState$resolvedAnimSpec$1":I
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 p1, v0

    .end local v0    # "key1$iv":Ljava/lang/Object;
    .local p1, "key1$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    move/from16 p2, v1

    .end local v1    # "$changed$iv":I
    .local p2, "$changed$iv":I
    const/4 v1, 0x0

    move/from16 p3, v2

    .end local v2    # "$i$f$remember":I
    .local p3, "$i$f$remember":I
    const/4 v2, 0x3

    invoke-static {v1, v1, v15, v2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    .line 588
    .end local v8    # "$i$a$-remember-AnimateAsStateKt$animateFloatAsState$resolvedAnimSpec$1":I
    nop

    .line 589
    .local v0, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 590
    nop

    .line 587
    .end local v0    # "value$iv$iv":Ljava/lang/Object;
    :goto_5
    nop

    .line 586
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 585
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local p1    # "key1$iv":Ljava/lang/Object;
    .end local p2    # "$changed$iv":I
    .end local p3    # "$i$f$remember":I
    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    move-object v2, v0

    goto :goto_6

    .line 74
    :cond_7
    move-object v2, v11

    .line 71
    :goto_6
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    nop

    .line 77
    .local v2, "resolvedAnimSpec":Landroidx/compose/animation/core/AnimationSpec;
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 78
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 79
    nop

    .line 80
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 81
    nop

    .line 82
    and-int/lit8 v4, v10, 0xe

    shl-int/lit8 v5, v10, 0x3

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v4, v5

    shl-int/lit8 v5, v10, 0x3

    const v6, 0xe000

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    shl-int/lit8 v5, v10, 0x3

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int v7, v4, v5

    const/4 v8, 0x0

    .line 76
    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 9
    .param p0, "targetValue"    # F
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "visibilityThreshold"    # F
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, 0x4111279b

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateFloatAsState)P(2!1,3)446@20047L143:AnimateAsState.kt#pdpnli"

    invoke-static {p4, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->defaultAnimation:Landroidx/compose/animation/core/SpringSpec;

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 445
    const p2, 0x3c23d70a    # 0.01f

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 446
    const/4 p3, 0x0

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_3

    .line 447
    const/4 p6, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.animateFloatAsState (AnimateAsState.kt:446)"

    invoke-static {v0, p5, p6, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 448
    :cond_3
    nop

    .line 449
    nop

    .line 450
    const/4 v4, 0x0

    .line 451
    and-int/lit8 p6, p5, 0xe

    and-int/lit8 v0, p5, 0x70

    or-int/2addr p6, v0

    and-int/lit16 v0, p5, 0x380

    or-int/2addr p6, v0

    shl-int/lit8 v0, p5, 0x3

    const v1, 0xe000

    and-int/2addr v0, v1

    or-int v7, p6, v0

    const/16 v8, 0x8

    .line 447
    move v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLjava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p6
.end method

.method public static final animateIntAsState(ILandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # I
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, 0x1983e5e8

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntAsState)P(3!1,2)274@12363L166:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p1

    .line 271
    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "IntAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 271
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 272
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2

    .line 273
    const/4 v1, 0x0

    move-object v13, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 272
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p3

    .line 273
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateIntAsState (AnimateAsState.kt:273)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 276
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 277
    sget-object v1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 278
    const/4 v3, 0x0

    .line 279
    nop

    .line 280
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 275
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateIntAsState(ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .param p0, "targetValue"    # I
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, -0x323940f5    # -4.1680112E8f

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntAsState)P(2)529@22285L119:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 527
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 528
    const/4 p2, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 529
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.animateIntAsState (AnimateAsState.kt:528)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 531
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object p5, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {p5}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 p5, p4, 0xe

    shl-int/lit8 v0, p4, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr p5, v0

    shl-int/lit8 v0, p4, 0x9

    const/high16 v3, 0x70000

    and-int/2addr v0, v3

    or-int v8, p5, v0

    const/16 v9, 0x18

    .line 530
    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final synthetic animateIntOffsetAsState-8f6pmRE(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 13
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, 0x3c38112b

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntOffsetAsState)P(2:c#ui.unit.IntOffset)544@22749L125:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 542
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p2

    .line 542
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 543
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 542
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v12, p3

    .line 543
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v12, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateIntOffsetAsState (AnimateAsState.kt:543)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 546
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v5, v10, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    shl-int/lit8 v5, v10, 0x9

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int v7, v2, v5

    const/16 v8, 0x18

    .line 545
    move-object v2, v11

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateIntOffsetAsState-HyPO7BM(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntOffset;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, -0x29881038

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntOffsetAsState)P(3:c#ui.unit.IntOffset!1,2)314@14224L172:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 311
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intOffsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p2

    .line 311
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "IntOffsetAnimation"

    move-object v12, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 311
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p3

    .line 312
    .end local p3    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 313
    const/4 v1, 0x0

    move-object v13, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 312
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p4

    .line 313
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateIntOffsetAsState (AnimateAsState.kt:313)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 316
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v0

    .line 317
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 318
    const/4 v3, 0x0

    .line 319
    nop

    .line 320
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 315
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateIntSizeAsState-4goxYXU(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, 0x22b968c8

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntSizeAsState)P(3:c#ui.unit.IntSize!1,2)352@16009L170:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p2

    .line 349
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 350
    const-string v1, "IntSizeAnimation"

    move-object v12, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 349
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p3

    .line 350
    .end local p3    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 351
    const/4 v1, 0x0

    move-object v13, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 350
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p4

    .line 351
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateIntSizeAsState (AnimateAsState.kt:351)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 354
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    .line 355
    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 356
    const/4 v3, 0x0

    .line 357
    nop

    .line 358
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 353
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateIntSizeAsState-zTRF_AQ(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 13
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, -0x684347d5

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateIntSizeAsState)P(2:c#ui.unit.IntSize)559@23207L123:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 557
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->intSizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p2

    .line 557
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 558
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 557
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v12, p3

    .line 558
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v12, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateIntSizeAsState (AnimateAsState.kt:558)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 561
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v5, v10, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    shl-int/lit8 v5, v10, 0x9

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int v7, v2, v5

    const/16 v8, 0x18

    .line 560
    move-object v2, v11

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateOffsetAsState-7362WCg(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, 0x15551260

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateOffsetAsState)P(3:c#ui.geometry.Offset!1,2)195@8761L169:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p2

    .line 192
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 193
    const-string/jumbo v1, "OffsetAnimation"

    move-object v12, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p3

    .line 193
    .end local p3    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 194
    const/4 v1, 0x0

    move-object v13, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 193
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p4

    .line 194
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateOffsetAsState (AnimateAsState.kt:194)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 197
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    .line 198
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 199
    const/4 v3, 0x0

    .line 200
    nop

    .line 201
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 196
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateOffsetAsState-N6fFfp4(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 13
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, -0x1b35d66d

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateOffsetAsState)P(2:c#ui.geometry.Offset)499@21419L122:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 497
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->offsetDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p2

    .line 497
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 498
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 497
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v12, p3

    .line 498
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v12, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateOffsetAsState (AnimateAsState.kt:498)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 501
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v5, v10, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    shl-int/lit8 v5, v10, 0x9

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int v7, v2, v5

    const/16 v8, 0x18

    .line 500
    move-object v2, v11

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateRectAsState(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, 0x1ff3ac02

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateRectAsState)P(3!1,2)236@10633L167:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p1

    .line 233
    .end local p1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 234
    const-string/jumbo v1, "RectAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 233
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 234
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_2

    .line 235
    const/4 v1, 0x0

    move-object v13, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 234
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p3

    .line 235
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateRectAsState (AnimateAsState.kt:235)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 238
    :cond_3
    nop

    .line 239
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 240
    const/4 v3, 0x0

    .line 241
    nop

    .line 242
    and-int/lit8 v0, v10, 0xe

    shl-int/lit8 v2, v10, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v0, v2

    shl-int/lit8 v2, v10, 0x6

    const v4, 0xe000

    and-int/2addr v2, v4

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    shl-int/lit8 v4, v10, 0x6

    and-int/2addr v2, v4

    or-int v7, v0, v2

    const/16 v8, 0x8

    .line 237
    move-object v0, p0

    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final synthetic animateRectAsState(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 10
    .param p0, "targetValue"    # Landroidx/compose/ui/geometry/Rect;
    .param p1, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p2, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    const v0, -0x2ea5bdcf

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateRectAsState)P(2)514@21856L120:AnimateAsState.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 512
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->rectDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    move-object p1, v1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 513
    const/4 p2, 0x0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 514
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.animateRectAsState (AnimateAsState.kt:513)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 516
    :cond_2
    sget-object p5, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {p5}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    and-int/lit8 p5, p4, 0xe

    shl-int/lit8 v0, p4, 0x3

    and-int/lit16 v0, v0, 0x380

    or-int/2addr p5, v0

    shl-int/lit8 v0, p4, 0x9

    const/high16 v1, 0x70000

    and-int/2addr v0, v1

    or-int v8, p5, v0

    const/16 v9, 0x18

    .line 515
    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method public static final synthetic animateSizeAsState-LjSzlW0(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 13
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object/from16 v9, p4

    move/from16 v10, p5

    const v0, 0x342aaeb7

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateSizeAsState)P(2:c#ui.geometry.Size)481@20948L144:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_0

    .line 479
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object v11, p2

    .line 479
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_1

    .line 480
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_1

    .line 479
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_1
    move-object/from16 v12, p3

    .line 480
    .end local p3    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v12, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateSizeAsState (AnimateAsState.kt:480)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 483
    :cond_2
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    .line 484
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 485
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 486
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v5, v10, 0x3

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    shl-int/lit8 v5, v10, 0x9

    const/high16 v6, 0x70000

    and-int/2addr v5, v6

    or-int v7, v2, v5

    const/16 v8, 0x18

    .line 482
    move-object v2, v11

    move-object v5, v12

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateSizeAsState-YLp_XPw(JLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # J
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, 0x51ef3cbc

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateSizeAsState)P(3:c#ui.geometry.Size!1,2)155@6928L167:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Landroidx/compose/animation/core/AnimateAsStateKt;->sizeDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_0

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_0
    move-object/from16 v11, p2

    .line 152
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 153
    const-string/jumbo v1, "SizeAnimation"

    move-object v12, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p3

    .line 153
    .end local p3    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 154
    const/4 v1, 0x0

    move-object v13, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_2

    .line 153
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_2
    move-object/from16 v13, p4

    .line 154
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateSizeAsState (AnimateAsState.kt:154)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 157
    :cond_3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    .line 158
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v1

    .line 159
    const/4 v3, 0x0

    .line 160
    nop

    .line 161
    and-int/lit8 v2, v10, 0xe

    shl-int/lit8 v4, v10, 0x3

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x6

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/high16 v4, 0x70000

    shl-int/lit8 v5, v10, 0x6

    and-int/2addr v4, v5

    or-int v7, v2, v4

    const/16 v8, 0x8

    .line 156
    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 26
    .param p0, "targetValue"    # Ljava/lang/Object;
    .param p1, "typeConverter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "visibilityThreshold"    # Ljava/lang/Object;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(TT;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    const v3, -0x76dfbb5c

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "C(animateValueAsState)P(3,4!1,5,2)393@18031L21,399@18213L44,400@18279L79,401@18379L38,402@18456L339,413@18814L42,414@18861L55,417@18921L721:AnimateAsState.kt#pdpnli"

    invoke-static {v1, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, p8, 0x4

    const-string v5, "CC(remember):Composables.kt#9igjgp"

    const v6, -0x1d58f75c

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 394
    const/4 v4, 0x0

    .local v4, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$remember":I
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 592
    const/4 v9, 0x0

    .local v9, "invalid$iv$iv":Z
    move-object/from16 v10, p6

    .local v10, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v11, 0x0

    .line 593
    .local v11, "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 594
    .local v13, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v14

    if-ne v12, v14, :cond_0

    .line 595
    const/4 v14, 0x0

    .line 394
    .local v14, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$1":I
    const/4 v15, 0x7

    const/4 v6, 0x0

    invoke-static {v6, v6, v7, v15, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v6

    .line 595
    .end local v14    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$1":I
    nop

    .line 596
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 597
    nop

    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 598
    :cond_0
    move-object v6, v12

    .line 594
    :goto_0
    nop

    .line 593
    .end local v12    # "it$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 592
    .end local v9    # "invalid$iv$iv":Z
    .end local v10    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v4    # "$changed$iv":I
    .end local v8    # "$i$f$remember":I
    move-object v4, v6

    check-cast v4, Landroidx/compose/animation/core/AnimationSpec;

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v4, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_1

    .line 0
    .end local v4    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_1
    move-object/from16 v4, p2

    .line 592
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local v4    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_1
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_2

    .line 395
    const/4 v6, 0x0

    .end local p3    # "visibilityThreshold":Ljava/lang/Object;
    .local v6, "visibilityThreshold":Ljava/lang/Object;
    goto :goto_2

    .line 592
    .end local v6    # "visibilityThreshold":Ljava/lang/Object;
    .restart local p3    # "visibilityThreshold":Ljava/lang/Object;
    :cond_2
    move-object/from16 v6, p3

    .line 395
    .end local p3    # "visibilityThreshold":Ljava/lang/Object;
    .restart local v6    # "visibilityThreshold":Ljava/lang/Object;
    :goto_2
    and-int/lit8 v8, p8, 0x10

    if-eqz v8, :cond_3

    .line 396
    const-string/jumbo v8, "ValueAnimation"

    .end local p4    # "label":Ljava/lang/String;
    .local v8, "label":Ljava/lang/String;
    goto :goto_3

    .line 395
    .end local v8    # "label":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    :cond_3
    move-object/from16 v8, p4

    .line 396
    .end local p4    # "label":Ljava/lang/String;
    .restart local v8    # "label":Ljava/lang/String;
    :goto_3
    and-int/lit8 v9, p8, 0x20

    if-eqz v9, :cond_4

    .line 397
    const/4 v9, 0x0

    .end local p5    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v9, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_4

    .line 396
    .end local v9    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p5    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_4
    move-object/from16 v9, p5

    .line 397
    .end local p5    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local v9    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_5

    .line 398
    const-string/jumbo v10, "androidx.compose.animation.core.animateValueAsState (AnimateAsState.kt:397)"

    invoke-static {v3, v2, v11, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_5
    nop

    .line 400
    const/4 v3, 0x0

    move v10, v3

    .local v10, "$changed$iv":I
    const/4 v12, 0x0

    const v13, -0x1d58f75c

    .local v12, "$i$f$remember":I
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 599
    const/4 v13, 0x0

    .local v13, "invalid$iv$iv":Z
    move-object/from16 v14, p6

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 600
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 601
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v11, v3, :cond_6

    .line 602
    const/4 v3, 0x0

    .line 400
    .local v3, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$toolingOverride$1":I
    move/from16 p4, v3

    .end local v3    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$toolingOverride$1":I
    .local p4, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$toolingOverride$1":I
    const/4 v3, 0x2

    invoke-static {v7, v7, v3, v7}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 602
    .end local p4    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$toolingOverride$1":I
    nop

    .line 603
    .local v3, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 604
    nop

    .end local v3    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_5

    .line 605
    :cond_6
    move-object v3, v11

    .line 601
    :goto_5
    nop

    .line 600
    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 599
    .end local v13    # "invalid$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 400
    .end local v10    # "$changed$iv":I
    .end local v12    # "$i$f$remember":I
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 401
    .local v3, "toolingOverride":Landroidx/compose/runtime/MutableState;
    const/4 v10, 0x0

    move v11, v10

    .local v11, "$changed$iv":I
    const/4 v10, 0x0

    const v12, -0x1d58f75c

    .local v10, "$i$f$remember":I
    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 606
    const/4 v12, 0x0

    .local v12, "invalid$iv$iv":Z
    move-object/from16 v13, p6

    .local v13, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v14, 0x0

    .line 607
    .local v14, "$i$f$cache":I
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    .local v15, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 608
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v15, v7, :cond_7

    .line 609
    const/4 v7, 0x0

    .line 401
    .local v7, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$animatable$1":I
    move/from16 p4, v7

    .end local v7    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$animatable$1":I
    .local p4, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$animatable$1":I
    new-instance v7, Landroidx/compose/animation/core/Animatable;

    move/from16 p5, v10

    move-object/from16 v10, p1

    .end local v10    # "$i$f$remember":I
    .local p5, "$i$f$remember":I
    invoke-direct {v7, v0, v10, v6, v8}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    .end local p4    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$animatable$1":I
    nop

    .line 610
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 611
    nop

    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_6

    .line 612
    .end local p5    # "$i$f$remember":I
    .restart local v10    # "$i$f$remember":I
    :cond_7
    move/from16 p5, v10

    move-object/from16 v10, p1

    .end local v10    # "$i$f$remember":I
    .restart local p5    # "$i$f$remember":I
    move-object v7, v15

    .line 608
    :goto_6
    nop

    .line 607
    .end local v15    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 606
    .end local v12    # "invalid$iv$iv":Z
    .end local v13    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v14    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 401
    .end local v11    # "$changed$iv":I
    .end local p5    # "$i$f$remember":I
    check-cast v7, Landroidx/compose/animation/core/Animatable;

    .line 402
    .local v7, "animatable":Landroidx/compose/animation/core/Animatable;
    shr-int/lit8 v11, v2, 0xf

    and-int/lit8 v11, v11, 0xe

    invoke-static {v9, v1, v11}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v11

    .line 404
    .local v11, "listener$delegate":Landroidx/compose/runtime/State;
    move-object v12, v4

    .local v12, "$this$animateValueAsState_u24lambda_u245":Landroidx/compose/animation/core/AnimationSpec;
    const/4 v13, 0x0

    .line 405
    .local v13, "$i$a$-run-AnimateAsStateKt$animateValueAsState$animSpec$2":I
    if-eqz v6, :cond_8

    instance-of v14, v12, Landroidx/compose/animation/core/SpringSpec;

    if-eqz v14, :cond_8

    .line 406
    move-object v14, v12

    check-cast v14, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v14}, Landroidx/compose/animation/core/SpringSpec;->getVisibilityThreshold()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 408
    move-object v14, v12

    check-cast v14, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v14}, Landroidx/compose/animation/core/SpringSpec;->getDampingRatio()F

    move-result v14

    move-object v15, v12

    check-cast v15, Landroidx/compose/animation/core/SpringSpec;

    invoke-virtual {v15}, Landroidx/compose/animation/core/SpringSpec;->getStiffness()F

    move-result v15

    invoke-static {v14, v15, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->spring(FFLjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v14

    check-cast v14, Landroidx/compose/animation/core/AnimationSpec;

    goto :goto_7

    .line 410
    :cond_8
    move-object v14, v12

    .line 405
    :goto_7
    nop

    .line 404
    .end local v12    # "$this$animateValueAsState_u24lambda_u245":Landroidx/compose/animation/core/AnimationSpec;
    .end local v13    # "$i$a$-run-AnimateAsStateKt$animateValueAsState$animSpec$2":I
    nop

    .line 403
    const/4 v12, 0x0

    invoke-static {v14, v1, v12}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v13

    .line 414
    .local v13, "animSpec$delegate":Landroidx/compose/runtime/State;
    move v14, v12

    .local v14, "$changed$iv":I
    const/4 v12, 0x0

    const v15, -0x1d58f75c

    .local v12, "$i$f$remember":I
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 613
    const/4 v5, 0x0

    .local v5, "invalid$iv$iv":Z
    move-object/from16 v15, p6

    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 614
    .local v16, "$i$f$cache":I
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 615
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v25, v4

    .end local v4    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v25, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_9

    .line 616
    const/4 v4, 0x0

    .line 414
    .local v4, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$channel$1":I
    move-object/from16 p4, v2

    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x6

    move/from16 p5, v4

    move/from16 p2, v5

    const/4 v4, -0x1

    const/4 v5, 0x0

    .end local v4    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$channel$1":I
    .end local v5    # "invalid$iv$iv":Z
    .local p2, "invalid$iv$iv":Z
    .local p5, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$channel$1":I
    invoke-static {v4, v5, v5, v2, v5}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v2

    .line 616
    .end local p5    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$channel$1":I
    nop

    .line 617
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 618
    nop

    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 619
    .end local p2    # "invalid$iv$iv":Z
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    .local v2, "it$iv$iv":Ljava/lang/Object;
    .restart local v5    # "invalid$iv$iv":Z
    :cond_9
    move-object/from16 p4, v2

    move/from16 p2, v5

    .line 615
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "invalid$iv$iv":Z
    .restart local p2    # "invalid$iv$iv":Z
    .restart local p4    # "it$iv$iv":Ljava/lang/Object;
    :goto_8
    nop

    .line 614
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 613
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv":Z
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 414
    .end local v12    # "$i$f$remember":I
    .end local v14    # "$changed$iv":I
    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    .line 415
    .local v2, "channel":Lkotlinx/coroutines/channels/Channel;
    new-instance v4, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;

    invoke-direct {v4, v2, v0}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$2;-><init>(Lkotlinx/coroutines/channels/Channel;Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 418
    new-instance v4, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;

    const/16 v24, 0x0

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move-object/from16 v23, v11

    invoke-direct/range {v19 .. v24}, Landroidx/compose/animation/core/AnimateAsStateKt$animateValueAsState$3;-><init>(Lkotlinx/coroutines/channels/Channel;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/16 v5, 0x48

    invoke-static {v2, v4, v1, v5}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 434
    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/State;

    if-nez v4, :cond_a

    invoke-virtual {v7}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    move-result-object v4

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v4
.end method

.method public static final synthetic animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 14
    .param p0, "targetValue"    # Ljava/lang/Object;
    .param p1, "typeConverter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p2, "animationSpec"    # Landroidx/compose/animation/core/AnimationSpec;
    .param p3, "visibilityThreshold"    # Ljava/lang/Object;
    .param p4, "finishedListener"    # Lkotlin/jvm/functions/Function1;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "animate*AsState APIs now have a new label parameter added."
    .end annotation

    move-object/from16 v9, p5

    move/from16 v10, p6

    const v0, -0x3272c431

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(animateValueAsState)P(2,3!1,4)572@23613L21,575@23730L240:AnimateAsState.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 573
    const/4 v1, 0x0

    .local v1, "$changed$iv":I
    const/4 v2, 0x0

    .local v2, "$i$f$remember":I
    const v3, -0x1d58f75c

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v9, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    .local v3, "invalid$iv$iv":Z
    move-object/from16 v4, p5

    .local v4, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 621
    .local v5, "$i$f$cache":I
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, "it$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 622
    .local v7, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_0

    .line 623
    const/4 v8, 0x0

    .line 573
    .local v8, "$i$a$-remember-AnimateAsStateKt$animateValueAsState$4":I
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v12, v13, v11, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v8

    .line 623
    .end local v8    # "$i$a$-remember-AnimateAsStateKt$animateValueAsState$4":I
    nop

    .line 624
    .local v8, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 625
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 626
    :cond_0
    move-object v8, v6

    .line 622
    :goto_0
    nop

    .line 621
    .end local v6    # "it$iv$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 620
    .end local v3    # "invalid$iv$iv":Z
    .end local v4    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v5    # "$i$f$cache":I
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v1    # "$changed$iv":I
    .end local v2    # "$i$f$remember":I
    move-object v1, v8

    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    move-object v11, v1

    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v1, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    goto :goto_1

    .line 0
    .end local v1    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :cond_1
    move-object/from16 v11, p2

    .line 620
    .end local p2    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .local v11, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_1
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_2

    .line 574
    const/4 v1, 0x0

    move-object v12, v1

    .end local p3    # "visibilityThreshold":Ljava/lang/Object;
    .local v1, "visibilityThreshold":Ljava/lang/Object;
    goto :goto_2

    .line 620
    .end local v1    # "visibilityThreshold":Ljava/lang/Object;
    .restart local p3    # "visibilityThreshold":Ljava/lang/Object;
    :cond_2
    move-object/from16 v12, p3

    .line 574
    .end local p3    # "visibilityThreshold":Ljava/lang/Object;
    .local v12, "visibilityThreshold":Ljava/lang/Object;
    :goto_2
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_3

    .line 575
    const/4 v1, 0x0

    move-object v13, v1

    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v1, "finishedListener":Lkotlin/jvm/functions/Function1;
    goto :goto_3

    .line 574
    .end local v1    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .restart local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    :cond_3
    move-object/from16 v13, p4

    .line 575
    .end local p4    # "finishedListener":Lkotlin/jvm/functions/Function1;
    .local v13, "finishedListener":Lkotlin/jvm/functions/Function1;
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 576
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.animateValueAsState (AnimateAsState.kt:575)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 577
    :cond_4
    nop

    .line 578
    nop

    .line 579
    nop

    .line 580
    nop

    .line 581
    const-string/jumbo v4, "ValueAnimation"

    .line 582
    and-int/lit8 v0, v10, 0x8

    or-int/lit16 v0, v0, 0x6000

    and-int/lit8 v1, v10, 0xe

    or-int/2addr v0, v1

    and-int/lit8 v1, v10, 0x70

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x380

    or-int/2addr v0, v1

    and-int/lit8 v1, v10, 0x8

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    and-int/lit16 v1, v10, 0x1c00

    or-int/2addr v0, v1

    shl-int/lit8 v1, v10, 0x3

    const/high16 v2, 0x70000

    and-int/2addr v1, v2

    or-int v7, v0, v1

    const/4 v8, 0x0

    .line 576
    move-object v0, p0

    move-object v1, p1

    move-object v2, v11

    move-object v3, v12

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method private static final animateValueAsState$lambda$4(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;
    .locals 4
    .param p0, "$listener$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 402
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 627
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 402
    return-object v0
.end method

.method private static final animateValueAsState$lambda$6(Landroidx/compose/runtime/State;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 4
    .param p0, "$animSpec$delegate"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;>;)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;"
        }
    .end annotation

    .line 403
    const/4 v0, 0x0

    .local v0, "thisObj$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    move-object v2, p0

    .local v2, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v3, 0x0

    .line 628
    .local v3, "$i$f$getValue":I
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thisObj$iv":Ljava/lang/Object;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/animation/core/AnimationSpec;

    .line 403
    return-object v0
.end method
