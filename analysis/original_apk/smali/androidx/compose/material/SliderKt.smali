.class public final Landroidx/compose/material/SliderKt;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 Composer.kt\nandroidx/compose/runtime/Updater\n+ 9 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 11 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 12 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,1195:1\n25#2:1196\n36#2:1204\n25#2:1212\n25#2:1219\n36#2:1226\n456#2,8:1251\n464#2,3:1265\n467#2,3:1272\n456#2,8:1294\n464#2,3:1308\n467#2,3:1328\n456#2,8:1350\n464#2,3:1364\n25#2:1368\n467#2,3:1382\n1116#3,6:1197\n1116#3,6:1205\n1116#3,6:1213\n1116#3,6:1220\n1116#3,6:1227\n1116#3,6:1316\n1116#3,6:1322\n1116#3,6:1369\n1116#3,6:1375\n1116#3,6:1400\n1#4:1203\n92#5:1211\n92#5:1233\n92#5:1270\n88#5:1271\n92#5:1313\n88#5:1314\n88#5:1315\n68#6,6:1234\n74#6:1268\n78#6:1276\n68#6,6:1277\n74#6:1311\n78#6:1332\n68#6,6:1333\n74#6:1367\n78#6:1386\n79#7,11:1240\n92#7:1275\n79#7,11:1283\n92#7:1331\n79#7,11:1339\n92#7:1385\n3737#8,6:1259\n3737#8,6:1302\n3737#8,6:1358\n74#9:1269\n74#9:1312\n154#10:1381\n154#10:1407\n154#10:1408\n154#10:1409\n154#10:1410\n154#10:1411\n154#10:1412\n154#10:1413\n482#11,13:1387\n135#12:1406\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt\n*L\n158#1:1196\n163#1:1204\n305#1:1212\n306#1:1219\n310#1:1226\n592#1:1251,8\n592#1:1265,3\n592#1:1272,3\n636#1:1294,8\n636#1:1308,3\n636#1:1328,3\n696#1:1350,8\n696#1:1364,3\n700#1:1368\n696#1:1382,3\n158#1:1197,6\n163#1:1205,6\n305#1:1213,6\n306#1:1220,6\n310#1:1227,6\n664#1:1316,6\n675#1:1322,6\n700#1:1369,6\n701#1:1375,6\n844#1:1400,6\n169#1:1211\n317#1:1233\n602#1:1270\n603#1:1271\n646#1:1313\n647#1:1314\n648#1:1315\n592#1:1234,6\n592#1:1268\n592#1:1276\n636#1:1277,6\n636#1:1311\n636#1:1332\n696#1:1333,6\n696#1:1367\n696#1:1386\n592#1:1240,11\n592#1:1275\n636#1:1283,11\n636#1:1331\n696#1:1339,11\n696#1:1385\n592#1:1259,6\n636#1:1302,6\n696#1:1358,6\n596#1:1269\n640#1:1312\n727#1:1381\n1153#1:1407\n1154#1:1408\n1155#1:1409\n1156#1:1410\n1159#1:1411\n1160#1:1412\n1161#1:1413\n802#1:1387,13\n939#1:1406\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aS\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0003\u00a2\u0006\u0002\u0010\u001b\u001a\u007f\u0010\u001c\u001a\u00020\u00122\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0016\u0012\u0004\u0012\u00020\u00120\u00142\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0008\u0008\u0003\u0010!\u001a\u00020\"2\u0010\u0008\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010$2\u0008\u0008\u0002\u0010%\u001a\u00020&H\u0007\u00a2\u0006\u0002\u0010\'\u001ak\u0010(\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080,2\u0006\u0010%\u001a\u00020&2\u0006\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u0001H\u0003\u00a2\u0006\u0002\u00103\u001a}\u00104\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00082\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00120\u00142\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0008\u0008\u0003\u0010!\u001a\u00020\"2\u0010\u0008\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010$2\u0008\u0008\u0002\u00105\u001a\u00020/2\u0008\u0008\u0002\u0010%\u001a\u00020&H\u0007\u00a2\u0006\u0002\u00106\u001aK\u00107\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 2\u0006\u00108\u001a\u00020\u00082\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080,2\u0006\u0010%\u001a\u00020&2\u0006\u0010-\u001a\u00020\u00082\u0006\u00105\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u0001H\u0003\u00a2\u0006\u0002\u00109\u001aS\u0010:\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020\u00082\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080,2\u0006\u0010;\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u0008H\u0003\u00a2\u0006\u0002\u0010=\u001a.\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u00082\u0006\u0010C\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0002\u0010D\u001a \u0010E\u001a\u00020\u00082\u0006\u0010F\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u00082\u0006\u0010H\u001a\u00020\u0008H\u0002\u001a0\u0010I\u001a\u00020\u00082\u0006\u0010J\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u00082\u0006\u0010L\u001a\u00020\u00082\u0006\u0010M\u001a\u00020\u00082\u0006\u0010N\u001a\u00020\u0008H\u0002\u001a<\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0006\u0010J\u001a\u00020\u00082\u0006\u0010K\u001a\u00020\u00082\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0006\u0010M\u001a\u00020\u00082\u0006\u0010N\u001a\u00020\u0008H\u0002\u001a.\u0010P\u001a\u00020\u00082\u0006\u0010A\u001a\u00020\u00082\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080,2\u0006\u0010Q\u001a\u00020\u00082\u0006\u0010R\u001a\u00020\u0008H\u0002\u001a\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00080,2\u0006\u0010!\u001a\u00020\"H\u0002\u001aF\u0010T\u001a\u00020\u0012*\u00020U2\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010V\u001a\u00020\u00032\u0006\u00105\u001a\u00020/2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010W\u001a\u00020\u0003H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008X\u0010Y\u001a5\u0010Z\u001a\u0010\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020\u0008\u0018\u00010[*\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010`\u001a\u00020aH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008b\u0010c\u001a\u0098\u0001\u0010d\u001a\u00020\u0001*\u00020\u00012\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00080f2\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00080f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010h\u001a\u00020 2\u0006\u0010R\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0018\u0010i\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00120\u00140f2\u001e\u0010j\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00120k0fH\u0002\u001a\\\u0010l\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020 2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00120\u00142\u0010\u0008\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010$2\u000e\u0008\u0002\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00162\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0002\u001aj\u0010m\u001a\u00020\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020@2\u0006\u00105\u001a\u00020/2\u0006\u0010R\u001a\u00020\u00082\u0006\u0010h\u001a\u00020 2\u000c\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u00080f2\u0018\u0010i\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00120\u00140f2\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\u000b\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u000c\u0010\r\"\u0010\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\u000f\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0010\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006p"
    }
    d2 = {
        "DefaultSliderConstraints",
        "Landroidx/compose/ui/Modifier;",
        "SliderHeight",
        "Landroidx/compose/ui/unit/Dp;",
        "F",
        "SliderMinWidth",
        "SliderToTickAnimation",
        "Landroidx/compose/animation/core/TweenSpec;",
        "",
        "ThumbDefaultElevation",
        "ThumbPressedElevation",
        "ThumbRadius",
        "getThumbRadius",
        "()F",
        "ThumbRippleRadius",
        "TrackHeight",
        "getTrackHeight",
        "CorrectValueSideEffect",
        "",
        "scaleToOffset",
        "Lkotlin/Function1;",
        "valueRange",
        "Lkotlin/ranges/ClosedFloatingPointRange;",
        "trackRange",
        "valueState",
        "Landroidx/compose/runtime/MutableState;",
        "value",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V",
        "RangeSlider",
        "onValueChange",
        "modifier",
        "enabled",
        "",
        "steps",
        "",
        "onValueChangeFinished",
        "Lkotlin/Function0;",
        "colors",
        "Landroidx/compose/material/SliderColors;",
        "(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V",
        "RangeSliderImpl",
        "positionFractionStart",
        "positionFractionEnd",
        "tickFractions",
        "",
        "width",
        "startInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "endInteractionSource",
        "startThumbSemantics",
        "endThumbSemantics",
        "(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V",
        "Slider",
        "interactionSource",
        "(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V",
        "SliderImpl",
        "positionFraction",
        "(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V",
        "Track",
        "thumbPx",
        "trackStrokeWidth",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V",
        "animateToTarget",
        "draggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "current",
        "target",
        "velocity",
        "(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calcFraction",
        "a",
        "b",
        "pos",
        "scale",
        "a1",
        "b1",
        "x1",
        "a2",
        "b2",
        "x",
        "snapValueToTick",
        "minPx",
        "maxPx",
        "stepsToTickFractions",
        "SliderThumb",
        "Landroidx/compose/foundation/layout/BoxScope;",
        "offset",
        "thumbSize",
        "SliderThumb-PcYyNuk",
        "(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V",
        "awaitSlop",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "id",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "type",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "awaitSlop-8vUncbI",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rangeSliderPressDragModifier",
        "rawOffsetStart",
        "Landroidx/compose/runtime/State;",
        "rawOffsetEnd",
        "isRtl",
        "gestureEndAction",
        "onDrag",
        "Lkotlin/Function2;",
        "sliderSemantics",
        "sliderTapModifier",
        "rawOffset",
        "pressOffset",
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
.field private static final DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

.field private static final SliderHeight:F

.field private static final SliderMinWidth:F

.field private static final SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ThumbDefaultElevation:F

.field private static final ThumbPressedElevation:F

.field private static final ThumbRadius:F

.field private static final ThumbRippleRadius:F

.field private static final TrackHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1153
    const/16 v0, 0xa

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1407
    .local v1, "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1153
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .line 1154
    const/16 v0, 0x18

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1408
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1154
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    .line 1155
    const/4 v0, 0x1

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1409
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1155
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 1156
    const/4 v0, 0x6

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1410
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1156
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    .line 1159
    const/4 v0, 0x4

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1411
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1159
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->TrackHeight:F

    .line 1160
    const/16 v0, 0x30

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1412
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1160
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->SliderHeight:F

    .line 1161
    const/16 v0, 0x90

    .restart local v0    # "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1413
    .restart local v1    # "$i$f$getDp":I
    int-to-float v2, v0

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 1161
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    sput v0, Landroidx/compose/material/SliderKt;->SliderMinWidth:F

    .line 1165
    nop

    .line 1163
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1164
    sget v1, Landroidx/compose/material/SliderKt;->SliderMinWidth:F

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 1165
    sget v1, Landroidx/compose/material/SliderKt;->SliderHeight:F

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    .line 1167
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    return-void
.end method

.method private static final CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 21
    .param p0, "scaleToOffset"    # Lkotlin/jvm/functions/Function1;
    .param p1, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p2, "trackRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "valueState"    # Landroidx/compose/runtime/MutableState;
    .param p4, "value"    # F
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 843
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    const v0, -0x2c580438

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .end local p5    # "$composer":Landroidx/compose/runtime/Composer;
    .local v13, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(CorrectValueSideEffect)P(!1,3!1,4)843@33502L311:Slider.kt#jmzs0o"

    invoke-static {v13, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p6

    .local v1, "$dirty":I
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_1

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_3

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v12, 0x380

    if-nez v2, :cond_5

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v12, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_3

    :cond_6
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v12

    if-nez v2, :cond_9

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_4

    :cond_8
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v1, v2

    :cond_9
    move v14, v1

    .end local v1    # "$dirty":I
    .local v14, "$dirty":I
    const v1, 0xb6db

    and-int/2addr v1, v14

    const/16 v2, 0x2492

    if-ne v1, v2, :cond_b

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 853
    :cond_a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 843
    :cond_b
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.CorrectValueSideEffect (Slider.kt:842)"

    invoke-static {v0, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_c
    const v0, 0x56ddf604

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 844
    move-object v6, v13

    .local v6, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    move v15, v0

    .local v15, "invalid$iv":Z
    const/16 v16, 0x0

    .line 1400
    .local v16, "$i$f$cache":I
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, "it$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1401
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v15, :cond_e

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v5, v0, :cond_d

    goto :goto_6

    .line 1405
    :cond_d
    move-object/from16 v20, v5

    goto :goto_7

    .line 1402
    :cond_e
    :goto_6
    const/16 v18, 0x0

    .line 844
    .local v18, "$i$a$-cache-SliderKt$CorrectValueSideEffect$1":I
    new-instance v19, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    .end local v5    # "it$iv":Ljava/lang/Object;
    .local v20, "it$iv":Ljava/lang/Object;
    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$1$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;FLandroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V

    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1402
    .end local v18    # "$i$a$-cache-SliderKt$CorrectValueSideEffect$1":I
    move-object/from16 v5, v19

    .line 1403
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1404
    nop

    .line 1401
    .end local v5    # "value$iv":Ljava/lang/Object;
    :goto_7
    nop

    .line 1400
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v20    # "it$iv":Ljava/lang/Object;
    nop

    .line 844
    .end local v6    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "invalid$iv":Z
    .end local v16    # "$i$f$cache":I
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v0, 0x0

    invoke-static {v5, v13, v0}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 853
    :cond_f
    :goto_8
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_10

    new-instance v16, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$CorrectValueSideEffect$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FI)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_10
    return-void
.end method

.method public static final RangeSlider(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 38
    .param p0, "value"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p5, "steps"    # I
    .param p6, "onValueChangeFinished"    # Lkotlin/jvm/functions/Function0;
    .param p7, "colors"    # Landroidx/compose/material/SliderColors;
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 304
    move-object/from16 v11, p1

    move/from16 v12, p9

    move/from16 v10, p10

    const v0, -0x5cc177f3

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(RangeSlider)P(6,3,2,1,7,5,4)302@13637L8,304@13709L39,305@13806L39,308@13927L35,309@13987L59,313@14052L5142:Slider.kt#jmzs0o"

    invoke-static {v9, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p9

    .local v1, "$dirty":I
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move-object/from16 v8, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0xe

    if-nez v2, :cond_2

    move-object/from16 v8, p0

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v8, p0

    :goto_1
    and-int/lit8 v2, v10, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v12, 0x70

    if-nez v2, :cond_5

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v10, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v12, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v10, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v12, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v5, p3

    :goto_7
    const v6, 0xe000

    and-int/2addr v6, v12

    if-nez v6, :cond_e

    and-int/lit8 v6, v10, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v6, p4

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v7, v10, 0x20

    if-eqz v7, :cond_f

    const/high16 v13, 0x30000

    or-int/2addr v1, v13

    move/from16 v13, p5

    goto :goto_b

    :cond_f
    const/high16 v13, 0x70000

    and-int/2addr v13, v12

    if-nez v13, :cond_11

    move/from16 v13, p5

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_11
    move/from16 v13, p5

    :goto_b
    and-int/lit8 v14, v10, 0x40

    if-eqz v14, :cond_12

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_d

    :cond_12
    const/high16 v15, 0x380000

    and-int/2addr v15, v12

    if-nez v15, :cond_14

    move-object/from16 v15, p6

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v15, p6

    :goto_d
    const/high16 v16, 0x1c00000

    and-int v16, v12, v16

    if-nez v16, :cond_17

    and-int/lit16 v0, v10, 0x80

    if-nez v0, :cond_15

    move-object/from16 v0, p7

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_15
    move-object/from16 v0, p7

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v1, v1, v16

    goto :goto_f

    :cond_17
    move-object/from16 v0, p7

    :goto_f
    const v16, 0x16db6db

    and-int v0, v1, v16

    const v3, 0x492492

    if-ne v0, v3, :cond_19

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    .line 448
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v26, p2

    move-object/from16 v16, p7

    move/from16 v25, v1

    move v11, v5

    move v14, v13

    move-object v13, v6

    goto/16 :goto_1b

    .line 304
    :cond_19
    :goto_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v12, 0x1

    const v3, -0x1c00001

    const v16, -0xe001

    if-eqz v0, :cond_1d

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    .line 303
    :cond_1a
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_1b

    and-int v1, v1, v16

    :cond_1b
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_1c

    and-int v0, v1, v3

    move-object/from16 v7, p7

    move v1, v0

    move v2, v13

    move-object v4, v15

    move-object/from16 v0, p2

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto :goto_15

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1c
    move-object/from16 v0, p2

    move-object/from16 v7, p7

    move v2, v13

    move-object v4, v15

    goto :goto_15

    .line 304
    :cond_1d
    :goto_11
    if-eqz v2, :cond_1e

    .line 297
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_12

    .line 304
    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_1e
    move-object/from16 v0, p2

    .line 297
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v0    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_12
    if-eqz v4, :cond_1f

    .line 298
    const/4 v2, 0x1

    move v5, v2

    .end local p3    # "enabled":Z
    .local v5, "enabled":Z
    :cond_1f
    and-int/lit8 v2, v10, 0x10

    if-eqz v2, :cond_20

    .line 299
    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v2

    .end local p4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .local v2, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    and-int v1, v1, v16

    move-object v6, v2

    .end local v2    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .local v6, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    :cond_20
    if-eqz v7, :cond_21

    .line 301
    const/4 v2, 0x0

    .end local p5    # "steps":I
    .local v2, "steps":I
    goto :goto_13

    .line 299
    .end local v2    # "steps":I
    .restart local p5    # "steps":I
    :cond_21
    move v2, v13

    .line 301
    .end local p5    # "steps":I
    .restart local v2    # "steps":I
    :goto_13
    if-eqz v14, :cond_22

    .line 302
    const/4 v4, 0x0

    .end local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .local v4, "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    goto :goto_14

    .line 301
    .end local v4    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    :cond_22
    move-object v4, v15

    .line 302
    .end local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    :goto_14
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_23

    .line 303
    sget-object v13, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x6

    const/16 v37, 0x3ff

    move-object/from16 v34, v9

    invoke-virtual/range {v13 .. v37}, Landroidx/compose/material/SliderDefaults;->colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    move-result-object v7

    .end local p7    # "colors":Landroidx/compose/material/SliderColors;
    .local v7, "colors":Landroidx/compose/material/SliderColors;
    and-int/2addr v1, v3

    goto :goto_15

    .line 302
    .end local v7    # "colors":Landroidx/compose/material/SliderColors;
    .restart local p7    # "colors":Landroidx/compose/material/SliderColors;
    :cond_23
    move-object/from16 v7, p7

    .line 303
    .end local p7    # "colors":Landroidx/compose/material/SliderColors;
    .restart local v7    # "colors":Landroidx/compose/material/SliderColors;
    :goto_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 304
    const/4 v3, -0x1

    const-string/jumbo v13, "androidx.compose.material.RangeSlider (Slider.kt:303)"

    const v14, -0x5cc177f3

    invoke-static {v14, v1, v3, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_24
    nop

    .line 305
    const/4 v3, 0x0

    move v13, v3

    .local v13, "$changed$iv":I
    const/4 v14, 0x0

    .local v14, "$i$f$remember":I
    const v15, -0x1d58f75c

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v15, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1212
    const/16 v16, 0x0

    .local v16, "invalid$iv$iv":Z
    move-object/from16 p3, v9

    .local p3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1213
    .local v17, "$i$f$cache":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1214
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v3, v8, :cond_25

    .line 1215
    const/4 v8, 0x0

    .line 305
    .local v8, "$i$a$-remember-SliderKt$RangeSlider$startInteractionSource$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v8

    .line 1215
    .end local v8    # "$i$a$-remember-SliderKt$RangeSlider$startInteractionSource$1":I
    nop

    .line 1216
    .local v8, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v3

    move-object/from16 v3, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p5, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1217
    nop

    .end local v8    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_16

    .line 1218
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    .local v3, "it$iv$iv":Ljava/lang/Object;
    .restart local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_25
    move-object/from16 p5, v3

    move-object/from16 v3, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v8, p5

    .line 1214
    :goto_16
    nop

    .line 1213
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1212
    .end local v3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "invalid$iv$iv":Z
    .end local v17    # "$i$f$cache":I
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 305
    .end local v13    # "$changed$iv":I
    .end local v14    # "$i$f$remember":I
    move-object v3, v8

    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 306
    .local v3, "startInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    const/4 v8, 0x0

    move v13, v8

    .restart local v13    # "$changed$iv":I
    const/4 v14, 0x0

    const v8, -0x1d58f75c

    .restart local v14    # "$i$f$remember":I
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v9, v15}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1219
    const/4 v8, 0x0

    .local v8, "invalid$iv$iv":Z
    move-object v15, v9

    .local v15, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1220
    .local v16, "$i$f$cache":I
    move/from16 p2, v8

    .end local v8    # "invalid$iv$iv":Z
    .local p2, "invalid$iv$iv":Z
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1221
    .local v17, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v8, v10, :cond_26

    .line 1222
    const/4 v10, 0x0

    .line 306
    .local v10, "$i$a$-remember-SliderKt$RangeSlider$endInteractionSource$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v10

    .line 1222
    .end local v10    # "$i$a$-remember-SliderKt$RangeSlider$endInteractionSource$1":I
    nop

    .line 1223
    .local v10, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1224
    nop

    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_17

    .line 1225
    :cond_26
    move-object v10, v8

    .line 1221
    :goto_17
    nop

    .line 1220
    .end local v8    # "it$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1219
    .end local v15    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p2    # "invalid$iv$iv":Z
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 306
    .end local v13    # "$changed$iv":I
    .end local v14    # "$i$f$remember":I
    move-object v8, v10

    check-cast v8, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 308
    .local v8, "endInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    if-ltz v2, :cond_27

    const/4 v13, 0x1

    goto :goto_18

    :cond_27
    const/4 v13, 0x0

    :goto_18
    if-eqz v13, :cond_2c

    .line 309
    shr-int/lit8 v13, v1, 0x3

    and-int/lit8 v13, v13, 0xe

    invoke-static {v11, v9, v13}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v24

    .local v24, "onValueChangeState":Landroidx/compose/runtime/State;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    shr-int/lit8 v14, v1, 0xf

    and-int/lit8 v14, v14, 0xe

    .line 310
    nop

    .local v13, "key1$iv":Ljava/lang/Object;
    .local v14, "$changed$iv":I
    const/4 v15, 0x0

    .local v15, "$i$f$remember":I
    const v10, 0x44faf204

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v9, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1226
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .local v10, "invalid$iv$iv":Z
    move-object/from16 p3, v9

    .restart local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v16, 0x0

    .line 1227
    .restart local v16    # "$i$f$cache":I
    move/from16 v25, v1

    .end local v1    # "$dirty":I
    .local v25, "$dirty":I
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1228
    .restart local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v10, :cond_29

    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v10

    .end local v10    # "invalid$iv$iv":Z
    .local p4, "invalid$iv$iv":Z
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v1, v10, :cond_28

    goto :goto_19

    .line 1232
    :cond_28
    move-object/from16 p5, v1

    move-object/from16 v10, p5

    move-object/from16 v1, p3

    goto :goto_1a

    .line 1228
    .end local p4    # "invalid$iv$iv":Z
    .restart local v10    # "invalid$iv$iv":Z
    :cond_29
    move/from16 p4, v10

    .line 1229
    .end local v10    # "invalid$iv$iv":Z
    .restart local p4    # "invalid$iv$iv":Z
    :goto_19
    const/4 v10, 0x0

    .line 311
    .local v10, "$i$a$-remember-SliderKt$RangeSlider$tickFractions$1":I
    invoke-static {v2}, Landroidx/compose/material/SliderKt;->access$stepsToTickFractions(I)Ljava/util/List;

    move-result-object v10

    .line 1229
    .end local v10    # "$i$a$-remember-SliderKt$RangeSlider$tickFractions$1":I
    nop

    .line 1230
    .local v10, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p5, v1

    move-object/from16 v1, p3

    .end local p3    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local p5    # "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1231
    nop

    .line 1228
    .end local v10    # "value$iv$iv":Ljava/lang/Object;
    :goto_1a
    nop

    .line 1227
    .end local v17    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p5    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1226
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v16    # "$i$f$cache":I
    .end local p4    # "invalid$iv$iv":Z
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 310
    .end local v13    # "key1$iv":Ljava/lang/Object;
    .end local v14    # "$changed$iv":I
    .end local v15    # "$i$f$remember":I
    move-object v1, v10

    check-cast v1, Ljava/util/List;

    .line 315
    .local v1, "tickFractions":Ljava/util/List;
    nop

    .line 316
    invoke-static {v0}, Landroidx/compose/material/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 317
    sget v10, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .local v10, "arg0$iv":F
    const/4 v14, 0x4

    .local v14, "other$iv":I
    const/4 v15, 0x0

    .line 1233
    .local v15, "$i$f$times-u2uoSUM":I
    move-object/from16 v26, v0

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .local v26, "modifier":Landroidx/compose/ui/Modifier;
    int-to-float v0, v14

    mul-float/2addr v0, v10

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    .line 317
    .end local v10    # "arg0$iv":F
    .end local v14    # "other$iv":I
    .end local v15    # "$i$f$times-u2uoSUM":I
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .local v0, "arg0$iv":F
    const/4 v10, 0x2

    .local v10, "other$iv":I
    const/4 v15, 0x0

    .line 1233
    .restart local v15    # "$i$f$times-u2uoSUM":I
    int-to-float v11, v10

    mul-float/2addr v11, v0

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    .line 317
    .end local v0    # "arg0$iv":F
    .end local v10    # "other$iv":I
    .end local v15    # "$i$f$times-u2uoSUM":I
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v10, 0x0

    .line 318
    new-instance v15, Landroidx/compose/material/SliderKt$RangeSlider$2;

    move-object v13, v15

    move-object v14, v6

    move-object v11, v15

    move-object/from16 v15, p0

    move-object/from16 v16, v24

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    move/from16 v19, v5

    move/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    move-object/from16 v23, v7

    invoke-direct/range {v13 .. v23}, Landroidx/compose/material/SliderKt$RangeSlider$2;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILkotlin/jvm/functions/Function0;Ljava/util/List;Landroidx/compose/material/SliderColors;)V

    const v13, 0x26e5bb63

    const/4 v14, 0x1

    invoke-static {v9, v13, v14, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function3;

    const/16 v13, 0xc00

    const/4 v14, 0x6

    .line 314
    move-object/from16 p2, v0

    move-object/from16 p3, v10

    const/4 v0, 0x0

    move/from16 p4, v0

    move-object/from16 p5, v11

    move-object/from16 p6, v9

    move/from16 p7, v13

    move/from16 p8, v14

    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 448
    .end local v1    # "tickFractions":Ljava/util/List;
    .end local v3    # "startInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v8    # "endInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v24    # "onValueChangeState":Landroidx/compose/runtime/State;
    :cond_2a
    move v14, v2

    move-object v15, v4

    move v11, v5

    move-object v13, v6

    move-object/from16 v16, v7

    .end local v2    # "steps":I
    .end local v4    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .end local v5    # "enabled":Z
    .end local v6    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v7    # "colors":Landroidx/compose/material/SliderColors;
    .local v11, "enabled":Z
    .local v13, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .local v14, "steps":I
    .local v15, "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .local v16, "colors":Landroidx/compose/material/SliderColors;
    :goto_1b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_2b

    new-instance v17, Landroidx/compose/material/SliderKt$RangeSlider$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    move v4, v11

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v18, v9

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v9, p9

    move/from16 p2, v11

    move-object v11, v10

    .end local v11    # "enabled":Z
    .local p2, "enabled":Z
    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/SliderKt$RangeSlider$3;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;II)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_1c

    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .end local p2    # "enabled":Z
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v11    # "enabled":Z
    :cond_2b
    move-object/from16 v18, v9

    move/from16 p2, v11

    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v11    # "enabled":Z
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local p2    # "enabled":Z
    :goto_1c
    return-void

    .line 1203
    .end local v13    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v14    # "steps":I
    .end local v15    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .end local v16    # "colors":Landroidx/compose/material/SliderColors;
    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v25    # "$dirty":I
    .end local v26    # "modifier":Landroidx/compose/ui/Modifier;
    .end local p2    # "enabled":Z
    .local v0, "modifier":Landroidx/compose/ui/Modifier;
    .local v1, "$dirty":I
    .restart local v2    # "steps":I
    .restart local v3    # "startInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v4    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local v5    # "enabled":Z
    .restart local v6    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .restart local v7    # "colors":Landroidx/compose/material/SliderColors;
    .restart local v8    # "endInteractionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v9    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2c
    move-object/from16 v26, v0

    move/from16 v25, v1

    .end local v0    # "modifier":Landroidx/compose/ui/Modifier;
    .end local v1    # "$dirty":I
    .restart local v25    # "$dirty":I
    .restart local v26    # "modifier":Landroidx/compose/ui/Modifier;
    const/4 v0, 0x0

    .line 308
    .local v0, "$i$a$-require-SliderKt$RangeSlider$1":I
    nop

    .end local v0    # "$i$a$-require-SliderKt$RangeSlider$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "steps should be >= 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 61
    .param p0, "enabled"    # Z
    .param p1, "positionFractionStart"    # F
    .param p2, "positionFractionEnd"    # F
    .param p3, "tickFractions"    # Ljava/util/List;
    .param p4, "colors"    # Landroidx/compose/material/SliderColors;
    .param p5, "width"    # F
    .param p6, "startInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p7, "endInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p9, "startThumbSemantics"    # Landroidx/compose/ui/Modifier;
    .param p10, "endThumbSemantics"    # Landroidx/compose/ui/Modifier;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 632
    const v0, -0x109f9c61

    move-object/from16 v1, p11

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(RangeSliderImpl)P(1,6,5,9!1,10,7!1,4,8)633@26170L35,634@26238L33,635@26276L1522:Slider.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p12

    .local v2, "$dirty":I
    move/from16 v3, p13

    .local v3, "$dirty1":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "androidx.compose.material.RangeSliderImpl (Slider.kt:631)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 634
    :cond_0
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getSliderRangeStart-UdPEhr4()I

    move-result v0

    const/4 v4, 0x6

    invoke-static {v0, v1, v4}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "startContentDescription":Ljava/lang/String;
    sget-object v5, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v5}, Landroidx/compose/material/Strings$Companion;->getSliderRangeEnd-UdPEhr4()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    .line 636
    .local v5, "endContentDescription":Ljava/lang/String;
    sget-object v6, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    move-object/from16 v15, p8

    invoke-interface {v15, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .local v6, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v7, 0x0

    .local v7, "$changed$iv":I
    const/4 v8, 0x0

    .local v8, "$i$f$Box":I
    const v9, 0x2bb5b5d7

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v9, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v1, v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1277
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v9

    .line 1278
    .local v9, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v10, 0x0

    .line 1281
    .local v10, "propagateMinConstraints$iv":Z
    shr-int/lit8 v11, v7, 0x3

    and-int/lit8 v11, v11, 0xe

    shr-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v11, v12

    invoke-static {v9, v10, v1, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    .local v11, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v12, v7, 0x3

    and-int/lit8 v12, v12, 0x70

    .line 1282
    nop

    .local v12, "$changed$iv$iv":I
    const/4 v13, 0x0

    .local v13, "$i$f$Layout":I
    const v14, -0x4ee9b9da

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v14, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v14}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1283
    const/4 v14, 0x0

    invoke-static {v1, v14}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v14

    .line 1284
    .local v14, "compositeKeyHash$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v4

    .line 1286
    .local v4, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v16

    .line 1293
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v17

    move/from16 v21, v3

    .end local v3    # "$dirty1":I
    .local v21, "$dirty1":I
    shl-int/lit8 v3, v12, 0x9

    and-int/lit16 v3, v3, 0x1c00

    const/16 v18, 0x6

    or-int/lit8 v3, v3, 0x6

    .line 1285
    move-object/from16 v18, v17

    .local v3, "$changed$iv$iv$iv":I
    .local v18, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v17, v16

    .local v17, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v16, 0x0

    .line 1294
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 v19, v6

    .end local v6    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v19, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    if-nez v6, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1295
    :cond_1
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1296
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1297
    move-object/from16 v6, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v6, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1299
    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_2
    move-object/from16 v6, v17

    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1301
    :goto_0
    move-object/from16 v17, v6

    .end local v6    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .local v6, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v20, 0x0

    .line 1288
    .local v20, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v23, v8

    .end local v8    # "$i$f$Box":I
    .local v23, "$i$f$Box":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1289
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    invoke-static {v6, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1291
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v8

    .local v8, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v22, 0x0

    .line 1302
    .local v22, "$i$f$set-impl":I
    move-object/from16 v24, v6

    .local v24, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v25, 0x0

    .line 1303
    .local v25, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v26

    if-nez v26, :cond_4

    move-object/from16 v26, v4

    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v26, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v9

    .end local v9    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v27, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v9, v24

    goto :goto_2

    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v27    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v9    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :cond_4
    move-object/from16 v26, v4

    move-object/from16 v27, v9

    .line 1304
    .end local v4    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v9    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v27    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v9, v24

    .end local v24    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v9, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1305
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v8}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1307
    :goto_2
    nop

    .line 1302
    .end local v9    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v25    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1307
    nop

    .line 1292
    .end local v8    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v22    # "$i$f$set-impl":I
    nop

    .line 1301
    .end local v6    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1308
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v4

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v6, v6, 0x70

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v18

    .end local v18    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v8, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8, v4, v1, v6}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const v4, 0x7ab4aae9

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1310
    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0xe

    .local v4, "$changed$iv":I
    move-object v6, v1

    .local v6, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v9, 0x0

    .line 1311
    .local v9, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v18, v3

    .end local v3    # "$changed$iv$iv$iv":I
    .local v18, "$changed$iv$iv$iv":I
    const v3, -0x4ab8dd4f

    move/from16 v20, v4

    .end local v4    # "$changed$iv":I
    .local v20, "$changed$iv":I
    const-string v4, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v6, v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v4, v7, 0x6

    and-int/lit8 v4, v4, 0x70

    const/16 v22, 0x6

    or-int/lit8 v4, v4, 0x6

    .local v4, "$changed":I
    check-cast v3, Landroidx/compose/foundation/layout/BoxScope;

    .local v3, "$this$RangeSliderImpl_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 p11, v6

    .restart local p11    # "$composer":Landroidx/compose/runtime/Composer;
    const/16 v22, 0x0

    .line 637
    .local v22, "$i$a$-Box-SliderKt$RangeSliderImpl$1":I
    move/from16 v24, v7

    .end local v7    # "$changed$iv":I
    .local v24, "$changed$iv":I
    const v7, -0x64bdff1c

    move-object/from16 v25, v8

    .end local v8    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v25, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    const-string v8, "C*639@26436L7,648@26744L301,661@27055L369,672@27433L359:Slider.kt#jmzs0o"

    move/from16 v56, v9

    move-object/from16 v9, p11

    .end local p11    # "$composer":Landroidx/compose/runtime/Composer;
    .local v9, "$composer":Landroidx/compose/runtime/Composer;
    .local v56, "$i$a$-Layout-BoxKt$Box$1$iv":I
    invoke-static {v9, v7, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v7, 0x0

    .line 638
    .local v7, "trackStrokeWidth":F
    const/4 v8, 0x0

    .line 639
    .local v8, "thumbPx":F
    const/16 v28, 0x0

    .line 640
    .local v28, "widthDp":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v29

    move/from16 p11, v7

    .end local v7    # "trackStrokeWidth":F
    .local p11, "trackStrokeWidth":F
    move-object/from16 v7, v29

    check-cast v7, Landroidx/compose/runtime/CompositionLocal;

    .local v7, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v29, 0x0

    .local v29, "$changed$iv":I
    const/16 v30, 0x0

    .line 1312
    .local v30, "$i$f$getCurrent":I
    move/from16 v31, v8

    .end local v8    # "thumbPx":F
    .local v31, "thumbPx":F
    const v8, 0x789c5f52

    move/from16 v57, v10

    .end local v10    # "propagateMinConstraints$iv":Z
    .local v57, "propagateMinConstraints$iv":Z
    const-string v10, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v9, v8, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 640
    .end local v7    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v29    # "$changed$iv":I
    .end local v30    # "$i$f$getCurrent":I
    move-object v7, v8

    check-cast v7, Landroidx/compose/ui/unit/Density;

    .local v7, "$this$RangeSliderImpl_u24lambda_u2412_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    const/4 v8, 0x0

    .line 641
    .local v8, "$i$a$-with-SliderKt$RangeSliderImpl$1$1":I
    sget v10, Landroidx/compose/material/SliderKt;->TrackHeight:F

    invoke-interface {v7, v10}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v10

    .line 642
    .end local p11    # "trackStrokeWidth":F
    .local v10, "trackStrokeWidth":F
    move/from16 p11, v8

    .end local v8    # "$i$a$-with-SliderKt$RangeSliderImpl$1$1":I
    .local p11, "$i$a$-with-SliderKt$RangeSliderImpl$1$1":I
    sget v8, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    invoke-interface {v7, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v8

    .line 643
    .end local v31    # "thumbPx":F
    .local v8, "thumbPx":F
    move/from16 v15, p5

    invoke-interface {v7, v15}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v58

    .line 644
    .end local v28    # "widthDp":F
    .local v58, "widthDp":F
    nop

    .line 640
    .end local v7    # "$this$RangeSliderImpl_u24lambda_u2412_u24lambda_u249":Landroidx/compose/ui/unit/Density;
    .end local p11    # "$i$a$-with-SliderKt$RangeSliderImpl$1$1":I
    nop

    .line 646
    sget v7, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .local v7, "arg0$iv":F
    const/16 v28, 0x2

    .local v28, "other$iv":I
    move/from16 p11, v28

    .end local v28    # "other$iv":I
    .local p11, "other$iv":I
    const/16 v28, 0x0

    .line 1313
    .local v28, "$i$f$times-u2uoSUM":I
    move-object/from16 v59, v11

    move/from16 v11, p11

    move/from16 p11, v12

    .end local v12    # "$changed$iv$iv":I
    .local v11, "other$iv":I
    .local v59, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local p11, "$changed$iv$iv":I
    int-to-float v12, v11

    mul-float/2addr v12, v7

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v44

    .line 646
    .end local v7    # "arg0$iv":F
    .end local v11    # "other$iv":I
    .end local v28    # "$i$f$times-u2uoSUM":I
    nop

    .line 647
    .local v44, "thumbSize":F
    move/from16 v7, v58

    .restart local v7    # "arg0$iv":F
    const/4 v11, 0x0

    .line 1314
    .local v11, "$i$f$times-u2uoSUM":I
    mul-float v12, v7, p1

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v40

    .line 647
    .end local v7    # "arg0$iv":F
    .end local v11    # "$i$f$times-u2uoSUM":I
    nop

    .line 648
    .local v40, "offsetStart":F
    nop

    .restart local v7    # "arg0$iv":F
    const/4 v11, 0x0

    .line 1315
    .restart local v11    # "$i$f$times-u2uoSUM":I
    mul-float v12, v7, p2

    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v49

    .line 648
    .end local v7    # "arg0$iv":F
    .end local v11    # "$i$f$times-u2uoSUM":I
    nop

    .line 651
    .local v49, "offsetEnd":F
    nop

    .line 650
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 651
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v11

    invoke-interface {v3, v7, v11}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 652
    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v60, v13

    .end local v13    # "$i$f$Layout":I
    .local v60, "$i$f$Layout":I
    const/4 v13, 0x1

    invoke-static {v7, v11, v13, v12}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v28

    .line 653
    nop

    .line 654
    nop

    .line 655
    nop

    .line 656
    nop

    .line 657
    nop

    .line 658
    nop

    .line 659
    shr-int/lit8 v7, v2, 0x9

    and-int/lit8 v7, v7, 0x70

    const/high16 v11, 0x40000

    or-int/2addr v7, v11

    shl-int/lit8 v11, v2, 0x6

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v7, v11

    shl-int/lit8 v11, v2, 0x6

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v7, v11

    shl-int/lit8 v11, v2, 0x6

    const v12, 0xe000

    and-int/2addr v11, v12

    or-int v37, v7, v11

    .line 649
    move-object/from16 v29, p4

    move/from16 v30, p0

    move/from16 v31, p1

    move/from16 v32, p2

    move-object/from16 v33, p3

    move/from16 v34, v8

    move/from16 v35, v10

    move-object/from16 v36, v9

    invoke-static/range {v28 .. v37}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 662
    nop

    .line 663
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 664
    const v11, 0x56dddd20

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "invalid$iv":Z
    move-object/from16 v28, v9

    .local v28, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 1316
    .local v29, "$i$f$cache":I
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    .local v12, "it$iv":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 1317
    .local v31, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_6

    sget-object v32, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v32 .. v32}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v12, v13, :cond_5

    goto :goto_3

    .line 1321
    :cond_5
    move/from16 v32, v8

    move-object v8, v12

    move-object/from16 v13, v28

    goto :goto_4

    .line 1318
    :cond_6
    :goto_3
    const/4 v13, 0x0

    .line 664
    .local v13, "$i$a$-cache-SliderKt$RangeSliderImpl$1$2":I
    move/from16 v32, v8

    .end local v8    # "thumbPx":F
    .local v32, "thumbPx":F
    new-instance v8, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;

    invoke-direct {v8, v0}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$2$1;-><init>(Ljava/lang/String;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1318
    .end local v13    # "$i$a$-cache-SliderKt$RangeSliderImpl$1$2":I
    nop

    .line 1319
    .local v8, "value$iv":Ljava/lang/Object;
    move-object/from16 v13, v28

    .end local v28    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v13, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1320
    nop

    .line 1317
    .end local v8    # "value$iv":Ljava/lang/Object;
    :goto_4
    nop

    .line 1316
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v31    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 664
    .end local v11    # "invalid$iv":Z
    .end local v13    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$f$cache":I
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v11, 0x1

    invoke-static {v7, v11, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 665
    move-object/from16 v13, p6

    invoke-static {v7, v11, v13}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 666
    move-object/from16 v12, p9

    invoke-interface {v7, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v39

    .line 667
    nop

    .line 668
    nop

    .line 669
    nop

    .line 670
    nop

    .line 671
    and-int/lit8 v7, v4, 0xe

    const/high16 v8, 0x180000

    or-int/2addr v7, v8

    shr-int/lit8 v11, v2, 0x9

    and-int/lit16 v11, v11, 0x1c00

    or-int/2addr v7, v11

    const v11, 0xe000

    and-int v28, v2, v11

    or-int v7, v7, v28

    shl-int/lit8 v11, v2, 0xf

    const/high16 v28, 0x70000

    and-int v11, v11, v28

    or-int v46, v7, v11

    .line 662
    move-object/from16 v38, v3

    move-object/from16 v41, p6

    move-object/from16 v42, p4

    move/from16 v43, p0

    move-object/from16 v45, v9

    invoke-static/range {v38 .. v46}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 673
    nop

    .line 674
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v7, Landroidx/compose/ui/Modifier;

    .line 675
    const v11, 0x56ddde9a

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .restart local v11    # "invalid$iv":Z
    move-object/from16 v29, v9

    .local v29, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v31, 0x0

    .line 1322
    .local v31, "$i$f$cache":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    .local v8, "it$iv":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 1323
    .local v35, "$i$a$-let-ComposerKt$cache$1$iv":I
    if-nez v11, :cond_8

    sget-object v36, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v37, v0

    .end local v0    # "startContentDescription":Ljava/lang/String;
    .local v37, "startContentDescription":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v8, v0, :cond_7

    goto :goto_5

    .line 1327
    :cond_7
    move-object/from16 v36, v5

    move-object v0, v8

    move-object/from16 v5, v29

    goto :goto_6

    .line 1323
    .end local v37    # "startContentDescription":Ljava/lang/String;
    .restart local v0    # "startContentDescription":Ljava/lang/String;
    :cond_8
    move-object/from16 v37, v0

    .line 1324
    .end local v0    # "startContentDescription":Ljava/lang/String;
    .restart local v37    # "startContentDescription":Ljava/lang/String;
    :goto_5
    const/4 v0, 0x0

    .line 675
    .local v0, "$i$a$-cache-SliderKt$RangeSliderImpl$1$3":I
    move/from16 v36, v0

    .end local v0    # "$i$a$-cache-SliderKt$RangeSliderImpl$1$3":I
    .local v36, "$i$a$-cache-SliderKt$RangeSliderImpl$1$3":I
    new-instance v0, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;

    invoke-direct {v0, v5}, Landroidx/compose/material/SliderKt$RangeSliderImpl$1$3$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1324
    .end local v36    # "$i$a$-cache-SliderKt$RangeSliderImpl$1$3":I
    nop

    .line 1325
    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v36, v5

    move-object/from16 v5, v29

    .end local v29    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v5, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v36, "endContentDescription":Ljava/lang/String;
    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1326
    nop

    .line 1323
    .end local v0    # "value$iv":Ljava/lang/Object;
    :goto_6
    nop

    .line 1322
    .end local v8    # "it$iv":Ljava/lang/Object;
    .end local v35    # "$i$a$-let-ComposerKt$cache$1$iv":I
    nop

    .line 675
    .end local v5    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v11    # "invalid$iv":Z
    .end local v31    # "$i$f$cache":I
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v5, 0x1

    invoke-static {v7, v5, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 676
    move-object/from16 v11, p7

    invoke-static {v0, v5, v11}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 677
    move-object/from16 v5, p10

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v48

    .line 678
    nop

    .line 679
    nop

    .line 680
    nop

    .line 681
    nop

    .line 682
    and-int/lit8 v0, v4, 0xe

    const/high16 v7, 0x180000

    or-int/2addr v0, v7

    shr-int/lit8 v7, v2, 0xc

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr v0, v7

    const v7, 0xe000

    and-int/2addr v7, v2

    or-int/2addr v0, v7

    shl-int/lit8 v7, v2, 0xf

    and-int v7, v7, v28

    or-int v55, v0, v7

    .line 673
    move-object/from16 v47, v3

    move-object/from16 v50, p7

    move-object/from16 v51, p4

    move/from16 v52, p0

    move/from16 v53, v44

    move-object/from16 v54, v9

    invoke-static/range {v47 .. v55}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 637
    invoke-static {v9}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 684
    .end local v10    # "trackStrokeWidth":F
    .end local v32    # "thumbPx":F
    .end local v40    # "offsetStart":F
    .end local v44    # "thumbSize":F
    .end local v49    # "offsetEnd":F
    .end local v58    # "widthDp":F
    nop

    .line 1311
    .end local v3    # "$this$RangeSliderImpl_u24lambda_u2412":Landroidx/compose/foundation/layout/BoxScope;
    .end local v4    # "$changed":I
    .end local v9    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v22    # "$i$a$-Box-SliderKt$RangeSliderImpl$1":I
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1310
    .end local v6    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v20    # "$changed$iv":I
    .end local v56    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 1328
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1329
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1330
    nop

    .end local v16    # "$i$f$ReusableComposeNode":I
    .end local v17    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$changed$iv$iv$iv":I
    .end local v25    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1331
    nop

    .end local v14    # "compositeKeyHash$iv$iv":I
    .end local v26    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v60    # "$i$f$Layout":I
    .end local p11    # "$changed$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1332
    nop

    .end local v19    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v23    # "$i$f$Box":I
    .end local v24    # "$changed$iv":I
    .end local v27    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v57    # "propagateMinConstraints$iv":Z
    .end local v59    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v3, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;

    move-object v7, v3

    move/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move-object/from16 v18, p10

    move/from16 v19, p12

    move/from16 v20, p13

    invoke-direct/range {v7 .. v20}, Landroidx/compose/material/SliderKt$RangeSliderImpl$2;-><init>(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;II)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 685
    :cond_a
    return-void
.end method

.method public static final Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
    .locals 40
    .param p0, "value"    # F
    .param p1, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p2, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p3, "enabled"    # Z
    .param p4, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p5, "steps"    # I
    .param p6, "onValueChangeFinished"    # Lkotlin/jvm/functions/Function0;
    .param p7, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "colors"    # Landroidx/compose/material/SliderColors;
    .param p9, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p10, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/SliderColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 160
    move-object/from16 v12, p1

    move/from16 v13, p10

    move/from16 v11, p11

    const v0, -0x74f6dbdc

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .end local p9    # "$composer":Landroidx/compose/runtime/Composer;
    .local v10, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Slider)P(7,4,3,1,8,6,5,2)157@7556L39,158@7639L8,161@7732L35,162@7792L59,165@7856L3444:Slider.kt#jmzs0o"

    invoke-static {v10, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p10

    .local v1, "$dirty":I
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x6

    move/from16 v9, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v13, 0xe

    if-nez v2, :cond_2

    move/from16 v9, p0

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

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
    move/from16 v9, p0

    :goto_1
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v2, v13, 0x70

    if-nez v2, :cond_5

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    goto :goto_2

    :cond_4
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_5
    :goto_3
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_6

    or-int/lit16 v1, v1, 0x180

    move-object/from16 v3, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v3, v13, 0x380

    if-nez v3, :cond_8

    move-object/from16 v3, p2

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v4, v11, 0x8

    if-eqz v4, :cond_9

    or-int/lit16 v1, v1, 0xc00

    move/from16 v5, p3

    goto :goto_7

    :cond_9
    and-int/lit16 v5, v13, 0x1c00

    if-nez v5, :cond_b

    move/from16 v5, p3

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move/from16 v5, p3

    :goto_7
    const v6, 0xe000

    and-int/2addr v6, v13

    if-nez v6, :cond_e

    and-int/lit8 v6, v11, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p4

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v6, p4

    :cond_d
    const/16 v7, 0x2000

    :goto_8
    or-int/2addr v1, v7

    goto :goto_9

    :cond_e
    move-object/from16 v6, p4

    :goto_9
    and-int/lit8 v7, v11, 0x20

    if-eqz v7, :cond_f

    const/high16 v8, 0x30000

    or-int/2addr v1, v8

    move/from16 v8, p5

    goto :goto_b

    :cond_f
    const/high16 v8, 0x70000

    and-int/2addr v8, v13

    if-nez v8, :cond_11

    move/from16 v8, p5

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_10

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v1, v14

    goto :goto_b

    :cond_11
    move/from16 v8, p5

    :goto_b
    and-int/lit8 v14, v11, 0x40

    if-eqz v14, :cond_12

    const/high16 v15, 0x180000

    or-int/2addr v1, v15

    move-object/from16 v15, p6

    goto :goto_d

    :cond_12
    const/high16 v15, 0x380000

    and-int/2addr v15, v13

    if-nez v15, :cond_14

    move-object/from16 v15, p6

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

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
    move-object/from16 v15, p6

    :goto_d
    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_15

    const/high16 v16, 0xc00000

    or-int v1, v1, v16

    move-object/from16 v3, p7

    goto :goto_f

    :cond_15
    const/high16 v16, 0x1c00000

    and-int v16, v13, v16

    if-nez v16, :cond_17

    move-object/from16 v3, p7

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v16, 0x400000

    :goto_e
    or-int v1, v1, v16

    goto :goto_f

    :cond_17
    move-object/from16 v3, p7

    :goto_f
    const/high16 v16, 0xe000000

    and-int v16, v13, v16

    if-nez v16, :cond_1a

    and-int/lit16 v3, v11, 0x100

    if-nez v3, :cond_18

    move-object/from16 v3, p8

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    const/high16 v16, 0x4000000

    goto :goto_10

    :cond_18
    move-object/from16 v3, p8

    :cond_19
    const/high16 v16, 0x2000000

    :goto_10
    or-int v1, v1, v16

    goto :goto_11

    :cond_1a
    move-object/from16 v3, p8

    :goto_11
    const v16, 0xb6db6db

    and-int v3, v1, v16

    const v5, 0x2492492

    if-ne v3, v5, :cond_1c

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_12

    .line 257
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v39, p2

    move/from16 v14, p3

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move/from16 v23, v1

    move/from16 v16, v8

    move-object/from16 v17, v15

    move-object v15, v6

    goto/16 :goto_1f

    .line 160
    :cond_1c
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v3, v13, 0x1

    const v5, -0xe000001

    const v16, -0xe001

    if-eqz v3, :cond_20

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_13

    .line 159
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1e

    and-int v1, v1, v16

    :cond_1e
    and-int/lit16 v0, v11, 0x100

    if-eqz v0, :cond_1f

    and-int v0, v1, v5

    move-object/from16 v39, p2

    move/from16 v3, p3

    move-object/from16 v2, p8

    move v1, v0

    move-object v4, v6

    move v5, v8

    move-object v6, v15

    move-object/from16 v0, p7

    .end local v1    # "$dirty":I
    .local v0, "$dirty":I
    goto/16 :goto_1b

    .end local v0    # "$dirty":I
    .restart local v1    # "$dirty":I
    :cond_1f
    move-object/from16 v39, p2

    move/from16 v3, p3

    move-object/from16 v0, p7

    move-object/from16 v2, p8

    move-object v4, v6

    move v5, v8

    move-object v6, v15

    goto/16 :goto_1b

    .line 160
    :cond_20
    :goto_13
    if-eqz v2, :cond_21

    .line 152
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    goto :goto_14

    .line 160
    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local p2    # "modifier":Landroidx/compose/ui/Modifier;
    :cond_21
    move-object/from16 v2, p2

    .line 152
    .end local p2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v2    # "modifier":Landroidx/compose/ui/Modifier;
    :goto_14
    if-eqz v4, :cond_22

    .line 153
    const/4 v3, 0x1

    .end local p3    # "enabled":Z
    .local v3, "enabled":Z
    goto :goto_15

    .line 152
    .end local v3    # "enabled":Z
    .restart local p3    # "enabled":Z
    :cond_22
    move/from16 v3, p3

    .line 153
    .end local p3    # "enabled":Z
    .restart local v3    # "enabled":Z
    :goto_15
    and-int/lit8 v4, v11, 0x10

    if-eqz v4, :cond_23

    .line 154
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    .end local p4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .local v4, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    and-int v1, v1, v16

    goto :goto_16

    .line 153
    .end local v4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .restart local p4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    :cond_23
    move-object v4, v6

    .line 154
    .end local p4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .restart local v4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    :goto_16
    if-eqz v7, :cond_24

    .line 156
    const/4 v5, 0x0

    .end local p5    # "steps":I
    .local v5, "steps":I
    goto :goto_17

    .line 154
    .end local v5    # "steps":I
    .restart local p5    # "steps":I
    :cond_24
    move v5, v8

    .line 156
    .end local p5    # "steps":I
    .restart local v5    # "steps":I
    :goto_17
    if-eqz v14, :cond_25

    .line 157
    const/4 v6, 0x0

    .end local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .local v6, "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    goto :goto_18

    .line 156
    .end local v6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    :cond_25
    move-object v6, v15

    .line 157
    .end local p6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local v6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    :goto_18
    if-eqz v0, :cond_27

    .line 158
    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v7, 0x0

    .local v7, "$i$f$remember":I
    const v8, -0x1d58f75c

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v10, v8}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1196
    const/4 v8, 0x0

    .local v8, "invalid$iv$iv":Z
    move-object v14, v10

    .local v14, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/4 v15, 0x0

    .line 1197
    .local v15, "$i$f$cache":I
    move/from16 p2, v0

    .end local v0    # "$changed$iv":I
    .local p2, "$changed$iv":I
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 1198
    .local v16, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move-object/from16 v39, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .local v39, "modifier":Landroidx/compose/ui/Modifier;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_26

    .line 1199
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$a$-remember-SliderKt$Slider$1":I
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v2

    .line 1199
    .end local v2    # "$i$a$-remember-SliderKt$Slider$1":I
    nop

    .line 1200
    .local v2, "value$iv$iv":Ljava/lang/Object;
    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1201
    nop

    .end local v2    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_19

    .line 1202
    :cond_26
    move-object v2, v0

    .line 1198
    :goto_19
    nop

    .line 1197
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    nop

    .line 1196
    .end local v8    # "invalid$iv$iv":Z
    .end local v14    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v15    # "$i$f$cache":I
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .end local v7    # "$i$f$remember":I
    .end local p2    # "$changed$iv":I
    move-object v0, v2

    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .end local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v0, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    goto :goto_1a

    .line 157
    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v39    # "modifier":Landroidx/compose/ui/Modifier;
    .local v2, "modifier":Landroidx/compose/ui/Modifier;
    .restart local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :cond_27
    move-object/from16 v39, v2

    .end local v2    # "modifier":Landroidx/compose/ui/Modifier;
    .restart local v39    # "modifier":Landroidx/compose/ui/Modifier;
    move-object/from16 v0, p7

    .line 1196
    .end local p7    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    :goto_1a
    and-int/lit16 v2, v11, 0x100

    if-eqz v2, :cond_28

    .line 159
    sget-object v14, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x6

    const/16 v38, 0x3ff

    move-object/from16 v35, v10

    invoke-virtual/range {v14 .. v38}, Landroidx/compose/material/SliderDefaults;->colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;

    move-result-object v2

    const v7, -0xe000001

    .end local p8    # "colors":Landroidx/compose/material/SliderColors;
    .local v2, "colors":Landroidx/compose/material/SliderColors;
    and-int/2addr v1, v7

    goto :goto_1b

    .line 1196
    .end local v2    # "colors":Landroidx/compose/material/SliderColors;
    .restart local p8    # "colors":Landroidx/compose/material/SliderColors;
    :cond_28
    move-object/from16 v2, p8

    .line 159
    .end local p8    # "colors":Landroidx/compose/material/SliderColors;
    .restart local v2    # "colors":Landroidx/compose/material/SliderColors;
    :goto_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 160
    const/4 v7, -0x1

    const-string/jumbo v8, "androidx.compose.material.Slider (Slider.kt:159)"

    const v14, -0x74f6dbdc

    invoke-static {v14, v1, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 161
    :cond_29
    if-ltz v5, :cond_2a

    const/4 v8, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v8, 0x0

    :goto_1c
    if-eqz v8, :cond_2f

    .line 162
    shr-int/lit8 v8, v1, 0x3

    and-int/lit8 v8, v8, 0xe

    invoke-static {v12, v10, v8}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v8

    .local v8, "onValueChangeState":Landroidx/compose/runtime/State;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    shr-int/lit8 v15, v1, 0xf

    and-int/lit8 v15, v15, 0xe

    .line 163
    nop

    .local v14, "key1$iv":Ljava/lang/Object;
    .local v15, "$changed$iv":I
    const/16 v16, 0x0

    .local v16, "$i$f$remember":I
    const v7, 0x44faf204

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v7, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v10, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1204
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "invalid$iv$iv":Z
    move-object/from16 p2, v10

    .local p2, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1205
    .local v17, "$i$f$cache":I
    move/from16 v23, v1

    .end local v1    # "$dirty":I
    .local v23, "$dirty":I
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 1206
    .local v18, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    if-nez v7, :cond_2c

    sget-object v19, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p3, v7

    .end local v7    # "invalid$iv$iv":Z
    .local p3, "invalid$iv$iv":Z
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v1, v7, :cond_2b

    goto :goto_1d

    .line 1210
    :cond_2b
    move-object/from16 p4, v1

    move-object/from16 v7, p4

    move-object/from16 v1, p2

    goto :goto_1e

    .line 1206
    .end local p3    # "invalid$iv$iv":Z
    .restart local v7    # "invalid$iv$iv":Z
    :cond_2c
    move/from16 p3, v7

    .line 1207
    .end local v7    # "invalid$iv$iv":Z
    .restart local p3    # "invalid$iv$iv":Z
    :goto_1d
    const/4 v7, 0x0

    .line 164
    .local v7, "$i$a$-remember-SliderKt$Slider$tickFractions$1":I
    invoke-static {v5}, Landroidx/compose/material/SliderKt;->access$stepsToTickFractions(I)Ljava/util/List;

    move-result-object v7

    .line 1207
    .end local v7    # "$i$a$-remember-SliderKt$Slider$tickFractions$1":I
    nop

    .line 1208
    .local v7, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 p4, v1

    move-object/from16 v1, p2

    .end local p2    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v1, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local p4, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1209
    nop

    .line 1206
    .end local v7    # "value$iv$iv":Ljava/lang/Object;
    :goto_1e
    nop

    .line 1205
    .end local v18    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local p4    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1204
    .end local v1    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$f$cache":I
    .end local p3    # "invalid$iv$iv":Z
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 163
    .end local v14    # "key1$iv":Ljava/lang/Object;
    .end local v15    # "$changed$iv":I
    .end local v16    # "$i$f$remember":I
    move-object v1, v7

    check-cast v1, Ljava/util/List;

    .line 167
    .local v1, "tickFractions":Ljava/util/List;
    nop

    .line 168
    invoke-static/range {v39 .. v39}, Landroidx/compose/material/InteractiveComponentSizeKt;->minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 169
    sget v14, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .local v14, "arg0$iv":F
    const/4 v15, 0x2

    .local v15, "other$iv":I
    const/16 v16, 0x0

    .line 1211
    .local v16, "$i$f$times-u2uoSUM":I
    int-to-float v9, v15

    mul-float/2addr v9, v14

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v9

    .line 169
    .end local v14    # "arg0$iv":F
    .end local v15    # "other$iv":I
    .end local v16    # "$i$f$times-u2uoSUM":I
    sget v14, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .restart local v14    # "arg0$iv":F
    const/4 v15, 0x2

    .restart local v15    # "other$iv":I
    const/16 v16, 0x0

    .line 1211
    .restart local v16    # "$i$f$times-u2uoSUM":I
    int-to-float v11, v15

    mul-float/2addr v11, v14

    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v11

    .line 169
    .end local v14    # "arg0$iv":F
    .end local v15    # "other$iv":I
    .end local v16    # "$i$f$times-u2uoSUM":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    move-object/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v11

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v16

    move-object/from16 p8, v17

    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->requiredSizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 175
    nop

    .line 176
    nop

    .line 170
    move-object/from16 p2, v7

    move/from16 p3, p0

    move/from16 p4, v3

    move-object/from16 p5, p1

    move-object/from16 p6, v6

    move-object/from16 p7, v4

    move/from16 p8, v5

    invoke-static/range {p2 .. p8}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    .line 178
    invoke-static {v7, v3, v0}, Landroidx/compose/foundation/FocusableKt;->focusable(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v9, 0x0

    .line 179
    new-instance v15, Landroidx/compose/material/SliderKt$Slider$3;

    move-object v14, v15

    move-object v11, v15

    move-object v15, v4

    move/from16 v16, p0

    move-object/from16 v17, v0

    move/from16 v18, v3

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v6

    invoke-direct/range {v14 .. v22}, Landroidx/compose/material/SliderKt$Slider$3;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;FLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;)V

    const v14, 0x7c485b8e

    const/4 v15, 0x1

    invoke-static {v10, v14, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function3;

    const/16 v14, 0xc00

    const/4 v15, 0x6

    .line 166
    move-object/from16 p2, v7

    move-object/from16 p3, v9

    const/4 v7, 0x0

    move/from16 p4, v7

    move-object/from16 p5, v11

    move-object/from16 p6, v10

    move/from16 p7, v14

    move/from16 p8, v15

    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 257
    .end local v1    # "tickFractions":Ljava/util/List;
    .end local v8    # "onValueChangeState":Landroidx/compose/runtime/State;
    :cond_2d
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v6

    .end local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v2    # "colors":Landroidx/compose/material/SliderColors;
    .end local v3    # "enabled":Z
    .end local v4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v5    # "steps":I
    .end local v6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .local v14, "enabled":Z
    .local v15, "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .local v16, "steps":I
    .local v17, "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .local v18, "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v19, "colors":Landroidx/compose/material/SliderColors;
    :goto_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_2e

    new-instance v20, Landroidx/compose/material/SliderKt$Slider$4;

    move-object/from16 v0, v20

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v39

    move v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v21, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .local v21, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v10, p10

    move-object v12, v11

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$Slider$4;-><init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;II)V

    move-object/from16 v0, v20

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_20

    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2e
    move-object/from16 v21, v10

    .end local v10    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v21    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_20
    return-void

    .line 1203
    .end local v14    # "enabled":Z
    .end local v15    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .end local v16    # "steps":I
    .end local v17    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .end local v18    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .end local v19    # "colors":Landroidx/compose/material/SliderColors;
    .end local v21    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v23    # "$dirty":I
    .restart local v0    # "interactionSource":Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .local v1, "$dirty":I
    .restart local v2    # "colors":Landroidx/compose/material/SliderColors;
    .restart local v3    # "enabled":Z
    .restart local v4    # "valueRange":Lkotlin/ranges/ClosedFloatingPointRange;
    .restart local v5    # "steps":I
    .restart local v6    # "onValueChangeFinished":Lkotlin/jvm/functions/Function0;
    .restart local v10    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_2f
    move/from16 v23, v1

    .end local v1    # "$dirty":I
    .restart local v23    # "$dirty":I
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$a$-require-SliderKt$Slider$2":I
    nop

    .end local v1    # "$i$a$-require-SliderKt$Slider$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "steps should be >= 0"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 46
    .param p0, "enabled"    # Z
    .param p1, "positionFraction"    # F
    .param p2, "tickFractions"    # Ljava/util/List;
    .param p3, "colors"    # Landroidx/compose/material/SliderColors;
    .param p4, "width"    # F
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/material/SliderColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 591
    const v0, 0x641dece1

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v1

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v1, "$composer":Landroidx/compose/runtime/Composer;
    const-string v2, "C(SliderImpl)P(1,4,5!1,6)591@25013L712:Slider.kt#jmzs0o"

    invoke-static {v1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v2, p8

    .local v2, "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    const-string/jumbo v4, "androidx.compose.material.SliderImpl (Slider.kt:590)"

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 592
    :cond_0
    sget-object v0, Landroidx/compose/material/SliderKt;->DefaultSliderConstraints:Landroidx/compose/ui/Modifier;

    move-object/from16 v12, p6

    invoke-interface {v12, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    const/4 v3, 0x0

    .local v3, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$Box":I
    const v5, 0x2bb5b5d7

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v1, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1234
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 1235
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v6, 0x0

    .line 1238
    .local v6, "propagateMinConstraints$iv":Z
    shr-int/lit8 v7, v3, 0x3

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v8, v3, 0x3

    and-int/lit8 v8, v8, 0x70

    or-int/2addr v7, v8

    invoke-static {v5, v6, v1, v7}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    .local v7, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v8, v3, 0x3

    and-int/lit8 v8, v8, 0x70

    .line 1239
    nop

    .local v8, "$changed$iv$iv":I
    const/4 v9, 0x0

    .local v9, "$i$f$Layout":I
    const v10, -0x4ee9b9da

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v10, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1240
    const/4 v10, 0x0

    invoke-static {v1, v10}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v10

    .line 1241
    .local v10, "compositeKeyHash$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v11

    .line 1243
    .local v11, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 1250
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v14

    shl-int/lit8 v15, v8, 0x9

    and-int/lit16 v15, v15, 0x1c00

    or-int/lit8 v15, v15, 0x6

    .line 1242
    nop

    .local v13, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v14, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v15, "$changed$iv$iv$iv":I
    const/16 v16, 0x0

    .line 1251
    .local v16, "$i$f$ReusableComposeNode":I
    move-object/from16 p7, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local p7, "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v0

    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1252
    :cond_1
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1253
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 1256
    :cond_2
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1258
    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    .local v0, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v17, 0x0

    .line 1245
    .local v17, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move/from16 v19, v4

    .end local v4    # "$i$f$Box":I
    .local v19, "$i$f$Box":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v0, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1246
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    invoke-static {v0, v11, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1248
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    .local v4, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v18, 0x0

    .line 1259
    .local v18, "$i$f$set-impl":I
    move-object/from16 v20, v0

    .local v20, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v21, 0x0

    .line 1260
    .local v21, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v22, v5

    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v22, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move/from16 v23, v6

    .end local v6    # "propagateMinConstraints$iv":Z
    .local v23, "propagateMinConstraints$iv":Z
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v6, v20

    goto :goto_2

    .end local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v23    # "propagateMinConstraints$iv":Z
    .restart local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v6    # "propagateMinConstraints$iv":Z
    :cond_4
    move-object/from16 v22, v5

    move/from16 v23, v6

    .line 1261
    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v6    # "propagateMinConstraints$iv":Z
    .restart local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .restart local v23    # "propagateMinConstraints$iv":Z
    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v20

    .end local v20    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v6, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1262
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1264
    :goto_2
    nop

    .line 1259
    .end local v6    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v21    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1264
    nop

    .line 1249
    .end local v4    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v18    # "$i$f$set-impl":I
    nop

    .line 1258
    .end local v0    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1265
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v4, v15, 0x3

    and-int/lit8 v4, v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v14, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    const v0, 0x7ab4aae9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1267
    shr-int/lit8 v0, v15, 0x9

    and-int/lit8 v0, v0, 0xe

    .local v0, "$changed$iv":I
    move-object v4, v1

    .local v4, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1268
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const v6, -0x4ab8dd4f

    move/from16 v17, v0

    .end local v0    # "$changed$iv":I
    .local v17, "$changed$iv":I
    const-string v0, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v4, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    .local v6, "$changed":I
    move-object/from16 v24, v0

    check-cast v24, Landroidx/compose/foundation/layout/BoxScope;

    .local v24, "$this$SliderImpl_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    move-object v0, v4

    .local v0, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v18, 0x0

    .line 593
    .local v18, "$i$a$-Box-SliderKt$SliderImpl$1":I
    move/from16 v20, v3

    .end local v3    # "$changed$iv":I
    .local v20, "$changed$iv":I
    const v3, 0x24d64c66

    move/from16 v21, v5

    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v21, "$i$a$-Layout-BoxKt$Box$1$iv":I
    const-string v5, "C*595@25173L7,604@25418L216,614@25643L76:Slider.kt#jmzs0o"

    invoke-static {v0, v3, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 594
    .local v3, "trackStrokeWidth":F
    const/4 v5, 0x0

    .line 595
    .local v5, "thumbPx":F
    const/16 v25, 0x0

    .line 596
    .local v25, "widthDp":F
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v26

    move/from16 v27, v3

    .end local v3    # "trackStrokeWidth":F
    .local v27, "trackStrokeWidth":F
    move-object/from16 v3, v26

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    .local v3, "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    const/16 v26, 0x0

    .local v26, "$changed$iv":I
    const/16 v28, 0x0

    .line 1269
    .local v28, "$i$f$getCurrent":I
    move/from16 v29, v5

    .end local v5    # "thumbPx":F
    .local v29, "thumbPx":F
    const v5, 0x789c5f52

    move-object/from16 v41, v7

    .end local v7    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v41, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    const-string v7, "CC:CompositionLocal.kt#9igjgp"

    invoke-static {v0, v5, v7}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 596
    .end local v3    # "this_$iv":Landroidx/compose/runtime/CompositionLocal;
    .end local v26    # "$changed$iv":I
    .end local v28    # "$i$f$getCurrent":I
    move-object v3, v5

    check-cast v3, Landroidx/compose/ui/unit/Density;

    .local v3, "$this$SliderImpl_u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/unit/Density;
    const/4 v5, 0x0

    .line 597
    .local v5, "$i$a$-with-SliderKt$SliderImpl$1$1":I
    sget v7, Landroidx/compose/material/SliderKt;->TrackHeight:F

    invoke-interface {v3, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    .line 598
    .end local v27    # "trackStrokeWidth":F
    .local v7, "trackStrokeWidth":F
    move/from16 v26, v5

    .end local v5    # "$i$a$-with-SliderKt$SliderImpl$1$1":I
    .local v26, "$i$a$-with-SliderKt$SliderImpl$1$1":I
    sget v5, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    invoke-interface {v3, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    .line 599
    .end local v29    # "thumbPx":F
    .local v5, "thumbPx":F
    move/from16 v12, p4

    invoke-interface {v3, v12}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v42

    .line 600
    .end local v25    # "widthDp":F
    .local v42, "widthDp":F
    nop

    .line 596
    .end local v3    # "$this$SliderImpl_u24lambda_u248_u24lambda_u247":Landroidx/compose/ui/unit/Density;
    .end local v26    # "$i$a$-with-SliderKt$SliderImpl$1$1":I
    nop

    .line 602
    sget v3, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    .local v3, "arg0$iv":F
    const/16 v25, 0x2

    .local v25, "other$iv":I
    move/from16 v26, v25

    .end local v25    # "other$iv":I
    .local v26, "other$iv":I
    const/16 v25, 0x0

    .line 1270
    .local v25, "$i$f$times-u2uoSUM":I
    move/from16 v43, v8

    move/from16 v44, v9

    move/from16 v8, v26

    .end local v9    # "$i$f$Layout":I
    .end local v26    # "other$iv":I
    .local v8, "other$iv":I
    .local v43, "$changed$iv$iv":I
    .local v44, "$i$f$Layout":I
    int-to-float v9, v8

    mul-float/2addr v9, v3

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v30

    .line 602
    .end local v3    # "arg0$iv":F
    .end local v8    # "other$iv":I
    .end local v25    # "$i$f$times-u2uoSUM":I
    nop

    .line 603
    .local v30, "thumbSize":F
    move/from16 v3, v42

    .restart local v3    # "arg0$iv":F
    const/4 v8, 0x0

    .line 1271
    .local v8, "$i$f$times-u2uoSUM":I
    mul-float v9, v3, p1

    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v26

    .line 603
    .end local v3    # "arg0$iv":F
    .end local v8    # "$i$f$times-u2uoSUM":I
    nop

    .line 606
    .local v26, "offset":F
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move/from16 v45, v10

    .end local v10    # "compositeKeyHash$iv$iv":I
    .local v45, "compositeKeyHash$iv$iv":I
    const/4 v10, 0x0

    invoke-static {v3, v10, v8, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v31

    .line 607
    nop

    .line 608
    nop

    .line 609
    const/16 v34, 0x0

    .line 610
    nop

    .line 611
    nop

    .line 612
    nop

    .line 613
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x70

    const v8, 0x40c06

    or-int/2addr v3, v8

    shl-int/lit8 v8, v2, 0x6

    and-int/lit16 v8, v8, 0x380

    or-int/2addr v3, v8

    shl-int/lit8 v8, v2, 0x9

    const v9, 0xe000

    and-int/2addr v8, v9

    or-int v40, v3, v8

    .line 605
    move-object/from16 v32, p3

    move/from16 v33, p0

    move/from16 v35, p1

    move-object/from16 v36, p2

    move/from16 v37, v5

    move/from16 v38, v7

    move-object/from16 v39, v0

    invoke-static/range {v31 .. v40}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    .line 615
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v25, v3

    check-cast v25, Landroidx/compose/ui/Modifier;

    and-int/lit8 v3, v6, 0xe

    const v8, 0x180030

    or-int/2addr v3, v8

    shr-int/lit8 v8, v2, 0x6

    and-int/lit16 v8, v8, 0x1c00

    or-int/2addr v3, v8

    shl-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v9

    or-int/2addr v3, v8

    shl-int/lit8 v8, v2, 0xf

    const/high16 v9, 0x70000

    and-int/2addr v8, v9

    or-int v32, v3, v8

    move-object/from16 v27, p5

    move-object/from16 v28, p3

    move/from16 v29, p0

    move-object/from16 v31, v0

    invoke-static/range {v24 .. v32}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    .line 593
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 616
    .end local v5    # "thumbPx":F
    .end local v7    # "trackStrokeWidth":F
    .end local v26    # "offset":F
    .end local v30    # "thumbSize":F
    .end local v42    # "widthDp":F
    nop

    .line 1268
    .end local v0    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v6    # "$changed":I
    .end local v18    # "$i$a$-Box-SliderKt$SliderImpl$1":I
    .end local v24    # "$this$SliderImpl_u24lambda_u248":Landroidx/compose/foundation/layout/BoxScope;
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1267
    .end local v4    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v17    # "$changed$iv":I
    .end local v21    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 1272
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1273
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1274
    nop

    .end local v13    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .end local v15    # "$changed$iv$iv$iv":I
    .end local v16    # "$i$f$ReusableComposeNode":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1275
    nop

    .end local v11    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .end local v43    # "$changed$iv$iv":I
    .end local v44    # "$i$f$Layout":I
    .end local v45    # "compositeKeyHash$iv$iv":I
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1276
    nop

    .end local v19    # "$i$f$Box":I
    .end local v20    # "$changed$iv":I
    .end local v22    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v23    # "propagateMinConstraints$iv":Z
    .end local v41    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local p7    # "modifier$iv":Landroidx/compose/ui/Modifier;
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v13, Landroidx/compose/material/SliderKt$SliderImpl$2;

    move-object v3, v13

    move/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroidx/compose/material/SliderKt$SliderImpl$2;-><init>(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;I)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 617
    :cond_6
    return-void
.end method

.method private static final SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 54
    .param p0, "$this$SliderThumb_u2dPcYyNuk"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "offset"    # F
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "colors"    # Landroidx/compose/material/SliderColors;
    .param p5, "enabled"    # Z
    .param p6, "thumbSize"    # F
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 695
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p8

    const v0, 0x19909aaa

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    .end local p7    # "$composer":Landroidx/compose/runtime/Composer;
    .local v8, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(SliderThumb)P(3,4:c#ui.unit.Dp,2!,5:c#ui.unit.Dp)695@28011L1553:Slider.kt#jmzs0o"

    invoke-static {v8, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v1, p8

    .local v1, "$dirty":I
    and-int/lit8 v2, v15, 0xe

    if-nez v2, :cond_1

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit8 v2, v15, 0x70

    if-nez v2, :cond_3

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, v15, 0x380

    if-nez v2, :cond_5

    move/from16 v7, p2

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    goto :goto_3

    :cond_5
    move/from16 v7, p2

    :goto_3
    and-int/lit16 v2, v15, 0x1c00

    if-nez v2, :cond_7

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x800

    goto :goto_4

    :cond_6
    const/16 v2, 0x400

    :goto_4
    or-int/2addr v1, v2

    :cond_7
    const v2, 0xe000

    and-int/2addr v2, v15

    if-nez v2, :cond_9

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x4000

    goto :goto_5

    :cond_8
    const/16 v2, 0x2000

    :goto_5
    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0x70000

    and-int/2addr v2, v15

    if-nez v2, :cond_b

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v2, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v2, 0x10000

    :goto_6
    or-int/2addr v1, v2

    :cond_b
    const/high16 v2, 0x380000

    and-int/2addr v2, v15

    if-nez v2, :cond_d

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_c

    const/high16 v2, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v2, 0x80000

    :goto_7
    or-int/2addr v1, v2

    :cond_d
    move v6, v1

    .end local v1    # "$dirty":I
    .local v6, "$dirty":I
    const v1, 0x2db6db

    and-int/2addr v1, v6

    const v2, 0x92492

    if-ne v1, v2, :cond_f

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 731
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_11

    .line 695
    :cond_f
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.SliderThumb (Slider.kt:694)"

    invoke-static {v0, v6, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 699
    :cond_10
    nop

    .line 697
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/Modifier;

    .line 698
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move/from16 v17, p2

    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 699
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 696
    const/4 v1, 0x0

    move v2, v1

    .local v0, "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v2, "$changed$iv":I
    const/4 v4, 0x0

    .local v4, "$i$f$Box":I
    const v5, 0x2bb5b5d7

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(Box)P(2,1,3)71@3309L67,72@3381L130:Box.kt#2w3rfo"

    invoke-static {v8, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1333
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    .line 1334
    .local v5, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    const/4 v3, 0x0

    .line 1337
    .local v3, "propagateMinConstraints$iv":Z
    shr-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0xe

    shr-int/lit8 v17, v2, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v1, v16, v17

    invoke-static {v5, v3, v8, v1}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    .local v1, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    shl-int/lit8 v16, v2, 0x3

    and-int/lit8 v16, v16, 0x70

    .line 1338
    nop

    .local v16, "$changed$iv$iv":I
    const/16 v17, 0x0

    move/from16 v19, v3

    .end local v3    # "propagateMinConstraints$iv":Z
    .local v17, "$i$f$Layout":I
    .local v19, "propagateMinConstraints$iv":Z
    const v3, -0x4ee9b9da

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(Layout)P(!1,2)78@3182L23,80@3272L420:Layout.kt#80mrfh"

    invoke-static {v8, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1339
    const/4 v3, 0x0

    invoke-static {v8, v3}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v20

    .line 1340
    .local v20, "compositeKeyHash$iv$iv":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    .line 1342
    .local v3, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v21

    .line 1349
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->modifierMaterializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object v22

    move-object/from16 v23, v0

    .end local v0    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .local v23, "modifier$iv":Landroidx/compose/ui/Modifier;
    shl-int/lit8 v0, v16, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    .line 1341
    nop

    .local v0, "$changed$iv$iv$iv":I
    move-object/from16 v24, v22

    .local v24, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    move-object/from16 v22, v21

    .local v22, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v21, 0x0

    .line 1350
    .local v21, "$i$f$ReusableComposeNode":I
    move/from16 v25, v4

    .end local v4    # "$i$f$Box":I
    .local v25, "$i$f$Box":I
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v4

    instance-of v4, v4, Landroidx/compose/runtime/Applier;

    if-nez v4, :cond_11

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 1351
    :cond_11
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 1352
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1353
    move-object/from16 v4, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .local v4, "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    .line 1355
    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    :cond_12
    move-object/from16 v4, v22

    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 1357
    :goto_9
    move-object/from16 v22, v4

    .end local v4    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .restart local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v4

    .local v4, "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v26, 0x0

    .line 1344
    .local v26, "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    sget-object v27, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v28, v5

    .end local v5    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .local v28, "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1345
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1347
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    .local v5, "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    const/16 v27, 0x0

    .line 1358
    .local v27, "$i$f$set-impl":I
    move-object/from16 v29, v4

    .local v29, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v30, 0x0

    .line 1359
    .local v30, "$i$a$-with-Updater$set$1$iv$iv$iv":I
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v31

    if-nez v31, :cond_14

    move-object/from16 v31, v1

    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .local v31, "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    invoke-interface/range {v29 .. v29}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v3

    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .local v32, "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_13
    move-object/from16 v3, v29

    goto :goto_b

    .end local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :cond_14
    move-object/from16 v31, v1

    move-object/from16 v32, v3

    .line 1360
    .end local v1    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v3    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    .restart local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .restart local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    :goto_a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v3, v29

    .end local v29    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .local v3, "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1361
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1363
    :goto_b
    nop

    .line 1358
    .end local v3    # "$this$set_impl_u24lambda_u240$iv$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v30    # "$i$a$-with-Updater$set$1$iv$iv$iv":I
    nop

    .line 1363
    nop

    .line 1348
    .end local v5    # "block$iv$iv$iv":Lkotlin/jvm/functions/Function2;
    .end local v27    # "$i$f$set-impl":I
    nop

    .line 1357
    .end local v4    # "$this$Layout_u24lambda_u240$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$i$a$-ReusableComposeNode-LayoutKt$Layout$1$iv$iv":I
    nop

    .line 1364
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    shr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v24

    .end local v24    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v4, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v4, v1, v8, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    const v1, 0x7ab4aae9

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1366
    shr-int/lit8 v1, v0, 0x9

    and-int/lit8 v1, v1, 0xe

    .local v1, "$changed$iv":I
    move-object v3, v8

    .local v3, "$composer$iv":Landroidx/compose/runtime/Composer;
    const/4 v5, 0x0

    .line 1367
    .local v5, "$i$a$-Layout-BoxKt$Box$1$iv":I
    move/from16 v24, v0

    .end local v0    # "$changed$iv$iv$iv":I
    .local v24, "$changed$iv$iv$iv":I
    const v0, -0x4ab8dd4f

    move/from16 v26, v1

    .end local v1    # "$changed$iv":I
    .local v26, "$changed$iv":I
    const-string v1, "C73@3426L9:Box.kt#2w3rfo"

    invoke-static {v3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x6

    .local v1, "$changed":I
    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .local v0, "$this$SliderThumb_PcYyNuk_u24lambda_u2415":Landroidx/compose/foundation/layout/BoxScope;
    move-object/from16 v27, v3

    .local v27, "$composer":Landroidx/compose/runtime/Composer;
    const/16 v29, 0x0

    .line 700
    .local v29, "$i$a$-Box-SliderKt$SliderThumb$1":I
    move-object/from16 v30, v0

    .end local v0    # "$this$SliderThumb_PcYyNuk_u24lambda_u2415":Landroidx/compose/foundation/layout/BoxScope;
    .local v30, "$this$SliderThumb_PcYyNuk_u24lambda_u2415":Landroidx/compose/foundation/layout/BoxScope;
    const v0, -0x1f7b1d73

    move/from16 v40, v1

    .end local v1    # "$changed":I
    .local v40, "$changed":I
    const-string v1, "C699@28142L46,700@28197L692,723@29245L59,727@29509L19,718@29051L507:Slider.kt#jmzs0o"

    move/from16 v41, v2

    move-object/from16 v2, v27

    .end local v27    # "$composer":Landroidx/compose/runtime/Composer;
    .local v2, "$composer":Landroidx/compose/runtime/Composer;
    .local v41, "$changed$iv":I
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$changed$iv":I
    const/4 v1, 0x0

    move/from16 v27, v0

    .end local v0    # "$changed$iv":I
    .local v1, "$i$f$remember":I
    .local v27, "$changed$iv":I
    const v0, -0x1d58f75c

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember):Composables.kt#9igjgp"

    invoke-static {v2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1368
    const/4 v0, 0x0

    .local v0, "invalid$iv$iv":Z
    move-object/from16 v33, v2

    .local v33, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    const/16 v34, 0x0

    .line 1369
    .local v34, "$i$f$cache":I
    move/from16 v35, v0

    .end local v0    # "invalid$iv$iv":Z
    .local v35, "invalid$iv$iv":Z
    invoke-interface/range {v33 .. v33}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/16 v36, 0x0

    .line 1370
    .local v36, "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    sget-object v37, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v38, v1

    .end local v1    # "$i$f$remember":I
    .local v38, "$i$f$remember":I
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 1371
    const/4 v1, 0x0

    .line 700
    .local v1, "$i$a$-remember-SliderKt$SliderThumb$1$interactions$1":I
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v1

    .line 1371
    .end local v1    # "$i$a$-remember-SliderKt$SliderThumb$1$interactions$1":I
    nop

    .line 1372
    .local v1, "value$iv$iv":Ljava/lang/Object;
    move-object/from16 v37, v0

    move-object/from16 v0, v33

    .end local v33    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v37, "it$iv$iv":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1373
    nop

    .end local v1    # "value$iv$iv":Ljava/lang/Object;
    goto :goto_c

    .line 1374
    .end local v37    # "it$iv$iv":Ljava/lang/Object;
    .local v0, "it$iv$iv":Ljava/lang/Object;
    .restart local v33    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    :cond_15
    move-object/from16 v37, v0

    move-object/from16 v0, v33

    .end local v33    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .local v0, "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .restart local v37    # "it$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v37

    .line 1370
    :goto_c
    nop

    .line 1369
    .end local v36    # "$i$a$-let-ComposerKt$cache$1$iv$iv":I
    .end local v37    # "it$iv$iv":Ljava/lang/Object;
    nop

    .line 1368
    .end local v0    # "$this$cache$iv$iv":Landroidx/compose/runtime/Composer;
    .end local v34    # "$i$f$cache":I
    .end local v35    # "invalid$iv$iv":Z
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 700
    .end local v27    # "$changed$iv":I
    .end local v38    # "$i$f$remember":I
    move-object v0, v1

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 701
    .local v0, "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    const v1, 0x56dde162

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    or-int v1, v1, v27

    .local v1, "invalid$iv":Z
    move-object/from16 v27, v2

    .local v27, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    const/16 v33, 0x0

    .line 1375
    .local v33, "$i$f$cache":I
    move-object/from16 v42, v4

    .end local v4    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    .local v42, "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, "it$iv":Ljava/lang/Object;
    const/16 v34, 0x0

    .line 1376
    .local v34, "$i$a$-let-ComposerKt$cache$1$iv":I
    move/from16 v43, v5

    .end local v5    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    .local v43, "$i$a$-Layout-BoxKt$Box$1$iv":I
    if-nez v1, :cond_17

    sget-object v35, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_16

    goto :goto_d

    .line 1380
    :cond_16
    move/from16 v35, v1

    move-object v1, v4

    move-object/from16 v36, v1

    move-object/from16 v4, v27

    goto :goto_e

    .line 1377
    :cond_17
    :goto_d
    const/4 v5, 0x0

    .line 701
    .local v5, "$i$a$-cache-SliderKt$SliderThumb$1$1":I
    move/from16 v35, v1

    .end local v1    # "invalid$iv":Z
    .local v35, "invalid$iv":Z
    new-instance v1, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;

    move-object/from16 v36, v4

    const/4 v4, 0x0

    .end local v4    # "it$iv":Ljava/lang/Object;
    .local v36, "it$iv":Ljava/lang/Object;
    invoke-direct {v1, v11, v0, v4}, Landroidx/compose/material/SliderKt$SliderThumb$1$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 1377
    .end local v5    # "$i$a$-cache-SliderKt$SliderThumb$1$1":I
    nop

    .line 1378
    .local v1, "value$iv":Ljava/lang/Object;
    move-object/from16 v4, v27

    .end local v27    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .local v4, "$this$cache$iv":Landroidx/compose/runtime/Composer;
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1379
    nop

    .line 1376
    .end local v1    # "value$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 1375
    .end local v34    # "$i$a$-let-ComposerKt$cache$1$iv":I
    .end local v36    # "it$iv":Ljava/lang/Object;
    nop

    .line 701
    .end local v4    # "$this$cache$iv":Landroidx/compose/runtime/Composer;
    .end local v33    # "$i$f$cache":I
    .end local v35    # "invalid$iv":Z
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v4, v6, 0x9

    and-int/lit8 v4, v4, 0xe

    or-int/lit8 v4, v4, 0x40

    invoke-static {v11, v1, v2, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 714
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_18

    .line 715
    sget v1, Landroidx/compose/material/SliderKt;->ThumbPressedElevation:F

    goto :goto_f

    .line 717
    :cond_18
    sget v1, Landroidx/compose/material/SliderKt;->ThumbDefaultElevation:F

    .line 714
    :goto_f
    nop

    .line 720
    .local v1, "elevation":F
    nop

    .line 721
    invoke-static {v10, v14, v14}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 723
    move-object v5, v11

    check-cast v5, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 724
    const/16 v33, 0x0

    sget v34, Landroidx/compose/material/SliderKt;->ThumbRippleRadius:F

    const-wide/16 v35, 0x0

    const/16 v38, 0x36

    const/16 v39, 0x4

    move-object/from16 v37, v2

    move-object/from16 v27, v0

    .end local v0    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .local v27, "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    invoke-static/range {v33 .. v39}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    move-result-object v0

    .line 722
    invoke-static {v4, v5, v0}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 726
    move/from16 p7, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    .end local v1    # "elevation":F
    .local p7, "elevation":F
    invoke-static {v0, v11, v1, v5, v4}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v44

    .line 727
    if-eqz v13, :cond_19

    move/from16 v45, p7

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    .local v0, "$this$dp$iv":I
    const/4 v1, 0x0

    .line 1381
    .local v1, "$i$f$getDp":I
    int-to-float v4, v0

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    move/from16 v45, v4

    .line 727
    .end local v0    # "$this$dp$iv":I
    .end local v1    # "$i$f$getDp":I
    :goto_10
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    move-object/from16 v46, v0

    check-cast v46, Landroidx/compose/ui/graphics/Shape;

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x18

    const/16 v53, 0x0

    invoke-static/range {v44 .. v53}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 728
    shr-int/lit8 v1, v6, 0xf

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v4, v6, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v1, v4

    invoke-interface {v12, v13, v2, v1}, Landroidx/compose/material/SliderColors;->thumbColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v4, v5, v1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 719
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 700
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 730
    .end local v27    # "interactions":Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .end local p7    # "elevation":F
    nop

    .line 1367
    .end local v2    # "$composer":Landroidx/compose/runtime/Composer;
    .end local v29    # "$i$a$-Box-SliderKt$SliderThumb$1":I
    .end local v30    # "$this$SliderThumb_PcYyNuk_u24lambda_u2415":Landroidx/compose/foundation/layout/BoxScope;
    .end local v40    # "$changed":I
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 1366
    .end local v3    # "$composer$iv":Landroidx/compose/runtime/Composer;
    .end local v26    # "$changed$iv":I
    .end local v43    # "$i$a$-Layout-BoxKt$Box$1$iv":I
    nop

    .line 1382
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1383
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 1384
    nop

    .end local v21    # "$i$f$ReusableComposeNode":I
    .end local v22    # "factory$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$changed$iv$iv$iv":I
    .end local v42    # "skippableUpdate$iv$iv$iv":Lkotlin/jvm/functions/Function3;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1385
    nop

    .end local v16    # "$changed$iv$iv":I
    .end local v17    # "$i$f$Layout":I
    .end local v20    # "compositeKeyHash$iv$iv":I
    .end local v32    # "localMap$iv$iv":Landroidx/compose/runtime/CompositionLocalMap;
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1386
    nop

    .end local v19    # "propagateMinConstraints$iv":Z
    .end local v23    # "modifier$iv":Landroidx/compose/ui/Modifier;
    .end local v25    # "$i$f$Box":I
    .end local v28    # "contentAlignment$iv":Landroidx/compose/ui/Alignment;
    .end local v31    # "measurePolicy$iv":Landroidx/compose/ui/layout/MeasurePolicy;
    .end local v41    # "$changed$iv":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 731
    :cond_1a
    :goto_11
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v5

    if-eqz v5, :cond_1b

    new-instance v16, Landroidx/compose/material/SliderKt$SliderThumb$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v9, v5

    move-object/from16 v5, p4

    move/from16 v17, v6

    .end local v6    # "$dirty":I
    .local v17, "$dirty":I
    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v18, v8

    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v18, "$composer":Landroidx/compose/runtime/Composer;
    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SliderKt$SliderThumb$2;-><init>(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFI)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    goto :goto_12

    .end local v17    # "$dirty":I
    .end local v18    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v6    # "$dirty":I
    .restart local v8    # "$composer":Landroidx/compose/runtime/Composer;
    :cond_1b
    move/from16 v17, v6

    move-object/from16 v18, v8

    .end local v6    # "$dirty":I
    .end local v8    # "$composer":Landroidx/compose/runtime/Composer;
    .restart local v17    # "$dirty":I
    .restart local v18    # "$composer":Landroidx/compose/runtime/Composer;
    :goto_12
    return-void
.end method

.method private static final Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 28
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "colors"    # Landroidx/compose/material/SliderColors;
    .param p2, "enabled"    # Z
    .param p3, "positionFractionStart"    # F
    .param p4, "positionFractionEnd"    # F
    .param p5, "tickFractions"    # Ljava/util/List;
    .param p6, "thumbPx"    # F
    .param p7, "trackStrokeWidth"    # F
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/SliderColors;",
            "ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 743
    move-object/from16 v10, p1

    move/from16 v11, p2

    const v0, 0x6d4348a2

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    .end local p8    # "$composer":Landroidx/compose/runtime/Composer;
    .local v12, "$composer":Landroidx/compose/runtime/Composer;
    const-string v1, "C(Track)P(2!2,4!1,6)743@29857L35,744@29927L34,745@29997L34,746@30065L33,747@30103L1552:Slider.kt#jmzs0o"

    invoke-static {v12, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    move/from16 v13, p9

    .local v13, "$dirty":I
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string/jumbo v2, "androidx.compose.material.Track (Slider.kt:742)"

    invoke-static {v0, v13, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 744
    :cond_0
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v1, v13, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-interface {v10, v11, v1, v12, v0}, Landroidx/compose/material/SliderColors;->trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v24

    .line 745
    .local v24, "inactiveTrackColor":Landroidx/compose/runtime/State;
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v2, v13, 0x3

    and-int/lit16 v2, v2, 0x380

    or-int/2addr v0, v2

    const/4 v2, 0x1

    invoke-interface {v10, v11, v2, v12, v0}, Landroidx/compose/material/SliderColors;->trackColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v25

    .line 746
    .local v25, "activeTrackColor":Landroidx/compose/runtime/State;
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v3, v13, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v0, v3

    invoke-interface {v10, v11, v1, v12, v0}, Landroidx/compose/material/SliderColors;->tickColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v26

    .line 747
    .local v26, "inactiveTickColor":Landroidx/compose/runtime/State;
    shr-int/lit8 v0, v13, 0x6

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    shl-int/lit8 v1, v13, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    invoke-interface {v10, v11, v2, v12, v0}, Landroidx/compose/material/SliderColors;->tickColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v27

    .line 748
    .local v27, "activeTickColor":Landroidx/compose/runtime/State;
    new-instance v0, Landroidx/compose/material/SliderKt$Track$1;

    move-object v14, v0

    move/from16 v15, p6

    move-object/from16 v16, v24

    move/from16 v17, p7

    move/from16 v18, p4

    move/from16 v19, p3

    move-object/from16 v20, v25

    move-object/from16 v21, p5

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    invoke-direct/range {v14 .. v23}, Landroidx/compose/material/SliderKt$Track$1;-><init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v1, v13, 0xe

    move-object/from16 v14, p0

    invoke-static {v14, v0, v12, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_2

    new-instance v16, Landroidx/compose/material/SliderKt$Track$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$Track$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFI)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 792
    :cond_2
    return-void
.end method

.method public static final synthetic access$CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "scaleToOffset"    # Lkotlin/jvm/functions/Function1;
    .param p1, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p2, "trackRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "valueState"    # Landroidx/compose/runtime/MutableState;
    .param p4, "value"    # F
    .param p5, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p6, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "positionFractionStart"    # F
    .param p2, "positionFractionEnd"    # F
    .param p3, "tickFractions"    # Ljava/util/List;
    .param p4, "colors"    # Landroidx/compose/material/SliderColors;
    .param p5, "width"    # F
    .param p6, "startInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p7, "endInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p8, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p9, "startThumbSemantics"    # Landroidx/compose/ui/Modifier;
    .param p10, "endThumbSemantics"    # Landroidx/compose/ui/Modifier;
    .param p11, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p12, "$changed"    # I
    .param p13, "$changed1"    # I

    .line 1
    invoke-static/range {p0 .. p13}, Landroidx/compose/material/SliderKt;->RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public static final synthetic access$SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "positionFraction"    # F
    .param p2, "tickFractions"    # Ljava/util/List;
    .param p3, "colors"    # Landroidx/compose/material/SliderColors;
    .param p4, "width"    # F
    .param p5, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p6, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->SliderImpl(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "$receiver"    # Landroidx/compose/foundation/layout/BoxScope;
    .param p1, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p2, "offset"    # F
    .param p3, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p4, "colors"    # Landroidx/compose/material/SliderColors;
    .param p5, "enabled"    # Z
    .param p6, "thumbSize"    # F
    .param p7, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p8, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->SliderThumb-PcYyNuk(Landroidx/compose/foundation/layout/BoxScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/SliderColors;ZFLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
    .locals 0
    .param p0, "modifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "colors"    # Landroidx/compose/material/SliderColors;
    .param p2, "enabled"    # Z
    .param p3, "positionFractionStart"    # F
    .param p4, "positionFractionEnd"    # F
    .param p5, "tickFractions"    # Ljava/util/List;
    .param p6, "thumbPx"    # F
    .param p7, "trackStrokeWidth"    # F
    .param p8, "$composer"    # Landroidx/compose/runtime/Composer;
    .param p9, "$changed"    # I

    .line 1
    invoke-static/range {p0 .. p9}, Landroidx/compose/material/SliderKt;->Track(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "draggableState"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p1, "current"    # F
    .param p2, "target"    # F
    .param p3, "velocity"    # F
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$calcFraction(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->calcFraction(FFF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSliderToTickAnimation$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/SliderKt;->SliderToTickAnimation:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic access$rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "startInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "endInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "rawOffsetStart"    # Landroidx/compose/runtime/State;
    .param p4, "rawOffsetEnd"    # Landroidx/compose/runtime/State;
    .param p5, "enabled"    # Z
    .param p6, "isRtl"    # Z
    .param p7, "maxPx"    # F
    .param p8, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p9, "gestureEndAction"    # Landroidx/compose/runtime/State;
    .param p10, "onDrag"    # Landroidx/compose/runtime/State;

    .line 1
    invoke-static/range {p0 .. p10}, Landroidx/compose/material/SliderKt;->rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$scale(FFFFF)F
    .locals 1
    .param p0, "a1"    # F
    .param p1, "b1"    # F
    .param p2, "x1"    # F
    .param p3, "a2"    # F
    .param p4, "b2"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$scale(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1
    .param p0, "a1"    # F
    .param p1, "b1"    # F
    .param p2, "x"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "a2"    # F
    .param p4, "b2"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "value"    # F
    .param p2, "enabled"    # Z
    .param p3, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onValueChangeFinished"    # Lkotlin/jvm/functions/Function0;
    .param p5, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p6, "steps"    # I

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/Modifier;
    .param p1, "draggableState"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "maxPx"    # F
    .param p4, "isRtl"    # Z
    .param p5, "rawOffset"    # Landroidx/compose/runtime/State;
    .param p6, "gestureEndAction"    # Landroidx/compose/runtime/State;
    .param p7, "pressOffset"    # Landroidx/compose/runtime/MutableState;
    .param p8, "enabled"    # Z

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/material/SliderKt;->sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$snapValueToTick(FLjava/util/List;FF)F
    .locals 1
    .param p0, "current"    # F
    .param p1, "tickFractions"    # Ljava/util/List;
    .param p2, "minPx"    # F
    .param p3, "maxPx"    # F

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt;->snapValueToTick(FLjava/util/List;FF)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$stepsToTickFractions(I)Ljava/util/List;
    .locals 1
    .param p0, "steps"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/material/SliderKt;->stepsToTickFractions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final animateToTarget(Landroidx/compose/foundation/gestures/DraggableState;FFFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "draggableState"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p1, "current"    # F
    .param p2, "target"    # F
    .param p3, "velocity"    # F
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "FFF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 957
    const/4 v1, 0x0

    new-instance v0, Landroidx/compose/material/SliderKt$animateToTarget$2;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, p3, v2}, Landroidx/compose/material/SliderKt$animateToTarget$2;-><init>(FFFLkotlin/coroutines/Continuation;)V

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DraggableState;->drag$default(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 964
    return-object v0
.end method

.method private static final awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    iget v1, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$awaitSlop$1;

    invoke-direct {v0, p4}, Landroidx/compose/material/SliderKt$awaitSlop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v6, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;->result:Ljava/lang/Object;

    .local v6, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 807
    iget v0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$FloatRef;

    .local p0, "initialDelta":Lkotlin/jvm/internal/Ref$FloatRef;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_1

    .end local p0    # "initialDelta":Lkotlin/jvm/internal/Ref$FloatRef;
    :pswitch_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "$this$awaitSlop_u2d8vUncbI":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    move-wide v1, p1

    .local v1, "id":J
    move v3, p3

    .line 811
    .local v3, "type":I
    new-instance p0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 812
    .restart local p0    # "initialDelta":Lkotlin/jvm/internal/Ref$FloatRef;
    new-instance p1, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;

    invoke-direct {p1, p0}, Landroidx/compose/material/SliderKt$awaitSlop$postPointerSlop$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 816
    .local p1, "postPointerSlop":Lkotlin/jvm/functions/Function2;
    iput-object p0, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p4, Landroidx/compose/material/SliderKt$awaitSlop$1;->label:I

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/DragGestureDetectorCopyKt;->awaitHorizontalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v0    # "$this$awaitSlop_u2d8vUncbI":Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
    .end local v1    # "id":J
    .end local v3    # "type":I
    .end local p1    # "postPointerSlop":Lkotlin/jvm/functions/Function2;
    if-ne p1, v7, :cond_1

    .line 807
    return-object v7

    :cond_1
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 817
    .local p1, "afterSlopResult":Landroidx/compose/ui/input/pointer/PointerInputChange;
    if-eqz p1, :cond_2

    iget p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    goto :goto_2

    .end local p0    # "initialDelta":Lkotlin/jvm/internal/Ref$FloatRef;
    .end local p1    # "afterSlopResult":Landroidx/compose/ui/input/pointer/PointerInputChange;
    :cond_2
    const/4 p2, 0x0

    :goto_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final calcFraction(FFF)F
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "pos"    # F

    .line 834
    sub-float v0, p1, p0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    sub-float v0, p2, p0

    sub-float v2, p1, p0

    div-float/2addr v0, v2

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    return v0
.end method

.method public static final getThumbRadius()F
    .locals 1

    .line 1153
    sget v0, Landroidx/compose/material/SliderKt;->ThumbRadius:F

    return v0
.end method

.method public static final getTrackHeight()F
    .locals 1

    .line 1159
    sget v0, Landroidx/compose/material/SliderKt;->TrackHeight:F

    return v0
.end method

.method private static final rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 15
    .param p0, "$this$rangeSliderPressDragModifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "startInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p2, "endInteractionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "rawOffsetStart"    # Landroidx/compose/runtime/State;
    .param p4, "rawOffsetEnd"    # Landroidx/compose/runtime/State;
    .param p5, "enabled"    # Z
    .param p6, "isRtl"    # Z
    .param p7, "maxPx"    # F
    .param p8, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p9, "gestureEndAction"    # Landroidx/compose/runtime/State;
    .param p10, "onDrag"    # Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;ZZF",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 978
    if-eqz p5, :cond_0

    .line 979
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    filled-new-array {v12, v13, v0, v1, v14}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;

    const/4 v11, 0x0

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p10

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZFLandroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    .line 1041
    :cond_0
    move-object v2, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p8

    move-object v0, v2

    .line 1042
    :goto_0
    return-object v0
.end method

.method private static final scale(FFFFF)F
    .locals 1
    .param p0, "a1"    # F
    .param p1, "b1"    # F
    .param p2, "x1"    # F
    .param p3, "a2"    # F
    .param p4, "b2"    # F

    .line 826
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SliderKt;->calcFraction(FFF)F

    move-result v0

    invoke-static {p3, p4, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private static final scale(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 2
    .param p0, "a1"    # F
    .param p1, "b1"    # F
    .param p2, "x"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p3, "a2"    # F
    .param p4, "b2"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;FF)",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 830
    invoke-interface {p2}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result v0

    invoke-interface {p2}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p0, p1, v1, p3, p4}, Landroidx/compose/material/SliderKt;->scale(FFFFF)F

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v0

    return-object v0
.end method

.method private static final sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;
    .locals 9
    .param p0, "$this$sliderSemantics"    # Landroidx/compose/ui/Modifier;
    .param p1, "value"    # F
    .param p2, "enabled"    # Z
    .param p3, "onValueChange"    # Lkotlin/jvm/functions/Function1;
    .param p4, "onValueChangeFinished"    # Lkotlin/jvm/functions/Function0;
    .param p5, "valueRange"    # Lkotlin/ranges/ClosedFloatingPointRange;
    .param p6, "steps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "FZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 863
    invoke-interface {p5}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {p5}, Lkotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v0

    .line 864
    .local v0, "coerced":F
    new-instance v1, Landroidx/compose/material/SliderKt$sliderSemantics$1;

    move-object v2, v1

    move v3, p2

    move-object v4, p5

    move v5, p6

    move v6, v0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Landroidx/compose/material/SliderKt$sliderSemantics$1;-><init>(ZLkotlin/ranges/ClosedFloatingPointRange;IFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 897
    invoke-static {v1, p1, p5, p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;FLkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 864
    return-object v1
.end method

.method static synthetic sliderSemantics$default(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 7

    .line 855
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 859
    const/4 p4, 0x0

    move-object v4, p4

    goto :goto_0

    .line 855
    :cond_0
    move-object v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 860
    const/4 p4, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p5

    move-object v5, p5

    goto :goto_1

    .line 855
    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 861
    const/4 p6, 0x0

    move v6, p6

    goto :goto_2

    .line 855
    :cond_2
    move v6, p6

    :goto_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final sliderTapModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)Landroidx/compose/ui/Modifier;
    .locals 11
    .param p0, "$this$sliderTapModifier"    # Landroidx/compose/ui/Modifier;
    .param p1, "draggableState"    # Landroidx/compose/foundation/gestures/DraggableState;
    .param p2, "interactionSource"    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .param p3, "maxPx"    # F
    .param p4, "isRtl"    # Z
    .param p5, "rawOffset"    # Landroidx/compose/runtime/State;
    .param p6, "gestureEndAction"    # Landroidx/compose/runtime/State;
    .param p7, "pressOffset"    # Landroidx/compose/runtime/MutableState;
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "FZ",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 939
    const/4 v0, 0x0

    .line 1406
    .local v0, "$i$f$debugInspectorInfo":I
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Z)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 939
    .end local v0    # "$i$f$debugInspectorInfo":I
    :goto_0
    nop

    .line 909
    nop

    .line 939
    nop

    .line 909
    new-instance v0, Landroidx/compose/material/SliderKt$sliderTapModifier$2;

    move-object v2, v0

    move/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/SliderKt$sliderTapModifier$2;-><init>(ZLandroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    move-object v2, p0

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    .line 949
    return-object v0
.end method

.method private static final snapValueToTick(FLjava/util/List;FF)F
    .locals 10
    .param p0, "current"    # F
    .param p1, "tickFractions"    # Ljava/util/List;
    .param p2, "minPx"    # F
    .param p3, "maxPx"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF)F"
        }
    .end annotation

    .line 801
    nop

    .line 802
    move-object v0, p1

    .local v0, "$this$fastMinByOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1387
    .local v1, "$i$f$fastMinByOrNull":I
    nop

    .line 1388
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 1389
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1390
    .local v2, "minElem$iv":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .local v3, "it":F
    const/4 v4, 0x0

    .line 802
    .local v4, "$i$a$-fastMinByOrNull-SliderKt$snapValueToTick$1":I
    invoke-static {p2, p3, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v5

    sub-float/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1390
    .end local v3    # "it":F
    .end local v4    # "$i$a$-fastMinByOrNull-SliderKt$snapValueToTick$1":I
    move v3, v5

    .line 1391
    .local v3, "minValue$iv":F
    const/4 v4, 0x1

    .local v4, "i$iv":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 1392
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1393
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .local v7, "it":F
    const/4 v8, 0x0

    .line 802
    .local v8, "$i$a$-fastMinByOrNull-SliderKt$snapValueToTick$1":I
    invoke-static {p2, p3, v7}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v9

    sub-float/2addr v9, p0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1393
    .end local v7    # "it":F
    .end local v8    # "$i$a$-fastMinByOrNull-SliderKt$snapValueToTick$1":I
    move v7, v9

    .line 1394
    .local v7, "v$iv":F
    invoke-static {v3, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-lez v8, :cond_1

    .line 1395
    move-object v2, v6

    .line 1396
    move v3, v7

    .line 1391
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "v$iv":F
    :cond_1
    if-eq v4, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1399
    .end local v4    # "i$iv":I
    :cond_2
    nop

    .line 802
    .end local v0    # "$this$fastMinByOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastMinByOrNull":I
    .end local v2    # "minElem$iv":Ljava/lang/Object;
    .end local v3    # "minValue$iv":F
    :goto_1
    check-cast v2, Ljava/lang/Float;

    .line 803
    if-eqz v2, :cond_3

    .line 802
    nop

    .line 803
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 1203
    .local v0, "$this$snapValueToTick_u24lambda_u2417":F
    const/4 v1, 0x0

    .line 803
    .local v1, "$i$a$-run-SliderKt$snapValueToTick$2":I
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    .line 801
    .end local v0    # "$this$snapValueToTick_u24lambda_u2417":F
    .end local v1    # "$i$a$-run-SliderKt$snapValueToTick$2":I
    goto :goto_2

    .line 804
    :cond_3
    move v0, p0

    .line 801
    :goto_2
    return v0
.end method

.method private static final stepsToTickFractions(I)Ljava/util/List;
    .locals 7
    .param p0, "steps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 821
    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p0, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1203
    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 821
    .local v4, "$i$a$-List-SliderKt$stepsToTickFractions$1":I
    int-to-float v5, v3

    add-int/lit8 v6, p0, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    .end local v3    # "it":I
    .end local v4    # "$i$a$-List-SliderKt$stepsToTickFractions$1":I
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    :goto_1
    return-object v0
.end method
