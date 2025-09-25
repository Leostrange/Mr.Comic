.class public final Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1382:1\n1083#1,5:1449\n1083#1,5:1454\n1083#1,5:1459\n1083#1,5:1464\n1083#1,5:1469\n1083#1,5:1474\n1083#1,5:1479\n1083#1,5:1484\n25#2:1383\n36#2:1396\n36#2:1409\n36#2:1416\n36#2:1423\n36#2:1436\n1116#3,6:1384\n1116#3,6:1390\n1116#3,6:1397\n1116#3,6:1403\n1116#3,6:1410\n1116#3,6:1417\n1116#3,6:1424\n1116#3,6:1430\n1116#3,6:1437\n1116#3,6:1443\n*S KotlinDebug\n*F\n+ 1 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n*L\n1166#1:1449,5\n1197#1:1454,5\n1228#1:1459,5\n1259#1:1464,5\n1290#1:1469,5\n1321#1:1474,5\n1351#1:1479,5\n1381#1:1484,5\n75#1:1383\n318#1:1396\n978#1:1409\n1011#1:1416\n1024#1:1423\n1099#1:1436\n75#1:1384,6\n77#1:1390,6\n318#1:1397,6\n322#1:1403,6\n978#1:1410,6\n1011#1:1417,6\n1024#1:1424,6\n1028#1:1430,6\n1099#1:1437,6\n1122#1:1443,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a3\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a-\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u0006\u0010\u000b\u001a\u0002H\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a3\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\r2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u000e\u001a\u0082\u0001\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00110\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001f0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u001f0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u00010\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\"0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020$0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020&0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020(0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u0082\u0001\u0010)\u001a\u0008\u0012\u0004\u0012\u00020*0\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020*0\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u0010\u001d\u001a\u00a6\u0001\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0010\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010,*\u00020-*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H,0/2*\u0008\n\u0010\u0013\u001a$\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00120\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00040\u00160\u0014\u00a2\u0006\u0002\u0008\u0017\u00a2\u0006\u0002\u0008\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u0002H\u00040\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u00100\u001a\\\u00101\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082&\u00102\u001a\"\u0012\u0013\u0012\u0011H\u0012\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(3\u0012\u0004\u0012\u0002H\u00040\u0014\u00a2\u0006\u0002\u0008\u0017H\u0087\u0008\u00a2\u0006\u0002\u00104\u001aA\u00105\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032\u0006\u00106\u001a\u0002H\u00042\u0006\u0010\u000b\u001a\u0002H\u00042\u0006\u00107\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u00108\u001aa\u00109\u001a\u0018\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H,0:R\u0008\u0012\u0004\u0012\u0002H\u00120\u0003\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010,*\u00020-*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H,0/2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010;\u001am\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0010\"\u0004\u0008\u0000\u0010\u0012\"\u0004\u0008\u0001\u0010\u0004\"\u0008\u0008\u0002\u0010,*\u00020-*\u0008\u0012\u0004\u0012\u0002H\u00120\u00032\u0006\u0010=\u001a\u0002H\u00042\u0006\u0010>\u001a\u0002H\u00042\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00162\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H,0/2\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0010@\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "AnimationDebugDurationScale",
        "",
        "rememberTransition",
        "Landroidx/compose/animation/core/Transition;",
        "T",
        "transitionState",
        "Landroidx/compose/animation/core/TransitionState;",
        "label",
        "",
        "(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "updateTransition",
        "targetState",
        "(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "Landroidx/compose/animation/core/MutableTransitionState;",
        "(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "animateDp",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/ui/unit/Dp;",
        "S",
        "transitionSpec",
        "Lkotlin/Function1;",
        "Landroidx/compose/animation/core/Transition$Segment;",
        "Landroidx/compose/animation/core/FiniteAnimationSpec;",
        "Landroidx/compose/runtime/Composable;",
        "Lkotlin/ExtensionFunctionType;",
        "targetValueByState",
        "Lkotlin/ParameterName;",
        "name",
        "state",
        "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "animateFloat",
        "",
        "animateInt",
        "animateIntOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "animateIntSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "animateOffset",
        "Landroidx/compose/ui/geometry/Offset;",
        "animateRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "animateSize",
        "Landroidx/compose/ui/geometry/Size;",
        "animateValue",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "typeConverter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;",
        "createChildTransition",
        "transformToChildState",
        "parentState",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;",
        "createChildTransitionInternal",
        "initialState",
        "childLabel",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;",
        "createDeferredAnimation",
        "Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;",
        "createTransitionAnimation",
        "initialValue",
        "targetValue",
        "animationSpec",
        "(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "animation-core_release"
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
.field public static final AnimationDebugDurationScale:I = 0x1


