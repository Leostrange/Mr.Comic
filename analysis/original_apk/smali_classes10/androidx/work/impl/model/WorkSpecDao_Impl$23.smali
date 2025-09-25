.class Landroidx/work/impl/model/WorkSpecDao_Impl$23;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
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
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2369
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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

    .line 2369
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 78
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

    .line 2372
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 2374
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v4, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 2376
    .local v2, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2377
    .local v0, "_cursorIndexOfId":I
    const/4 v3, 0x1

    .line 2378
    .local v3, "_cursorIndexOfState":I
    const/4 v5, 0x2

    .line 2379
    .local v5, "_cursorIndexOfOutput":I
    const/4 v6, 0x3

    .line 2380
    .local v6, "_cursorIndexOfRunAttemptCount":I
    const/4 v7, 0x4

    .line 2381
    .local v7, "_cursorIndexOfGeneration":I
    const/4 v8, 0x5

    .line 2382
    .local v8, "_cursorIndexOfRequiredNetworkType":I
    const/4 v9, 0x6

    .line 2383
    .local v9, "_cursorIndexOfRequiresCharging":I
    const/4 v10, 0x7

    .line 2384
    .local v10, "_cursorIndexOfRequiresDeviceIdle":I
    const/16 v11, 0x8

    .line 2385
    .local v11, "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v12, 0x9

    .line 2386
    .local v12, "_cursorIndexOfRequiresStorageNotLow":I
    const/16 v13, 0xa

    .line 2387
    .local v13, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const/16 v14, 0xb

    .line 2388
    .local v14, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const/16 v15, 0xc

    .line 2389
    .local v15, "_cursorIndexOfContentUriTriggers":I
    const/16 v16, 0xd

    .line 2390
    .local v16, "_cursorIndexOfInitialDelay":I
    const/16 v17, 0xe

    .line 2391
    .local v17, "_cursorIndexOfIntervalDuration":I
    const/16 v18, 0xf

    .line 2392
    .local v18, "_cursorIndexOfFlexDuration":I
    const/16 v19, 0x10

    .line 2393
    .local v19, "_cursorIndexOfBackoffPolicy":I
    const/16 v20, 0x11

    .line 2394
    .local v20, "_cursorIndexOfBackoffDelayDuration":I
    const/16 v21, 0x12

    .line 2395
    .local v21, "_cursorIndexOfLastEnqueueTime":I
    const/16 v22, 0x13

    .line 2396
    .local v22, "_cursorIndexOfPeriodCount":I
    const/16 v23, 0x14

    .line 2397
    .local v23, "_cursorIndexOfNextScheduleTimeOverride":I
    const/16 v24, 0x15

    .line 2398
    .local v24, "_cursorIndexOfStopReason":I
    :try_start_1
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v26, v25

    .line 2399
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v27, v25

    .line 2400
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    const/4 v4, 0x0

    if-eqz v25, :cond_2

    .line 2401
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v29, v25

    .line 2402
    .local v29, "_tmpKey":Ljava/lang/String;
    move-object/from16 v4, v26

    move/from16 v26, v0

    move-object/from16 v0, v29

    .end local v29    # "_tmpKey":Ljava/lang/String;
    .local v0, "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v26, "_cursorIndexOfId":I
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 2403
    .local v29, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v29, :cond_0

    .line 2404
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v30

    .line 2405
    move/from16 v30, v3

    move-object/from16 v3, v29

    .end local v29    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v30, "_cursorIndexOfState":I
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v29, v3

    goto :goto_1

    .line 2403
    .end local v30    # "_cursorIndexOfState":I
    .local v3, "_cursorIndexOfState":I
    .restart local v29    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move/from16 v30, v3

    .line 2407
    .end local v3    # "_cursorIndexOfState":I
    .restart local v30    # "_cursorIndexOfState":I
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2408
    .local v3, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v25, v0

    move-object/from16 v0, v27

    .end local v27    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v25, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 2409
    .local v27, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v27, :cond_1

    .line 2410
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v31

    .line 2411
    move/from16 v31, v5

    move-object/from16 v5, v27

    .end local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v5, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v31, "_cursorIndexOfOutput":I
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2409
    .end local v31    # "_cursorIndexOfOutput":I
    .local v5, "_cursorIndexOfOutput":I
    .restart local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_1
    move/from16 v31, v5

    .line 2413
    .end local v3    # "_tmpKey_1":Ljava/lang/String;
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v25    # "_tmpKey":Ljava/lang/String;
    .end local v27    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v29    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31    # "_cursorIndexOfOutput":I
    :goto_2
    move-object/from16 v27, v0

    move/from16 v0, v26

    move/from16 v3, v30

    move/from16 v5, v31

    move-object/from16 v26, v4

    const/4 v4, 0x1

    goto :goto_0

    .line 2414
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v30    # "_cursorIndexOfState":I
    .end local v31    # "_cursorIndexOfOutput":I
    .local v0, "_cursorIndexOfId":I
    .local v3, "_cursorIndexOfState":I
    .restart local v5    # "_cursorIndexOfOutput":I
    .local v26, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v27, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_2
    move/from16 v30, v3

    move/from16 v31, v5

    move-object/from16 v4, v26

    move/from16 v26, v0

    move-object/from16 v0, v27

    .end local v3    # "_cursorIndexOfState":I
    .end local v5    # "_cursorIndexOfOutput":I
    .end local v27    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v26, "_cursorIndexOfId":I
    .restart local v30    # "_cursorIndexOfState":I
    .restart local v31    # "_cursorIndexOfOutput":I
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2415
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v3, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Ljava/util/HashMap;)V

    .line 2416
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v3, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Ljava/util/HashMap;)V

    .line 2417
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2418
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2421
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2422
    const/16 v25, 0x0

    move-object/from16 v5, v25

    .local v25, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 2424
    .end local v25    # "_tmpId":Ljava/lang/String;
    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v5, v27

    .line 2428
    .local v5, "_tmpId":Ljava/lang/String;
    :goto_4
    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "_cursorIndexOfRunAttemptCount":I
    .local v27, "_cursorIndexOfRunAttemptCount":I
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2429
    .local v28, "_tmp":I
    sget-object v29, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v28 .. v28}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v34

    .line 2432
    .local v34, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 2433
    const/4 v6, 0x0

    .local v6, "_tmp_1":[B
    goto :goto_5

    .line 2435
    .end local v6    # "_tmp_1":[B
    :cond_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2437
    .restart local v6    # "_tmp_1":[B
    :goto_5
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v35

    .line 2439
    .local v35, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v56, v6

    .end local v6    # "_tmp_1":[B
    .local v56, "_tmp_1":[B
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 2441
    .local v43, "_tmpRunAttemptCount":I
    const/4 v6, 0x4

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 2443
    .local v50, "_tmpGeneration":I
    const/16 v6, 0xd

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 2445
    .local v36, "_tmpInitialDelay":J
    const/16 v6, 0xe

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 2447
    .local v38, "_tmpIntervalDuration":J
    const/16 v6, 0xf

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 2450
    .local v40, "_tmpFlexDuration":J
    const/16 v6, 0x10

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2451
    .local v6, "_tmp_2":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v44

    .line 2453
    .local v44, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    move/from16 v57, v6

    .end local v6    # "_tmp_2":I
    .local v57, "_tmp_2":I
    const/16 v6, 0x11

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 2455
    .local v45, "_tmpBackoffDelayDuration":J
    const/16 v6, 0x12

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 2457
    .local v47, "_tmpLastEnqueueTime":J
    const/16 v6, 0x13

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 2459
    .local v49, "_tmpPeriodCount":I
    const/16 v6, 0x14

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 2461
    .local v51, "_tmpNextScheduleTimeOverride":J
    const/16 v6, 0x15

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 2465
    .local v53, "_tmpStopReason":I
    const/4 v6, 0x5

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2466
    .local v6, "_tmp_3":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v59

    .line 2469
    .local v59, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v69, v6

    .end local v6    # "_tmp_3":I
    .local v69, "_tmp_3":I
    const/4 v6, 0x6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2470
    .local v6, "_tmp_4":I
    if-eqz v6, :cond_5

    const/16 v60, 0x1

    goto :goto_6

    :cond_5
    const/16 v60, 0x0

    .line 2473
    .local v60, "_tmpRequiresCharging":Z
    :goto_6
    move/from16 v70, v6

    .end local v6    # "_tmp_4":I
    .local v70, "_tmp_4":I
    const/4 v6, 0x7

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2474
    .local v6, "_tmp_5":I
    if-eqz v6, :cond_6

    const/16 v61, 0x1

    goto :goto_7

    :cond_6
    const/16 v61, 0x0

    .line 2477
    .local v61, "_tmpRequiresDeviceIdle":Z
    :goto_7
    move/from16 v71, v6

    .end local v6    # "_tmp_5":I
    .local v71, "_tmp_5":I
    const/16 v6, 0x8

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2478
    .local v6, "_tmp_6":I
    if-eqz v6, :cond_7

    const/16 v62, 0x1

    goto :goto_8

    :cond_7
    const/16 v62, 0x0

    .line 2481
    .local v62, "_tmpRequiresBatteryNotLow":Z
    :goto_8
    move/from16 v72, v6

    .end local v6    # "_tmp_6":I
    .local v72, "_tmp_6":I
    const/16 v6, 0x9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2482
    .local v6, "_tmp_7":I
    if-eqz v6, :cond_8

    const/16 v63, 0x1

    goto :goto_9

    :cond_8
    const/16 v63, 0x0

    .line 2484
    .local v63, "_tmpRequiresStorageNotLow":Z
    :goto_9
    move/from16 v73, v6

    .end local v6    # "_tmp_7":I
    .local v73, "_tmp_7":I
    const/16 v6, 0xa

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    .line 2486
    .local v64, "_tmpContentTriggerUpdateDelayMillis":J
    const/16 v6, 0xb

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    .line 2489
    .local v66, "_tmpContentTriggerMaxDelayMillis":J
    const/16 v6, 0xc

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 2490
    const/4 v6, 0x0

    .local v6, "_tmp_8":[B
    goto :goto_a

    .line 2492
    .end local v6    # "_tmp_8":[B
    :cond_9
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2494
    .restart local v6    # "_tmp_8":[B
    :goto_a
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v68

    .line 2495
    .local v68, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v42, Landroidx/work/Constraints;

    move-object/from16 v58, v42

    invoke-direct/range {v58 .. v68}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2496
    .local v42, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v32, 0x0

    .line 2497
    .local v32, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v58, v6

    const/4 v6, 0x0

    .end local v6    # "_tmp_8":[B
    .local v58, "_tmp_8":[B
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v6, v33

    .line 2498
    .local v6, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    move-object/from16 v32, v33

    .line 2499
    if-nez v32, :cond_a

    .line 2500
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v33

    move-object/from16 v74, v32

    goto :goto_b

    .line 2499
    :cond_a
    move-object/from16 v74, v32

    .line 2502
    .end local v32    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v74, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    const/16 v32, 0x0

    .line 2503
    .local v32, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v75, v4

    const/4 v4, 0x0

    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v75, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v76, v25

    .line 2504
    .local v76, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v4, v76

    .end local v76    # "_tmpKey_3":Ljava/lang/String;
    .local v4, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    move-object/from16 v32, v33

    .line 2505
    if-nez v32, :cond_b

    .line 2506
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v32, v33

    move-object/from16 v76, v32

    goto :goto_c

    .line 2505
    :cond_b
    move-object/from16 v76, v32

    .line 2508
    .end local v32    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v76, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_c
    new-instance v77, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v32, v77

    move-object/from16 v33, v5

    move-object/from16 v54, v74

    move-object/from16 v55, v76

    invoke-direct/range {v32 .. v55}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v32, v77

    .line 2509
    .local v32, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v33, v0

    move-object/from16 v0, v32

    .end local v32    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v33, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2510
    move/from16 v6, v27

    move-object/from16 v0, v33

    move-object/from16 v4, v75

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v4    # "_tmpKey_3":Ljava/lang/String;
    .end local v5    # "_tmpId":Ljava/lang/String;
    .end local v6    # "_tmpKey_2":Ljava/lang/String;
    .end local v28    # "_tmp":I
    .end local v34    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v35    # "_tmpOutput":Landroidx/work/Data;
    .end local v36    # "_tmpInitialDelay":J
    .end local v38    # "_tmpIntervalDuration":J
    .end local v40    # "_tmpFlexDuration":J
    .end local v42    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v43    # "_tmpRunAttemptCount":I
    .end local v44    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v45    # "_tmpBackoffDelayDuration":J
    .end local v47    # "_tmpLastEnqueueTime":J
    .end local v49    # "_tmpPeriodCount":I
    .end local v50    # "_tmpGeneration":I
    .end local v51    # "_tmpNextScheduleTimeOverride":J
    .end local v53    # "_tmpStopReason":I
    .end local v56    # "_tmp_1":[B
    .end local v57    # "_tmp_2":I
    .end local v58    # "_tmp_8":[B
    .end local v59    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v60    # "_tmpRequiresCharging":Z
    .end local v61    # "_tmpRequiresDeviceIdle":Z
    .end local v62    # "_tmpRequiresBatteryNotLow":Z
    .end local v63    # "_tmpRequiresStorageNotLow":Z
    .end local v64    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v66    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v68    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v69    # "_tmp_3":I
    .end local v70    # "_tmp_4":I
    .end local v71    # "_tmp_5":I
    .end local v72    # "_tmp_6":I
    .end local v73    # "_tmp_7":I
    .end local v74    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v76    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_3

    .line 2511
    .end local v27    # "_cursorIndexOfRunAttemptCount":I
    .end local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v75    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v6, "_cursorIndexOfRunAttemptCount":I
    :cond_c
    move-object/from16 v33, v0

    move-object/from16 v75, v4

    move/from16 v27, v6

    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "_cursorIndexOfRunAttemptCount":I
    .restart local v27    # "_cursorIndexOfRunAttemptCount":I
    .restart local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v75    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2512
    nop

    .line 2514
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2517
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2512
    return-object v3

    .line 2514
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v7    # "_cursorIndexOfGeneration":I
    .end local v8    # "_cursorIndexOfRequiredNetworkType":I
    .end local v9    # "_cursorIndexOfRequiresCharging":I
    .end local v10    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v11    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v12    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v13    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v14    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v15    # "_cursorIndexOfContentUriTriggers":I
    .end local v16    # "_cursorIndexOfInitialDelay":I
    .end local v17    # "_cursorIndexOfIntervalDuration":I
    .end local v18    # "_cursorIndexOfFlexDuration":I
    .end local v19    # "_cursorIndexOfBackoffPolicy":I
    .end local v20    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v21    # "_cursorIndexOfLastEnqueueTime":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v24    # "_cursorIndexOfStopReason":I
    .end local v26    # "_cursorIndexOfId":I
    .end local v27    # "_cursorIndexOfRunAttemptCount":I
    .end local v30    # "_cursorIndexOfState":I
    .end local v31    # "_cursorIndexOfOutput":I
    .end local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v75    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2515
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2517
    .end local v2    # "_cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2518
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 2523
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$23;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2524
    return-void
.end method
