.class public abstract Landroidx/compose/foundation/pager/PagerState;
.super Ljava/lang/Object;
.source "PagerState.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 SnapshotFloatState.kt\nandroidx/compose/runtime/PrimitiveSnapshotStateKt__SnapshotFloatStateKt\n+ 4 PagerState.kt\nandroidx/compose/foundation/pager/PagerStateKt\n+ 5 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 8 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,787:1\n81#2:788\n107#2,2:789\n81#2:794\n107#2,2:795\n81#2:815\n81#2:816\n81#2:817\n107#2,2:818\n81#2:820\n81#2:821\n107#2,2:822\n81#2:824\n107#2,2:825\n76#3:791\n109#3,2:792\n772#4,4:797\n772#4,4:801\n772#4,4:805\n772#4,4:827\n772#4,4:832\n75#5:809\n108#5,2:810\n75#5:812\n108#5,2:813\n1#6:831\n495#7,4:836\n500#7:845\n495#7,4:846\n500#7:855\n129#8,5:840\n129#8,5:850\n*S KotlinDebug\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState\n*L\n154#1:788\n154#1:789,2\n159#1:794\n159#1:795,2\n329#1:815\n346#1:816\n400#1:817\n400#1:818,2\n422#1:820\n586#1:821\n586#1:822,2\n588#1:824\n588#1:825,2\n155#1:791\n155#1:792,2\n192#1:797,4\n212#1:801,4\n220#1:805,4\n598#1:827,4\n613#1:832,4\n317#1:809\n317#1:810,2\n319#1:812\n319#1:813,2\n617#1:836,4\n617#1:845\n715#1:846,4\n715#1:855\n617#1:840,5\n715#1:850,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\'\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J7\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00032\t\u0008\u0002\u0010\u009d\u0001\u001a\u00020\u00052\u0010\u0008\u0002\u0010\u009e\u0001\u001a\t\u0012\u0004\u0012\u00020\u00050\u009f\u0001H\u0086@\u00a2\u0006\u0003\u0010\u00a0\u0001J$\u0010\u00a1\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u00a2\u0001\u001a\u00020S2\t\u0008\u0002\u0010\u00a3\u0001\u001a\u00020\u0013H\u0000\u00a2\u0006\u0003\u0008\u00a4\u0001J\u0011\u0010\u00a5\u0001\u001a\u00030\u009b\u0001H\u0082@\u00a2\u0006\u0003\u0010\u00a6\u0001J\u0013\u0010\u00a7\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u00a8\u0001\u001a\u00020=H\u0002J\u0012\u0010\u00a9\u0001\u001a\u00020\u00052\u0007\u0010\u00aa\u0001\u001a\u00020\u0005H\u0016J\u0010\u0010\u00ab\u0001\u001a\u00020\u00052\u0007\u0010\u009c\u0001\u001a\u00020\u0003J\u0012\u0010\u00ac\u0001\u001a\u00020\u00132\u0007\u0010\u00ad\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00ae\u0001\u001a\u00020\u0013H\u0002J#\u0010\u00af\u0001\u001a\u00020\u00032\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u0000\u00a2\u0006\u0003\u0008\u00b2\u0001J\u001c\u0010\u00b3\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u00aa\u0001\u001a\u00020\u00052\u0007\u0010\u00a8\u0001\u001a\u00020=H\u0002J\u0012\u0010\u00b4\u0001\u001a\u00020\u00052\u0007\u0010\u00aa\u0001\u001a\u00020\u0005H\u0002JK\u0010\u00b5\u0001\u001a\u00030\u009b\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u00b7\u00012.\u0010\u00b8\u0001\u001a)\u0008\u0001\u0012\u0005\u0012\u00030\u00ba\u0001\u0012\u000c\u0012\n\u0012\u0005\u0012\u00030\u009b\u00010\u00bb\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00bc\u00010\u00b9\u0001\u00a2\u0006\u0003\u0008\u00bd\u0001H\u0096@\u00a2\u0006\u0003\u0010\u00be\u0001J%\u0010\u00bf\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00032\t\u0008\u0002\u0010\u009d\u0001\u001a\u00020\u0005H\u0086@\u00a2\u0006\u0003\u0010\u00c0\u0001J\"\u0010\u00c1\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00032\u0007\u0010\u00c2\u0001\u001a\u00020\u0005H\u0000\u00a2\u0006\u0003\u0008\u00c3\u0001J\u0013\u0010\u00c4\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u00a2\u0001\u001a\u00020SH\u0002J\r\u0010\u00c5\u0001\u001a\u00020\u0003*\u00020\u0003H\u0002J!\u0010\u00c6\u0001\u001a\u00030\u009b\u0001*\u00030\u00ba\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00032\t\u0008\u0002\u0010\u009d\u0001\u001a\u00020\u0005J\u0016\u0010\u00c7\u0001\u001a\u00030\u009b\u0001*\u00030\u00ba\u00012\u0007\u0010\u0091\u0001\u001a\u00020\u0003R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R+\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00138F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R+\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00138F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001a\u001a\u0004\u0008\u001c\u0010\u0016\"\u0004\u0008\u001d\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001e\u0010+\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010 R\u001e\u0010-\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010 R\u000e\u0010/\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u00100\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0014\u00104\u001a\u000205X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0014\u00108\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0016R+\u00109\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00138B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008;\u0010\u001a\u001a\u0004\u00089\u0010\u0016\"\u0004\u0008:\u0010\u0018R\u0011\u0010<\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?R\u0018\u0010@\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003@BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010A\u001a\u00020B8@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010F*\u0004\u0008C\u0010DR\u001e\u0010G\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010 R\u0012\u0010I\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010 R\u0014\u0010K\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010 R\u0014\u0010M\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010 R\u0014\u0010O\u001a\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010 R\u0014\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020S0RX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010T\u001a\u00020UX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010WR\u001c\u0010X\u001a\u00020YX\u0080\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008Z\u0010[R\u0014\u0010\\\u001a\u00020\u00058@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010\"R\u0014\u0010^\u001a\u00020_X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008`\u0010aR\u001a\u0010b\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010\u0016\"\u0004\u0008d\u0010\u0018R\"\u0010e\u001a\u00020fX\u0080\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0010\n\u0002\u0010k\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR\u000e\u0010l\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010m\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008q\u0010r\u001a\u0004\u0008n\u0010 \"\u0004\u0008o\u0010pR/\u0010t\u001a\u0004\u0018\u00010s2\u0008\u0010\u0012\u001a\u0004\u0018\u00010s8@@BX\u0080\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008y\u0010\u001a\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u0014\u0010z\u001a\u00020{X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008|\u0010}R\u0016\u0010~\u001a\u00020\u007fX\u0080\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u000f\u0010\u0082\u0001\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0083\u0001\u001a\u00020\u00038FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0005\u0008\u0084\u0001\u0010 R/\u0010\u0087\u0001\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u008a\u0001\u0010r\u001a\u0005\u0008\u0088\u0001\u0010 \"\u0005\u0008\u0089\u0001\u0010pR1\u0010\u008b\u0001\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00058@@@X\u0080\u008e\u0002\u00a2\u0006\u0017\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u001a\u0005\u0008\u008c\u0001\u0010\"\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001f\u0010\u0091\u0001\u001a\u00020\u00038FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u0093\u0001\u0010\u0086\u0001\u001a\u0005\u0008\u0092\u0001\u0010 R7\u0010\u0095\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0012\u001a\u00030\u0094\u00018@@@X\u0080\u008e\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0015\n\u0005\u0008\u0098\u0001\u0010\u001a\u001a\u0005\u0008\u0096\u0001\u0010h\"\u0005\u0008\u0097\u0001\u0010jR\u000f\u0010\u0099\u0001\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerState;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "currentPage",
        "",
        "currentPageOffsetFraction",
        "",
        "(IF)V",
        "accumulator",
        "animatedScrollScope",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;",
        "awaitLayoutModifier",
        "Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "getAwaitLayoutModifier$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;",
        "beyondBoundsInfo",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "getBeyondBoundsInfo$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "<set-?>",
        "",
        "canScrollBackward",
        "getCanScrollBackward",
        "()Z",
        "setCanScrollBackward",
        "(Z)V",
        "canScrollBackward$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "canScrollForward",
        "getCanScrollForward",
        "setCanScrollForward",
        "canScrollForward$delegate",
        "getCurrentPage",
        "()I",
        "getCurrentPageOffsetFraction",
        "()F",
        "currentPrefetchHandle",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getDensity$foundation_release",
        "()Landroidx/compose/ui/unit/Density;",
        "setDensity$foundation_release",
        "(Landroidx/compose/ui/unit/Density;)V",
        "firstVisiblePage",
        "getFirstVisiblePage$foundation_release",
        "firstVisiblePageOffset",
        "getFirstVisiblePageOffset$foundation_release",
        "indexToPrefetch",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/InteractionSource;",
        "getInteractionSource",
        "()Landroidx/compose/foundation/interaction/InteractionSource;",
        "internalInteractionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "getInternalInteractionSource$foundation_release",
        "()Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "isScrollInProgress",
        "isScrollingForward",
        "setScrollingForward",
        "isScrollingForward$delegate",
        "layoutInfo",
        "Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "maxScrollOffset",
        "nearestRange",
        "Lkotlin/ranges/IntRange;",
        "getNearestRange$foundation_release$delegate",
        "(Landroidx/compose/foundation/pager/PagerState;)Ljava/lang/Object;",
        "getNearestRange$foundation_release",
        "()Lkotlin/ranges/IntRange;",
        "numMeasurePasses",
        "getNumMeasurePasses$foundation_release",
        "pageCount",
        "getPageCount",
        "pageSize",
        "getPageSize$foundation_release",
        "pageSizeWithSpacing",
        "getPageSizeWithSpacing$foundation_release",
        "pageSpacing",
        "getPageSpacing$foundation_release",
        "pagerLayoutInfoState",
        "Landroidx/compose/runtime/MutableState;",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "pinnedPages",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "getPinnedPages$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "placementScopeInvalidator",
        "Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;",
        "getPlacementScopeInvalidator-zYiylxw$foundation_release",
        "()Landroidx/compose/runtime/MutableState;",
        "positionThresholdFraction",
        "getPositionThresholdFraction$foundation_release",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "getPrefetchState$foundation_release",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "prefetchingEnabled",
        "getPrefetchingEnabled$foundation_release",
        "setPrefetchingEnabled$foundation_release",
        "premeasureConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "getPremeasureConstraints-msEJaDk$foundation_release",
        "()J",
        "setPremeasureConstraints-BRTryo0$foundation_release",
        "(J)V",
        "J",
        "previousPassDelta",
        "programmaticScrollTargetPage",
        "getProgrammaticScrollTargetPage",
        "setProgrammaticScrollTargetPage",
        "(I)V",
        "programmaticScrollTargetPage$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "Landroidx/compose/ui/layout/Remeasurement;",
        "remeasurement",
        "getRemeasurement$foundation_release",
        "()Landroidx/compose/ui/layout/Remeasurement;",
        "setRemeasurement",
        "(Landroidx/compose/ui/layout/Remeasurement;)V",
        "remeasurement$delegate",
        "remeasurementModifier",
        "Landroidx/compose/ui/layout/RemeasurementModifier;",
        "getRemeasurementModifier$foundation_release",
        "()Landroidx/compose/ui/layout/RemeasurementModifier;",
        "scrollPosition",
        "Landroidx/compose/foundation/pager/PagerScrollPosition;",
        "getScrollPosition$foundation_release",
        "()Landroidx/compose/foundation/pager/PagerScrollPosition;",
        "scrollableState",
        "settledPage",
        "getSettledPage",
        "settledPage$delegate",
        "Landroidx/compose/runtime/State;",
        "settledPageState",
        "getSettledPageState",
        "setSettledPageState",
        "settledPageState$delegate",
        "snapRemainingScrollOffset",
        "getSnapRemainingScrollOffset$foundation_release",
        "setSnapRemainingScrollOffset$foundation_release",
        "(F)V",
        "snapRemainingScrollOffset$delegate",
        "Landroidx/compose/runtime/MutableFloatState;",
        "targetPage",
        "getTargetPage",
        "targetPage$delegate",
        "Landroidx/compose/ui/geometry/Offset;",
        "upDownDifference",
        "getUpDownDifference-F1C5BW0$foundation_release",
        "setUpDownDifference-k-4lQ0M$foundation_release",
        "upDownDifference$delegate",
        "wasPrefetchingForward",
        "animateScrollToPage",
        "",
        "page",
        "pageOffsetFraction",
        "animationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "(IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "applyMeasureResult",
        "result",
        "visibleItemsStayedTheSame",
        "applyMeasureResult$foundation_release",
        "awaitScrollDependencies",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelPrefetchIfVisibleItemsChanged",
        "info",
        "dispatchRawDelta",
        "delta",
        "getOffsetFractionForPage",
        "isGestureActionMatchesScroll",
        "scrollDelta",
        "isNotGestureAction",
        "matchScrollPositionWithKey",
        "itemProvider",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "matchScrollPositionWithKey$foundation_release",
        "notifyPrefetch",
        "performScroll",
        "scroll",
        "scrollPriority",
        "Landroidx/compose/foundation/MutatePriority;",
        "block",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scrollToPage",
        "(IFLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "snapToItem",
        "offsetFraction",
        "snapToItem$foundation_release",
        "tryRunPrefetch",
        "coerceInPageRange",
        "updateCurrentPage",
        "updateTargetPage",
        "foundation_release"
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
.field public static final $stable:I


# instance fields
.field private accumulator:F

.field private final animatedScrollScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

.field private final awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field private final canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

.field private final canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

.field private currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

.field private density:Landroidx/compose/ui/unit/Density;

.field private firstVisiblePage:I

.field private firstVisiblePageOffset:I

.field private indexToPrefetch:I

.field private final internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final isScrollingForward$delegate:Landroidx/compose/runtime/MutableState;

.field private maxScrollOffset:I

.field private numMeasurePasses:I

.field private pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/pager/PagerMeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field private final placementScopeInvalidator:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private prefetchingEnabled:Z

.field private premeasureConstraints:J

.field private previousPassDelta:F

.field private final programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final remeasurement$delegate:Landroidx/compose/runtime/MutableState;

.field private final remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

.field private final scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

.field private final settledPage$delegate:Landroidx/compose/runtime/State;

.field private final settledPageState$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final snapRemainingScrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private final targetPage$delegate:Landroidx/compose/runtime/State;

.field private final upDownDifference$delegate:Landroidx/compose/runtime/MutableState;

.field private wasPrefetchingForward:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/foundation/pager/PagerState;-><init>(IFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 12
    .param p1, "currentPage"    # I
    .param p2, "currentPageOffsetFraction"    # F

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    nop

    .line 145
    float-to-double v0, p2

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    cmpg-double v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 145
    if-gtz v2, :cond_0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_0

    move v4, v3

    :cond_0
    if-eqz v4, :cond_1

    .line 149
    nop

    .line 154
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/MutableState;

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->snapRemainingScrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 157
    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerLazyAnimateScrollScopeKt;->PagerLazyAnimateScrollScope(Landroidx/compose/foundation/pager/PagerState;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->animatedScrollScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    .line 159
    invoke-static {v5, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->isScrollingForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 161
    new-instance v0, Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/foundation/pager/PagerScrollPosition;-><init>(IFLandroidx/compose/foundation/pager/PagerState;)V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 163
    iput p1, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 169
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:I

    .line 184
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scrollableState$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/pager/PagerState$scrollableState$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->ScrollableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 239
    iput-boolean v3, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    .line 259
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getEmptyLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v4

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    .line 282
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->access$getUnitDensity$p()Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Density;

    iput-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .line 297
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 317
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 319
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 329
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v4, Landroidx/compose/foundation/pager/PagerState$settledPage$2;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/pager/PagerState$settledPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPage$delegate:Landroidx/compose/runtime/State;

    .line 346
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v0

    new-instance v4, Landroidx/compose/foundation/pager/PagerState$targetPage$2;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/pager/PagerState$targetPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->targetPage$delegate:Landroidx/compose/runtime/State;

    .line 386
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 388
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 394
    new-instance v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 400
    invoke-static {v1, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .line 406
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/pager/PagerState;)V

    check-cast v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    .line 415
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    .line 420
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 422
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 424
    invoke-static {v1, v3, v1}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->constructor-impl$default(Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    .line 586
    invoke-static {v5, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .line 588
    invoke-static {v5, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .line 133
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "$i$a$-require-PagerState$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialPageOffsetFraction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within the range -0.5 to 0.5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .end local v0    # "$i$a$-require-PagerState$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(IFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 133
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 134
    const/4 p1, 0x0

    .line 133
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 135
    const/4 p2, 0x0

    .line 133
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState;-><init>(IF)V

    .line 717
    return-void
.end method

.method public static final synthetic access$awaitScrollDependencies(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 131
    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$coerceInPageRange(Landroidx/compose/foundation/pager/PagerState;I)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "$receiver"    # I

    .line 131
    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getProgrammaticScrollTargetPage(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;

    .line 131
    invoke-direct {p0}, Landroidx/compose/foundation/pager/PagerState;->getProgrammaticScrollTargetPage()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getSettledPageState(Landroidx/compose/foundation/pager/PagerState;)I
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;

    .line 131
    invoke-direct {p0}, Landroidx/compose/foundation/pager/PagerState;->getSettledPageState()I

    move-result v0

    return v0
.end method

.method public static final synthetic access$isScrollingForward(Landroidx/compose/foundation/pager/PagerState;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;

    .line 131
    invoke-direct {p0}, Landroidx/compose/foundation/pager/PagerState;->isScrollingForward()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$performScroll(Landroidx/compose/foundation/pager/PagerState;F)F
    .locals 1
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "delta"    # F

    .line 131
    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->performScroll(F)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$setRemeasurement(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 0
    .param p0, "$this"    # Landroidx/compose/foundation/pager/PagerState;
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/Remeasurement;

    .line 131
    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V

    return-void
.end method

.method public static synthetic animateScrollToPage$default(Landroidx/compose/foundation/pager/PagerState;IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 500
    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 502
    move p2, v0

    .line 500
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 503
    const/4 p3, 0x7

    const/4 p5, 0x0

    invoke-static {v0, v0, p5, p3, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p3

    check-cast p3, Landroidx/compose/animation/core/AnimationSpec;

    .line 500
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/pager/PagerState;->animateScrollToPage(IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: animateScrollToPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic applyMeasureResult$foundation_release$default(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerMeasureResult;ZILjava/lang/Object;)V
    .locals 0

    .line 594
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 596
    const/4 p2, 0x0

    .line 594
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: applyMeasureResult"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final awaitScrollDependencies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->waitForFirstLayout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 564
    return-object v0
.end method

.method private final cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/pager/PagerLayoutInfo;)V
    .locals 3
    .param p1, "info"    # Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 676
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 677
    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    if-eqz v0, :cond_0

    .line 678
    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeyondBoundsPageCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeyondBoundsPageCount()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 677
    :goto_0
    nop

    .line 682
    .local v0, "expectedPrefetchIndex":I
    iget v2, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    if-eq v2, v0, :cond_2

    .line 683
    iput v1, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    .line 684
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 685
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 688
    .end local v0    # "expectedPrefetchIndex":I
    :cond_2
    return-void
.end method

.method private final coerceInPageRange(I)I
    .locals 2
    .param p1, "$this$coerceInPageRange"    # I

    .line 625
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    goto :goto_0

    .line 628
    :cond_0
    nop

    .line 629
    :goto_0
    return v1
.end method

.method private static getNearestRange$foundation_release$delegate(Landroidx/compose/foundation/pager/PagerState;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Landroidx/compose/foundation/pager/PagerState;

    .line 422
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object v0

    return-object v0
.end method

.method private final getProgrammaticScrollTargetPage()I
    .locals 3

    .line 317
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 809
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 317
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method private final getSettledPageState()I
    .locals 3

    .line 319
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/IntState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 812
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result v0

    .line 319
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/IntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method private final isGestureActionMatchesScroll(F)Z
    .locals 6
    .param p1, "scrollDelta"    # F

    .line 635
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 636
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    .line 638
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    .line 639
    invoke-direct {p0}, Landroidx/compose/foundation/pager/PagerState;->isNotGestureAction()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    return v2
.end method

.method private final isNotGestureAction()Z
    .locals 2

    .line 642
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation_release()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isScrollingForward()Z
    .locals 3

    .line 159
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->isScrollingForward$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 794
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 159
    return v0
.end method

.method public static synthetic matchScrollPositionWithKey$foundation_release$default(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IILjava/lang/Object;)I
    .locals 5

    .line 713
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 715
    sget-object p2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local p2, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 p3, 0x0

    .line 846
    .local p3, "$i$f$withoutReadObservation":I
    nop

    .line 847
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p4

    .line 848
    .local p4, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 849
    move-object v0, p4

    .local v0, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v1, 0x0

    .line 850
    .local v1, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 851
    .local v2, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 852
    const/4 v3, 0x0

    .line 715
    .local v3, "$i$a$-withoutReadObservation-PagerState$matchScrollPositionWithKey$1":I
    :try_start_1
    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getCurrentPage()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    .end local v3    # "$i$a$-withoutReadObservation-PagerState$matchScrollPositionWithKey$1":I
    nop

    .line 854
    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 852
    nop

    .line 855
    .end local v0    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v1    # "$i$f$enter":I
    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {p4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 849
    nop

    .line 855
    .end local p2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local p3    # "$i$f$withoutReadObservation":I
    .end local p4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move p2, v4

    goto :goto_0

    .line 854
    .restart local v0    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v1    # "$i$f$enter":I
    .restart local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local p3    # "$i$f$withoutReadObservation":I
    .restart local p4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local p2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local p3    # "$i$f$withoutReadObservation":I
    .end local p4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 855
    .end local v0    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v1    # "$i$f$enter":I
    .end local v2    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local p3    # "$i$f$withoutReadObservation":I
    .restart local p4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_1
    move-exception p0

    invoke-virtual {p4}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    .line 713
    .end local p2    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local p3    # "$i$f$withoutReadObservation":I
    .end local p4    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerState;->matchScrollPositionWithKey$foundation_release(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: matchScrollPositionWithKey"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final notifyPrefetch(FLandroidx/compose/foundation/pager/PagerLayoutInfo;)V
    .locals 6
    .param p1, "delta"    # F
    .param p2, "info"    # Landroidx/compose/foundation/pager/PagerLayoutInfo;

    .line 645
    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    if-nez v0, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-interface {p2}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 650
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 651
    .local v0, "isPrefetchingForward":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 652
    invoke-interface {p2}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v3

    invoke-interface {p2}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeyondBoundsPageCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    goto :goto_1

    .line 654
    :cond_2
    invoke-interface {p2}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v3

    invoke-interface {p2}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getBeyondBoundsPageCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 651
    :goto_1
    nop

    .line 656
    .local v3, "indexToPrefetch":I
    iget v4, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    if-eq v3, v4, :cond_5

    .line 657
    if-ltz v3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 659
    iget-boolean v1, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    if-eq v1, v0, :cond_4

    .line 664
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 666
    :cond_4
    iput-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->wasPrefetchingForward:Z

    .line 667
    iput v3, p0, Landroidx/compose/foundation/pager/PagerState;->indexToPrefetch:I

    .line 668
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 669
    iget-wide v4, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    .line 668
    invoke-virtual {v1, v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->currentPrefetchHandle:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 673
    .end local v0    # "isPrefetchingForward":Z
    .end local v3    # "indexToPrefetch":I
    :cond_5
    return-void
.end method

.method private final performScroll(F)F
    .locals 9
    .param p1, "delta"    # F

    .line 191
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentScrollOffset()I

    move-result v0

    .line 192
    .local v0, "currentScrollPosition":I
    const/4 v1, 0x0

    .line 797
    .local v1, "$i$f$debugLog":I
    nop

    .line 800
    nop

    .line 198
    .end local v1    # "$i$f$debugLog":I
    int-to-float v1, v0

    add-float/2addr v1, p1

    iget v2, p0, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    add-float/2addr v1, v2

    .line 199
    .local v1, "absolute":F
    iget v2, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 200
    .local v2, "newValue":F
    cmpg-float v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    xor-int/2addr v4, v6

    .line 201
    .local v4, "changed":Z
    int-to-float v7, v0

    sub-float v7, v2, v7

    .line 202
    .local v7, "consumed":F
    iput v7, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    .line 203
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v3

    if-nez v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    if-nez v8, :cond_3

    .line 204
    cmpl-float v3, v7, v3

    if-lez v3, :cond_2

    move v5, v6

    :cond_2
    invoke-direct {p0, v5}, Landroidx/compose/foundation/pager/PagerState;->setScrollingForward(Z)V

    .line 207
    :cond_3
    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    .line 209
    .local v3, "consumedInt":I
    iget-object v5, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 211
    .local v5, "layoutInfo":Landroidx/compose/foundation/pager/PagerMeasureResult;
    neg-int v8, v3

    invoke-virtual {v5, v8}, Landroidx/compose/foundation/pager/PagerMeasureResult;->tryToApplyScrollWithoutRemeasure(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 212
    const/4 v8, 0x0

    .line 801
    .local v8, "$i$f$debugLog":I
    nop

    .line 804
    nop

    .line 213
    .end local v8    # "$i$f$debugLog":I
    nop

    .line 214
    nop

    .line 215
    nop

    .line 213
    invoke-virtual {p0, v5, v6}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;Z)V

    .line 218
    iget-object v6, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-static {v6}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->invalidateScope-impl(Landroidx/compose/runtime/MutableState;)V

    goto :goto_2

    .line 220
    :cond_4
    const/4 v6, 0x0

    .line 805
    .local v6, "$i$f$debugLog":I
    nop

    .line 808
    nop

    .line 221
    .end local v6    # "$i$f$debugLog":I
    iget-object v6, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v6, v3}, Landroidx/compose/foundation/pager/PagerScrollPosition;->applyScrollDelta(I)V

    .line 222
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 224
    :cond_5
    :goto_2
    int-to-float v6, v3

    sub-float v6, v7, v6

    iput v6, p0, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    .line 227
    if-eqz v4, :cond_6

    move v6, v7

    goto :goto_3

    :cond_6
    move v6, p1

    :goto_3
    return v6
.end method

.method static synthetic scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    iget v1, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerState$scroll$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/pager/PagerState$scroll$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 566
    iget v2, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    .local p0, "$this":Landroidx/compose/foundation/pager/PagerState;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "$this":Landroidx/compose/foundation/pager/PagerState;
    :pswitch_1
    iget-object p0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    .local p0, "block":Lkotlin/jvm/functions/Function2;
    iget-object p1, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/MutatePriority;

    .local p1, "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    iget-object p2, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/foundation/pager/PagerState;

    .local p2, "$this":Landroidx/compose/foundation/pager/PagerState;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p2

    move-object p2, p0

    move-object p0, v4

    goto :goto_1

    .end local p0    # "block":Lkotlin/jvm/functions/Function2;
    .end local p1    # "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .end local p2    # "$this":Landroidx/compose/foundation/pager/PagerState;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 570
    .local p0, "$this":Landroidx/compose/foundation/pager/PagerState;
    .restart local p1    # "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .local p2, "block":Lkotlin/jvm/functions/Function2;
    iput-object p0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object p2, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    invoke-direct {p0, p3}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 566
    return-object v1

    .line 572
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->isScrollInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 573
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/pager/PagerState;->setSettledPageState(I)V

    .line 575
    :cond_2
    iget-object v2, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p0, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$1:Ljava/lang/Object;

    iput-object v3, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p3, Landroidx/compose/foundation/pager/PagerState$scroll$1;->label:I

    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "scrollPriority":Landroidx/compose/foundation/MutatePriority;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    if-ne p1, v1, :cond_3

    .line 566
    return-object v1

    .line 576
    :cond_3
    :goto_2
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->setProgrammaticScrollTargetPage(I)V

    .line 577
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic scrollToPage$default(Landroidx/compose/foundation/pager/PagerState;IFLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 436
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->scrollToPage(IFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: scrollToPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setCanScrollBackward(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 588
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 825
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 826
    nop

    .line 588
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setCanScrollForward(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 586
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 822
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 823
    nop

    .line 586
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setProgrammaticScrollTargetPage(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 317
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->programmaticScrollTargetPage$delegate:Landroidx/compose/runtime/MutableIntState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 810
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 811
    nop

    .line 317
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setRemeasurement(Landroidx/compose/ui/layout/Remeasurement;)V
    .locals 3
    .param p1, "<set-?>"    # Landroidx/compose/ui/layout/Remeasurement;

    .line 400
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 818
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 819
    nop

    .line 400
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final setScrollingForward(Z)V
    .locals 4
    .param p1, "<set-?>"    # Z

    .line 159
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->isScrollingForward$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 795
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 796
    nop

    .line 159
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method private final setSettledPageState(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 319
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPageState$delegate:Landroidx/compose/runtime/MutableIntState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 813
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    .line 814
    nop

    .line 319
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableIntState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method private final tryRunPrefetch(Landroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 9
    .param p1, "result"    # Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 617
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v0, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    const/4 v1, 0x0

    .line 836
    .local v1, "$i$f$withoutReadObservation":I
    nop

    .line 837
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 838
    .local v2, "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 839
    move-object v3, v2

    .local v3, "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    const/4 v4, 0x0

    .line 840
    .local v4, "$i$f$enter":I
    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 841
    .local v5, "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 842
    const/4 v6, 0x0

    .line 618
    .local v6, "$i$a$-withoutReadObservation-PagerState$tryRunPrefetch$1":I
    :try_start_1
    iget v7, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 619
    iget-boolean v7, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    if-eqz v7, :cond_0

    iget v7, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-direct {p0, v7}, Landroidx/compose/foundation/pager/PagerState;->isGestureActionMatchesScroll(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 620
    iget v7, p0, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    move-object v8, p1

    check-cast v8, Landroidx/compose/foundation/pager/PagerLayoutInfo;

    invoke-direct {p0, v7, v8}, Landroidx/compose/foundation/pager/PagerState;->notifyPrefetch(FLandroidx/compose/foundation/pager/PagerLayoutInfo;)V

    .line 623
    :cond_0
    nop

    .end local v6    # "$i$a$-withoutReadObservation-PagerState$tryRunPrefetch$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    nop

    .line 844
    :try_start_2
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 842
    nop

    .line 845
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 839
    nop

    .line 623
    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    return-void

    .line 844
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v4    # "$i$f$enter":I
    .restart local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .end local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v1    # "$i$f$withoutReadObservation":I
    .end local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local p1    # "result":Landroidx/compose/foundation/pager/PagerMeasureResult;
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 845
    .end local v3    # "this_$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v4    # "$i$f$enter":I
    .end local v5    # "previous$iv$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v0    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v1    # "$i$f$withoutReadObservation":I
    .restart local v2    # "snapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "result":Landroidx/compose/foundation/pager/PagerMeasureResult;
    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v3
.end method

.method public static synthetic updateCurrentPage$default(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/ScrollScope;IFILjava/lang/Object;)V
    .locals 0

    .line 459
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->updateCurrentPage(Landroidx/compose/foundation/gestures/ScrollScope;IF)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Super calls with default arguments not supported in this target, function: updateCurrentPage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final animateScrollToPage(IFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    iget v2, v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 500
    iget v4, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "$i$a$-with-PagerState$animateScrollToPage$3":I
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "$i$a$-with-PagerState$animateScrollToPage$3":I
    :pswitch_1
    iget v4, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->F$0:F

    .local v4, "pageOffsetFraction":F
    iget v7, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    .local v7, "page":I
    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/animation/core/AnimationSpec;

    .local v8, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/pager/PagerState;

    .local v9, "this":Landroidx/compose/foundation/pager/PagerState;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v8

    move-object v14, v9

    goto :goto_2

    .end local v4    # "pageOffsetFraction":F
    .end local v7    # "page":I
    .end local v8    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .end local v9    # "this":Landroidx/compose/foundation/pager/PagerState;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v9, p0

    .restart local v9    # "this":Landroidx/compose/foundation/pager/PagerState;
    move/from16 v4, p2

    .restart local v4    # "pageOffsetFraction":F
    move/from16 v7, p1

    .restart local v7    # "page":I
    move-object/from16 v8, p3

    .line 505
    .restart local v8    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v10

    if-ne v7, v10, :cond_2

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v10

    cmpg-float v10, v10, v4

    if-nez v10, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-nez v10, :cond_3

    .line 506
    :cond_2
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v10

    if-nez v10, :cond_4

    .line 507
    .end local v4    # "pageOffsetFraction":F
    .end local v7    # "page":I
    .end local v8    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .end local v9    # "this":Landroidx/compose/foundation/pager/PagerState;
    :cond_3
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 508
    .restart local v4    # "pageOffsetFraction":F
    .restart local v7    # "page":I
    .restart local v8    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .restart local v9    # "this":Landroidx/compose/foundation/pager/PagerState;
    :cond_4
    iput-object v9, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->I$0:I

    iput v4, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->F$0:F

    iput v6, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    invoke-direct {v9, v0}, Landroidx/compose/foundation/pager/PagerState;->awaitScrollDependencies(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_5

    .line 500
    return-object v3

    .line 508
    :cond_5
    move-object v15, v8

    move-object v14, v9

    .line 509
    .end local v8    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .end local v9    # "this":Landroidx/compose/foundation/pager/PagerState;
    .local v14, "this":Landroidx/compose/foundation/pager/PagerState;
    .local v15, "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    :goto_2
    float-to-double v8, v4

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    cmpg-double v10, v10, v8

    if-gtz v10, :cond_6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_6

    move v5, v6

    :cond_6
    if-eqz v5, :cond_8

    .line 512
    invoke-direct {v14, v7}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v5

    .line 514
    .end local v7    # "page":I
    .local v5, "targetPage":I
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    .line 513
    .end local v4    # "pageOffsetFraction":F
    nop

    .line 516
    .local v12, "targetPageOffsetToSnappedPosition":I
    iget-object v4, v14, Landroidx/compose/foundation/pager/PagerState;->animatedScrollScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    .local v4, "$this$animateScrollToPage_u24lambda_u247":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;
    const/4 v6, 0x0

    .line 517
    .local v6, "$i$a$-with-PagerState$animateScrollToPage$3":I
    new-instance v7, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;

    const/16 v16, 0x0

    move-object v8, v7

    move-object v9, v14

    move v10, v5

    move-object v11, v4

    move-object v13, v15

    move-object/from16 v17, v14

    .end local v14    # "this":Landroidx/compose/foundation/pager/PagerState;
    .local v17, "this":Landroidx/compose/foundation/pager/PagerState;
    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$3$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;ILandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x0

    iput-object v8, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Landroidx/compose/foundation/pager/PagerState$animateScrollToPage$1;->label:I

    invoke-interface {v4, v7, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->scroll(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "$this$animateScrollToPage_u24lambda_u247":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;
    .end local v5    # "targetPage":I
    .end local v12    # "targetPageOffsetToSnappedPosition":I
    .end local v15    # "animationSpec":Landroidx/compose/animation/core/AnimationSpec;
    .end local v17    # "this":Landroidx/compose/foundation/pager/PagerState;
    if-ne v4, v3, :cond_7

    .line 500
    return-object v3

    .line 517
    :cond_7
    move v3, v6

    .line 559
    .end local v6    # "$i$a$-with-PagerState$animateScrollToPage$3":I
    .restart local v3    # "$i$a$-with-PagerState$animateScrollToPage$3":I
    :goto_3
    nop

    .line 516
    .end local v3    # "$i$a$-with-PagerState$animateScrollToPage$3":I
    nop

    .line 560
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 509
    .local v4, "pageOffsetFraction":F
    :cond_8
    const/4 v3, 0x0

    .line 510
    .local v3, "$i$a$-require-PagerState$animateScrollToPage$2":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pageOffsetFraction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not within the range -0.5 to 0.5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 509
    .end local v3    # "$i$a$-require-PagerState$animateScrollToPage$2":I
    .end local v4    # "pageOffsetFraction":F
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;Z)V
    .locals 3
    .param p1, "result"    # Landroidx/compose/foundation/pager/PagerMeasureResult;
    .param p2, "visibleItemsStayedTheSame"    # Z

    .line 598
    const/4 v0, 0x0

    .line 827
    .local v0, "$i$f$debugLog":I
    nop

    .line 830
    nop

    .line 599
    .end local v0    # "$i$f$debugLog":I
    if-eqz p2, :cond_0

    .line 600
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getCurrentPageOffsetFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->updateCurrentPageOffsetFraction(F)V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->updateFromMeasureResult(Landroidx/compose/foundation/pager/PagerMeasureResult;)V

    .line 603
    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/pager/PagerLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->cancelPrefetchIfVisibleItemsChanged(Landroidx/compose/foundation/pager/PagerLayoutInfo;)V

    .line 605
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getCanScrollForward()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->setCanScrollForward(Z)V

    .line 607
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getCanScrollBackward()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->setCanScrollBackward(Z)V

    .line 608
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->numMeasurePasses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->numMeasurePasses:I

    .line 609
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getFirstVisiblePage()Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 831
    .local v0, "it":Landroidx/compose/foundation/pager/MeasuredPage;
    const/4 v1, 0x0

    .line 609
    .local v1, "$i$a$-let-PagerState$applyMeasureResult$2":I
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v2

    iput v2, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    .line 610
    .end local v0    # "it":Landroidx/compose/foundation/pager/MeasuredPage;
    .end local v1    # "$i$a$-let-PagerState$applyMeasureResult$2":I
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getFirstVisiblePageScrollOffset()I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    .line 611
    invoke-direct {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->tryRunPrefetch(Landroidx/compose/foundation/pager/PagerMeasureResult;)V

    .line 612
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/pager/PagerStateKt;->access$calculateNewMaxScrollOffset(Landroidx/compose/foundation/pager/PagerMeasureResult;I)I

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:I

    .line 613
    const/4 v0, 0x0

    .line 832
    .local v0, "$i$f$debugLog":I
    nop

    .line 835
    nop

    .line 615
    .end local v0    # "$i$f$debugLog":I
    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 1
    .param p1, "delta"    # F

    .line 580
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    move-result v0

    return v0
.end method

.method public final getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->awaitLayoutModifier:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    return-object v0
.end method

.method public final getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;
    .locals 1

    .line 388
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    return-object v0
.end method

.method public final getCanScrollBackward()Z
    .locals 3

    .line 588
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollBackward$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 824
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 588
    return v0
.end method

.method public final getCanScrollForward()Z
    .locals 3

    .line 586
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->canScrollForward$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 821
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 586
    return v0
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 315
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public final getCurrentPageOffsetFraction()F
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getCurrentPageOffsetFraction()F

    move-result v0

    return v0
.end method

.method public final getDensity$foundation_release()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 282
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method public final getFirstVisiblePage$foundation_release()I
    .locals 1

    .line 163
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePage:I

    return v0
.end method

.method public final getFirstVisiblePageOffset$foundation_release()I
    .locals 1

    .line 166
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->firstVisiblePageOffset:I

    return v0
.end method

.method public final getInteractionSource()Landroidx/compose/foundation/interaction/InteractionSource;
    .locals 1

    .line 305
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v0, Landroidx/compose/foundation/interaction/InteractionSource;

    return-object v0
.end method

.method public final getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 1

    .line 297
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object v0
.end method

.method public final getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerLayoutInfo;

    return-object v0
.end method

.method public final getNearestRange$foundation_release()Lkotlin/ranges/IntRange;
    .locals 3

    .line 422
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 820
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Lkotlin/ranges/IntRange;

    .line 422
    return-object v0
.end method

.method public final getNumMeasurePasses$foundation_release()I
    .locals 1

    .line 233
    iget v0, p0, Landroidx/compose/foundation/pager/PagerState;->numMeasurePasses:I

    return v0
.end method

.method public final getOffsetFractionForPage(I)F
    .locals 3
    .param p1, "page"    # I

    .line 702
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 705
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPageOffsetFraction()F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 702
    :cond_1
    const/4 v0, 0x0

    .line 703
    .local v0, "$i$a$-require-PagerState$getOffsetFractionForPage$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within the range 0 to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .end local v0    # "$i$a$-require-PagerState$getOffsetFractionForPage$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract getPageCount()I
.end method

.method public final getPageSize$foundation_release()I
    .locals 1

    .line 280
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSize()I

    move-result v0

    return v0
.end method

.method public final getPageSizeWithSpacing$foundation_release()I
    .locals 2

    .line 285
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSpacing$foundation_release()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getPageSpacing$foundation_release()I
    .locals 1

    .line 277
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPageSpacing()I

    move-result v0

    return v0
.end method

.method public final getPinnedPages$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    return-object v0
.end method

.method public final getPlacementScopeInvalidator-zYiylxw$foundation_release()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public final getPositionThresholdFraction$foundation_release()F
    .locals 5

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    .local v0, "$this$_get_positionThresholdFraction__u24lambda_u244":Landroidx/compose/ui/unit/Density;
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$a$-with-PagerState$positionThresholdFraction$1":I
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getDefaultPositionThreshold()F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 294
    .local v2, "minThreshold":F
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 292
    .end local v0    # "$this$_get_positionThresholdFraction__u24lambda_u244":Landroidx/compose/ui/unit/Density;
    .end local v1    # "$i$a$-with-PagerState$positionThresholdFraction$1":I
    .end local v2    # "minThreshold":F
    nop

    .line 295
    return v2
.end method

.method public final getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
    .locals 1

    .line 386
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    return-object v0
.end method

.method public final getPrefetchingEnabled$foundation_release()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    return v0
.end method

.method public final getPremeasureConstraints-msEJaDk$foundation_release()J
    .locals 2

    .line 415
    iget-wide v0, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    return-wide v0
.end method

.method public final getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;
    .locals 3

    .line 400
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 817
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/layout/Remeasurement;

    .line 400
    return-object v0
.end method

.method public final getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;
    .locals 1

    .line 406
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->remeasurementModifier:Landroidx/compose/ui/layout/RemeasurementModifier;

    return-object v0
.end method

.method public final getScrollPosition$foundation_release()Landroidx/compose/foundation/pager/PagerScrollPosition;
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    return-object v0
.end method

.method public final getSettledPage()I
    .locals 3

    .line 329
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->settledPage$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 815
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 329
    return v0
.end method

.method public final getSnapRemainingScrollOffset$foundation_release()F
    .locals 3

    .line 155
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->snapRemainingScrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/FloatState;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 791
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result v0

    .line 155
    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/FloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    return v0
.end method

.method public final getTargetPage()I
    .locals 3

    .line 346
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->targetPage$delegate:Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 816
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 346
    return v0
.end method

.method public final getUpDownDifference-F1C5BW0$foundation_release()J
    .locals 3

    .line 154
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 788
    .local v2, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$getValue":I
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    .line 154
    return-wide v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .line 584
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method public final matchScrollPositionWithKey$foundation_release(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;I)I
    .locals 1
    .param p1, "itemProvider"    # Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;
    .param p2, "currentPage"    # I

    .line 716
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->matchPageWithKey(Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;I)I

    move-result v0

    return v0
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/pager/PagerState;->scroll$suspendImpl(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final scrollToPage(IFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "page"    # I
    .param p2, "pageOffsetFraction"    # F
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 436
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v1, 0x0

    new-instance v2, Landroidx/compose/foundation/pager/PagerState$scrollToPage$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p1, v3}, Landroidx/compose/foundation/pager/PagerState$scrollToPage$2;-><init>(Landroidx/compose/foundation/pager/PagerState;FILkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollableState;->scroll$default(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 444
    return-object v0
.end method

.method public final setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/ui/unit/Density;

    .line 282
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public final setPrefetchingEnabled$foundation_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 239
    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerState;->prefetchingEnabled:Z

    return-void
.end method

.method public final setPremeasureConstraints-BRTryo0$foundation_release(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 415
    iput-wide p1, p0, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    return-void
.end method

.method public final setSnapRemainingScrollOffset$foundation_release(F)V
    .locals 3
    .param p1, "<set-?>"    # F

    .line 155
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->snapRemainingScrollOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v2, 0x0

    .line 792
    .local v2, "$i$f$setValue":I
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    .line 793
    nop

    .line 155
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableFloatState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "$i$f$setValue":I
    return-void
.end method

.method public final setUpDownDifference-k-4lQ0M$foundation_release(J)V
    .locals 4
    .param p1, "<set-?>"    # J

    .line 154
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 789
    .local v3, "$i$f$setValue":I
    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 790
    nop

    .line 154
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$setValue":I
    return-void
.end method

.method public final snapToItem$foundation_release(IF)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "offsetFraction"    # F

    .line 482
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->requestPosition(IF)V

    .line 483
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 484
    :cond_0
    return-void
.end method

.method public final updateCurrentPage(Landroidx/compose/foundation/gestures/ScrollScope;IF)V
    .locals 3
    .param p1, "$this$updateCurrentPage"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "page"    # I
    .param p3, "pageOffsetFraction"    # F

    .line 460
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 461
    .local v0, "targetPageOffsetToSnappedPosition":I
    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState;->animatedScrollScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;

    .local v1, "$this$updateCurrentPage_u24lambda_u245":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;
    const/4 v2, 0x0

    .line 462
    .local v2, "$i$a$-with-PagerState$updateCurrentPage$1":I
    invoke-interface {v1, p1, p2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;->snapToItem(Landroidx/compose/foundation/gestures/ScrollScope;II)V

    .line 463
    nop

    .line 461
    .end local v1    # "$this$updateCurrentPage_u24lambda_u245":Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;
    .end local v2    # "$i$a$-with-PagerState$updateCurrentPage$1":I
    nop

    .line 464
    return-void
.end method

.method public final updateTargetPage(Landroidx/compose/foundation/gestures/ScrollScope;I)V
    .locals 1
    .param p1, "$this$updateTargetPage"    # Landroidx/compose/foundation/gestures/ScrollScope;
    .param p2, "targetPage"    # I

    .line 478
    invoke-direct {p0, p2}, Landroidx/compose/foundation/pager/PagerState;->coerceInPageRange(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/pager/PagerState;->setProgrammaticScrollTargetPage(I)V

    .line 479
    return-void
.end method