# direct methods
.method public static final animateDp(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateDp"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Dp;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateDp":I
    const v1, 0xb02cd07

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateDp)P(2)1196@48083L75:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1191
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateDp$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateDp$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1191
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1194
    const-string v1, "DpAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1191
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1197
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1455
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1456
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1458
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1197
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateFloat(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateFloat"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateFloat":I
    const v1, -0x4fcbfb15

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateFloat)P(2)1165@46369L78:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1162
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateFloat$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateFloat$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1162
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1163
    const-string v1, "FloatAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1162
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1166
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1450
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1451
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1453
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1166
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateInt(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateInt"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateInt":I
    const v1, 0x4e9cdbfe

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateInt)P(2)1320@55003L76:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1315
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateInt$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateInt$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1315
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1318
    const-string v1, "IntAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1315
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1321
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1475
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1476
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1478
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1321
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateIntOffset(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateIntOffset"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateIntOffset":I
    const v1, 0x2e42d4f1

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateIntOffset)P(2)1289@53300L82:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1286
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntOffset$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1286
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1287
    const-string v1, "IntOffsetAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1286
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1290
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1470
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1471
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1473
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1290
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateIntSize(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateIntSize"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateIntSize":I
    const v1, -0x7d6a5f61

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateIntSize)P(2)1350@56732L80:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1347
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateIntSize$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1347
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1348
    const-string v1, "IntSizeAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1347
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1351
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1480
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1481
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1483
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1351
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateOffset(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateOffset"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateOffset":I
    const v1, 0x7be30d0e

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateOffset)P(2)1227@49823L79:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1222
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateOffset$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateOffset$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1222
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1225
    const-string/jumbo v1, "OffsetAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1222
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1228
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1460
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1461
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1463
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1228
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateRect(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateRect"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateRect":I
    const v1, 0x592f64df

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateRect)P(2)1380@58458L77:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1377
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateRect$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateRect$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1377
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1378
    const-string/jumbo v1, "RectAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1377
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1381
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Rect$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1485
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1486
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1488
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1381
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateSize(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 19
    .param p0, "$this$animateSize"    # Landroidx/compose/animation/core/Transition;
    .param p1, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/geometry/Size;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    .local v10, "$i$f$animateSize":I
    const v1, -0x2fd0c404

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateSize)P(2)1258@51552L77:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    .line 1253
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateSize$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateSize$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p1

    .line 1253
    .end local p1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p6, 0x2

    if-eqz v1, :cond_1

    .line 1256
    const-string/jumbo v1, "SizeAnimation"

    move-object v12, v1

    .end local p2    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1253
    .end local v1    # "label":Ljava/lang/String;
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p2

    .line 1259
    .end local p2    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    sget-object v1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/geometry/Size$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v13

    .local v13, "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    and-int/lit8 v1, p5, 0xe

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v1, v2

    shl-int/lit8 v2, p5, 0x3

    const v3, 0xe000

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .local v2, "$changed$iv":I
    move-object/from16 v1, p0

    .local v1, "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    move v14, v2

    .end local v2    # "$changed$iv":I
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$animateValue":I
    const v2, -0x880d1ef

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 1465
    .local v16, "initialValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x9

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 1466
    .local v17, "targetValue$iv":Ljava/lang/Object;
    invoke-virtual {v1}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v2

    shr-int/lit8 v4, v14, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v11, v2, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1468
    .local v18, "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v2, v14, 0xe

    shl-int/lit8 v4, v14, 0x9

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shl-int/lit8 v3, v14, 0x6

    const/high16 v4, 0x70000

    and-int/2addr v3, v4

    or-int v8, v2, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1259
    .end local v1    # "$this$animateValue$iv":Landroidx/compose/animation/core/Transition;
    .end local v13    # "typeConverter$iv":Landroidx/compose/animation/core/TwoWayConverter;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$animateValue":I
    .end local v16    # "initialValue$iv":Ljava/lang/Object;
    .end local v17    # "targetValue$iv":Ljava/lang/Object;
    .end local v18    # "animationSpec$iv":Landroidx/compose/animation/core/FiniteAnimationSpec;
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final animateValue(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Lkotlin/jvm/functions/Function3;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 16
    .param p0, "$this$animateValue"    # Landroidx/compose/animation/core/Transition;
    .param p1, "typeConverter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p2, "transitionSpec"    # Lkotlin/jvm/functions/Function3;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "targetValueByState"    # Lkotlin/jvm/functions/Function3;
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/core/Transition$Segment<",
            "TS;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v9, p5

    const/4 v10, 0x0

    .local v10, "$i$f$animateValue":I
    const v1, -0x880d1ef

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(animateValue)P(3,2)1082@42932L32,1083@42987L31,1084@43043L23,1086@43079L89:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_0

    .line 1078
    sget-object v1, Landroidx/compose/animation/core/TransitionKt$animateValue$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$animateValue$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v11, v1

    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v1, "transitionSpec":Lkotlin/jvm/functions/Function3;
    goto :goto_0

    .line 0
    .end local v1    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .restart local p2    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    :cond_0
    move-object/from16 v11, p2

    .line 1078
    .end local p2    # "transitionSpec":Lkotlin/jvm/functions/Function3;
    .local v11, "transitionSpec":Lkotlin/jvm/functions/Function3;
    :goto_0
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_1

    .line 1079
    const-string/jumbo v1, "ValueAnimation"

    move-object v12, v1

    .end local p3    # "label":Ljava/lang/String;
    .local v1, "label":Ljava/lang/String;
    goto :goto_1

    .line 1078
    .end local v1    # "label":Ljava/lang/String;
    .restart local p3    # "label":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, p3

    .line 1083
    .end local p3    # "label":Ljava/lang/String;
    .local v12, "label":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, p6, 0x9

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v9, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 1084
    .local v13, "initialValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, p6, 0x9

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v9, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1085
    .local v14, "targetValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    move-result-object v1

    shr-int/lit8 v2, p6, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v1, v9, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1087
    .local v15, "animationSpec":Landroidx/compose/animation/core/FiniteAnimationSpec;
    and-int/lit8 v1, p6, 0xe

    const v2, 0xe000

    shl-int/lit8 v3, p6, 0x9

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, p6, 0x6

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v8, v1, v2

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v6, v12

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final createChildTransition(Landroidx/compose/animation/core/Transition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 9
    .param p0, "$this$createChildTransition"    # Landroidx/compose/animation/core/Transition;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "transformToChildState"    # Lkotlin/jvm/functions/Function3;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$createChildTransition":I
    const v1, 0x48730564

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(createChildTransition)1010@39937L36,1011@39997L74,1012@40094L39,1013@40145L63:Transition.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 1008
    const-string p1, "ChildTransition"

    :cond_0
    and-int/lit8 p5, p4, 0xe

    .line 1011
    nop

    .local p5, "$changed$iv":I
    const/4 v1, 0x0

    .local v1, "$i$f$remember":I
    const v2, 0x44faf204

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p3, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1416
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "invalid$iv$iv":Z
    move-object v3, p3

    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1417
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1418
    .local v6, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v2, :cond_2

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1

    goto :goto_0

    .line 1422
    :cond_1
    move-object v7, v5

    goto :goto_1

    .line 1419
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 1011
    .local v7, "$i$a$-remember-TransitionKt$createChildTransition$initialParentState$1":I
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v7

    .line 1419
    .end local v7    # "$i$a$-remember-TransitionKt$createChildTransition$initialParentState$1":I
    nop

    .line 1420
    .local v7, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1421
    nop

    .line 1418
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 1417
    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1416
    .end local v2    # "invalid$iv$iv":Z
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1011
    .end local v1    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object p5, v7

    .line 1012
    .local p5, "initialParentState":Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, p5

    :goto_2
    shr-int/lit8 v2, p4, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, p3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1013
    .local v7, "initialState":Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    move-result-object v1

    shr-int/lit8 v2, p4, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, p3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1014
    .local v8, "targetState":Ljava/lang/Object;
    and-int/lit8 v1, p4, 0xe

    shl-int/lit8 v2, p4, 0x6

    and-int/lit16 v2, v2, 0x1c00

    or-int v6, v1, v2

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/TransitionKt;->createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method public static final createChildTransitionInternal(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
    .locals 17
    .param p0, "$this$createChildTransitionInternal"    # Landroidx/compose/animation/core/Transition;
    .param p1, "initialState"    # Ljava/lang/Object;
    .param p2, "targetState"    # Ljava/lang/Object;
    .param p3, "childLabel"    # Ljava/lang/String;
    .param p4, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p5, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    const v5, -0xbd1ef36

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v6, "C(createChildTransitionInternal)P(1,2)1023@40408L110,1027@40524L141,1041@40887L25:Transition.kt#pdpnli"

    invoke-static {v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1023
    const/4 v6, -0x1

    const-string/jumbo v7, "androidx.compose.animation.core.createChildTransitionInternal (Transition.kt:1022)"

    invoke-static {v5, v4, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v5, v4, 0xe

    .line 1024
    nop

    .local v5, "$changed$iv":I
    const/4 v6, 0x0

    .local v6, "$i$f$remember":I
    const v7, 0x44faf204

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v3, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1423
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv$iv":Z
    move-object/from16 v8, p4

    .local v8, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 1424
    .local v9, "$i$f$cache":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .local v10, "it$iv$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1425
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v7, :cond_2

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v10, v12, :cond_1

    goto :goto_0

    .line 1429
    :cond_1
    move-object/from16 v15, p3

    move/from16 v16, v5

    move-object v5, v10

    goto :goto_1

    .line 1426
    :cond_2
    :goto_0
    const/4 v12, 0x0

    .line 1025
    .local v12, "$i$a$-remember-TransitionKt$createChildTransitionInternal$transition$1":I
    new-instance v13, Landroidx/compose/animation/core/Transition;

    new-instance v14, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-direct {v14, v1}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v5

    .end local v5    # "$changed$iv":I
    .local v16, "$changed$iv":I
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " > "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v15, p3

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v14, v5}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;)V

    .line 1426
    .end local v12    # "$i$a$-remember-TransitionKt$createChildTransitionInternal$transition$1":I
    move-object v5, v13

    .line 1427
    .local v5, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1428
    nop

    .line 1425
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 1424
    .end local v10    # "it$iv$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1423
    .end local v7    # "invalid$iv$iv":Z
    .end local v8    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v9    # "$i$f$cache":I
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1024
    .end local v6    # "$i$f$remember":I
    .end local v16    # "$changed$iv":I
    check-cast v5, Landroidx/compose/animation/core/Transition;

    .line 1028
    .local v5, "transition":Landroidx/compose/animation/core/Transition;
    const v6, 0x744be5dd

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    .local v6, "invalid$iv":Z
    move-object/from16 v7, p4

    .local v7, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v8, 0x0

    .line 1430
    .local v8, "$i$f$cache":I
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "it$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1431
    .local v10, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v6, :cond_4

    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v9, v11, :cond_3

    goto :goto_2

    .line 1435
    :cond_3
    move-object v11, v9

    goto :goto_3

    .line 1432
    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 1028
    .local v11, "$i$a$-cache-TransitionKt$createChildTransitionInternal$1":I
    new-instance v12, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1;

    invoke-direct {v12, v0, v5}, Landroidx/compose/animation/core/TransitionKt$createChildTransitionInternal$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 1432
    .end local v11    # "$i$a$-cache-TransitionKt$createChildTransitionInternal$1":I
    move-object v11, v12

    .line 1433
    .local v11, "value$iv":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1434
    nop

    .line 1431
    .end local v11    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 1430
    .end local v9    # "it$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1028
    .end local v6    # "invalid$iv":Z
    .end local v7    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v8    # "$i$f$cache":I
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v6, 0x0

    invoke-static {v5, v11, v3, v6}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1036
    nop

    .line 1037
    nop

    .line 1038
    nop

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getLastSeekedTimeNanos$animation_core_release()J

    move-result-wide v6

    .line 1036
    invoke-virtual {v5, v1, v2, v6, v7}, Landroidx/compose/animation/core/Transition;->seek(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_4

    .line 1042
    :cond_5
    shr-int/lit8 v7, v4, 0x3

    and-int/lit8 v7, v7, 0x8

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0xe

    or-int/2addr v7, v8

    invoke-virtual {v5, v2, v3, v7}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 1043
    invoke-virtual {v5, v6}, Landroidx/compose/animation/core/Transition;->setSeeking$animation_core_release(Z)V

    :goto_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1045
    return-object v5
.end method

.method public static final createDeferredAnimation(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 8
    .param p0, "$this$createDeferredAnimation"    # Landroidx/compose/animation/core/Transition;
    .param p1, "typeConverter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p4, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>.DeferredAnimation<TT;TV;>;"
        }
    .end annotation

    const v0, -0x662b6f20

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(createDeferredAnimation)P(1)977@38433L58,978@38496L102:Transition.kt#pdpnli"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 976
    const-string p2, "DeferredAnimation"

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 977
    const/4 p5, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.createDeferredAnimation (Transition.kt:976)"

    invoke-static {v0, p4, p5, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    and-int/lit8 p5, p4, 0xe

    .line 978
    nop

    .local p5, "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    const v1, 0x44faf204

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1409
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid$iv$iv":Z
    move-object v2, p3

    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1410
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1411
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v1, :cond_3

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 1415
    :cond_2
    move-object v6, v4

    goto :goto_1

    .line 1412
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 978
    .local v6, "$i$a$-remember-TransitionKt$createDeferredAnimation$lazyAnim$1":I
    new-instance v7, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-direct {v7, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 1412
    .end local v6    # "$i$a$-remember-TransitionKt$createDeferredAnimation$lazyAnim$1":I
    move-object v6, v7

    .line 1413
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1414
    nop

    .line 1411
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 1410
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1409
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 978
    .end local v0    # "$i$f$remember":I
    .end local p5    # "$changed$iv":I
    move-object p5, v6

    check-cast p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 979
    .local p5, "lazyAnim":Landroidx/compose/animation/core/Transition$DeferredAnimation;
    new-instance v0, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;

    invoke-direct {v0, p0, p5}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {p5, v0, p3, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 984
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    invoke-virtual {p5}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->setupSeeking$animation_core_release()V

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 987
    return-object p5
.end method

.method public static final createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 20
    .param p0, "$this$createTransitionAnimation"    # Landroidx/compose/animation/core/Transition;
    .param p1, "initialValue"    # Ljava/lang/Object;
    .param p2, "targetValue"    # Ljava/lang/Object;
    .param p3, "animationSpec"    # Landroidx/compose/animation/core/FiniteAnimationSpec;
    .param p4, "typeConverter"    # Landroidx/compose/animation/core/TwoWayConverter;
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p7, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;TT;TT;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p7

    const v0, -0x122b33ce

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(createTransitionAnimation)P(1,3!1,4)1098@43468L499,1121@44313L166:Transition.kt#pdpnli"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.animation.core.createTransitionAnimation (Transition.kt:1097)"

    invoke-static {v0, v10, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 v0, v10, 0xe

    .line 1099
    move v11, v0

    .local v11, "$changed$iv":I
    const/4 v12, 0x0

    .local v12, "$i$f$remember":I
    const v0, 0x44faf204

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v9, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1436
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .local v13, "invalid$iv$iv":Z
    move-object/from16 v14, p6

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 1437
    .local v15, "$i$f$cache":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1438
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v13, :cond_2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_1

    goto :goto_0

    .line 1442
    :cond_1
    move-object/from16 v19, v5

    goto :goto_1

    .line 1439
    :cond_2
    :goto_0
    const/16 v17, 0x0

    .line 1104
    .local v17, "$i$a$-remember-TransitionKt$createTransitionAnimation$transitionAnimation$1":I
    new-instance v18, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 1105
    nop

    .line 1106
    move-object/from16 v4, p4

    invoke-static {v4, v7}, Landroidx/compose/animation/core/AnimationStateKt;->createZeroVectorFrom(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v3

    .line 1107
    nop

    .line 1108
    nop

    .line 1104
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v19, v5

    .end local v5    # "it$iv$iv":Ljava/lang/Object;
    .local v19, "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 1439
    .end local v17    # "$i$a$-remember-TransitionKt$createTransitionAnimation$transitionAnimation$1":I
    move-object/from16 v5, v18

    .line 1440
    .local v5, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1441
    nop

    .line 1438
    .end local v5    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 1437
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v19    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1436
    .end local v13    # "invalid$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1099
    .end local v11    # "$changed$iv":I
    .end local v12    # "$i$f$remember":I
    move-object v0, v5

    check-cast v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 1111
    .local v0, "transitionAnimation":Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    nop

    .line 1114
    nop

    .line 1115
    nop

    .line 1116
    nop

    .line 1113
    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v8}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateInitialAndTargetValue$animation_core_release(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    goto :goto_2

    .line 1119
    :cond_3
    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v8}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->updateTargetValue$animation_core_release(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 1122
    :goto_2
    const v2, 0x744bf4b3

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .local v2, "invalid$iv":Z
    move-object/from16 v3, p6

    .local v3, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v4, 0x0

    .line 1443
    .local v4, "$i$f$cache":I
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1444
    .local v11, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v2, :cond_5

    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v5, v12, :cond_4

    goto :goto_3

    .line 1448
    :cond_4
    move-object v12, v5

    goto :goto_4

    .line 1445
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 1122
    .local v12, "$i$a$-cache-TransitionKt$createTransitionAnimation$1":I
    new-instance v13, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1$1;

    invoke-direct {v13, v6, v0}, Landroidx/compose/animation/core/TransitionKt$createTransitionAnimation$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 1445
    .end local v12    # "$i$a$-cache-TransitionKt$createTransitionAnimation$1":I
    move-object v12, v13

    .line 1446
    .local v12, "value$iv":Ljava/lang/Object;
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1447
    nop

    .line 1444
    .end local v12    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 1443
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v11    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 1122
    .end local v2    # "invalid$iv":Z
    .end local v3    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v4    # "$i$f$cache":I
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    invoke-static {v0, v12, v9, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface/range {p6 .. p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/State;

    .line 1128
    return-object v2
.end method

.method public static final rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 8
    .param p0, "transitionState"    # Landroidx/compose/animation/core/TransitionState;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/TransitionState<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x61f14c21

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberTransition)P(1)317@12686L94,320@12796L38,321@12839L224:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 316
    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 317
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.rememberTransition (Transition.kt:316)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    and-int/lit8 p4, p3, 0xe

    .line 318
    nop

    .local p4, "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    const v1, 0x44faf204

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1396
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "invalid$iv$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1397
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1398
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v1, :cond_3

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 1402
    :cond_2
    move-object v6, v4

    goto :goto_1

    .line 1399
    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 319
    .local v6, "$i$a$-remember-TransitionKt$rememberTransition$transition$1":I
    new-instance v7, Landroidx/compose/animation/core/Transition;

    invoke-direct {v7, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;)V

    .line 1399
    .end local v6    # "$i$a$-remember-TransitionKt$rememberTransition$transition$1":I
    move-object v6, v7

    .line 1400
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1401
    nop

    .line 1398
    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    :goto_1
    nop

    .line 1397
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1396
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 318
    .end local v0    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object p4, v6

    check-cast p4, Landroidx/compose/animation/core/Transition;

    .line 321
    .local p4, "transition":Landroidx/compose/animation/core/Transition;
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->getTargetState()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, p2, v1}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 322
    const v0, 0x744b79b8

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1403
    .restart local v3    # "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1404
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_5

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_4

    goto :goto_2

    .line 1408
    :cond_4
    move-object v6, v4

    goto :goto_3

    .line 1405
    :cond_5
    :goto_2
    const/4 v6, 0x0

    .line 322
    .local v6, "$i$a$-cache-TransitionKt$rememberTransition$1":I
    new-instance v7, Landroidx/compose/animation/core/TransitionKt$rememberTransition$1$1;

    invoke-direct {v7, p4}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$1$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 1405
    .end local v6    # "$i$a$-cache-TransitionKt$rememberTransition$1":I
    move-object v6, v7

    .line 1406
    .local v6, "value$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1407
    nop

    .line 1404
    .end local v6    # "value$iv":Ljava/lang/Object;
    :goto_3
    nop

    .line 1403
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 322
    .end local v0    # "invalid$iv":Z
    .end local v2    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {p4, v6, p2, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 329
    return-object p4
.end method

.method public static final updateTransition(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 2
    .param p0, "transitionState"    # Landroidx/compose/animation/core/MutableTransitionState;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x34a03233

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(updateTransition)P(1)357@14430L32:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 355
    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 356
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.updateTransition (Transition.kt:355)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 357
    :cond_1
    move-object p4, p0

    check-cast p4, Landroidx/compose/animation/core/TransitionState;

    .line 358
    .local p4, "state":Landroidx/compose/animation/core/TransitionState;
    and-int/lit8 v0, p3, 0xe

    and-int/lit8 v1, p3, 0x70

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p4, p1, p2, v0, v1}, Landroidx/compose/animation/core/TransitionKt;->rememberTransition(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;
    .locals 8
    .param p0, "targetState"    # Ljava/lang/Object;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p3, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x78f2a0ad

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(updateTransition)P(1)74@3063L51,75@3130L22,76@3157L224:Transition.kt#pdpnli"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 73
    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 74
    const/4 p4, -0x1

    const-string/jumbo v1, "androidx.compose.animation.core.updateTransition (Transition.kt:73)"

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    nop

    .line 75
    const/4 p4, 0x0

    .local p4, "$changed$iv":I
    const/4 v0, 0x0

    .local v0, "$i$f$remember":I
    const v1, -0x1d58f75c

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1383
    const/4 v1, 0x0

    .local v1, "invalid$iv$iv":Z
    move-object v2, p2

    .local v2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v3, 0x0

    .line 1384
    .local v3, "$i$f$cache":I
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1385
    .local v5, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 1386
    const/4 v6, 0x0

    .line 75
    .local v6, "$i$a$-remember-TransitionKt$updateTransition$transition$1":I
    new-instance v7, Landroidx/compose/animation/core/Transition;

    invoke-direct {v7, p0, p1}, Landroidx/compose/animation/core/Transition;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1386
    .end local v6    # "$i$a$-remember-TransitionKt$updateTransition$transition$1":I
    move-object v6, v7

    .line 1387
    .local v6, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1388
    nop

    .end local v6    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1389
    :cond_2
    move-object v6, v4

    .line 1385
    :goto_0
    nop

    .line 1384
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1383
    .end local v1    # "invalid$iv$iv":Z
    .end local v2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v3    # "$i$f$cache":I
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 75
    .end local v0    # "$i$f$remember":I
    .end local p4    # "$changed$iv":I
    move-object p4, v6

    check-cast p4, Landroidx/compose/animation/core/Transition;

    .line 76
    .local p4, "transition":Landroidx/compose/animation/core/Transition;
    and-int/lit8 v0, p3, 0x8

    or-int/lit8 v0, v0, 0x30

    and-int/lit8 v1, p3, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p4, p0, p2, v0}, Landroidx/compose/animation/core/Transition;->animateTo$animation_core_release(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 77
    const v0, 0x744b53e6

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "invalid$iv":Z
    move-object v1, p2

    .local v1, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/4 v2, 0x0

    .line 1390
    .local v2, "$i$f$cache":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1391
    .local v4, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v0, :cond_4

    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_3

    goto :goto_1

    .line 1395
    :cond_3
    move-object v5, v3

    goto :goto_2

    .line 1392
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 77
    .local v5, "$i$a$-cache-TransitionKt$updateTransition$1":I
    new-instance v6, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1;

    invoke-direct {v6, p4}, Landroidx/compose/animation/core/TransitionKt$updateTransition$1$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 1392
    .end local v5    # "$i$a$-cache-TransitionKt$updateTransition$1":I
    move-object v5, v6

    .line 1393
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1394
    nop

    .line 1391
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_2
    nop

    .line 1390
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 77
    .end local v0    # "invalid$iv":Z
    .end local v1    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v2    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x6

    invoke-static {p4, v5, p2, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    return-object p4
.end method
