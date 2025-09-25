.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n+ 2 Trace.kt\nandroidx/compose/runtime/TraceKt\n+ 3 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1564:1\n46#2,5:1565\n46#2,3:1570\n50#2:1586\n82#3:1573\n82#3:1587\n82#3:1610\n33#4,6:1574\n33#4,6:1580\n33#4,6:1588\n33#4,6:1594\n33#4,6:1600\n1855#5,2:1606\n1855#5,2:1608\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1\n*L\n555#1:1565,5\n565#1:1570,3\n565#1:1586\n569#1:1573\n600#1:1587\n679#1:1610\n570#1:1574,6\n581#1:1580,6\n601#1:1588,6\n635#1:1594,6\n638#1:1600,6\n653#1:1606,2\n667#1:1608,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "frameTime",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alreadyComposed:Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/collection/IdentityArraySet<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/compose/runtime/collection/IdentityArraySet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Ljava/util/Set;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;

    .line 551
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->invoke(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(J)V
    .locals 27
    .param p1, "frameTime"    # J

    .line 554
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string/jumbo v2, "Recomposer:animation"

    .local v2, "sectionName$iv":Ljava/lang/String;
    iget-object v0, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 v3, 0x0

    .line 1565
    .local v3, "$i$f$trace":I
    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1566
    .local v4, "token$iv":Ljava/lang/Object;
    nop

    .line 1567
    const/4 v5, 0x0

    .line 558
    .local v5, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Recomposer;->access$getBroadcastFrameClock$p(Landroidx/compose/runtime/Recomposer;)Landroidx/compose/runtime/BroadcastFrameClock;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v6, p1

    :try_start_1
    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    .line 561
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    .line 562
    nop

    .end local v5    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1567
    nop

    .line 1569
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1567
    goto :goto_1

    .line 1569
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-wide/from16 v6, p1

    :goto_0
    sget-object v5, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0

    .line 554
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "token$iv":Ljava/lang/Object;
    :cond_0
    move-wide/from16 v6, p1

    .line 565
    :goto_1
    const-string/jumbo v2, "Recomposer:recompose"

    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v15, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v3, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/compose/runtime/collection/IdentityArraySet;

    iget-object v4, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v5, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v14, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Ljava/util/Set;

    iget-object v13, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v12, v1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Ljava/util/Set;

    const/16 v17, 0x0

    .line 1570
    .local v17, "$i$f$trace":I
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1571
    .local v11, "token$iv":Ljava/lang/Object;
    nop

    .line 1572
    const/16 v18, 0x0

    .line 568
    .local v18, "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :try_start_2
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    .line 569
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .local v9, "lock$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 1573
    .local v10, "$i$f$synchronized":I
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    const/4 v0, 0x0

    .line 570
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :try_start_3
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v19, v16

    .local v19, "$this$fastForEach$iv":Ljava/util/List;
    const/16 v16, 0x0

    .line 1574
    .local v16, "$i$f$fastForEach":I
    nop

    .line 1575
    const/16 v20, 0x0

    move/from16 v21, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    .local v20, "index$iv":I
    .local v21, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_10

    move/from16 v1, v20

    .end local v20    # "index$iv":I
    .local v1, "index$iv":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 1576
    move/from16 v20, v0

    move-object/from16 v0, v19

    .end local v19    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    :try_start_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 1577
    .local v19, "item$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    check-cast v22, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v23, v22

    .local v23, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v22, 0x0

    .line 571
    .local v22, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    move-object/from16 v24, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v24, "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v25, v2

    move-object/from16 v2, v23

    .end local v23    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v2, "it":Landroidx/compose/runtime/ControlledComposition;
    .local v25, "sectionName$iv":Ljava/lang/String;
    :try_start_5
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 572
    nop

    .line 1577
    .end local v2    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v22    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$1$1":I
    nop

    .line 1575
    .end local v19    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v20

    move-object/from16 v19, v24

    move-object/from16 v2, v25

    goto :goto_2

    .line 1573
    .end local v1    # "index$iv":I
    .end local v16    # "$i$f$fastForEach":I
    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    :catchall_2
    move-exception v0

    move-object v2, v11

    goto/16 :goto_16

    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v25, v2

    move-object v2, v11

    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    goto/16 :goto_16

    .line 1575
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local v1    # "index$iv":I
    .restart local v2    # "sectionName$iv":Ljava/lang/String;
    .restart local v16    # "$i$f$fastForEach":I
    .local v19, "$this$fastForEach$iv":Ljava/util/List;
    .restart local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    :cond_1
    move-object/from16 v25, v2

    move-object/from16 v24, v19

    .line 1579
    .end local v1    # "index$iv":I
    .end local v2    # "sectionName$iv":Ljava/lang/String;
    .end local v19    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v24    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 573
    .end local v16    # "$i$f$fastForEach":I
    .end local v24    # "$this$fastForEach$iv":Ljava/util/List;
    :try_start_6
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getCompositionInvalidations$p(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    nop

    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_f

    .line 1573
    :try_start_7
    monitor-exit v9

    .line 577
    .end local v9    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    invoke-virtual {v15}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 578
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 579
    :goto_3
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v2, v11

    move-object/from16 v19, v12

    move-object v1, v13

    move-object/from16 v20, v14

    goto/16 :goto_e

    .line 627
    :cond_2
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 628
    invoke-virtual {v8}, Landroidx/compose/runtime/Recomposer;->getChangeCount()J

    move-result-wide v0

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    invoke-static {v8, v0, v1}, Landroidx/compose/runtime/Recomposer;->access$setChangeCount$p(Landroidx/compose/runtime/Recomposer;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    .line 631
    nop

    .line 635
    move-object v0, v13

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1594
    .local v1, "$i$f$fastForEach":I
    nop

    .line 1595
    const/4 v2, 0x0

    .local v2, "index$iv":I
    :try_start_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :goto_4
    if-ge v2, v9, :cond_3

    .line 1596
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1597
    .local v10, "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/runtime/ControlledComposition;

    move-object/from16 v19, v16

    .local v19, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v16, 0x0

    .line 636
    .local v16, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    move-object/from16 v20, v0

    move-object/from16 v0, v19

    .end local v19    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v0, "composition":Landroidx/compose/runtime/ControlledComposition;
    .local v20, "$this$fastForEach$iv":Ljava/util/List;
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 637
    nop

    .line 1597
    .end local v0    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v16    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$4":I
    nop

    .line 1595
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    goto :goto_4

    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    :cond_3
    move-object/from16 v20, v0

    .line 1599
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v2    # "index$iv":I
    .restart local v20    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 638
    .end local v1    # "$i$f$fastForEach":I
    .end local v20    # "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v13

    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1600
    .restart local v1    # "$i$f$fastForEach":I
    nop

    .line 1601
    const/4 v2, 0x0

    .restart local v2    # "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :goto_5
    if-ge v2, v9, :cond_4

    .line 1602
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1603
    .restart local v10    # "item$iv":Ljava/lang/Object;
    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/runtime/ControlledComposition;

    .local v16, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/16 v19, 0x0

    .line 639
    .local v19, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/ControlledComposition;->applyChanges()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 640
    nop

    .line 1603
    .end local v16    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v19    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$5":I
    nop

    .line 1601
    .end local v10    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1605
    .end local v2    # "index$iv":I
    :cond_4
    nop

    .line 646
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v1    # "$i$f$fastForEach":I
    :try_start_9
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 647
    move-object v2, v11

    move-object/from16 v19, v12

    move-object v1, v13

    goto :goto_7

    .line 1586
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_4
    move-exception v0

    move-object v2, v11

    goto/16 :goto_17

    .line 646
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_5
    move-exception v0

    move-object v2, v11

    move-object v1, v13

    goto :goto_6

    .line 641
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 642
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object/from16 v26, v11

    .end local v11    # "token$iv":Ljava/lang/Object;
    .local v26, "token$iv":Ljava/lang/Object;
    move v11, v0

    move-object/from16 v19, v12

    move v12, v1

    move-object v1, v13

    move-object v13, v2

    :try_start_a
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 643
    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    move-object v13, v14

    move-object/from16 v14, v19

    move-object/from16 v16, v3

    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 644
    nop

    .line 646
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 644
    .end local v17    # "$i$f$trace":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local v26    # "token$iv":Ljava/lang/Object;
    nop

    .line 1586
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    move-object/from16 v2, v26

    .local v2, "token$iv":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .end local v2    # "token$iv":Ljava/lang/Object;
    return-void

    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local v26    # "token$iv":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move-object/from16 v2, v26

    .end local v26    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    goto/16 :goto_17

    .line 646
    .end local v2    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v26    # "token$iv":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move-object/from16 v2, v26

    .end local v26    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    :goto_6
    :try_start_c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 627
    .restart local v11    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_5
    move-object v2, v11

    move-object/from16 v19, v12

    move-object v1, v13

    .line 650
    .end local v11    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    :goto_7
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_11

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 651
    nop

    .line 652
    :try_start_d
    move-object/from16 v12, v19

    check-cast v12, Ljava/util/Collection;

    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v12, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 653
    move-object v0, v14

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1606
    .local v9, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    .local v12, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v13, 0x0

    .line 654
    .local v13, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    invoke-interface {v12}, Landroidx/compose/runtime/ControlledComposition;->applyLateChanges()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 655
    nop

    .line 1606
    .end local v12    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$6":I
    nop

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_8

    .line 1607
    :cond_6
    nop

    .line 661
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    :try_start_e
    invoke-interface {v14}, Ljava/util/Set;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_11

    .line 662
    move-object/from16 v20, v14

    goto :goto_a

    .line 661
    :catchall_8
    move-exception v0

    move-object/from16 v20, v14

    goto :goto_9

    .line 656
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 657
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    :try_start_f
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 658
    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    move-object v13, v14

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    move-object/from16 v16, v3

    :try_start_10
    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 659
    nop

    .line 661
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 659
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1586
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 661
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_9
    move-exception v0

    :goto_9
    :try_start_12
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 650
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_7
    move-object/from16 v20, v14

    .line 665
    :goto_a
    move-object/from16 v12, v19

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 666
    nop

    .line 667
    :try_start_13
    move-object/from16 v12, v19

    check-cast v12, Ljava/lang/Iterable;

    move-object v0, v12

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1608
    .local v9, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/ControlledComposition;

    .restart local v12    # "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v13, 0x0

    .line 668
    .local v13, "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    invoke-interface {v12}, Landroidx/compose/runtime/ControlledComposition;->changesApplied()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    .line 669
    nop

    .line 1608
    .end local v12    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v13    # "$i$a$-forEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$7":I
    nop

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_b

    .line 1609
    :cond_8
    nop

    .line 675
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    :try_start_14
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    .line 676
    goto :goto_d

    .line 675
    :catchall_a
    move-exception v0

    goto :goto_c

    .line 670
    :catch_2
    move-exception v0

    move-object v9, v0

    .line 671
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    :try_start_15
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 672
    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object/from16 v16, v3

    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 673
    nop

    .line 675
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    .line 673
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1586
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 675
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_c
    :try_start_17
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->clear()V

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 679
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_9
    :goto_d
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1610
    .local v4, "$i$f$synchronized":I
    monitor-enter v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    const/4 v0, 0x0

    .line 680
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_18
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$deriveStateLocked(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/CancellableContinuation;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 1610
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$8":I
    :try_start_19
    monitor-exit v1

    .line 688
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    .line 689
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 690
    invoke-virtual {v15}, Landroidx/compose/runtime/collection/IdentityArraySet;->clear()V

    .line 691
    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroidx/compose/runtime/Recomposer;->access$setCompositionsRemoved$p(Landroidx/compose/runtime/Recomposer;Ljava/util/Set;)V

    .line 692
    nop

    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    .line 1572
    nop

    .line 1586
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    .line 1572
    nop

    .line 693
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    return-void

    .line 1610
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v17    # "$i$f$trace":I
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_1a
    monitor-exit v1

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    .line 579
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .local v11, "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_a
    move-object v2, v11

    move-object/from16 v19, v12

    move-object v1, v13

    move-object/from16 v20, v14

    .line 580
    .end local v11    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    :goto_e
    nop

    .line 581
    move-object v0, v4

    .local v0, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v9, 0x0

    .line 1580
    .local v9, "$i$f$fastForEach":I
    nop

    .line 1581
    const/4 v10, 0x0

    .local v10, "index$iv":I
    :try_start_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    :goto_f
    if-ge v10, v11, :cond_c

    .line 1582
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 1583
    .local v12, "item$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    .local v13, "composition":Landroidx/compose/runtime/ControlledComposition;
    const/4 v14, 0x0

    .line 582
    .local v14, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    invoke-virtual {v3, v13}, Landroidx/compose/runtime/collection/IdentityArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-static {v8, v13, v15}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/collection/IdentityArraySet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v16

    if-eqz v16, :cond_b

    move-object/from16 v21, v16

    .local v21, "it":Landroidx/compose/runtime/ControlledComposition;
    const/16 v16, 0x0

    .line 584
    .local v16, "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    move-object/from16 v22, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .local v22, "$this$fastForEach$iv":Ljava/util/List;
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v6, v21

    .end local v21    # "it":Landroidx/compose/runtime/ControlledComposition;
    .local v6, "it":Landroidx/compose/runtime/ControlledComposition;
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 585
    nop

    .end local v6    # "it":Landroidx/compose/runtime/ControlledComposition;
    .end local v16    # "$i$a$-let-Recomposer$runRecomposeAndApplyChanges$2$1$2$2$1":I
    goto :goto_10

    .line 583
    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_b
    move-object/from16 v22, v0

    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v22    # "$this$fastForEach$iv":Ljava/util/List;
    :goto_10
    nop

    .line 586
    nop

    .line 1583
    .end local v13    # "composition":Landroidx/compose/runtime/ControlledComposition;
    .end local v14    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$2":I
    nop

    .line 1581
    .end local v12    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v6, p1

    move-object/from16 v0, v22

    goto :goto_f

    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    .restart local v0    # "$this$fastForEach$iv":Ljava/util/List;
    :cond_c
    move-object/from16 v22, v0

    .line 1585
    .end local v0    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "index$iv":I
    .restart local v22    # "$this$fastForEach$iv":Ljava/util/List;
    nop

    .line 592
    .end local v9    # "$i$f$fastForEach":I
    .end local v22    # "$this$fastForEach$iv":Ljava/util/List;
    :try_start_1c
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 593
    nop

    .line 599
    invoke-virtual {v15}, Landroidx/compose/runtime/collection/IdentityArraySet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 600
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getStateLock$p(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .local v6, "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1587
    .local v7, "$i$f$synchronized":I
    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    const/4 v0, 0x0

    .line 601
    .local v0, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :try_start_1d
    invoke-static {v8}, Landroidx/compose/runtime/Recomposer;->access$getKnownCompositions(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    move-result-object v9

    .local v9, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v10, 0x0

    .line 1588
    .local v10, "$i$f$fastForEach":I
    nop

    .line 1589
    const/4 v11, 0x0

    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    :goto_11
    if-ge v11, v12, :cond_f

    .line 1590
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 1591
    .local v13, "item$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    .local v14, "value":Landroidx/compose/runtime/ControlledComposition;
    const/16 v16, 0x0

    .line 602
    .local v16, "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 603
    invoke-virtual {v3, v14}, Landroidx/compose/runtime/collection/IdentityArraySet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 604
    move/from16 v21, v0

    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .local v21, "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    move-object v0, v15

    check-cast v0, Ljava/util/Set;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ControlledComposition;->observesAnyOf(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 606
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 603
    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :cond_d
    move/from16 v21, v0

    .line 608
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :cond_e
    :goto_12
    nop

    .line 1591
    .end local v14    # "value":Landroidx/compose/runtime/ControlledComposition;
    .end local v16    # "$i$a$-fastForEach-Recomposer$runRecomposeAndApplyChanges$2$1$2$3$1":I
    nop

    .line 1589
    .end local v13    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v21

    goto :goto_11

    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .restart local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    :cond_f
    move/from16 v21, v0

    .line 1593
    .end local v0    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    .end local v11    # "index$iv":I
    .restart local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    nop

    .line 609
    .end local v9    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v10    # "$i$f$fastForEach":I
    nop

    .end local v21    # "$i$a$-synchronized-Recomposer$runRecomposeAndApplyChanges$2$1$2$3":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 1587
    :try_start_1e
    monitor-exit v6

    goto :goto_13

    :catchall_c
    move-exception v0

    monitor-exit v6

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 612
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :cond_10
    :goto_13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    if-eqz v0, :cond_12

    .line 613
    nop

    .line 614
    :try_start_1f
    invoke-static {v5, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 615
    :goto_14
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 616
    move-object/from16 v14, v20

    check-cast v14, Ljava/util/Collection;

    invoke-static {v8, v5, v15}, Landroidx/compose/runtime/Recomposer;->access$performInsertValues(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Landroidx/compose/runtime/collection/IdentityArraySet;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v14, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 617
    invoke-static {v5, v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    goto :goto_14

    .line 615
    :cond_11
    move-wide/from16 v6, p1

    move-object v13, v1

    move-object v11, v2

    move-object/from16 v12, v19

    move-object/from16 v14, v20

    goto/16 :goto_3

    .line 619
    :catch_3
    move-exception v0

    move-object v9, v0

    .line 620
    .local v9, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_20
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 621
    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object/from16 v16, v3

    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    .line 622
    nop

    .line 1586
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "$i$f$trace":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 612
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :cond_12
    move-wide/from16 v6, p1

    move-object v13, v1

    move-object v11, v2

    move-object/from16 v12, v19

    move-object/from16 v14, v20

    goto/16 :goto_3

    .line 592
    :catchall_d
    move-exception v0

    goto :goto_15

    .line 587
    :catch_4
    move-exception v0

    move-object v9, v0

    .line 588
    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_21
    invoke-static/range {v8 .. v13}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;Landroidx/compose/runtime/ControlledComposition;ZILjava/lang/Object;)V

    .line 589
    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object/from16 v16, v3

    invoke-static/range {v10 .. v16}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/collection/IdentityArraySet;Landroidx/compose/runtime/collection/IdentityArraySet;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 590
    nop

    .line 592
    .end local v9    # "e":Ljava/lang/Exception;
    :try_start_22
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    .line 590
    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    nop

    .line 1586
    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    return-void

    .line 592
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_15
    :try_start_23
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0

    .line 1586
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .local v11, "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_e
    move-exception v0

    move-object v2, v11

    .end local v11    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    goto :goto_17

    .line 1573
    .end local v2    # "token$iv":Ljava/lang/Object;
    .local v9, "lock$iv":Ljava/lang/Object;
    .local v10, "$i$f$synchronized":I
    .restart local v11    # "token$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    :catchall_f
    move-exception v0

    move-object v2, v11

    .end local v11    # "token$iv":Ljava/lang/Object;
    .restart local v2    # "token$iv":Ljava/lang/Object;
    goto :goto_16

    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    .restart local v11    # "token$iv":Ljava/lang/Object;
    :catchall_10
    move-exception v0

    move-object/from16 v25, v2

    move-object v2, v11

    .end local v11    # "token$iv":Ljava/lang/Object;
    .local v2, "token$iv":Ljava/lang/Object;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_16
    monitor-exit v9

    .end local v2    # "token$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$trace":I
    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .end local p1    # "frameTime":J
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    .line 1586
    .end local v9    # "lock$iv":Ljava/lang/Object;
    .end local v10    # "$i$f$synchronized":I
    .end local v18    # "$i$a$-trace-Recomposer$runRecomposeAndApplyChanges$2$1$2":I
    .restart local v2    # "token$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$trace":I
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    .restart local p1    # "frameTime":J
    :catchall_11
    move-exception v0

    goto :goto_17

    .end local v25    # "sectionName$iv":Ljava/lang/String;
    .local v2, "sectionName$iv":Ljava/lang/String;
    .restart local v11    # "token$iv":Ljava/lang/Object;
    :catchall_12
    move-exception v0

    move-object/from16 v25, v2

    move-object v2, v11

    .end local v11    # "token$iv":Ljava/lang/Object;
    .local v2, "token$iv":Ljava/lang/Object;
    .restart local v25    # "sectionName$iv":Ljava/lang/String;
    :goto_17
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/Trace;->endSection(Ljava/lang/Object;)V

    throw v0
.end method
