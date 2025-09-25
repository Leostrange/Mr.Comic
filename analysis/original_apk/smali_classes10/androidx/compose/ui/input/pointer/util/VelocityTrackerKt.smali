.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocityTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,728:1\n706#1:741\n713#1,2:742\n709#1,6:744\n706#1:750\n706#1:751\n701#1:752\n709#1:753\n709#1:754\n687#1:755\n687#1:756\n33#2,6:729\n33#2,6:735\n81#3:757\n107#3,2:758\n*S KotlinDebug\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n*L\n487#1:741\n489#1:742,2\n491#1:744,6\n498#1:750\n500#1:751\n515#1:752\n557#1:753\n559#1:754\n667#1:755\n677#1:756\n385#1:729,6\n421#1:735,6\n727#1:757\n727#1:758,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u001a(\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u00060\u0013j\u0002`\u00140\u00122\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0010\u0017\u001a(\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0003H\u0082\u0008\u001a2\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0008\u0008\u0002\u0010#\u001a\u00020\u0013H\u0000\u001a\u0012\u0010$\u001a\u00020%*\u00020&2\u0006\u0010\'\u001a\u00020(\u001a\u0014\u0010)\u001a\u00020%*\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002\u001a\u0014\u0010*\u001a\u00020%*\u00020&2\u0006\u0010\'\u001a\u00020(H\u0002\u001a\u0014\u0010+\u001a\u00020\u0003*\u00020\u00132\u0006\u0010,\u001a\u00020\u0013H\u0002\u001a,\u0010-\u001a\u00020\u0003*\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`.2\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0082\n\u00a2\u0006\u0002\u00101\u001a\r\u00102\u001a\u00020\u0003*\u00020\u0013H\u0082\u0008\u001a4\u00103\u001a\u00020%*\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`.2\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0003H\u0082\n\u00a2\u0006\u0002\u00105\u001a1\u00103\u001a\u00020%*\n\u0012\u0006\u0012\u0004\u0018\u0001060\u00122\u0006\u00107\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u0002082\u0006\u00109\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0010:\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"1\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078G@GX\u0087\u008e\u0002\u00a2\u0006\u0018\n\u0004\u0008\u000f\u0010\u0010\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e*\u0018\u0008\u0002\u0010\u0011\"\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0012\u0004\u0012\u00020\u00130\u0012*\u000c\u0008\u0002\u0010;\"\u00020\u00132\u00020\u0013\u00a8\u0006<"
    }
    d2 = {
        "AssumePointerMoveStoppedMilliseconds",
        "",
        "DefaultWeight",
        "",
        "HistorySize",
        "HorizonMilliseconds",
        "<set-?>",
        "",
        "VelocityTrackerAddPointsFix",
        "getVelocityTrackerAddPointsFix$annotations",
        "()V",
        "getVelocityTrackerAddPointsFix",
        "()Z",
        "setVelocityTrackerAddPointsFix",
        "(Z)V",
        "VelocityTrackerAddPointsFix$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "Matrix",
        "",
        "",
        "Landroidx/compose/ui/input/pointer/util/Vector;",
        "rows",
        "cols",
        "(II)[[F",
        "calculateImpulseVelocity",
        "dataPoints",
        "time",
        "sampleCount",
        "isDataDifferential",
        "kineticEnergyToVelocity",
        "kineticEnergy",
        "polyFitLeastSquares",
        "x",
        "y",
        "degree",
        "coefficients",
        "addPointerInputChange",
        "",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "event",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "addPointerInputChangeLegacy",
        "addPointerInputChangeWithFix",
        "dot",
        "a",
        "get",
        "Landroidx/compose/ui/input/pointer/util/Matrix;",
        "row",
        "col",
        "([[FII)F",
        "norm",
        "set",
        "value",
        "([[FIIF)V",
        "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "index",
        "",
        "dataPoint",
        "([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V",
        "Vector",
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
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64

.field private static final VelocityTrackerAddPointsFix$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 727
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private static final Matrix(II)[[F
    .locals 4
    .param p0, "rows"    # I
    .param p1, "cols"    # I

    const/4 v0, 0x0

    .line 706
    .local v0, "$i$f$Matrix":I
    new-array v1, p0, [[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    new-array v3, p1, [F

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final synthetic access$calculateImpulseVelocity([F[FIZ)F
    .locals 1
    .param p0, "dataPoints"    # [F
    .param p1, "time"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "isDataDifferential"    # Z

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->calculateImpulseVelocity([F[FIZ)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 0
    .param p0, "$receiver"    # [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .param p1, "index"    # I
    .param p2, "time"    # J
    .param p4, "dataPoint"    # F

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V

    return-void
.end method

.method public static final addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 1
    .param p0, "$this$addPointerInputChange"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 365
    invoke-static {}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getVelocityTrackerAddPointsFix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChangeWithFix(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChangeLegacy(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 370
    :goto_0
    return-void
.end method

.method private static final addPointerInputChangeLegacy(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 16
    .param p0, "$this$addPointerInputChangeLegacy"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 376
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 383
    :cond_0
    const-wide/16 v1, 0x0

    .local v1, "previousPointerPosition":J
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v1

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v3

    .local v3, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 729
    .local v4, "$i$f$fastForEach":I
    nop

    .line 730
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 731
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 732
    .local v7, "item$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .local v8, "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    const/4 v9, 0x0

    .line 392
    .local v9, "$i$a$-fastForEach-VelocityTrackerKt$addPointerInputChangeLegacy$1":I
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    invoke-static {v10, v11, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v10

    .line 393
    .local v10, "historicalDelta":J
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 397
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v14

    invoke-virtual {v0, v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 398
    nop

    .line 732
    .end local v8    # "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    .end local v9    # "$i$a$-fastForEach-VelocityTrackerKt$addPointerInputChangeLegacy$1":I
    .end local v10    # "historicalDelta":J
    nop

    .line 730
    .end local v7    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 734
    .end local v5    # "index$iv":I
    :cond_1
    nop

    .line 403
    .end local v3    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v4    # "$i$f$fastForEach":I
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 404
    .local v3, "delta":J
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setCurrentPointerPositionAccumulator-k-4lQ0M$ui_release(J)V

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getCurrentPointerPositionAccumulator-F1C5BW0$ui_release()J

    move-result-wide v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 406
    return-void
.end method

.method private static final addPointerInputChangeWithFix(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 11
    .param p0, "$this$addPointerInputChangeWithFix"    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
    .param p1, "event"    # Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 410
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 420
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 421
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    move-result-object v0

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 735
    .local v1, "$i$f$fastForEach":I
    nop

    .line 736
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 737
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 738
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .local v5, "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    const/4 v6, 0x0

    .line 422
    .local v6, "$i$a$-fastForEach-VelocityTrackerKt$addPointerInputChangeWithFix$1":I
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    move-result-wide v7

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getOriginalEventPosition-F1C5BW0$ui_release()J

    move-result-wide v9

    invoke-virtual {p0, v7, v8, v9, v10}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 423
    nop

    .line 738
    .end local v5    # "it":Landroidx/compose/ui/input/pointer/HistoricalChange;
    .end local v6    # "$i$a$-fastForEach-VelocityTrackerKt$addPointerInputChangeWithFix$1":I
    nop

    .line 736
    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    .end local v2    # "index$iv":I
    :cond_1
    nop

    .line 424
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getOriginalEventPosition-F1C5BW0$ui_release()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->addPosition-Uv8p0NA(JJ)V

    .line 429
    :cond_2
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->getLastMoveEventTimeStamp$ui_release()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 430
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->resetTracking()V

    .line 432
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->setLastMoveEventTimeStamp$ui_release(J)V

    .line 433
    return-void
.end method

.method private static final calculateImpulseVelocity([F[FIZ)F
    .locals 10
    .param p0, "dataPoints"    # [F
    .param p1, "time"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "isDataDifferential"    # Z

    .line 647
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    .line 648
    return v0

    .line 650
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_4

    .line 651
    aget v1, p1, v2

    aget v4, p1, v3

    cmpg-float v1, v1, v4

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 652
    return v0

    .line 658
    :cond_2
    if-eqz p3, :cond_3

    aget v0, p0, v2

    goto :goto_1

    .line 659
    :cond_3
    aget v0, p0, v2

    aget v1, p0, v3

    sub-float/2addr v0, v1

    .line 658
    :goto_1
    nop

    .line 654
    nop

    .line 660
    .local v0, "dataPointsDelta":F
    aget v1, p1, v2

    aget v2, p1, v3

    sub-float/2addr v1, v2

    div-float v1, v0, v1

    return v1

    .line 662
    .end local v0    # "dataPointsDelta":F
    :cond_4
    const/4 v0, 0x0

    .line 663
    .local v0, "work":F
    add-int/lit8 v4, p2, -0x1

    .local v4, "i":I
    :goto_2
    if-lez v4, :cond_9

    .line 664
    aget v5, p1, v4

    add-int/lit8 v6, v4, -0x1

    aget v6, p1, v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    if-eqz v5, :cond_6

    .line 665
    goto :goto_5

    .line 667
    :cond_6
    const/4 v5, 0x0

    .line 755
    .local v5, "$i$f$kineticEnergyToVelocity":I
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v7, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    .line 667
    .end local v5    # "$i$f$kineticEnergyToVelocity":I
    move v5, v6

    .line 669
    .local v5, "vPrev":F
    if-eqz p3, :cond_7

    add-int/lit8 v6, v4, -0x1

    aget v6, p0, v6

    neg-float v6, v6

    goto :goto_4

    .line 670
    :cond_7
    aget v6, p0, v4

    add-int/lit8 v7, v4, -0x1

    aget v7, p0, v7

    sub-float/2addr v6, v7

    .line 669
    :goto_4
    nop

    .line 668
    nop

    .line 671
    .local v6, "dataPointsDelta":F
    aget v7, p1, v4

    add-int/lit8 v8, v4, -0x1

    aget v8, p1, v8

    sub-float/2addr v7, v8

    div-float v7, v6, v7

    .line 672
    .local v7, "vCurr":F
    sub-float v8, v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v0, v8

    .line 673
    add-int/lit8 v8, p2, -0x1

    if-ne v4, v8, :cond_8

    .line 674
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    .line 663
    .end local v5    # "vPrev":F
    .end local v6    # "dataPointsDelta":F
    .end local v7    # "vCurr":F
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 677
    .end local v4    # "i":I
    :cond_9
    const/4 v2, 0x0

    .line 756
    .local v2, "$i$f$kineticEnergyToVelocity":I
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v3, v1

    .line 677
    .end local v2    # "$i$f$kineticEnergyToVelocity":I
    return v3
.end method

.method private static final dot([F[F)F
    .locals 5
    .param p0, "$this$dot"    # [F
    .param p1, "a"    # [F

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "result":F
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 695
    aget v3, p0, v1

    aget v4, p1, v1

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private static final get([[FII)F
    .locals 2
    .param p0, "$this$get"    # [[F
    .param p1, "row"    # I
    .param p2, "col"    # I

    const/4 v0, 0x0

    .line 709
    .local v0, "$i$f$get":I
    aget-object v1, p0, p1

    aget v1, v1, p2

    return v1
.end method

.method public static final getVelocityTrackerAddPointsFix()Z
    .locals 4

    .line 727
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix$delegate:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/State;

    .local v0, "$this$getValue$iv":Landroidx/compose/runtime/State;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    const/4 v3, 0x0

    .line 757
    .local v3, "$i$f$getValue":I
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$getValue$iv":Landroidx/compose/runtime/State;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "$i$f$getValue":I
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 727
    return v0
.end method

.method public static synthetic getVelocityTrackerAddPointsFix$annotations()V
    .locals 0

    return-void
.end method

.method private static final kineticEnergyToVelocity(F)F
    .locals 4
    .param p0, "kineticEnergy"    # F

    const/4 v0, 0x0

    .line 687
    .local v0, "$i$f$kineticEnergyToVelocity":I
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    return v1
.end method

.method private static final norm([F)F
    .locals 3
    .param p0, "$this$norm"    # [F

    const/4 v0, 0x0

    .line 701
    .local v0, "$i$f$norm":I
    invoke-static {p0, p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static final polyFitLeastSquares([F[FII[F)[F
    .locals 17
    .param p0, "x"    # [F
    .param p1, "y"    # [F
    .param p2, "sampleCount"    # I
    .param p3, "degree"    # I
    .param p4, "coefficients"    # [F

    .line 468
    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 471
    if-eqz v0, :cond_10

    .line 476
    if-lt v1, v0, :cond_0

    .line 477
    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    .line 479
    :cond_0
    move v2, v1

    .line 476
    :goto_0
    nop

    .line 475
    nop

    .line 483
    .local v2, "truncatedDegree":I
    move/from16 v3, p2

    .line 484
    .local v3, "m":I
    add-int/lit8 v4, v2, 0x1

    .line 487
    .local v4, "n":I
    const/4 v5, 0x0

    .line 741
    .local v5, "$i$f$Matrix":I
    new-array v6, v4, [[F

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v4, :cond_1

    new-array v9, v3, [F

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 487
    .end local v5    # "$i$f$Matrix":I
    :cond_1
    move-object v5, v6

    .line 488
    .local v5, "a":[[F
    const/4 v6, 0x0

    .local v6, "h":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 489
    const/4 v8, 0x0

    .local v8, "row$iv":I
    const/high16 v9, 0x3f800000    # 1.0f

    .local v9, "value$iv":F
    move-object v10, v5

    .local v10, "$this$set$iv":[[F
    const/4 v11, 0x0

    .line 742
    .local v11, "$i$f$set":I
    aget-object v12, v10, v8

    aput v9, v12, v6

    .line 743
    nop

    .line 490
    .end local v8    # "row$iv":I
    .end local v9    # "value$iv":F
    .end local v10    # "$this$set$iv":[[F
    .end local v11    # "$i$f$set":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3
    if-ge v8, v4, :cond_2

    .line 491
    add-int/lit8 v9, v8, -0x1

    .local v9, "row$iv":I
    move-object v10, v5

    .local v10, "$this$get$iv":[[F
    const/4 v11, 0x0

    .line 744
    .local v11, "$i$f$get":I
    aget-object v12, v10, v9

    aget v9, v12, v6

    .line 491
    .end local v9    # "row$iv":I
    .end local v10    # "$this$get$iv":[[F
    .end local v11    # "$i$f$get":I
    aget v10, p0, v6

    mul-float/2addr v9, v10

    .local v9, "value$iv":F
    move-object v10, v5

    .local v10, "$this$set$iv":[[F
    const/4 v11, 0x0

    .line 748
    .local v11, "$i$f$set":I
    aget-object v12, v10, v8

    aput v9, v12, v6

    .line 749
    nop

    .line 490
    .end local v9    # "value$iv":F
    .end local v10    # "$this$set$iv":[[F
    .end local v11    # "$i$f$set":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 488
    .end local v8    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 498
    .end local v6    # "h":I
    :cond_3
    const/4 v6, 0x0

    .line 750
    .local v6, "$i$f$Matrix":I
    new-array v8, v4, [[F

    move v9, v7

    :goto_4
    if-ge v9, v4, :cond_4

    new-array v10, v3, [F

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 498
    .end local v6    # "$i$f$Matrix":I
    :cond_4
    move-object v6, v8

    .line 500
    .local v6, "q":[[F
    const/4 v8, 0x0

    .line 751
    .local v8, "$i$f$Matrix":I
    new-array v9, v4, [[F

    :goto_5
    if-ge v7, v4, :cond_5

    new-array v10, v4, [F

    aput-object v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 500
    .end local v8    # "$i$f$Matrix":I
    :cond_5
    move-object v7, v9

    .line 501
    .local v7, "r":[[F
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    if-ge v8, v4, :cond_d

    .line 502
    aget-object v9, v6, v8

    .line 503
    .local v9, "w":[F
    aget-object v10, v5, v8

    .line 504
    .local v10, "aw":[F
    const/4 v11, 0x0

    .local v11, "h":I
    :goto_7
    if-ge v11, v3, :cond_6

    .line 505
    aget v12, v10, v11

    aput v12, v9, v11

    .line 504
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 507
    .end local v11    # "h":I
    :cond_6
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v8, :cond_8

    .line 508
    aget-object v12, v6, v11

    .line 509
    .local v12, "z":[F
    invoke-static {v9, v12}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v13

    .line 510
    .local v13, "dot":F
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_9
    if-ge v14, v3, :cond_7

    .line 511
    aget v15, v9, v14

    aget v16, v12, v14

    mul-float v16, v16, v13

    sub-float v15, v15, v16

    aput v15, v9, v14

    .line 510
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 507
    .end local v12    # "z":[F
    .end local v13    # "dot":F
    .end local v14    # "h":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 515
    .end local v11    # "i":I
    :cond_8
    move-object v11, v9

    .local v11, "$this$norm$iv":[F
    const/4 v12, 0x0

    .line 752
    .local v12, "$i$f$norm":I
    invoke-static {v11, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 515
    .end local v11    # "$this$norm$iv":[F
    .end local v12    # "$i$f$norm":I
    move v11, v13

    .line 516
    .local v11, "norm":F
    const v12, 0x358637bd    # 1.0E-6f

    cmpg-float v12, v11, v12

    if-ltz v12, :cond_c

    .line 527
    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v11

    .line 528
    .local v12, "inverseNorm":F
    const/4 v13, 0x0

    .local v13, "h":I
    :goto_a
    if-ge v13, v3, :cond_9

    .line 529
    aget v14, v9, v13

    mul-float/2addr v14, v12

    aput v14, v9, v13

    .line 528
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 531
    .end local v13    # "h":I
    :cond_9
    aget-object v13, v7, v8

    .line 532
    .local v13, "v":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b
    if-ge v14, v4, :cond_b

    .line 533
    if-ge v14, v8, :cond_a

    const/4 v15, 0x0

    goto :goto_c

    :cond_a
    aget-object v15, v5, v14

    invoke-static {v9, v15}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v15

    :goto_c
    aput v15, v13, v14

    .line 532
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 501
    .end local v9    # "w":[F
    .end local v10    # "aw":[F
    .end local v11    # "norm":F
    .end local v12    # "inverseNorm":F
    .end local v13    # "v":[F
    .end local v14    # "i":I
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 521
    .restart local v9    # "w":[F
    .restart local v10    # "aw":[F
    .restart local v11    # "norm":F
    :cond_c
    new-instance v12, Ljava/lang/IllegalArgumentException;

    .line 522
    nop

    .line 521
    const-string v13, "Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 539
    .end local v8    # "j":I
    .end local v9    # "w":[F
    .end local v10    # "aw":[F
    .end local v11    # "norm":F
    :cond_d
    move-object/from16 v8, p1

    .line 544
    .local v8, "wy":[F
    nop

    .line 554
    add-int/lit8 v9, v4, -0x1

    .local v9, "i":I
    :goto_d
    const/4 v10, -0x1

    if-ge v10, v9, :cond_f

    .line 555
    aget-object v10, v6, v9

    invoke-static {v10, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->dot([F[F)F

    move-result v10

    aput v10, p4, v9

    .line 556
    add-int/lit8 v10, v4, -0x1

    .local v10, "j":I
    add-int/lit8 v11, v9, 0x1

    if-gt v11, v10, :cond_e

    .line 557
    :goto_e
    aget v12, p4, v9

    move-object v13, v7

    .local v13, "$this$get$iv":[[F
    const/4 v14, 0x0

    .line 753
    .local v14, "$i$f$get":I
    aget-object v15, v13, v9

    aget v13, v15, v10

    .line 557
    .end local v13    # "$this$get$iv":[[F
    .end local v14    # "$i$f$get":I
    aget v14, p4, v10

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, p4, v9

    .line 556
    if-eq v10, v11, :cond_e

    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 559
    .end local v10    # "j":I
    :cond_e
    aget v10, p4, v9

    move-object v11, v7

    .local v11, "$this$get$iv":[[F
    const/4 v12, 0x0

    .line 754
    .local v12, "$i$f$get":I
    aget-object v13, v11, v9

    aget v11, v13, v9

    .line 559
    .end local v11    # "$this$get$iv":[[F
    .end local v12    # "$i$f$get":I
    div-float/2addr v10, v11

    aput v10, p4, v9

    .line 554
    add-int/lit8 v9, v9, -0x1

    goto :goto_d

    .line 562
    .end local v9    # "i":I
    :cond_f
    return-object p4

    .line 472
    .end local v2    # "truncatedDegree":I
    .end local v3    # "m":I
    .end local v4    # "n":I
    .end local v5    # "a":[[F
    .end local v6    # "q":[[F
    .end local v7    # "r":[[F
    .end local v8    # "wy":[F
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one point must be provided"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 469
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The degree must be at positive integer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic polyFitLeastSquares$default([F[FII[FILjava/lang/Object;)[F
    .locals 0

    .line 458
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    .line 466
    add-int/lit8 p4, p3, 0x1

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p4

    new-array p4, p4, [F

    .line 458
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->polyFitLeastSquares([F[FII[F)[F

    move-result-object p0

    return-object p0
.end method

.method private static final set([Landroidx/compose/ui/input/pointer/util/DataPointAtTime;IJF)V
    .locals 2
    .param p0, "$this$set"    # [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .param p1, "index"    # I
    .param p2, "time"    # J
    .param p4, "dataPoint"    # F

    .line 339
    aget-object v0, p0, p1

    .line 340
    .local v0, "currentEntry":Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    if-nez v0, :cond_0

    .line 341
    new-instance v1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-direct {v1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;-><init>(JF)V

    aput-object v1, p0, p1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setTime(J)V

    .line 344
    invoke-virtual {v0, p4}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->setDataPoint(F)V

    .line 346
    :goto_0
    return-void
.end method

.method private static final set([[FIIF)V
    .locals 2
    .param p0, "$this$set"    # [[F
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "value"    # F

    const/4 v0, 0x0

    .line 713
    .local v0, "$i$f$set":I
    aget-object v1, p0, p1

    aput p3, v1, p2

    .line 714
    return-void
.end method

.method public static final setVelocityTrackerAddPointsFix(Z)V
    .locals 5
    .param p0, "<set-?>"    # Z

    .line 727
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->VelocityTrackerAddPointsFix$delegate:Landroidx/compose/runtime/MutableState;

    .local v0, "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    const/4 v1, 0x0

    .local v1, "thisObj$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "property$iv":Lkotlin/reflect/KProperty;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 758
    .local v4, "$i$f$setValue":I
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 759
    nop

    .line 727
    .end local v0    # "$this$setValue$iv":Landroidx/compose/runtime/MutableState;
    .end local v1    # "thisObj$iv":Ljava/lang/Object;
    .end local v2    # "property$iv":Lkotlin/reflect/KProperty;
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$setValue":I
    return-void
.end method
