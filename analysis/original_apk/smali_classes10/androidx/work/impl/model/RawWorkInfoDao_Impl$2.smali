.class Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;
.super Ljava/lang/Object;
.source "RawWorkInfoDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/RawWorkInfoDao_Impl;->getWorkInfoPojosFlow(Landroidx/sqlite/db/SupportSQLiteQuery;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

.field final synthetic val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Landroidx/sqlite/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/RawWorkInfoDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_internalQuery"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    invoke-virtual {p0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 85
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 522
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$000(Landroidx/work/impl/model/RawWorkInfoDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->val$_internalQuery:Landroidx/sqlite/db/SupportSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 524
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 525
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v3, "state"

    invoke-static {v2, v3}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 526
    .local v3, "_cursorIndexOfState":I
    const-string/jumbo v5, "output"

    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 527
    .local v5, "_cursorIndexOfOutput":I
    const-string v6, "initial_delay"

    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 528
    .local v6, "_cursorIndexOfInitialDelay":I
    const-string v7, "interval_duration"

    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 529
    .local v7, "_cursorIndexOfIntervalDuration":I
    const-string v8, "flex_duration"

    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 530
    .local v8, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v9, "run_attempt_count"

    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 531
    .local v9, "_cursorIndexOfRunAttemptCount":I
    const-string v10, "backoff_policy"

    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 532
    .local v10, "_cursorIndexOfBackoffPolicy":I
    const-string v11, "backoff_delay_duration"

    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 533
    .local v11, "_cursorIndexOfBackoffDelayDuration":I
    const-string v12, "last_enqueue_time"

    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 534
    .local v12, "_cursorIndexOfLastEnqueueTime":I
    const-string/jumbo v13, "period_count"

    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 535
    .local v13, "_cursorIndexOfPeriodCount":I
    const-string v14, "generation"

    invoke-static {v2, v14}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 536
    .local v14, "_cursorIndexOfGeneration":I
    const-string/jumbo v15, "next_schedule_time_override"

    invoke-static {v2, v15}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 537
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 538
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v16, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v16, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 539
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v17, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v17, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 540
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v18, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 541
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 542
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v20, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 543
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v21, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 544
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v22, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 545
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v23, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v2, v4}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 546
    .local v4, "_cursorIndexOfContentUriTriggers":I
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v25, v24

    .line 547
    .local v25, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v24

    .line 548
    .local v26, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 549
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v27, v24

    .line 550
    .local v27, "_tmpKey":Ljava/lang/String;
    move/from16 v24, v4

    move-object/from16 v4, v25

    move/from16 v25, v15

    move-object/from16 v15, v27

    .end local v27    # "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_tmpKey":Ljava/lang/String;
    .local v24, "_cursorIndexOfContentUriTriggers":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 551
    .local v27, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v27, :cond_0

    .line 552
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v28

    .line 553
    move/from16 v28, v14

    move-object/from16 v14, v27

    .end local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v14, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v28, "_cursorIndexOfGeneration":I
    invoke-virtual {v4, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v27, v14

    goto :goto_1

    .line 551
    .end local v28    # "_cursorIndexOfGeneration":I
    .local v14, "_cursorIndexOfGeneration":I
    .restart local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move/from16 v28, v14

    .line 555
    .end local v14    # "_cursorIndexOfGeneration":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 556
    .local v14, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v15

    move-object/from16 v15, v26

    .end local v26    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 557
    .local v26, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v26, :cond_1

    .line 558
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v26, v30

    .line 559
    move/from16 v30, v13

    move-object/from16 v13, v26

    .end local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v13, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v30, "_cursorIndexOfPeriodCount":I
    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 557
    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v13, "_cursorIndexOfPeriodCount":I
    .restart local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_1
    move/from16 v30, v13

    .line 561
    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_tmpKey_1":Ljava/lang/String;
    .end local v26    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v27    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .restart local v30    # "_cursorIndexOfPeriodCount":I
    :goto_2
    move-object/from16 v26, v15

    move/from16 v15, v25

    move/from16 v14, v28

    move/from16 v13, v30

    move-object/from16 v25, v4

    move/from16 v4, v24

    goto :goto_0

    .line 562
    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .end local v28    # "_cursorIndexOfGeneration":I
    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v4, "_cursorIndexOfContentUriTriggers":I
    .restart local v13    # "_cursorIndexOfPeriodCount":I
    .local v14, "_cursorIndexOfGeneration":I
    .local v15, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v25, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v26, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    move/from16 v24, v4

    move/from16 v30, v13

    move/from16 v28, v14

    move-object/from16 v4, v25

    move/from16 v25, v15

    move-object/from16 v15, v26

    .end local v13    # "_cursorIndexOfPeriodCount":I
    .end local v14    # "_cursorIndexOfGeneration":I
    .end local v26    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v15, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v24    # "_cursorIndexOfContentUriTriggers":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfGeneration":I
    .restart local v30    # "_cursorIndexOfPeriodCount":I
    const/4 v13, -0x1

    invoke-interface {v2, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 563
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v4}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$100(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 564
    iget-object v14, v1, Landroidx/work/impl/model/RawWorkInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/RawWorkInfoDao_Impl;

    invoke-static {v14, v15}, Landroidx/work/impl/model/RawWorkInfoDao_Impl;->access$200(Landroidx/work/impl/model/RawWorkInfoDao_Impl;Ljava/util/HashMap;)V

    .line 565
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v14

    .line 566
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 569
    const/4 v14, -0x1

    if-ne v0, v14, :cond_3

    .line 570
    const/4 v14, 0x0

    .local v14, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 572
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 573
    const/4 v14, 0x0

    .restart local v14    # "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 575
    .end local v14    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 579
    .restart local v14    # "_tmpId":Ljava/lang/String;
    :goto_4
    const/4 v1, -0x1

    if-ne v3, v1, :cond_5

    .line 580
    const/4 v1, 0x0

    .local v1, "_tmpState":Landroidx/work/WorkInfo$State;
    goto :goto_5

    .line 583
    .end local v1    # "_tmpState":Landroidx/work/WorkInfo$State;
    :cond_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 584
    .local v1, "_tmp":I
    sget-object v27, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v1}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v27

    move-object/from16 v1, v27

    .line 587
    .local v1, "_tmpState":Landroidx/work/WorkInfo$State;
    :goto_5
    move/from16 v27, v3

    const/4 v3, -0x1

    .end local v3    # "_cursorIndexOfState":I
    .local v27, "_cursorIndexOfState":I
    if-ne v5, v3, :cond_6

    .line 588
    const/4 v3, 0x0

    .local v3, "_tmpOutput":Landroidx/work/Data;
    goto :goto_7

    .line 591
    .end local v3    # "_tmpOutput":Landroidx/work/Data;
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 592
    const/4 v3, 0x0

    .local v3, "_tmp_1":[B
    goto :goto_6

    .line 594
    .end local v3    # "_tmp_1":[B
    :cond_7
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 596
    .restart local v3    # "_tmp_1":[B
    :goto_6
    invoke-static {v3}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v29

    move-object/from16 v3, v29

    .line 599
    .local v3, "_tmpOutput":Landroidx/work/Data;
    :goto_7
    move/from16 v29, v5

    const/4 v5, -0x1

    .end local v5    # "_cursorIndexOfOutput":I
    .local v29, "_cursorIndexOfOutput":I
    if-ne v6, v5, :cond_8

    .line 600
    const-wide/16 v31, 0x0

    move-wide/from16 v55, v31

    .local v31, "_tmpInitialDelay":J
    goto :goto_8

    .line 602
    .end local v31    # "_tmpInitialDelay":J
    :cond_8
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v55, v31

    .line 605
    .local v55, "_tmpInitialDelay":J
    :goto_8
    if-ne v7, v5, :cond_9

    .line 606
    const-wide/16 v31, 0x0

    move-wide/from16 v57, v31

    .local v31, "_tmpIntervalDuration":J
    goto :goto_9

    .line 608
    .end local v31    # "_tmpIntervalDuration":J
    :cond_9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v57, v31

    .line 611
    .local v57, "_tmpIntervalDuration":J
    :goto_9
    if-ne v8, v5, :cond_a

    .line 612
    const-wide/16 v31, 0x0

    move-wide/from16 v59, v31

    .local v31, "_tmpFlexDuration":J
    goto :goto_a

    .line 614
    .end local v31    # "_tmpFlexDuration":J
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v59, v31

    .line 617
    .local v59, "_tmpFlexDuration":J
    :goto_a
    if-ne v9, v5, :cond_b

    .line 618
    const/16 v26, 0x0

    move/from16 v61, v26

    .local v26, "_tmpRunAttemptCount":I
    goto :goto_b

    .line 620
    .end local v26    # "_tmpRunAttemptCount":I
    :cond_b
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v61, v26

    .line 623
    .local v61, "_tmpRunAttemptCount":I
    :goto_b
    if-ne v10, v5, :cond_c

    .line 624
    const/4 v5, 0x0

    .local v5, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    goto :goto_c

    .line 627
    .end local v5    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :cond_c
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 628
    .local v5, "_tmp_2":I
    sget-object v31, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v31

    move-object/from16 v5, v31

    .line 631
    .local v5, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    :goto_c
    move/from16 v62, v6

    const/4 v6, -0x1

    .end local v6    # "_cursorIndexOfInitialDelay":I
    .local v62, "_cursorIndexOfInitialDelay":I
    if-ne v11, v6, :cond_d

    .line 632
    const-wide/16 v31, 0x0

    move-wide/from16 v63, v31

    .local v31, "_tmpBackoffDelayDuration":J
    goto :goto_d

    .line 634
    .end local v31    # "_tmpBackoffDelayDuration":J
    :cond_d
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v63, v31

    .line 637
    .local v63, "_tmpBackoffDelayDuration":J
    :goto_d
    if-ne v12, v6, :cond_e

    .line 638
    const-wide/16 v31, 0x0

    move-wide/from16 v65, v31

    .local v31, "_tmpLastEnqueueTime":J
    goto :goto_e

    .line 640
    .end local v31    # "_tmpLastEnqueueTime":J
    :cond_e
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v65, v31

    .line 643
    .local v65, "_tmpLastEnqueueTime":J
    :goto_e
    move/from16 v67, v7

    move/from16 v7, v30

    .end local v30    # "_cursorIndexOfPeriodCount":I
    .local v7, "_cursorIndexOfPeriodCount":I
    .local v67, "_cursorIndexOfIntervalDuration":I
    if-ne v7, v6, :cond_f

    .line 644
    const/16 v26, 0x0

    move/from16 v30, v26

    .local v26, "_tmpPeriodCount":I
    goto :goto_f

    .line 646
    .end local v26    # "_tmpPeriodCount":I
    :cond_f
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v30, v26

    .line 649
    .local v30, "_tmpPeriodCount":I
    :goto_f
    move/from16 v68, v7

    move/from16 v7, v28

    .end local v28    # "_cursorIndexOfGeneration":I
    .local v7, "_cursorIndexOfGeneration":I
    .local v68, "_cursorIndexOfPeriodCount":I
    if-ne v7, v6, :cond_10

    .line 650
    const/16 v26, 0x0

    move/from16 v28, v26

    .local v26, "_tmpGeneration":I
    goto :goto_10

    .line 652
    .end local v26    # "_tmpGeneration":I
    :cond_10
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v28, v26

    .line 655
    .local v28, "_tmpGeneration":I
    :goto_10
    move/from16 v69, v7

    move/from16 v7, v25

    .end local v25    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v7, "_cursorIndexOfNextScheduleTimeOverride":I
    .local v69, "_cursorIndexOfGeneration":I
    if-ne v7, v6, :cond_11

    .line 656
    const-wide/16 v25, 0x0

    move-wide/from16 v70, v25

    .local v25, "_tmpNextScheduleTimeOverride":J
    goto :goto_11

    .line 658
    .end local v25    # "_tmpNextScheduleTimeOverride":J
    :cond_11
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    move-wide/from16 v70, v25

    .line 661
    .local v70, "_tmpNextScheduleTimeOverride":J
    :goto_11
    move/from16 v25, v7

    move/from16 v7, v16

    .end local v16    # "_cursorIndexOfStopReason":I
    .local v7, "_cursorIndexOfStopReason":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverride":I
    if-ne v7, v6, :cond_12

    .line 662
    const/16 v16, 0x0

    .local v16, "_tmpStopReason":I
    goto :goto_12

    .line 664
    .end local v16    # "_tmpStopReason":I
    :cond_12
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 668
    .restart local v16    # "_tmpStopReason":I
    :goto_12
    move/from16 v72, v7

    move/from16 v7, v17

    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .local v7, "_cursorIndexOfRequiredNetworkType":I
    .local v72, "_cursorIndexOfStopReason":I
    if-ne v7, v6, :cond_13

    .line 669
    const/4 v6, 0x0

    .local v6, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    goto :goto_13

    .line 672
    .end local v6    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :cond_13
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 673
    .local v6, "_tmp_3":I
    sget-object v17, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v17

    move-object/from16 v6, v17

    .line 676
    .local v6, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    :goto_13
    const/16 v17, 0x0

    move/from16 v73, v7

    move/from16 v7, v18

    move/from16 v18, v8

    const/4 v8, -0x1

    .end local v8    # "_cursorIndexOfFlexDuration":I
    .local v7, "_cursorIndexOfRequiresCharging":I
    .local v18, "_cursorIndexOfFlexDuration":I
    .local v73, "_cursorIndexOfRequiredNetworkType":I
    if-ne v7, v8, :cond_14

    .line 677
    const/4 v8, 0x0

    .local v8, "_tmpRequiresCharging":Z
    goto :goto_15

    .line 680
    .end local v8    # "_tmpRequiresCharging":Z
    :cond_14
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 681
    .local v8, "_tmp_4":I
    if-eqz v8, :cond_15

    const/16 v31, 0x1

    goto :goto_14

    :cond_15
    move/from16 v31, v17

    :goto_14
    move/from16 v8, v31

    .line 684
    .local v8, "_tmpRequiresCharging":Z
    :goto_15
    move/from16 v74, v7

    move/from16 v7, v19

    move/from16 v19, v9

    const/4 v9, -0x1

    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .local v7, "_cursorIndexOfRequiresDeviceIdle":I
    .local v19, "_cursorIndexOfRunAttemptCount":I
    .local v74, "_cursorIndexOfRequiresCharging":I
    if-ne v7, v9, :cond_16

    .line 685
    const/4 v9, 0x0

    .local v9, "_tmpRequiresDeviceIdle":Z
    goto :goto_17

    .line 688
    .end local v9    # "_tmpRequiresDeviceIdle":Z
    :cond_16
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 689
    .local v9, "_tmp_5":I
    if-eqz v9, :cond_17

    const/16 v31, 0x1

    goto :goto_16

    :cond_17
    move/from16 v31, v17

    :goto_16
    move/from16 v9, v31

    .line 692
    .local v9, "_tmpRequiresDeviceIdle":Z
    :goto_17
    move/from16 v75, v7

    move/from16 v7, v20

    move/from16 v20, v10

    const/4 v10, -0x1

    .end local v10    # "_cursorIndexOfBackoffPolicy":I
    .local v7, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v20, "_cursorIndexOfBackoffPolicy":I
    .local v75, "_cursorIndexOfRequiresDeviceIdle":I
    if-ne v7, v10, :cond_18

    .line 693
    const/4 v10, 0x0

    .local v10, "_tmpRequiresBatteryNotLow":Z
    goto :goto_19

    .line 696
    .end local v10    # "_tmpRequiresBatteryNotLow":Z
    :cond_18
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 697
    .local v10, "_tmp_6":I
    if-eqz v10, :cond_19

    const/16 v31, 0x1

    goto :goto_18

    :cond_19
    move/from16 v31, v17

    :goto_18
    move/from16 v10, v31

    .line 700
    .local v10, "_tmpRequiresBatteryNotLow":Z
    :goto_19
    move/from16 v76, v7

    move/from16 v7, v21

    move/from16 v21, v11

    const/4 v11, -0x1

    .end local v11    # "_cursorIndexOfBackoffDelayDuration":I
    .local v7, "_cursorIndexOfRequiresStorageNotLow":I
    .local v21, "_cursorIndexOfBackoffDelayDuration":I
    .local v76, "_cursorIndexOfRequiresBatteryNotLow":I
    if-ne v7, v11, :cond_1a

    .line 701
    const/4 v11, 0x0

    .local v11, "_tmpRequiresStorageNotLow":Z
    goto :goto_1a

    .line 704
    .end local v11    # "_tmpRequiresStorageNotLow":Z
    :cond_1a
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 705
    .local v11, "_tmp_7":I
    if-eqz v11, :cond_1b

    const/16 v17, 0x1

    :cond_1b
    move/from16 v11, v17

    .line 708
    .local v11, "_tmpRequiresStorageNotLow":Z
    :goto_1a
    move/from16 v17, v7

    move/from16 v7, v22

    move/from16 v22, v12

    const/4 v12, -0x1

    .end local v12    # "_cursorIndexOfLastEnqueueTime":I
    .local v7, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v17, "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfLastEnqueueTime":I
    if-ne v7, v12, :cond_1c

    .line 709
    const-wide/16 v31, 0x0

    move-wide/from16 v77, v31

    .local v31, "_tmpContentTriggerUpdateDelayMillis":J
    goto :goto_1b

    .line 711
    .end local v31    # "_tmpContentTriggerUpdateDelayMillis":J
    :cond_1c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v77, v31

    .line 714
    .local v77, "_tmpContentTriggerUpdateDelayMillis":J
    :goto_1b
    move/from16 v26, v7

    move/from16 v7, v23

    .end local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v7, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v26, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    if-ne v7, v12, :cond_1d

    .line 715
    const-wide/16 v31, 0x0

    move-wide/from16 v79, v31

    .local v31, "_tmpContentTriggerMaxDelayMillis":J
    goto :goto_1c

    .line 717
    .end local v31    # "_tmpContentTriggerMaxDelayMillis":J
    :cond_1d
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v79, v31

    .line 720
    .local v79, "_tmpContentTriggerMaxDelayMillis":J
    :goto_1c
    move/from16 v23, v7

    move/from16 v7, v24

    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .local v7, "_cursorIndexOfContentUriTriggers":I
    .restart local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    if-ne v7, v12, :cond_1e

    .line 721
    const/16 v24, 0x0

    .local v24, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto :goto_1e

    .line 724
    .end local v24    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :cond_1e
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 725
    const/16 v24, 0x0

    .local v24, "_tmp_8":[B
    goto :goto_1d

    .line 727
    .end local v24    # "_tmp_8":[B
    :cond_1f
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    .line 729
    .restart local v24    # "_tmp_8":[B
    :goto_1d
    sget-object v31, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v24 .. v24}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v31

    move-object/from16 v24, v31

    .line 731
    .local v24, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    :goto_1e
    new-instance v42, Landroidx/work/Constraints;

    move-object/from16 v31, v42

    move-object/from16 v32, v6

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v11

    move-wide/from16 v37, v77

    move-wide/from16 v39, v79

    move-object/from16 v41, v24

    invoke-direct/range {v31 .. v41}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v41, v42

    .line 732
    .local v41, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v31, 0x0

    .line 733
    .local v31, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v81, v32

    .line 734
    .local v81, "_tmpKey_2":Ljava/lang/String;
    move-object/from16 v12, v81

    .end local v81    # "_tmpKey_2":Ljava/lang/String;
    .local v12, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    move-object/from16 v31, v32

    .line 735
    if-nez v31, :cond_20

    .line 736
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v32

    move-object/from16 v81, v31

    goto :goto_1f

    .line 735
    :cond_20
    move-object/from16 v81, v31

    .line 738
    .end local v31    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v81, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1f
    const/16 v31, 0x0

    .line 739
    .local v31, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v82, v32

    .line 740
    .local v82, "_tmpKey_3":Ljava/lang/String;
    move/from16 v83, v0

    move-object/from16 v0, v82

    .end local v82    # "_tmpKey_3":Ljava/lang/String;
    .local v0, "_tmpKey_3":Ljava/lang/String;
    .local v83, "_cursorIndexOfId":I
    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    move-object/from16 v31, v32

    .line 741
    if-nez v31, :cond_21

    .line 742
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v31, v32

    move-object/from16 v82, v31

    goto :goto_20

    .line 741
    :cond_21
    move-object/from16 v82, v31

    .line 744
    .end local v31    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v82, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_20
    new-instance v84, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v31, v84

    move-object/from16 v32, v14

    move-object/from16 v33, v1

    move-object/from16 v34, v3

    move-wide/from16 v35, v55

    move-wide/from16 v37, v57

    move-wide/from16 v39, v59

    move/from16 v42, v61

    move-object/from16 v43, v5

    move-wide/from16 v44, v63

    move-wide/from16 v46, v65

    move/from16 v48, v30

    move/from16 v49, v28

    move-wide/from16 v50, v70

    move/from16 v52, v16

    move-object/from16 v53, v81

    move-object/from16 v54, v82

    invoke-direct/range {v31 .. v54}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v31, v84

    .line 745
    .local v31, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v32, v0

    move-object/from16 v0, v31

    .end local v31    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v32, "_tmpKey_3":Ljava/lang/String;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    move-object/from16 v1, p0

    move/from16 v24, v7

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v22, v26

    move/from16 v3, v27

    move/from16 v5, v29

    move/from16 v6, v62

    move/from16 v7, v67

    move/from16 v30, v68

    move/from16 v28, v69

    move/from16 v16, v72

    move/from16 v18, v74

    move/from16 v19, v75

    move/from16 v20, v76

    move/from16 v0, v83

    move/from16 v21, v17

    move/from16 v17, v73

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v1    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v3    # "_tmpOutput":Landroidx/work/Data;
    .end local v5    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v6    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v8    # "_tmpRequiresCharging":Z
    .end local v9    # "_tmpRequiresDeviceIdle":Z
    .end local v10    # "_tmpRequiresBatteryNotLow":Z
    .end local v11    # "_tmpRequiresStorageNotLow":Z
    .end local v12    # "_tmpKey_2":Ljava/lang/String;
    .end local v14    # "_tmpId":Ljava/lang/String;
    .end local v16    # "_tmpStopReason":I
    .end local v24    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v28    # "_tmpGeneration":I
    .end local v30    # "_tmpPeriodCount":I
    .end local v32    # "_tmpKey_3":Ljava/lang/String;
    .end local v41    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v55    # "_tmpInitialDelay":J
    .end local v57    # "_tmpIntervalDuration":J
    .end local v59    # "_tmpFlexDuration":J
    .end local v61    # "_tmpRunAttemptCount":I
    .end local v63    # "_tmpBackoffDelayDuration":J
    .end local v65    # "_tmpLastEnqueueTime":J
    .end local v70    # "_tmpNextScheduleTimeOverride":J
    .end local v77    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v79    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v81    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v82    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_3

    .line 747
    .end local v26    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v27    # "_cursorIndexOfState":I
    .end local v29    # "_cursorIndexOfOutput":I
    .end local v62    # "_cursorIndexOfInitialDelay":I
    .end local v67    # "_cursorIndexOfIntervalDuration":I
    .end local v68    # "_cursorIndexOfPeriodCount":I
    .end local v69    # "_cursorIndexOfGeneration":I
    .end local v72    # "_cursorIndexOfStopReason":I
    .end local v73    # "_cursorIndexOfRequiredNetworkType":I
    .end local v74    # "_cursorIndexOfRequiresCharging":I
    .end local v75    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v76    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v83    # "_cursorIndexOfId":I
    .local v0, "_cursorIndexOfId":I
    .local v3, "_cursorIndexOfState":I
    .local v5, "_cursorIndexOfOutput":I
    .local v6, "_cursorIndexOfInitialDelay":I
    .local v7, "_cursorIndexOfIntervalDuration":I
    .local v8, "_cursorIndexOfFlexDuration":I
    .local v9, "_cursorIndexOfRunAttemptCount":I
    .local v10, "_cursorIndexOfBackoffPolicy":I
    .local v11, "_cursorIndexOfBackoffDelayDuration":I
    .local v12, "_cursorIndexOfLastEnqueueTime":I
    .local v16, "_cursorIndexOfStopReason":I
    .local v17, "_cursorIndexOfRequiredNetworkType":I
    .local v18, "_cursorIndexOfRequiresCharging":I
    .local v19, "_cursorIndexOfRequiresDeviceIdle":I
    .local v20, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v21, "_cursorIndexOfRequiresStorageNotLow":I
    .local v22, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v24, "_cursorIndexOfContentUriTriggers":I
    .local v28, "_cursorIndexOfGeneration":I
    .local v30, "_cursorIndexOfPeriodCount":I
    :cond_22
    nop

    .line 749
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 747
    return-object v13

    .line 749
    .end local v0    # "_cursorIndexOfId":I
    .end local v3    # "_cursorIndexOfState":I
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v6    # "_cursorIndexOfInitialDelay":I
    .end local v7    # "_cursorIndexOfIntervalDuration":I
    .end local v8    # "_cursorIndexOfFlexDuration":I
    .end local v9    # "_cursorIndexOfRunAttemptCount":I
    .end local v10    # "_cursorIndexOfBackoffPolicy":I
    .end local v11    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v12    # "_cursorIndexOfLastEnqueueTime":I
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v15    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v16    # "_cursorIndexOfStopReason":I
    .end local v17    # "_cursorIndexOfRequiredNetworkType":I
    .end local v18    # "_cursorIndexOfRequiresCharging":I
    .end local v19    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v20    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v21    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v22    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v23    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v24    # "_cursorIndexOfContentUriTriggers":I
    .end local v25    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfGeneration":I
    .end local v30    # "_cursorIndexOfPeriodCount":I
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 750
    throw v0
.end method
