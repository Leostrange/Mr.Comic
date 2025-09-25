.class public final Landroidx/work/impl/model/WorkSpecDao_Impl;
.super Ljava/lang/Object;
.source "WorkSpecDao_Impl.java"

# interfaces
.implements Landroidx/work/impl/model/WorkSpecDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetCancelledState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetLastEnqueueTime:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetStopReason:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 79
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    .line 167
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 260
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$3;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$3;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 267
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$4;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$4;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    .line 274
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$5;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$5;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetCancelledState:Landroidx/room/SharedSQLiteStatement;

    .line 281
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$6;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$6;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    .line 288
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$7;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$7;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    .line 295
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$8;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$8;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueueTime:Landroidx/room/SharedSQLiteStatement;

    .line 302
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$9;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$9;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 309
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$10;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$10;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    .line 316
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$11;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$11;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    .line 323
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$12;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$12;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    .line 330
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$13;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$13;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    .line 337
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$14;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$14;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    .line 344
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$15;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$15;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    .line 351
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$16;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$16;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    .line 358
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$17;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl$17;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetStopReason:Landroidx/room/SharedSQLiteStatement;

    .line 365
    return-void
.end method

.method private __fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/work/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 3927
    .local p1, "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3928
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3929
    return-void

    .line 3932
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 3933
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3934
    .local v1, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    const/4 v3, 0x0

    .line 3935
    .local v3, "_tmpIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3936
    .local v5, "_mapKey":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3937
    add-int/lit8 v3, v3, 0x1

    .line 3938
    if-ne v3, v2, :cond_1

    .line 3939
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 3940
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v6

    .line 3941
    const/4 v3, 0x0

    .line 3943
    .end local v5    # "_mapKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3944
    :cond_2
    if-lez v3, :cond_3

    .line 3945
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 3947
    :cond_3
    return-void

    .line 3949
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v3    # "_tmpIndex":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3950
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3951
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 3952
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 3953
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3955
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 3956
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 3957
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 3958
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3959
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 3960
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 3962
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 3964
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 3965
    goto :goto_1

    .line 3966
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 3968
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3969
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 3988
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3970
    return-void

    .line 3972
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3973
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3974
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3975
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-eqz v11, :cond_9

    .line 3978
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3979
    const/4 v12, 0x0

    .local v12, "_tmp":[B
    goto :goto_4

    .line 3981
    .end local v12    # "_tmp":[B
    :cond_8
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 3983
    .restart local v12    # "_tmp":[B
    :goto_4
    invoke-static {v12}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v13

    .line 3984
    .local v13, "_item_1":Landroidx/work/Data;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3986
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v12    # "_tmp":[B
    .end local v13    # "_item_1":Landroidx/work/Data;
    :cond_9
    goto :goto_3

    .line 3988
    .end local v8    # "_itemKeyIndex":I
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3989
    nop

    .line 3990
    return-void

    .line 3988
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3989
    throw v8
.end method

.method private __fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3862
    .local p1, "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3863
    .local v0, "__mapKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3864
    return-void

    .line 3867
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_4

    .line 3868
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3869
    .local v1, "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 3870
    .local v3, "_tmpIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3871
    .local v5, "_mapKey":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3872
    add-int/lit8 v3, v3, 0x1

    .line 3873
    if-ne v3, v2, :cond_1

    .line 3874
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 3875
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v6

    .line 3876
    const/4 v3, 0x0

    .line 3878
    .end local v5    # "_mapKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3879
    :cond_2
    if-lez v3, :cond_3

    .line 3880
    invoke-direct {p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 3882
    :cond_3
    return-void

    .line 3884
    .end local v1    # "_tmpInnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v3    # "_tmpIndex":I
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3885
    .local v1, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3886
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 3887
    .local v2, "_inputSize":I
    invoke-static {v1, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 3888
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3890
    .local v3, "_sql":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x0

    .line 3891
    .local v4, "_argCount":I
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 3892
    .local v5, "_stmt":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 3893
    .local v6, "_argIndex":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3894
    .local v8, "_item":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 3895
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 3897
    :cond_5
    invoke-virtual {v5, v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 3899
    :goto_2
    nop

    .end local v8    # "_item":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 3900
    goto :goto_1

    .line 3901
    :cond_6
    iget-object v7, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v5, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 3903
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v8, "work_spec_id"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3904
    .local v8, "_itemKeyIndex":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    .line 3921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3905
    return-void

    .line 3907
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3908
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3909
    .local v10, "_tmpKey":Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3910
    .local v11, "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_9

    .line 3912
    invoke-interface {v7, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3913
    const/4 v12, 0x0

    .local v12, "_item_1":Ljava/lang/String;
    goto :goto_4

    .line 3915
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_8
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3917
    .restart local v12    # "_item_1":Ljava/lang/String;
    :goto_4
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3919
    .end local v10    # "_tmpKey":Ljava/lang/String;
    .end local v11    # "_tmpRelation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "_item_1":Ljava/lang/String;
    :cond_9
    goto :goto_3

    .line 3921
    .end local v8    # "_itemKeyIndex":I
    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3922
    nop

    .line 3923
    return-void

    .line 3921
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3922
    throw v8
.end method

.method static synthetic access$000(Landroidx/work/impl/model/WorkSpecDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 40
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/work/impl/model/WorkSpecDao_Impl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 40
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/model/WorkSpecDao_Impl;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 40
    invoke-direct {p0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 3857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countNonFinishedContentUriTriggerWorkers()I
    .locals 5

    .line 3838
    const-string v0, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    .line 3839
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 3840
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3841
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 3844
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3845
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "_result":I
    goto :goto_0

    .line 3847
    .end local v2    # "_result":I
    :cond_0
    const/4 v2, 0x0

    .line 3849
    .restart local v2    # "_result":I
    :goto_0
    nop

    .line 3851
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3852
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3849
    return v2

    .line 3851
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3852
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3853
    throw v2
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 394
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 395
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 396
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 397
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 401
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 403
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 404
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 407
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 408
    nop

    .line 409
    return-void

    .line 406
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 407
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 408
    throw v2
.end method

.method public getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;
    .locals 93
    .param p1, "maxLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 3194
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    .line 3195
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 3196
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 3197
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3198
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3199
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 3201
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 3202
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 3203
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 3204
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 3205
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 3206
    .local v12, "_cursorIndexOfInput":I
    const-string/jumbo v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 3207
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 3208
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 3209
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v3, "flex_duration"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 3210
    .local v3, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 3211
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3212
    .local v1, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3213
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "last_enqueue_time"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 3214
    .local v5, "_cursorIndexOfLastEnqueueTime":I
    const-string/jumbo v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3215
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3216
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3217
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3218
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3219
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3220
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3221
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3222
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3223
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v26, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3224
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3225
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3226
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3227
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3228
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3229
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3230
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v33, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3231
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v34, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v35, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v35, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3232
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3235
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3236
    const/4 v6, 0x0

    .local v6, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 3238
    .end local v6    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3242
    .restart local v6    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v68, v36

    .line 3243
    .local v68, "_tmp":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v68 .. v68}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v38

    .line 3245
    .local v38, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 3246
    const/16 v36, 0x0

    move-object/from16 v69, v36

    .local v36, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 3248
    .end local v36    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v69, v36

    .line 3251
    .local v69, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 3252
    const/16 v36, 0x0

    move-object/from16 v70, v36

    .local v36, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 3254
    .end local v36    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v70, v36

    .line 3258
    .local v70, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 3259
    const/16 v36, 0x0

    move-object/from16 v71, v36

    .local v36, "_tmp_1":[B
    goto :goto_4

    .line 3261
    .end local v36    # "_tmp_1":[B
    :cond_3
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v71, v36

    .line 3263
    .local v71, "_tmp_1":[B
    :goto_4
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 3266
    .local v41, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 3267
    const/16 v36, 0x0

    move-object/from16 v72, v36

    .local v36, "_tmp_2":[B
    goto :goto_5

    .line 3269
    .end local v36    # "_tmp_2":[B
    :cond_4
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v72, v36

    .line 3271
    .local v72, "_tmp_2":[B
    :goto_5
    invoke-static/range {v72 .. v72}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v42

    .line 3273
    .local v42, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 3275
    .local v43, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 3277
    .local v45, "_tmpIntervalDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 3279
    .local v47, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 3282
    .local v50, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v73, v36

    .line 3283
    .local v73, "_tmp_3":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v73 .. v73}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v51

    .line 3285
    .local v51, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 3287
    .local v52, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 3289
    .local v54, "_tmpLastEnqueueTime":J
    move/from16 v74, v0

    move/from16 v0, v35

    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v74, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 3291
    .local v56, "_tmpMinimumRetentionDuration":J
    move/from16 v35, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 3294
    .local v58, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3295
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_5

    const/16 v60, 0x1

    goto :goto_6

    :cond_5
    const/16 v60, 0x0

    .line 3298
    .local v60, "_tmpExpedited":Z
    :goto_6
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v75, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 3299
    .local v21, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v61

    .line 3301
    .local v61, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v76, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v76, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 3303
    .local v62, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 3305
    .local v63, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    .line 3307
    .local v64, "_tmpNextScheduleTimeOverride":J
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 3309
    .local v66, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 3313
    .local v67, "_tmpStopReason":I
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v26    # "_cursorIndexOfStopReason":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3314
    .local v27, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v78

    .line 3317
    .local v78, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v88, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3318
    .local v28, "_tmp_7":I
    if-eqz v28, :cond_6

    const/16 v79, 0x1

    goto :goto_7

    :cond_6
    const/16 v79, 0x0

    .line 3321
    .local v79, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v89, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3322
    .local v29, "_tmp_8":I
    if-eqz v29, :cond_7

    const/16 v80, 0x1

    goto :goto_8

    :cond_7
    const/16 v80, 0x0

    .line 3325
    .local v80, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v90, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3326
    .local v30, "_tmp_9":I
    if-eqz v30, :cond_8

    const/16 v81, 0x1

    goto :goto_9

    :cond_8
    const/16 v81, 0x0

    .line 3329
    .local v81, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v91, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 3330
    .local v31, "_tmp_10":I
    if-eqz v31, :cond_9

    const/16 v82, 0x1

    goto :goto_a

    :cond_9
    const/16 v82, 0x0

    .line 3332
    .local v82, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v92, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v92, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v83

    .line 3334
    .local v83, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v85

    .line 3337
    .local v85, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v33, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 3338
    const/16 v34, 0x0

    .local v34, "_tmp_11":[B
    goto :goto_b

    .line 3340
    .end local v34    # "_tmp_11":[B
    :cond_a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    .line 3342
    .restart local v34    # "_tmp_11":[B
    :goto_b
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v34 .. v34}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v87

    .line 3343
    .local v87, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v49, Landroidx/work/Constraints;

    move-object/from16 v77, v49

    invoke-direct/range {v77 .. v87}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3344
    .local v49, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v77, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v36, v77

    move-object/from16 v37, v6

    move-object/from16 v39, v69

    move-object/from16 v40, v70

    invoke-direct/range {v36 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v36, v77

    .line 3345
    .local v36, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v37, v0

    move-object/from16 v0, v36

    .end local v36    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v37, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3346
    move/from16 v34, v37

    move/from16 v0, v74

    move/from16 v20, v75

    move/from16 v21, v76

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    move/from16 v31, v92

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v27    # "_tmp_6":I
    .end local v28    # "_tmp_7":I
    .end local v29    # "_tmp_8":I
    .end local v30    # "_tmp_9":I
    .end local v31    # "_tmp_10":I
    .end local v34    # "_tmp_11":[B
    .end local v38    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v41    # "_tmpInput":Landroidx/work/Data;
    .end local v42    # "_tmpOutput":Landroidx/work/Data;
    .end local v43    # "_tmpInitialDelay":J
    .end local v45    # "_tmpIntervalDuration":J
    .end local v47    # "_tmpFlexDuration":J
    .end local v49    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v50    # "_tmpRunAttemptCount":I
    .end local v51    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v52    # "_tmpBackoffDelayDuration":J
    .end local v54    # "_tmpLastEnqueueTime":J
    .end local v56    # "_tmpMinimumRetentionDuration":J
    .end local v58    # "_tmpScheduleRequestedAt":J
    .end local v60    # "_tmpExpedited":Z
    .end local v61    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v62    # "_tmpPeriodCount":I
    .end local v63    # "_tmpGeneration":I
    .end local v64    # "_tmpNextScheduleTimeOverride":J
    .end local v66    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v67    # "_tmpStopReason":I
    .end local v68    # "_tmp":I
    .end local v69    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v70    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v71    # "_tmp_1":[B
    .end local v72    # "_tmp_2":[B
    .end local v73    # "_tmp_3":I
    .end local v78    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v79    # "_tmpRequiresCharging":Z
    .end local v80    # "_tmpRequiresDeviceIdle":Z
    .end local v81    # "_tmpRequiresBatteryNotLow":Z
    .end local v82    # "_tmpRequiresStorageNotLow":Z
    .end local v83    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v85    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v87    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3347
    .end local v37    # "_cursorIndexOfContentUriTriggers":I
    .end local v74    # "_cursorIndexOfId":I
    .end local v75    # "_cursorIndexOfExpedited":I
    .end local v76    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v88    # "_cursorIndexOfRequiredNetworkType":I
    .end local v89    # "_cursorIndexOfRequiresCharging":I
    .end local v90    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v91    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v92    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3349
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3350
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3347
    return-object v4

    .line 3349
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfFlexDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfLastEnqueueTime":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v26    # "_cursorIndexOfStopReason":I
    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3350
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3351
    throw v0
.end method

.method public getAllUnfinishedWork()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2792
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 2793
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2794
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2795
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 2797
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2798
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2800
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2801
    const/4 v5, 0x0

    .local v5, "_item":Ljava/lang/String;
    goto :goto_1

    .line 2803
    .end local v5    # "_item":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2805
    .restart local v5    # "_item":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2806
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 2807
    :cond_1
    nop

    .line 2809
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2810
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2807
    return-object v4

    .line 2809
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2810
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2811
    throw v2
.end method

.method public getAllWorkSpecIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 912
    const-string v0, "SELECT id FROM workspec"

    .line 913
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 914
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 915
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 917
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 918
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 920
    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 921
    const/4 v5, 0x0

    .local v5, "_item":Ljava/lang/String;
    goto :goto_1

    .line 923
    .end local v5    # "_item":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 925
    .restart local v5    # "_item":Ljava/lang/String;
    :goto_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    nop

    .end local v5    # "_item":Ljava/lang/String;
    goto :goto_0

    .line 927
    :cond_1
    nop

    .line 929
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 930
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 927
    return-object v4

    .line 929
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 930
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 931
    throw v2
.end method

.method public getAllWorkSpecIdsLiveData()Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 936
    const-string v0, "SELECT id FROM workspec"

    .line 937
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 938
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v2

    const-string/jumbo v3, "workspec"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$18;

    invoke-direct {v4, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$18;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getEligibleWorkForScheduling(I)Ljava/util/List;
    .locals 93
    .param p1, "schedulerLimit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "schedulerLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 2872
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    .line 2873
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 2874
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 2875
    .local v5, "_argIndex":I
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-virtual {v4, v5, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 2876
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2877
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v4, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 2879
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 2880
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 2881
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 2882
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 2883
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 2884
    .local v12, "_cursorIndexOfInput":I
    const-string/jumbo v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 2885
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 2886
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 2887
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v3, "flex_duration"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 2888
    .local v3, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 2889
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2890
    .local v1, "_cursorIndexOfBackoffPolicy":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2891
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "last_enqueue_time"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 2892
    .local v5, "_cursorIndexOfLastEnqueueTime":I
    const-string/jumbo v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2893
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2894
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2895
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2896
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2897
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2898
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2899
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2900
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2901
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v26, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2902
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2903
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2904
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2905
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2906
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2907
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2908
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v33, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2909
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v34, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v35, v6

    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v35, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2910
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2913
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2914
    const/4 v6, 0x0

    .local v6, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 2916
    .end local v6    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2920
    .restart local v6    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v68, v36

    .line 2921
    .local v68, "_tmp":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v68 .. v68}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v38

    .line 2923
    .local v38, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 2924
    const/16 v36, 0x0

    move-object/from16 v69, v36

    .local v36, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 2926
    .end local v36    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v69, v36

    .line 2929
    .local v69, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 2930
    const/16 v36, 0x0

    move-object/from16 v70, v36

    .local v36, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 2932
    .end local v36    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v70, v36

    .line 2936
    .local v70, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 2937
    const/16 v36, 0x0

    move-object/from16 v71, v36

    .local v36, "_tmp_1":[B
    goto :goto_4

    .line 2939
    .end local v36    # "_tmp_1":[B
    :cond_3
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v71, v36

    .line 2941
    .local v71, "_tmp_1":[B
    :goto_4
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 2944
    .local v41, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 2945
    const/16 v36, 0x0

    move-object/from16 v72, v36

    .local v36, "_tmp_2":[B
    goto :goto_5

    .line 2947
    .end local v36    # "_tmp_2":[B
    :cond_4
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v72, v36

    .line 2949
    .local v72, "_tmp_2":[B
    :goto_5
    invoke-static/range {v72 .. v72}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v42

    .line 2951
    .local v42, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 2953
    .local v43, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 2955
    .local v45, "_tmpIntervalDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 2957
    .local v47, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 2960
    .local v50, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v73, v36

    .line 2961
    .local v73, "_tmp_3":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v73 .. v73}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v51

    .line 2963
    .local v51, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 2965
    .local v52, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 2967
    .local v54, "_tmpLastEnqueueTime":J
    move/from16 v74, v0

    move/from16 v0, v35

    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v74, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 2969
    .local v56, "_tmpMinimumRetentionDuration":J
    move/from16 v35, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 2972
    .local v58, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2973
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_5

    const/16 v60, 0x1

    goto :goto_6

    :cond_5
    const/16 v60, 0x0

    .line 2976
    .local v60, "_tmpExpedited":Z
    :goto_6
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v75, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 2977
    .local v21, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v61

    .line 2979
    .local v61, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v76, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v76, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 2981
    .local v62, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 2983
    .local v63, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    .line 2985
    .local v64, "_tmpNextScheduleTimeOverride":J
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 2987
    .local v66, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 2991
    .local v67, "_tmpStopReason":I
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v26    # "_cursorIndexOfStopReason":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 2992
    .local v27, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v78

    .line 2995
    .local v78, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v88, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 2996
    .local v28, "_tmp_7":I
    if-eqz v28, :cond_6

    const/16 v79, 0x1

    goto :goto_7

    :cond_6
    const/16 v79, 0x0

    .line 2999
    .local v79, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v89, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3000
    .local v29, "_tmp_8":I
    if-eqz v29, :cond_7

    const/16 v80, 0x1

    goto :goto_8

    :cond_7
    const/16 v80, 0x0

    .line 3003
    .local v80, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v90, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3004
    .local v30, "_tmp_9":I
    if-eqz v30, :cond_8

    const/16 v81, 0x1

    goto :goto_9

    :cond_8
    const/16 v81, 0x0

    .line 3007
    .local v81, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v91, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 3008
    .local v31, "_tmp_10":I
    if-eqz v31, :cond_9

    const/16 v82, 0x1

    goto :goto_a

    :cond_9
    const/16 v82, 0x0

    .line 3010
    .local v82, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v92, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v92, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v83

    .line 3012
    .local v83, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v85

    .line 3015
    .local v85, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v33, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 3016
    const/16 v34, 0x0

    .local v34, "_tmp_11":[B
    goto :goto_b

    .line 3018
    .end local v34    # "_tmp_11":[B
    :cond_a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    .line 3020
    .restart local v34    # "_tmp_11":[B
    :goto_b
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v34 .. v34}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v87

    .line 3021
    .local v87, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v49, Landroidx/work/Constraints;

    move-object/from16 v77, v49

    invoke-direct/range {v77 .. v87}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3022
    .local v49, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v77, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v36, v77

    move-object/from16 v37, v6

    move-object/from16 v39, v69

    move-object/from16 v40, v70

    invoke-direct/range {v36 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v36, v77

    .line 3023
    .local v36, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v37, v0

    move-object/from16 v0, v36

    .end local v36    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v37, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3024
    move/from16 v34, v37

    move/from16 v0, v74

    move/from16 v20, v75

    move/from16 v21, v76

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    move/from16 v31, v92

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v6    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v27    # "_tmp_6":I
    .end local v28    # "_tmp_7":I
    .end local v29    # "_tmp_8":I
    .end local v30    # "_tmp_9":I
    .end local v31    # "_tmp_10":I
    .end local v34    # "_tmp_11":[B
    .end local v38    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v41    # "_tmpInput":Landroidx/work/Data;
    .end local v42    # "_tmpOutput":Landroidx/work/Data;
    .end local v43    # "_tmpInitialDelay":J
    .end local v45    # "_tmpIntervalDuration":J
    .end local v47    # "_tmpFlexDuration":J
    .end local v49    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v50    # "_tmpRunAttemptCount":I
    .end local v51    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v52    # "_tmpBackoffDelayDuration":J
    .end local v54    # "_tmpLastEnqueueTime":J
    .end local v56    # "_tmpMinimumRetentionDuration":J
    .end local v58    # "_tmpScheduleRequestedAt":J
    .end local v60    # "_tmpExpedited":Z
    .end local v61    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v62    # "_tmpPeriodCount":I
    .end local v63    # "_tmpGeneration":I
    .end local v64    # "_tmpNextScheduleTimeOverride":J
    .end local v66    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v67    # "_tmpStopReason":I
    .end local v68    # "_tmp":I
    .end local v69    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v70    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v71    # "_tmp_1":[B
    .end local v72    # "_tmp_2":[B
    .end local v73    # "_tmp_3":I
    .end local v78    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v79    # "_tmpRequiresCharging":Z
    .end local v80    # "_tmpRequiresDeviceIdle":Z
    .end local v81    # "_tmpRequiresBatteryNotLow":Z
    .end local v82    # "_tmpRequiresStorageNotLow":Z
    .end local v83    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v85    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v87    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3025
    .end local v37    # "_cursorIndexOfContentUriTriggers":I
    .end local v74    # "_cursorIndexOfId":I
    .end local v75    # "_cursorIndexOfExpedited":I
    .end local v76    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v88    # "_cursorIndexOfRequiredNetworkType":I
    .end local v89    # "_cursorIndexOfRequiresCharging":I
    .end local v90    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v91    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v92    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3027
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3028
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3025
    return-object v4

    .line 3027
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfFlexDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfLastEnqueueTime":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v26    # "_cursorIndexOfStopReason":I
    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3028
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3029
    throw v0
.end method

.method public getEligibleWorkForSchedulingWithContentUris()Ljava/util/List;
    .locals 92
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 3034
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    .line 3035
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 3036
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3037
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 3039
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 3040
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 3041
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 3042
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 3043
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 3044
    .local v9, "_cursorIndexOfInput":I
    const-string/jumbo v10, "output"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 3045
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 3046
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 3047
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 3048
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v14, "run_attempt_count"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 3049
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 3050
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 3051
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3052
    .local v1, "_cursorIndexOfLastEnqueueTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3053
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3054
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3055
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v19, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3056
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3057
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v21, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3058
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v22, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3059
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v23, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3060
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3061
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v25, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3062
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3063
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3064
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3065
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3066
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3067
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v31, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3068
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3069
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v34, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v34, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 3070
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3073
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3074
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 3076
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3080
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v67, v35

    .line 3081
    .local v67, "_tmp":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v67 .. v67}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 3083
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 3084
    const/16 v35, 0x0

    move-object/from16 v68, v35

    .local v35, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 3086
    .end local v35    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v68, v35

    .line 3089
    .local v68, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 3090
    const/16 v35, 0x0

    move-object/from16 v69, v35

    .local v35, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 3092
    .end local v35    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v69, v35

    .line 3096
    .local v69, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 3097
    const/16 v35, 0x0

    move-object/from16 v70, v35

    .local v35, "_tmp_1":[B
    goto :goto_4

    .line 3099
    .end local v35    # "_tmp_1":[B
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v70, v35

    .line 3101
    .local v70, "_tmp_1":[B
    :goto_4
    invoke-static/range {v70 .. v70}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v40

    .line 3104
    .local v40, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 3105
    const/16 v35, 0x0

    move-object/from16 v71, v35

    .local v35, "_tmp_2":[B
    goto :goto_5

    .line 3107
    .end local v35    # "_tmp_2":[B
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v71, v35

    .line 3109
    .local v71, "_tmp_2":[B
    :goto_5
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 3111
    .local v41, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 3113
    .local v42, "_tmpInitialDelay":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 3115
    .local v44, "_tmpIntervalDuration":J
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 3117
    .local v46, "_tmpFlexDuration":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 3120
    .local v49, "_tmpRunAttemptCount":I
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v72, v35

    .line 3121
    .local v72, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v72 .. v72}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v50

    .line 3123
    .local v50, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 3125
    .local v51, "_tmpBackoffDelayDuration":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 3127
    .local v53, "_tmpLastEnqueueTime":J
    move/from16 v73, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v73, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 3129
    .local v55, "_tmpMinimumRetentionDuration":J
    move/from16 v34, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 3132
    .local v57, "_tmpScheduleRequestedAt":J
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v18    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 3133
    .local v19, "_tmp_4":I
    const/16 v35, 0x1

    if-eqz v19, :cond_5

    move/from16 v59, v35

    goto :goto_6

    :cond_5
    const/16 v59, 0x0

    .line 3136
    .local v59, "_tmpExpedited":Z
    :goto_6
    move/from16 v74, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v74, "_cursorIndexOfExpedited":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3137
    .local v20, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v60

    .line 3139
    .local v60, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v75, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 3141
    .local v61, "_tmpPeriodCount":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v21    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 3143
    .local v62, "_tmpGeneration":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v22    # "_cursorIndexOfGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 3145
    .local v63, "_tmpNextScheduleTimeOverride":J
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    .line 3147
    .local v65, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 3151
    .local v66, "_tmpStopReason":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v25    # "_cursorIndexOfStopReason":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3152
    .local v26, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v26 .. v26}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v77

    .line 3155
    .local v77, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v87, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v87, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3156
    .local v27, "_tmp_7":I
    if-eqz v27, :cond_6

    move/from16 v78, v35

    goto :goto_7

    :cond_6
    const/16 v78, 0x0

    .line 3159
    .local v78, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v88, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3160
    .local v28, "_tmp_8":I
    if-eqz v28, :cond_7

    move/from16 v79, v35

    goto :goto_8

    :cond_7
    const/16 v79, 0x0

    .line 3163
    .local v79, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v89, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3164
    .local v29, "_tmp_9":I
    if-eqz v29, :cond_8

    move/from16 v80, v35

    goto :goto_9

    :cond_8
    const/16 v80, 0x0

    .line 3167
    .local v80, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v90, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3168
    .local v30, "_tmp_10":I
    if-eqz v30, :cond_9

    move/from16 v81, v35

    goto :goto_a

    :cond_9
    const/16 v81, 0x0

    .line 3170
    .local v81, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v91, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3172
    .local v82, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v31, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v84

    .line 3175
    .local v84, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 3176
    const/16 v33, 0x0

    .local v33, "_tmp_11":[B
    goto :goto_b

    .line 3178
    .end local v33    # "_tmp_11":[B
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 3180
    .restart local v33    # "_tmp_11":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v33 .. v33}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v86

    .line 3181
    .local v86, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v48, Landroidx/work/Constraints;

    move-object/from16 v76, v48

    invoke-direct/range {v76 .. v86}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3182
    .local v48, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v76, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v35, v76

    move-object/from16 v36, v4

    move-object/from16 v38, v68

    move-object/from16 v39, v69

    invoke-direct/range {v35 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v35, v76

    .line 3183
    .local v35, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v36, v0

    move-object/from16 v0, v35

    .end local v35    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v36, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3184
    move/from16 v33, v36

    move/from16 v0, v73

    move/from16 v19, v74

    move/from16 v20, v75

    move/from16 v26, v87

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v19    # "_tmp_4":I
    .end local v20    # "_tmp_5":I
    .end local v26    # "_tmp_6":I
    .end local v27    # "_tmp_7":I
    .end local v28    # "_tmp_8":I
    .end local v29    # "_tmp_9":I
    .end local v30    # "_tmp_10":I
    .end local v33    # "_tmp_11":[B
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v40    # "_tmpInput":Landroidx/work/Data;
    .end local v41    # "_tmpOutput":Landroidx/work/Data;
    .end local v42    # "_tmpInitialDelay":J
    .end local v44    # "_tmpIntervalDuration":J
    .end local v46    # "_tmpFlexDuration":J
    .end local v48    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v49    # "_tmpRunAttemptCount":I
    .end local v50    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v51    # "_tmpBackoffDelayDuration":J
    .end local v53    # "_tmpLastEnqueueTime":J
    .end local v55    # "_tmpMinimumRetentionDuration":J
    .end local v57    # "_tmpScheduleRequestedAt":J
    .end local v59    # "_tmpExpedited":Z
    .end local v60    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v61    # "_tmpPeriodCount":I
    .end local v62    # "_tmpGeneration":I
    .end local v63    # "_tmpNextScheduleTimeOverride":J
    .end local v65    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v66    # "_tmpStopReason":I
    .end local v67    # "_tmp":I
    .end local v68    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v69    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v70    # "_tmp_1":[B
    .end local v71    # "_tmp_2":[B
    .end local v72    # "_tmp_3":I
    .end local v77    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v78    # "_tmpRequiresCharging":Z
    .end local v79    # "_tmpRequiresDeviceIdle":Z
    .end local v80    # "_tmpRequiresBatteryNotLow":Z
    .end local v81    # "_tmpRequiresStorageNotLow":Z
    .end local v82    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v84    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v86    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3185
    .end local v36    # "_cursorIndexOfContentUriTriggers":I
    .end local v73    # "_cursorIndexOfId":I
    .end local v74    # "_cursorIndexOfExpedited":I
    .end local v75    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v87    # "_cursorIndexOfRequiredNetworkType":I
    .end local v88    # "_cursorIndexOfRequiresCharging":I
    .end local v89    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v90    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v91    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3187
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3188
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3185
    return-object v2

    .line 3187
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLastEnqueueTime":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfInitialDelay":I
    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .end local v13    # "_cursorIndexOfFlexDuration":I
    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfExpedited":I
    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v21    # "_cursorIndexOfPeriodCount":I
    .end local v22    # "_cursorIndexOfGeneration":I
    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v25    # "_cursorIndexOfStopReason":I
    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3188
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3189
    throw v0
.end method

.method public getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/Data;",
            ">;"
        }
    .end annotation

    .line 2699
    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 2701
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2702
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 2703
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 2704
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2706
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2708
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2709
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 2711
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2712
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2715
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2716
    const/4 v6, 0x0

    .local v6, "_tmp":[B
    goto :goto_2

    .line 2718
    .end local v6    # "_tmp":[B
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2720
    .restart local v6    # "_tmp":[B
    :goto_2
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v7

    .line 2721
    .local v7, "_item":Landroidx/work/Data;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2722
    nop

    .end local v6    # "_tmp":[B
    .end local v7    # "_item":Landroidx/work/Data;
    goto :goto_1

    .line 2723
    :cond_2
    nop

    .line 2725
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2726
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2723
    return-object v4

    .line 2725
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/Data;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2726
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2727
    throw v4
.end method

.method public getRecentlyCompletedWork(J)Ljava/util/List;
    .locals 93
    .param p1, "startingAt"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "startingAt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 3676
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    .line 3677
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 3678
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 3679
    .local v5, "_argIndex":I
    move-wide/from16 v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3680
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3681
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v4, v9, v8}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 3683
    .local v8, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v8, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 3684
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v10, "state"

    invoke-static {v8, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 3685
    .local v10, "_cursorIndexOfState":I
    const-string/jumbo v11, "worker_class_name"

    invoke-static {v8, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 3686
    .local v11, "_cursorIndexOfWorkerClassName":I
    const-string v12, "input_merger_class_name"

    invoke-static {v8, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 3687
    .local v12, "_cursorIndexOfInputMergerClassName":I
    const-string v13, "input"

    invoke-static {v8, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 3688
    .local v13, "_cursorIndexOfInput":I
    const-string/jumbo v14, "output"

    invoke-static {v8, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 3689
    .local v14, "_cursorIndexOfOutput":I
    const-string v15, "initial_delay"

    invoke-static {v8, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 3690
    .local v15, "_cursorIndexOfInitialDelay":I
    const-string v3, "interval_duration"

    invoke-static {v8, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 3691
    .local v3, "_cursorIndexOfIntervalDuration":I
    const-string v9, "flex_duration"

    invoke-static {v8, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 3692
    .local v9, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v1, "run_attempt_count"

    invoke-static {v8, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3693
    .local v1, "_cursorIndexOfRunAttemptCount":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v2, "backoff_policy"

    invoke-static {v8, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3694
    .local v2, "_cursorIndexOfBackoffPolicy":I
    move/from16 v17, v5

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    :try_start_2
    const-string v5, "backoff_delay_duration"

    invoke-static {v8, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 3695
    .local v5, "_cursorIndexOfBackoffDelayDuration":I
    const-string v6, "last_enqueue_time"

    invoke-static {v8, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 3696
    .local v6, "_cursorIndexOfLastEnqueueTime":I
    const-string/jumbo v7, "minimum_retention_duration"

    invoke-static {v8, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3697
    .local v7, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3698
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v19, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3699
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3700
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3701
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v22, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3702
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v23, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3703
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3704
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v25, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3705
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v26, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3706
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3707
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3708
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3709
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3710
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3711
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3712
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v33, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v8, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3713
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v34, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v35, v7

    .end local v7    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v35, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3714
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3717
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3718
    const/4 v7, 0x0

    .local v7, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 3720
    .end local v7    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3724
    .restart local v7    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v68, v36

    .line 3725
    .local v68, "_tmp":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v68 .. v68}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v38

    .line 3727
    .local v38, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v8, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 3728
    const/16 v36, 0x0

    move-object/from16 v69, v36

    .local v36, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 3730
    .end local v36    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v69, v36

    .line 3733
    .local v69, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v8, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 3734
    const/16 v36, 0x0

    move-object/from16 v70, v36

    .local v36, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 3736
    .end local v36    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v70, v36

    .line 3740
    .local v70, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v8, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 3741
    const/16 v36, 0x0

    move-object/from16 v71, v36

    .local v36, "_tmp_1":[B
    goto :goto_4

    .line 3743
    .end local v36    # "_tmp_1":[B
    :cond_3
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v71, v36

    .line 3745
    .local v71, "_tmp_1":[B
    :goto_4
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 3748
    .local v41, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 3749
    const/16 v36, 0x0

    move-object/from16 v72, v36

    .local v36, "_tmp_2":[B
    goto :goto_5

    .line 3751
    .end local v36    # "_tmp_2":[B
    :cond_4
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    move-object/from16 v72, v36

    .line 3753
    .local v72, "_tmp_2":[B
    :goto_5
    invoke-static/range {v72 .. v72}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v42

    .line 3755
    .local v42, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 3757
    .local v43, "_tmpInitialDelay":J
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 3759
    .local v45, "_tmpIntervalDuration":J
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 3761
    .local v47, "_tmpFlexDuration":J
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 3764
    .local v50, "_tmpRunAttemptCount":I
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v73, v36

    .line 3765
    .local v73, "_tmp_3":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v73 .. v73}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v51

    .line 3767
    .local v51, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 3769
    .local v52, "_tmpBackoffDelayDuration":J
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 3771
    .local v54, "_tmpLastEnqueueTime":J
    move/from16 v74, v0

    move/from16 v0, v35

    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v74, "_cursorIndexOfId":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 3773
    .local v56, "_tmpMinimumRetentionDuration":J
    move/from16 v35, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 3776
    .local v58, "_tmpScheduleRequestedAt":J
    move/from16 v19, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v19    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3777
    .local v20, "_tmp_4":I
    if-eqz v20, :cond_5

    const/16 v60, 0x1

    goto :goto_6

    :cond_5
    const/16 v60, 0x0

    .line 3780
    .local v60, "_tmpExpedited":Z
    :goto_6
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v75, "_cursorIndexOfExpedited":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 3781
    .local v21, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v21 .. v21}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v61

    .line 3783
    .local v61, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v76, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v76, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 3785
    .local v62, "_tmpPeriodCount":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v22    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 3787
    .local v63, "_tmpGeneration":I
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v23    # "_cursorIndexOfGeneration":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    .line 3789
    .local v64, "_tmpNextScheduleTimeOverride":J
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 3791
    .local v66, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 3795
    .local v67, "_tmpStopReason":I
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v26    # "_cursorIndexOfStopReason":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3796
    .local v27, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v27 .. v27}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v78

    .line 3799
    .local v78, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v88, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3800
    .local v28, "_tmp_7":I
    if-eqz v28, :cond_6

    const/16 v79, 0x1

    goto :goto_7

    :cond_6
    const/16 v79, 0x0

    .line 3803
    .local v79, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v89, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3804
    .local v29, "_tmp_8":I
    if-eqz v29, :cond_7

    const/16 v80, 0x1

    goto :goto_8

    :cond_7
    const/16 v80, 0x0

    .line 3807
    .local v80, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v90, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3808
    .local v30, "_tmp_9":I
    if-eqz v30, :cond_8

    const/16 v81, 0x1

    goto :goto_9

    :cond_8
    const/16 v81, 0x0

    .line 3811
    .local v81, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v91, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 3812
    .local v31, "_tmp_10":I
    if-eqz v31, :cond_9

    const/16 v82, 0x1

    goto :goto_a

    :cond_9
    const/16 v82, 0x0

    .line 3814
    .local v82, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v92, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v92, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v83

    .line 3816
    .local v83, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v85

    .line 3819
    .local v85, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v33, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 3820
    const/16 v34, 0x0

    .local v34, "_tmp_11":[B
    goto :goto_b

    .line 3822
    .end local v34    # "_tmp_11":[B
    :cond_a
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    .line 3824
    .restart local v34    # "_tmp_11":[B
    :goto_b
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v34 .. v34}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v87

    .line 3825
    .local v87, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v49, Landroidx/work/Constraints;

    move-object/from16 v77, v49

    invoke-direct/range {v77 .. v87}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3826
    .local v49, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v77, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v36, v77

    move-object/from16 v37, v7

    move-object/from16 v39, v69

    move-object/from16 v40, v70

    invoke-direct/range {v36 .. v67}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v36, v77

    .line 3827
    .local v36, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v37, v0

    move-object/from16 v0, v36

    .end local v36    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v37, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3828
    move/from16 v34, v37

    move/from16 v0, v74

    move/from16 v20, v75

    move/from16 v21, v76

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    move/from16 v31, v92

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v7    # "_tmpId":Ljava/lang/String;
    .end local v20    # "_tmp_4":I
    .end local v21    # "_tmp_5":I
    .end local v27    # "_tmp_6":I
    .end local v28    # "_tmp_7":I
    .end local v29    # "_tmp_8":I
    .end local v30    # "_tmp_9":I
    .end local v31    # "_tmp_10":I
    .end local v34    # "_tmp_11":[B
    .end local v38    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v41    # "_tmpInput":Landroidx/work/Data;
    .end local v42    # "_tmpOutput":Landroidx/work/Data;
    .end local v43    # "_tmpInitialDelay":J
    .end local v45    # "_tmpIntervalDuration":J
    .end local v47    # "_tmpFlexDuration":J
    .end local v49    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v50    # "_tmpRunAttemptCount":I
    .end local v51    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v52    # "_tmpBackoffDelayDuration":J
    .end local v54    # "_tmpLastEnqueueTime":J
    .end local v56    # "_tmpMinimumRetentionDuration":J
    .end local v58    # "_tmpScheduleRequestedAt":J
    .end local v60    # "_tmpExpedited":Z
    .end local v61    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v62    # "_tmpPeriodCount":I
    .end local v63    # "_tmpGeneration":I
    .end local v64    # "_tmpNextScheduleTimeOverride":J
    .end local v66    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v67    # "_tmpStopReason":I
    .end local v68    # "_tmp":I
    .end local v69    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v70    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v71    # "_tmp_1":[B
    .end local v72    # "_tmp_2":[B
    .end local v73    # "_tmp_3":I
    .end local v78    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v79    # "_tmpRequiresCharging":Z
    .end local v80    # "_tmpRequiresDeviceIdle":Z
    .end local v81    # "_tmpRequiresBatteryNotLow":Z
    .end local v82    # "_tmpRequiresStorageNotLow":Z
    .end local v83    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v85    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v87    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3829
    .end local v37    # "_cursorIndexOfContentUriTriggers":I
    .end local v74    # "_cursorIndexOfId":I
    .end local v75    # "_cursorIndexOfExpedited":I
    .end local v76    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v88    # "_cursorIndexOfRequiredNetworkType":I
    .end local v89    # "_cursorIndexOfRequiresCharging":I
    .end local v90    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v91    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v92    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v20, "_cursorIndexOfExpedited":I
    .local v21, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v27, "_cursorIndexOfRequiredNetworkType":I
    .local v28, "_cursorIndexOfRequiresCharging":I
    .local v29, "_cursorIndexOfRequiresDeviceIdle":I
    .local v30, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v31, "_cursorIndexOfRequiresStorageNotLow":I
    .local v34, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3831
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3832
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3829
    return-object v4

    .line 3831
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfRunAttemptCount":I
    .end local v2    # "_cursorIndexOfBackoffPolicy":I
    .end local v3    # "_cursorIndexOfIntervalDuration":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v5    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfLastEnqueueTime":I
    .end local v9    # "_cursorIndexOfFlexDuration":I
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfWorkerClassName":I
    .end local v12    # "_cursorIndexOfInputMergerClassName":I
    .end local v13    # "_cursorIndexOfInput":I
    .end local v14    # "_cursorIndexOfOutput":I
    .end local v15    # "_cursorIndexOfInitialDelay":I
    .end local v19    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v20    # "_cursorIndexOfExpedited":I
    .end local v21    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v22    # "_cursorIndexOfPeriodCount":I
    .end local v23    # "_cursorIndexOfGeneration":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v25    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v26    # "_cursorIndexOfStopReason":I
    .end local v27    # "_cursorIndexOfRequiredNetworkType":I
    .end local v28    # "_cursorIndexOfRequiresCharging":I
    .end local v29    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v30    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v31    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v32    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v33    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v34    # "_cursorIndexOfContentUriTriggers":I
    .end local v35    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3832
    invoke-virtual/range {v18 .. v18}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3833
    throw v0
.end method

.method public getRunningWork()Ljava/util/List;
    .locals 92
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 3516
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=1"

    .line 3517
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 3518
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3519
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 3521
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 3522
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 3523
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 3524
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 3525
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 3526
    .local v9, "_cursorIndexOfInput":I
    const-string/jumbo v10, "output"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 3527
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 3528
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 3529
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 3530
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v14, "run_attempt_count"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 3531
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 3532
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 3533
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3534
    .local v1, "_cursorIndexOfLastEnqueueTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3535
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3536
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3537
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v19, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3538
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3539
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v21, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3540
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v22, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3541
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v23, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3542
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3543
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v25, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3544
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3545
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3546
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3547
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3548
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3549
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v31, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3550
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3551
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v34, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v34, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 3552
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3555
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3556
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 3558
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3562
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v67, v35

    .line 3563
    .local v67, "_tmp":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v67 .. v67}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 3565
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 3566
    const/16 v35, 0x0

    move-object/from16 v68, v35

    .local v35, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 3568
    .end local v35    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v68, v35

    .line 3571
    .local v68, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 3572
    const/16 v35, 0x0

    move-object/from16 v69, v35

    .local v35, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 3574
    .end local v35    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v69, v35

    .line 3578
    .local v69, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 3579
    const/16 v35, 0x0

    move-object/from16 v70, v35

    .local v35, "_tmp_1":[B
    goto :goto_4

    .line 3581
    .end local v35    # "_tmp_1":[B
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v70, v35

    .line 3583
    .local v70, "_tmp_1":[B
    :goto_4
    invoke-static/range {v70 .. v70}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v40

    .line 3586
    .local v40, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 3587
    const/16 v35, 0x0

    move-object/from16 v71, v35

    .local v35, "_tmp_2":[B
    goto :goto_5

    .line 3589
    .end local v35    # "_tmp_2":[B
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v71, v35

    .line 3591
    .local v71, "_tmp_2":[B
    :goto_5
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 3593
    .local v41, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 3595
    .local v42, "_tmpInitialDelay":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 3597
    .local v44, "_tmpIntervalDuration":J
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 3599
    .local v46, "_tmpFlexDuration":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 3602
    .local v49, "_tmpRunAttemptCount":I
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v72, v35

    .line 3603
    .local v72, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v72 .. v72}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v50

    .line 3605
    .local v50, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 3607
    .local v51, "_tmpBackoffDelayDuration":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 3609
    .local v53, "_tmpLastEnqueueTime":J
    move/from16 v73, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v73, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 3611
    .local v55, "_tmpMinimumRetentionDuration":J
    move/from16 v34, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 3614
    .local v57, "_tmpScheduleRequestedAt":J
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v18    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 3615
    .local v19, "_tmp_4":I
    const/16 v35, 0x1

    if-eqz v19, :cond_5

    move/from16 v59, v35

    goto :goto_6

    :cond_5
    const/16 v59, 0x0

    .line 3618
    .local v59, "_tmpExpedited":Z
    :goto_6
    move/from16 v74, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v74, "_cursorIndexOfExpedited":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3619
    .local v20, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v60

    .line 3621
    .local v60, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v75, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 3623
    .local v61, "_tmpPeriodCount":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v21    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 3625
    .local v62, "_tmpGeneration":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v22    # "_cursorIndexOfGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 3627
    .local v63, "_tmpNextScheduleTimeOverride":J
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    .line 3629
    .local v65, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 3633
    .local v66, "_tmpStopReason":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v25    # "_cursorIndexOfStopReason":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3634
    .local v26, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v26 .. v26}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v77

    .line 3637
    .local v77, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v87, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v87, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3638
    .local v27, "_tmp_7":I
    if-eqz v27, :cond_6

    move/from16 v78, v35

    goto :goto_7

    :cond_6
    const/16 v78, 0x0

    .line 3641
    .local v78, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v88, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3642
    .local v28, "_tmp_8":I
    if-eqz v28, :cond_7

    move/from16 v79, v35

    goto :goto_8

    :cond_7
    const/16 v79, 0x0

    .line 3645
    .local v79, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v89, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3646
    .local v29, "_tmp_9":I
    if-eqz v29, :cond_8

    move/from16 v80, v35

    goto :goto_9

    :cond_8
    const/16 v80, 0x0

    .line 3649
    .local v80, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v90, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3650
    .local v30, "_tmp_10":I
    if-eqz v30, :cond_9

    move/from16 v81, v35

    goto :goto_a

    :cond_9
    const/16 v81, 0x0

    .line 3652
    .local v81, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v91, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3654
    .local v82, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v31, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v84

    .line 3657
    .local v84, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 3658
    const/16 v33, 0x0

    .local v33, "_tmp_11":[B
    goto :goto_b

    .line 3660
    .end local v33    # "_tmp_11":[B
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 3662
    .restart local v33    # "_tmp_11":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v33 .. v33}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v86

    .line 3663
    .local v86, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v48, Landroidx/work/Constraints;

    move-object/from16 v76, v48

    invoke-direct/range {v76 .. v86}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3664
    .local v48, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v76, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v35, v76

    move-object/from16 v36, v4

    move-object/from16 v38, v68

    move-object/from16 v39, v69

    invoke-direct/range {v35 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v35, v76

    .line 3665
    .local v35, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v36, v0

    move-object/from16 v0, v35

    .end local v35    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v36, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3666
    move/from16 v33, v36

    move/from16 v0, v73

    move/from16 v19, v74

    move/from16 v20, v75

    move/from16 v26, v87

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v19    # "_tmp_4":I
    .end local v20    # "_tmp_5":I
    .end local v26    # "_tmp_6":I
    .end local v27    # "_tmp_7":I
    .end local v28    # "_tmp_8":I
    .end local v29    # "_tmp_9":I
    .end local v30    # "_tmp_10":I
    .end local v33    # "_tmp_11":[B
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v40    # "_tmpInput":Landroidx/work/Data;
    .end local v41    # "_tmpOutput":Landroidx/work/Data;
    .end local v42    # "_tmpInitialDelay":J
    .end local v44    # "_tmpIntervalDuration":J
    .end local v46    # "_tmpFlexDuration":J
    .end local v48    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v49    # "_tmpRunAttemptCount":I
    .end local v50    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v51    # "_tmpBackoffDelayDuration":J
    .end local v53    # "_tmpLastEnqueueTime":J
    .end local v55    # "_tmpMinimumRetentionDuration":J
    .end local v57    # "_tmpScheduleRequestedAt":J
    .end local v59    # "_tmpExpedited":Z
    .end local v60    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v61    # "_tmpPeriodCount":I
    .end local v62    # "_tmpGeneration":I
    .end local v63    # "_tmpNextScheduleTimeOverride":J
    .end local v65    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v66    # "_tmpStopReason":I
    .end local v67    # "_tmp":I
    .end local v68    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v69    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v70    # "_tmp_1":[B
    .end local v71    # "_tmp_2":[B
    .end local v72    # "_tmp_3":I
    .end local v77    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v78    # "_tmpRequiresCharging":Z
    .end local v79    # "_tmpRequiresDeviceIdle":Z
    .end local v80    # "_tmpRequiresBatteryNotLow":Z
    .end local v81    # "_tmpRequiresStorageNotLow":Z
    .end local v82    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v84    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v86    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3667
    .end local v36    # "_cursorIndexOfContentUriTriggers":I
    .end local v73    # "_cursorIndexOfId":I
    .end local v74    # "_cursorIndexOfExpedited":I
    .end local v75    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v87    # "_cursorIndexOfRequiredNetworkType":I
    .end local v88    # "_cursorIndexOfRequiresCharging":I
    .end local v89    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v90    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v91    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3669
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3670
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3667
    return-object v2

    .line 3669
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLastEnqueueTime":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfInitialDelay":I
    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .end local v13    # "_cursorIndexOfFlexDuration":I
    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfExpedited":I
    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v21    # "_cursorIndexOfPeriodCount":I
    .end local v22    # "_cursorIndexOfGeneration":I
    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v25    # "_cursorIndexOfStopReason":I
    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3670
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3671
    throw v0
.end method

.method public getScheduleRequestedAtLiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2838
    const-string v0, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    .line 2839
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT schedule_requested_at FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2840
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 2841
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 2842
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2844
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2846
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v3

    const-string/jumbo v4, "workspec"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroidx/work/impl/model/WorkSpecDao_Impl$25;

    invoke-direct {v5, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$25;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    return-object v3
.end method

.method public getScheduledWork()Ljava/util/List;
    .locals 92
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation

    .line 3356
    move-object/from16 v1, p0

    const-string v2, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 3357
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 3358
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3359
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 3361
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 3362
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v6, "state"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 3363
    .local v6, "_cursorIndexOfState":I
    const-string/jumbo v7, "worker_class_name"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 3364
    .local v7, "_cursorIndexOfWorkerClassName":I
    const-string v8, "input_merger_class_name"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 3365
    .local v8, "_cursorIndexOfInputMergerClassName":I
    const-string v9, "input"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 3366
    .local v9, "_cursorIndexOfInput":I
    const-string/jumbo v10, "output"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 3367
    .local v10, "_cursorIndexOfOutput":I
    const-string v11, "initial_delay"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 3368
    .local v11, "_cursorIndexOfInitialDelay":I
    const-string v12, "interval_duration"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 3369
    .local v12, "_cursorIndexOfIntervalDuration":I
    const-string v13, "flex_duration"

    invoke-static {v5, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 3370
    .local v13, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v14, "run_attempt_count"

    invoke-static {v5, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 3371
    .local v14, "_cursorIndexOfRunAttemptCount":I
    const-string v15, "backoff_policy"

    invoke-static {v5, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 3372
    .local v15, "_cursorIndexOfBackoffPolicy":I
    const-string v3, "backoff_delay_duration"

    invoke-static {v5, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 3373
    .local v3, "_cursorIndexOfBackoffDelayDuration":I
    const-string v1, "last_enqueue_time"

    invoke-static {v5, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3374
    .local v1, "_cursorIndexOfLastEnqueueTime":I
    move-object/from16 v16, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v2, "minimum_retention_duration"

    invoke-static {v5, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3375
    .local v2, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_2
    const-string/jumbo v4, "schedule_requested_at"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3376
    .local v4, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v18, v4

    .end local v4    # "_cursorIndexOfScheduleRequestedAt":I
    .local v18, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v4, "run_in_foreground"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3377
    .local v4, "_cursorIndexOfExpedited":I
    move/from16 v19, v4

    .end local v4    # "_cursorIndexOfExpedited":I
    .local v19, "_cursorIndexOfExpedited":I
    const-string/jumbo v4, "out_of_quota_policy"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3378
    .local v4, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v20, v4

    .end local v4    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v4, "period_count"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3379
    .local v4, "_cursorIndexOfPeriodCount":I
    move/from16 v21, v4

    .end local v4    # "_cursorIndexOfPeriodCount":I
    .local v21, "_cursorIndexOfPeriodCount":I
    const-string v4, "generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3380
    .local v4, "_cursorIndexOfGeneration":I
    move/from16 v22, v4

    .end local v4    # "_cursorIndexOfGeneration":I
    .local v22, "_cursorIndexOfGeneration":I
    const-string/jumbo v4, "next_schedule_time_override"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3381
    .local v4, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v23, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v23, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v4, "next_schedule_time_override_generation"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3382
    .local v4, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v4

    .end local v4    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v24, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v4, "stop_reason"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3383
    .local v4, "_cursorIndexOfStopReason":I
    move/from16 v25, v4

    .end local v4    # "_cursorIndexOfStopReason":I
    .local v25, "_cursorIndexOfStopReason":I
    const-string/jumbo v4, "required_network_type"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3384
    .local v4, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v26, v4

    .end local v4    # "_cursorIndexOfRequiredNetworkType":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v4, "requires_charging"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3385
    .local v4, "_cursorIndexOfRequiresCharging":I
    move/from16 v27, v4

    .end local v4    # "_cursorIndexOfRequiresCharging":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v4, "requires_device_idle"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3386
    .local v4, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v28, v4

    .end local v4    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v4, "requires_battery_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3387
    .local v4, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v29, v4

    .end local v4    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v4, "requires_storage_not_low"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3388
    .local v4, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v30, v4

    .end local v4    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v4, "trigger_content_update_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3389
    .local v4, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v31, v4

    .end local v4    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v31, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v4, "trigger_max_content_delay"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3390
    .local v4, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v32, v4

    .end local v4    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v32, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v4, "content_uri_triggers"

    invoke-static {v5, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 3391
    .local v4, "_cursorIndexOfContentUriTriggers":I
    move/from16 v33, v4

    .end local v4    # "_cursorIndexOfContentUriTriggers":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v34, v2

    .end local v2    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v34, "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 3392
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3395
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3396
    const/4 v4, 0x0

    .local v4, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 3398
    .end local v4    # "_tmpId":Ljava/lang/String;
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3402
    .restart local v4    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v67, v35

    .line 3403
    .local v67, "_tmp":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v67 .. v67}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 3405
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 3406
    const/16 v35, 0x0

    move-object/from16 v68, v35

    .local v35, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 3408
    .end local v35    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v68, v35

    .line 3411
    .local v68, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 3412
    const/16 v35, 0x0

    move-object/from16 v69, v35

    .local v35, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 3414
    .end local v35    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v69, v35

    .line 3418
    .local v69, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 3419
    const/16 v35, 0x0

    move-object/from16 v70, v35

    .local v35, "_tmp_1":[B
    goto :goto_4

    .line 3421
    .end local v35    # "_tmp_1":[B
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v70, v35

    .line 3423
    .local v70, "_tmp_1":[B
    :goto_4
    invoke-static/range {v70 .. v70}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v40

    .line 3426
    .local v40, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 3427
    const/16 v35, 0x0

    move-object/from16 v71, v35

    .local v35, "_tmp_2":[B
    goto :goto_5

    .line 3429
    .end local v35    # "_tmp_2":[B
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v35

    move-object/from16 v71, v35

    .line 3431
    .local v71, "_tmp_2":[B
    :goto_5
    invoke-static/range {v71 .. v71}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 3433
    .local v41, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 3435
    .local v42, "_tmpInitialDelay":J
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 3437
    .local v44, "_tmpIntervalDuration":J
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 3439
    .local v46, "_tmpFlexDuration":J
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 3442
    .local v49, "_tmpRunAttemptCount":I
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v72, v35

    .line 3443
    .local v72, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v72 .. v72}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v50

    .line 3445
    .local v50, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 3447
    .local v51, "_tmpBackoffDelayDuration":J
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 3449
    .local v53, "_tmpLastEnqueueTime":J
    move/from16 v73, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    .local v0, "_cursorIndexOfMinimumRetentionDuration":I
    .local v73, "_cursorIndexOfId":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 3451
    .local v55, "_tmpMinimumRetentionDuration":J
    move/from16 v34, v0

    move/from16 v0, v18

    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .restart local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 3454
    .local v57, "_tmpScheduleRequestedAt":J
    move/from16 v18, v0

    move/from16 v0, v19

    .end local v19    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v18    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 3455
    .local v19, "_tmp_4":I
    const/16 v35, 0x1

    if-eqz v19, :cond_5

    move/from16 v59, v35

    goto :goto_6

    :cond_5
    const/16 v59, 0x0

    .line 3458
    .local v59, "_tmpExpedited":Z
    :goto_6
    move/from16 v74, v0

    move/from16 v0, v20

    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v74, "_cursorIndexOfExpedited":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3459
    .local v20, "_tmp_5":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v20 .. v20}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v60

    .line 3461
    .local v60, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v75, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    .line 3463
    .local v61, "_tmpPeriodCount":I
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v21    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 3465
    .local v62, "_tmpGeneration":I
    move/from16 v22, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v22    # "_cursorIndexOfGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 3467
    .local v63, "_tmpNextScheduleTimeOverride":J
    move/from16 v23, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    .line 3469
    .local v65, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    .line 3473
    .local v66, "_tmpStopReason":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v25    # "_cursorIndexOfStopReason":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3474
    .local v26, "_tmp_6":I
    sget-object v36, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v26 .. v26}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v77

    .line 3477
    .local v77, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v87, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v87, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 3478
    .local v27, "_tmp_7":I
    if-eqz v27, :cond_6

    move/from16 v78, v35

    goto :goto_7

    :cond_6
    const/16 v78, 0x0

    .line 3481
    .local v78, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v88, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v88, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 3482
    .local v28, "_tmp_8":I
    if-eqz v28, :cond_7

    move/from16 v79, v35

    goto :goto_8

    :cond_7
    const/16 v79, 0x0

    .line 3485
    .local v79, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v89, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v89, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 3486
    .local v29, "_tmp_9":I
    if-eqz v29, :cond_8

    move/from16 v80, v35

    goto :goto_9

    :cond_8
    const/16 v80, 0x0

    .line 3489
    .local v80, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v90, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v90, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3490
    .local v30, "_tmp_10":I
    if-eqz v30, :cond_9

    move/from16 v81, v35

    goto :goto_a

    :cond_9
    const/16 v81, 0x0

    .line 3492
    .local v81, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v91, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v91, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 3494
    .local v82, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v31, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v84

    .line 3497
    .local v84, "_tmpContentTriggerMaxDelayMillis":J
    move/from16 v32, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .local v0, "_cursorIndexOfContentUriTriggers":I
    .restart local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 3498
    const/16 v33, 0x0

    .local v33, "_tmp_11":[B
    goto :goto_b

    .line 3500
    .end local v33    # "_tmp_11":[B
    :cond_a
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    .line 3502
    .restart local v33    # "_tmp_11":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v33 .. v33}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v86

    .line 3503
    .local v86, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v48, Landroidx/work/Constraints;

    move-object/from16 v76, v48

    invoke-direct/range {v76 .. v86}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 3504
    .local v48, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v76, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v35, v76

    move-object/from16 v36, v4

    move-object/from16 v38, v68

    move-object/from16 v39, v69

    invoke-direct/range {v35 .. v66}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V

    move-object/from16 v35, v76

    .line 3505
    .local v35, "_item":Landroidx/work/impl/model/WorkSpec;
    move/from16 v36, v0

    move-object/from16 v0, v35

    .end local v35    # "_item":Landroidx/work/impl/model/WorkSpec;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec;
    .local v36, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3506
    move/from16 v33, v36

    move/from16 v0, v73

    move/from16 v19, v74

    move/from16 v20, v75

    move/from16 v26, v87

    move/from16 v27, v88

    move/from16 v28, v89

    move/from16 v29, v90

    move/from16 v30, v91

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec;
    .end local v4    # "_tmpId":Ljava/lang/String;
    .end local v19    # "_tmp_4":I
    .end local v20    # "_tmp_5":I
    .end local v26    # "_tmp_6":I
    .end local v27    # "_tmp_7":I
    .end local v28    # "_tmp_8":I
    .end local v29    # "_tmp_9":I
    .end local v30    # "_tmp_10":I
    .end local v33    # "_tmp_11":[B
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v40    # "_tmpInput":Landroidx/work/Data;
    .end local v41    # "_tmpOutput":Landroidx/work/Data;
    .end local v42    # "_tmpInitialDelay":J
    .end local v44    # "_tmpIntervalDuration":J
    .end local v46    # "_tmpFlexDuration":J
    .end local v48    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v49    # "_tmpRunAttemptCount":I
    .end local v50    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v51    # "_tmpBackoffDelayDuration":J
    .end local v53    # "_tmpLastEnqueueTime":J
    .end local v55    # "_tmpMinimumRetentionDuration":J
    .end local v57    # "_tmpScheduleRequestedAt":J
    .end local v59    # "_tmpExpedited":Z
    .end local v60    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v61    # "_tmpPeriodCount":I
    .end local v62    # "_tmpGeneration":I
    .end local v63    # "_tmpNextScheduleTimeOverride":J
    .end local v65    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v66    # "_tmpStopReason":I
    .end local v67    # "_tmp":I
    .end local v68    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v69    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v70    # "_tmp_1":[B
    .end local v71    # "_tmp_2":[B
    .end local v72    # "_tmp_3":I
    .end local v77    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v78    # "_tmpRequiresCharging":Z
    .end local v79    # "_tmpRequiresDeviceIdle":Z
    .end local v80    # "_tmpRequiresBatteryNotLow":Z
    .end local v81    # "_tmpRequiresStorageNotLow":Z
    .end local v82    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v84    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v86    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    goto/16 :goto_0

    .line 3507
    .end local v36    # "_cursorIndexOfContentUriTriggers":I
    .end local v73    # "_cursorIndexOfId":I
    .end local v74    # "_cursorIndexOfExpedited":I
    .end local v75    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v87    # "_cursorIndexOfRequiredNetworkType":I
    .end local v88    # "_cursorIndexOfRequiresCharging":I
    .end local v89    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v90    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v91    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v19, "_cursorIndexOfExpedited":I
    .local v20, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v26, "_cursorIndexOfRequiredNetworkType":I
    .local v27, "_cursorIndexOfRequiresCharging":I
    .local v28, "_cursorIndexOfRequiresDeviceIdle":I
    .local v29, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v30, "_cursorIndexOfRequiresStorageNotLow":I
    .local v33, "_cursorIndexOfContentUriTriggers":I
    :cond_b
    nop

    .line 3509
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3510
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3507
    return-object v2

    .line 3509
    .end local v0    # "_cursorIndexOfId":I
    .end local v1    # "_cursorIndexOfLastEnqueueTime":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    .end local v3    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v6    # "_cursorIndexOfState":I
    .end local v7    # "_cursorIndexOfWorkerClassName":I
    .end local v8    # "_cursorIndexOfInputMergerClassName":I
    .end local v9    # "_cursorIndexOfInput":I
    .end local v10    # "_cursorIndexOfOutput":I
    .end local v11    # "_cursorIndexOfInitialDelay":I
    .end local v12    # "_cursorIndexOfIntervalDuration":I
    .end local v13    # "_cursorIndexOfFlexDuration":I
    .end local v14    # "_cursorIndexOfRunAttemptCount":I
    .end local v15    # "_cursorIndexOfBackoffPolicy":I
    .end local v18    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v19    # "_cursorIndexOfExpedited":I
    .end local v20    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v21    # "_cursorIndexOfPeriodCount":I
    .end local v22    # "_cursorIndexOfGeneration":I
    .end local v23    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v24    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v25    # "_cursorIndexOfStopReason":I
    .end local v26    # "_cursorIndexOfRequiredNetworkType":I
    .end local v27    # "_cursorIndexOfRequiresCharging":I
    .end local v28    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v29    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v30    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v31    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v32    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v33    # "_cursorIndexOfContentUriTriggers":I
    .end local v34    # "_cursorIndexOfMinimumRetentionDuration":I
    :catchall_0
    move-exception v0

    goto :goto_c

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_c

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_sql":Ljava/lang/String;
    .restart local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v4    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3510
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 3511
    throw v0
.end method

.method public getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 974
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    .line 975
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT state FROM workspec WHERE id=?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 976
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 977
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 978
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 982
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 983
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 986
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 988
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 989
    const/4 v4, 0x0

    .local v4, "_tmp":Ljava/lang/Integer;
    goto :goto_1

    .line 991
    .end local v4    # "_tmp":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 993
    .restart local v4    # "_tmp":Ljava/lang/Integer;
    :goto_1
    if-nez v4, :cond_2

    .line 994
    const/4 v5, 0x0

    .local v5, "_result":Landroidx/work/WorkInfo$State;
    goto :goto_2

    .line 996
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :cond_2
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    .end local v4    # "_tmp":Ljava/lang/Integer;
    .restart local v5    # "_result":Landroidx/work/WorkInfo$State;
    :goto_2
    goto :goto_3

    .line 999
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :cond_3
    const/4 v5, 0x0

    .line 1001
    .restart local v5    # "_result":Landroidx/work/WorkInfo$State;
    :goto_3
    nop

    .line 1003
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1004
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1001
    return-object v5

    .line 1003
    .end local v5    # "_result":Landroidx/work/WorkInfo$State;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1004
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1005
    throw v4
.end method

.method public getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2762
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2763
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2764
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 2765
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 2766
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2768
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2770
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2771
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 2773
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2774
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2776
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2777
    const/4 v6, 0x0

    .local v6, "_item":Ljava/lang/String;
    goto :goto_2

    .line 2779
    .end local v6    # "_item":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2781
    .restart local v6    # "_item":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2782
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 2783
    :cond_2
    nop

    .line 2785
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2786
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2783
    return-object v4

    .line 2785
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2786
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2787
    throw v4
.end method

.method public getUnfinishedWorkWithTag(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2732
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 2733
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2734
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 2735
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 2736
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2738
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2740
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2741
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 2743
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2744
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2746
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2747
    const/4 v6, 0x0

    .local v6, "_item":Ljava/lang/String;
    goto :goto_2

    .line 2749
    .end local v6    # "_item":Ljava/lang/String;
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2751
    .restart local v6    # "_item":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2752
    nop

    .end local v6    # "_item":Ljava/lang/String;
    goto :goto_1

    .line 2753
    :cond_2
    nop

    .line 2755
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2756
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2753
    return-object v4

    .line 2755
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2756
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2757
    throw v4
.end method

.method public getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;
    .locals 93
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 708
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT * FROM workspec WHERE id=?"

    .line 709
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 710
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 711
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 712
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 714
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 716
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 717
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v5, v8, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 719
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "id"

    invoke-static {v7, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 720
    .local v0, "_cursorIndexOfId":I
    const-string/jumbo v9, "state"

    invoke-static {v7, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 721
    .local v9, "_cursorIndexOfState":I
    const-string/jumbo v10, "worker_class_name"

    invoke-static {v7, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 722
    .local v10, "_cursorIndexOfWorkerClassName":I
    const-string v11, "input_merger_class_name"

    invoke-static {v7, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 723
    .local v11, "_cursorIndexOfInputMergerClassName":I
    const-string v12, "input"

    invoke-static {v7, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 724
    .local v12, "_cursorIndexOfInput":I
    const-string/jumbo v13, "output"

    invoke-static {v7, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 725
    .local v13, "_cursorIndexOfOutput":I
    const-string v14, "initial_delay"

    invoke-static {v7, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    .line 726
    .local v14, "_cursorIndexOfInitialDelay":I
    const-string v15, "interval_duration"

    invoke-static {v7, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 727
    .local v15, "_cursorIndexOfIntervalDuration":I
    const-string v4, "flex_duration"

    invoke-static {v7, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 728
    .local v4, "_cursorIndexOfFlexDuration":I
    const-string/jumbo v8, "run_attempt_count"

    invoke-static {v7, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 729
    .local v8, "_cursorIndexOfRunAttemptCount":I
    const-string v1, "backoff_policy"

    invoke-static {v7, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 730
    .local v1, "_cursorIndexOfBackoffPolicy":I
    const-string v2, "backoff_delay_duration"

    invoke-static {v7, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 731
    .local v2, "_cursorIndexOfBackoffDelayDuration":I
    move-object/from16 v18, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    :try_start_1
    const-string v3, "last_enqueue_time"

    invoke-static {v7, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 732
    .local v3, "_cursorIndexOfLastEnqueueTime":I
    move/from16 v19, v6

    .end local v6    # "_argIndex":I
    .local v19, "_argIndex":I
    :try_start_2
    const-string/jumbo v6, "minimum_retention_duration"

    invoke-static {v7, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 733
    .local v6, "_cursorIndexOfMinimumRetentionDuration":I
    move-object/from16 v20, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v20, "_statement":Landroidx/room/RoomSQLiteQuery;
    :try_start_3
    const-string/jumbo v5, "schedule_requested_at"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 734
    .local v5, "_cursorIndexOfScheduleRequestedAt":I
    move/from16 v21, v5

    .end local v5    # "_cursorIndexOfScheduleRequestedAt":I
    .local v21, "_cursorIndexOfScheduleRequestedAt":I
    const-string/jumbo v5, "run_in_foreground"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 735
    .local v5, "_cursorIndexOfExpedited":I
    move/from16 v22, v5

    .end local v5    # "_cursorIndexOfExpedited":I
    .local v22, "_cursorIndexOfExpedited":I
    const-string/jumbo v5, "out_of_quota_policy"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 736
    .local v5, "_cursorIndexOfOutOfQuotaPolicy":I
    move/from16 v23, v5

    .end local v5    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v23, "_cursorIndexOfOutOfQuotaPolicy":I
    const-string/jumbo v5, "period_count"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 737
    .local v5, "_cursorIndexOfPeriodCount":I
    move/from16 v24, v5

    .end local v5    # "_cursorIndexOfPeriodCount":I
    .local v24, "_cursorIndexOfPeriodCount":I
    const-string v5, "generation"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 738
    .local v5, "_cursorIndexOfGeneration":I
    move/from16 v25, v5

    .end local v5    # "_cursorIndexOfGeneration":I
    .local v25, "_cursorIndexOfGeneration":I
    const-string/jumbo v5, "next_schedule_time_override"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 739
    .local v5, "_cursorIndexOfNextScheduleTimeOverride":I
    move/from16 v26, v5

    .end local v5    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v26, "_cursorIndexOfNextScheduleTimeOverride":I
    const-string/jumbo v5, "next_schedule_time_override_generation"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 740
    .local v5, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    move/from16 v27, v5

    .end local v5    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v27, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    const-string/jumbo v5, "stop_reason"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 741
    .local v5, "_cursorIndexOfStopReason":I
    move/from16 v28, v5

    .end local v5    # "_cursorIndexOfStopReason":I
    .local v28, "_cursorIndexOfStopReason":I
    const-string/jumbo v5, "required_network_type"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 742
    .local v5, "_cursorIndexOfRequiredNetworkType":I
    move/from16 v29, v5

    .end local v5    # "_cursorIndexOfRequiredNetworkType":I
    .local v29, "_cursorIndexOfRequiredNetworkType":I
    const-string/jumbo v5, "requires_charging"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 743
    .local v5, "_cursorIndexOfRequiresCharging":I
    move/from16 v30, v5

    .end local v5    # "_cursorIndexOfRequiresCharging":I
    .local v30, "_cursorIndexOfRequiresCharging":I
    const-string/jumbo v5, "requires_device_idle"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 744
    .local v5, "_cursorIndexOfRequiresDeviceIdle":I
    move/from16 v31, v5

    .end local v5    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v31, "_cursorIndexOfRequiresDeviceIdle":I
    const-string/jumbo v5, "requires_battery_not_low"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 745
    .local v5, "_cursorIndexOfRequiresBatteryNotLow":I
    move/from16 v32, v5

    .end local v5    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v32, "_cursorIndexOfRequiresBatteryNotLow":I
    const-string/jumbo v5, "requires_storage_not_low"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 746
    .local v5, "_cursorIndexOfRequiresStorageNotLow":I
    move/from16 v33, v5

    .end local v5    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v33, "_cursorIndexOfRequiresStorageNotLow":I
    const-string/jumbo v5, "trigger_content_update_delay"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 747
    .local v5, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    move/from16 v34, v5

    .end local v5    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v34, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const-string/jumbo v5, "trigger_max_content_delay"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 748
    .local v5, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    move/from16 v35, v5

    .end local v5    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v35, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const-string v5, "content_uri_triggers"

    invoke-static {v7, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 750
    .local v5, "_cursorIndexOfContentUriTriggers":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 752
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 753
    const/16 v36, 0x0

    .local v36, "_tmpId":Ljava/lang/String;
    goto :goto_1

    .line 755
    .end local v36    # "_tmpId":Ljava/lang/String;
    :cond_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 759
    .restart local v36    # "_tmpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move/from16 v69, v37

    .line 760
    .local v69, "_tmp":I
    sget-object v37, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v69 .. v69}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v39

    .line 762
    .local v39, "_tmpState":Landroidx/work/WorkInfo$State;
    invoke-interface {v7, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 763
    const/16 v37, 0x0

    move-object/from16 v70, v37

    .local v37, "_tmpWorkerClassName":Ljava/lang/String;
    goto :goto_2

    .line 765
    .end local v37    # "_tmpWorkerClassName":Ljava/lang/String;
    :cond_2
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v70, v37

    .line 768
    .local v70, "_tmpWorkerClassName":Ljava/lang/String;
    :goto_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 769
    const/16 v37, 0x0

    move-object/from16 v71, v37

    .local v37, "_tmpInputMergerClassName":Ljava/lang/String;
    goto :goto_3

    .line 771
    .end local v37    # "_tmpInputMergerClassName":Ljava/lang/String;
    :cond_3
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v71, v37

    .line 775
    .local v71, "_tmpInputMergerClassName":Ljava/lang/String;
    :goto_3
    invoke-interface {v7, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 776
    const/16 v37, 0x0

    move-object/from16 v72, v37

    .local v37, "_tmp_1":[B
    goto :goto_4

    .line 778
    .end local v37    # "_tmp_1":[B
    :cond_4
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v37

    move-object/from16 v72, v37

    .line 780
    .local v72, "_tmp_1":[B
    :goto_4
    invoke-static/range {v72 .. v72}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v42

    .line 783
    .local v42, "_tmpInput":Landroidx/work/Data;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_5

    .line 784
    const/16 v37, 0x0

    move-object/from16 v73, v37

    .local v37, "_tmp_2":[B
    goto :goto_5

    .line 786
    .end local v37    # "_tmp_2":[B
    :cond_5
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v37

    move-object/from16 v73, v37

    .line 788
    .local v73, "_tmp_2":[B
    :goto_5
    invoke-static/range {v73 .. v73}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v43

    .line 790
    .local v43, "_tmpOutput":Landroidx/work/Data;
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 792
    .local v44, "_tmpInitialDelay":J
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 794
    .local v46, "_tmpIntervalDuration":J
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 796
    .local v48, "_tmpFlexDuration":J
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 799
    .local v51, "_tmpRunAttemptCount":I
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move/from16 v74, v37

    .line 800
    .local v74, "_tmp_3":I
    sget-object v37, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v74 .. v74}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v52

    .line 802
    .local v52, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 804
    .local v53, "_tmpBackoffDelayDuration":J
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 806
    .local v55, "_tmpLastEnqueueTime":J
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 808
    .local v57, "_tmpMinimumRetentionDuration":J
    move/from16 v75, v0

    move/from16 v0, v21

    .end local v21    # "_cursorIndexOfScheduleRequestedAt":I
    .local v0, "_cursorIndexOfScheduleRequestedAt":I
    .local v75, "_cursorIndexOfId":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    .line 811
    .local v59, "_tmpScheduleRequestedAt":J
    move/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "_cursorIndexOfExpedited":I
    .local v0, "_cursorIndexOfExpedited":I
    .restart local v21    # "_cursorIndexOfScheduleRequestedAt":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 812
    .local v22, "_tmp_4":I
    if-eqz v22, :cond_6

    const/16 v61, 0x1

    goto :goto_6

    :cond_6
    const/16 v61, 0x0

    .line 815
    .local v61, "_tmpExpedited":Z
    :goto_6
    move/from16 v76, v0

    move/from16 v0, v23

    .end local v23    # "_cursorIndexOfOutOfQuotaPolicy":I
    .local v0, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v76, "_cursorIndexOfExpedited":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 816
    .local v23, "_tmp_5":I
    sget-object v37, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v23 .. v23}, Landroidx/work/impl/model/WorkTypeConverters;->intToOutOfQuotaPolicy(I)Landroidx/work/OutOfQuotaPolicy;

    move-result-object v62

    .line 818
    .local v62, "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    move/from16 v77, v0

    move/from16 v0, v24

    .end local v24    # "_cursorIndexOfPeriodCount":I
    .local v0, "_cursorIndexOfPeriodCount":I
    .local v77, "_cursorIndexOfOutOfQuotaPolicy":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    .line 820
    .local v63, "_tmpPeriodCount":I
    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25    # "_cursorIndexOfGeneration":I
    .local v0, "_cursorIndexOfGeneration":I
    .restart local v24    # "_cursorIndexOfPeriodCount":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    .line 822
    .local v64, "_tmpGeneration":I
    move/from16 v25, v0

    move/from16 v0, v26

    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v25    # "_cursorIndexOfGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    .line 824
    .local v65, "_tmpNextScheduleTimeOverride":J
    move/from16 v26, v0

    move/from16 v0, v27

    .end local v27    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .local v0, "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .restart local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 826
    .local v67, "_tmpNextScheduleTimeOverrideGeneration":I
    move/from16 v27, v0

    move/from16 v0, v28

    .end local v28    # "_cursorIndexOfStopReason":I
    .local v0, "_cursorIndexOfStopReason":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 830
    .local v68, "_tmpStopReason":I
    move/from16 v28, v0

    move/from16 v0, v29

    .end local v29    # "_cursorIndexOfRequiredNetworkType":I
    .local v0, "_cursorIndexOfRequiredNetworkType":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 831
    .local v29, "_tmp_6":I
    sget-object v37, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v29 .. v29}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v79

    .line 834
    .local v79, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v89, v0

    move/from16 v0, v30

    .end local v30    # "_cursorIndexOfRequiresCharging":I
    .local v0, "_cursorIndexOfRequiresCharging":I
    .local v89, "_cursorIndexOfRequiredNetworkType":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 835
    .local v30, "_tmp_7":I
    if-eqz v30, :cond_7

    const/16 v80, 0x1

    goto :goto_7

    :cond_7
    const/16 v80, 0x0

    .line 838
    .local v80, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v90, v0

    move/from16 v0, v31

    .end local v31    # "_cursorIndexOfRequiresDeviceIdle":I
    .local v0, "_cursorIndexOfRequiresDeviceIdle":I
    .local v90, "_cursorIndexOfRequiresCharging":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 839
    .local v31, "_tmp_8":I
    if-eqz v31, :cond_8

    const/16 v81, 0x1

    goto :goto_8

    :cond_8
    const/16 v81, 0x0

    .line 842
    .local v81, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v91, v0

    move/from16 v0, v32

    .end local v32    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v91, "_cursorIndexOfRequiresDeviceIdle":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 843
    .local v32, "_tmp_9":I
    if-eqz v32, :cond_9

    const/16 v82, 0x1

    goto :goto_9

    :cond_9
    const/16 v82, 0x0

    .line 846
    .local v82, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v92, v0

    move/from16 v0, v33

    .end local v33    # "_cursorIndexOfRequiresStorageNotLow":I
    .local v0, "_cursorIndexOfRequiresStorageNotLow":I
    .local v92, "_cursorIndexOfRequiresBatteryNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 847
    .local v33, "_tmp_10":I
    if-eqz v33, :cond_a

    const/16 v83, 0x1

    goto :goto_a

    :cond_a
    const/16 v83, 0x0

    .line 849
    .local v83, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v16, v0

    move/from16 v0, v34

    .end local v34    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .local v16, "_cursorIndexOfRequiresStorageNotLow":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v84

    .line 851
    .local v84, "_tmpContentTriggerUpdateDelayMillis":J
    move/from16 v34, v0

    move/from16 v0, v35

    .end local v35    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v34    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v86

    .line 854
    .local v86, "_tmpContentTriggerMaxDelayMillis":J
    invoke-interface {v7, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 855
    const/16 v17, 0x0

    .local v17, "_tmp_11":[B
    goto :goto_b

    .line 857
    .end local v17    # "_tmp_11":[B
    :cond_b
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    .line 859
    .restart local v17    # "_tmp_11":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v17 .. v17}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v88

    .line 860
    .local v88, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v50, Landroidx/work/Constraints;

    move-object/from16 v78, v50

    invoke-direct/range {v78 .. v88}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 861
    .local v50, "_tmpConstraints":Landroidx/work/Constraints;
    new-instance v35, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v37, v35

    move-object/from16 v38, v36

    move-object/from16 v40, v70

    move-object/from16 v41, v71

    invoke-direct/range {v37 .. v68}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v17, v35

    .line 862
    .end local v22    # "_tmp_4":I
    .end local v23    # "_tmp_5":I
    .end local v29    # "_tmp_6":I
    .end local v30    # "_tmp_7":I
    .end local v31    # "_tmp_8":I
    .end local v32    # "_tmp_9":I
    .end local v33    # "_tmp_10":I
    .end local v36    # "_tmpId":Ljava/lang/String;
    .end local v39    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v42    # "_tmpInput":Landroidx/work/Data;
    .end local v43    # "_tmpOutput":Landroidx/work/Data;
    .end local v44    # "_tmpInitialDelay":J
    .end local v46    # "_tmpIntervalDuration":J
    .end local v48    # "_tmpFlexDuration":J
    .end local v50    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v51    # "_tmpRunAttemptCount":I
    .end local v52    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v53    # "_tmpBackoffDelayDuration":J
    .end local v55    # "_tmpLastEnqueueTime":J
    .end local v57    # "_tmpMinimumRetentionDuration":J
    .end local v59    # "_tmpScheduleRequestedAt":J
    .end local v61    # "_tmpExpedited":Z
    .end local v62    # "_tmpOutOfQuotaPolicy":Landroidx/work/OutOfQuotaPolicy;
    .end local v63    # "_tmpPeriodCount":I
    .end local v64    # "_tmpGeneration":I
    .end local v65    # "_tmpNextScheduleTimeOverride":J
    .end local v67    # "_tmpNextScheduleTimeOverrideGeneration":I
    .end local v68    # "_tmpStopReason":I
    .end local v69    # "_tmp":I
    .end local v70    # "_tmpWorkerClassName":Ljava/lang/String;
    .end local v71    # "_tmpInputMergerClassName":Ljava/lang/String;
    .end local v72    # "_tmp_1":[B
    .end local v73    # "_tmp_2":[B
    .end local v74    # "_tmp_3":I
    .end local v79    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v80    # "_tmpRequiresCharging":Z
    .end local v81    # "_tmpRequiresDeviceIdle":Z
    .end local v82    # "_tmpRequiresBatteryNotLow":Z
    .end local v83    # "_tmpRequiresStorageNotLow":Z
    .end local v84    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v86    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v88    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .local v17, "_result":Landroidx/work/impl/model/WorkSpec;
    goto :goto_c

    .line 863
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    .end local v75    # "_cursorIndexOfId":I
    .end local v76    # "_cursorIndexOfExpedited":I
    .end local v77    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v89    # "_cursorIndexOfRequiredNetworkType":I
    .end local v90    # "_cursorIndexOfRequiresCharging":I
    .end local v91    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v92    # "_cursorIndexOfRequiresBatteryNotLow":I
    .local v0, "_cursorIndexOfId":I
    .local v22, "_cursorIndexOfExpedited":I
    .local v23, "_cursorIndexOfOutOfQuotaPolicy":I
    .local v29, "_cursorIndexOfRequiredNetworkType":I
    .local v30, "_cursorIndexOfRequiresCharging":I
    .local v31, "_cursorIndexOfRequiresDeviceIdle":I
    .local v32, "_cursorIndexOfRequiresBatteryNotLow":I
    .local v33, "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v35    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    :cond_c
    move/from16 v75, v0

    move/from16 v76, v22

    move/from16 v77, v23

    move/from16 v89, v29

    move/from16 v90, v30

    move/from16 v91, v31

    move/from16 v92, v32

    move/from16 v16, v33

    move/from16 v0, v35

    .end local v22    # "_cursorIndexOfExpedited":I
    .end local v23    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v29    # "_cursorIndexOfRequiredNetworkType":I
    .end local v30    # "_cursorIndexOfRequiresCharging":I
    .end local v31    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v32    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v33    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v35    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .local v0, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v75    # "_cursorIndexOfId":I
    .restart local v76    # "_cursorIndexOfExpedited":I
    .restart local v77    # "_cursorIndexOfOutOfQuotaPolicy":I
    .restart local v89    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v90    # "_cursorIndexOfRequiresCharging":I
    .restart local v91    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v92    # "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v17, 0x0

    .line 865
    .restart local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    :goto_c
    nop

    .line 867
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 868
    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 865
    return-object v17

    .line 867
    .end local v0    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v1    # "_cursorIndexOfBackoffPolicy":I
    .end local v2    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v3    # "_cursorIndexOfLastEnqueueTime":I
    .end local v4    # "_cursorIndexOfFlexDuration":I
    .end local v5    # "_cursorIndexOfContentUriTriggers":I
    .end local v6    # "_cursorIndexOfMinimumRetentionDuration":I
    .end local v8    # "_cursorIndexOfRunAttemptCount":I
    .end local v9    # "_cursorIndexOfState":I
    .end local v10    # "_cursorIndexOfWorkerClassName":I
    .end local v11    # "_cursorIndexOfInputMergerClassName":I
    .end local v12    # "_cursorIndexOfInput":I
    .end local v13    # "_cursorIndexOfOutput":I
    .end local v14    # "_cursorIndexOfInitialDelay":I
    .end local v15    # "_cursorIndexOfIntervalDuration":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_result":Landroidx/work/impl/model/WorkSpec;
    .end local v21    # "_cursorIndexOfScheduleRequestedAt":I
    .end local v24    # "_cursorIndexOfPeriodCount":I
    .end local v25    # "_cursorIndexOfGeneration":I
    .end local v26    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverrideGeneration":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v34    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v75    # "_cursorIndexOfId":I
    .end local v76    # "_cursorIndexOfExpedited":I
    .end local v77    # "_cursorIndexOfOutOfQuotaPolicy":I
    .end local v89    # "_cursorIndexOfRequiredNetworkType":I
    .end local v90    # "_cursorIndexOfRequiresCharging":I
    .end local v91    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v92    # "_cursorIndexOfRequiresBatteryNotLow":I
    :catchall_0
    move-exception v0

    goto :goto_d

    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_d

    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_d

    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_argIndex":I
    .end local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v20, v5

    move/from16 v19, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_argIndex":I
    .restart local v20    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :goto_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 868
    invoke-virtual/range {v20 .. v20}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 869
    throw v0
.end method

.method public getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$IdAndState;",
            ">;"
        }
    .end annotation

    .line 874
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 875
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 876
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 877
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 878
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 882
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 883
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v1, v6, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 885
    .local v4, "_cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 886
    .local v5, "_cursorIndexOfId":I
    const/4 v7, 0x1

    .line 887
    .local v7, "_cursorIndexOfState":I
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 888
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 891
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 892
    const/4 v9, 0x0

    .local v9, "_tmpId":Ljava/lang/String;
    goto :goto_2

    .line 894
    .end local v9    # "_tmpId":Ljava/lang/String;
    :cond_1
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 898
    .restart local v9    # "_tmpId":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 899
    .local v10, "_tmp":I
    sget-object v11, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v11

    .line 900
    .local v11, "_tmpState":Landroidx/work/WorkInfo$State;
    new-instance v12, Landroidx/work/impl/model/WorkSpec$IdAndState;

    invoke-direct {v12, v9, v11}, Landroidx/work/impl/model/WorkSpec$IdAndState;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V

    .line 901
    .local v12, "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    nop

    .end local v9    # "_tmpId":Ljava/lang/String;
    .end local v10    # "_tmp":I
    .end local v11    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v12    # "_item":Landroidx/work/impl/model/WorkSpec$IdAndState;
    goto :goto_1

    .line 903
    :cond_2
    nop

    .line 905
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 906
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 903
    return-object v8

    .line 905
    .end local v5    # "_cursorIndexOfId":I
    .end local v7    # "_cursorIndexOfState":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$IdAndState;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 906
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 907
    throw v2
.end method

.method public getWorkStatusPojoFlowDataForIds(Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1520
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1521
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1523
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1524
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1526
    .local v2, "_sql":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x0

    .line 1527
    .local v3, "_argCount":I
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1528
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1529
    .local v5, "_argIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1530
    .local v7, "_item":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1531
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1533
    :cond_0
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1535
    :goto_1
    nop

    .end local v7    # "_item":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 1536
    goto :goto_0

    .line 1537
    :cond_1
    iget-object v6, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v7, "WorkProgress"

    const-string/jumbo v8, "workspec"

    const-string v9, "WorkTag"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$20;

    invoke-direct {v8, p0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$20;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v9, 0x1

    invoke-static {v6, v9, v7, v8}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    return-object v6
.end method

.method public getWorkStatusPojoFlowForName(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 2530
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2531
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2532
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 2533
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 2534
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2536
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2538
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "workname"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$24;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$24;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v2, v5, v6}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoFlowForTag(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1860
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1862
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1863
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 1864
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 1865
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1867
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1869
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "worktag"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$21;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$21;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v4, v2, v5, v6}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoForId(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .locals 78
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 1010
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?"

    .line 1011
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1012
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1013
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 1014
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1018
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1019
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1021
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    .line 1023
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1024
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 1025
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 1026
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 1027
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 1028
    .local v11, "_cursorIndexOfGeneration":I
    const/4 v12, 0x5

    .line 1029
    .local v12, "_cursorIndexOfRequiredNetworkType":I
    const/4 v13, 0x6

    .line 1030
    .local v13, "_cursorIndexOfRequiresCharging":I
    const/4 v14, 0x7

    .line 1031
    .local v14, "_cursorIndexOfRequiresDeviceIdle":I
    const/16 v15, 0x8

    .line 1032
    .local v15, "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v16, 0x9

    .line 1033
    .local v16, "_cursorIndexOfRequiresStorageNotLow":I
    const/16 v17, 0xa

    .line 1034
    .local v17, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const/16 v18, 0xb

    .line 1035
    .local v18, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const/16 v19, 0xc

    .line 1036
    .local v19, "_cursorIndexOfContentUriTriggers":I
    const/16 v20, 0xd

    .line 1037
    .local v20, "_cursorIndexOfInitialDelay":I
    const/16 v21, 0xe

    .line 1038
    .local v21, "_cursorIndexOfIntervalDuration":I
    const/16 v22, 0xf

    .line 1039
    .local v22, "_cursorIndexOfFlexDuration":I
    const/16 v23, 0x10

    .line 1040
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const/16 v24, 0x11

    .line 1041
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const/16 v25, 0x12

    .line 1042
    .local v25, "_cursorIndexOfLastEnqueueTime":I
    const/16 v26, 0x13

    .line 1043
    .local v26, "_cursorIndexOfPeriodCount":I
    const/16 v27, 0x14

    .line 1044
    .local v27, "_cursorIndexOfNextScheduleTimeOverride":I
    const/16 v28, 0x15

    .line 1045
    .local v28, "_cursorIndexOfStopReason":I
    :try_start_1
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v30, v29

    .line 1046
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v31, v29

    .line 1047
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29

    const/4 v4, 0x0

    if-eqz v29, :cond_3

    .line 1048
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v33, v29

    .line 1049
    .local v33, "_tmpKey":Ljava/lang/String;
    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v33

    .end local v33    # "_tmpKey":Ljava/lang/String;
    .local v0, "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1050
    .local v33, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v33, :cond_1

    .line 1051
    :try_start_2
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v34

    .line 1052
    move-object/from16 v2, v33

    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v33, v2

    goto :goto_2

    .line 1161
    .end local v0    # "_tmpKey":Ljava/lang/String;
    .end local v2    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    goto/16 :goto_d

    .line 1054
    .restart local v0    # "_tmpKey":Ljava/lang/String;
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .restart local v30    # "_cursorIndexOfId":I
    .restart local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v0

    move-object/from16 v0, v31

    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 1056
    .local v31, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v31, :cond_2

    .line 1057
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v31, v34

    .line 1058
    move-object/from16 v34, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v3, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v34, "_sql":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1056
    .end local v34    # "_sql":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :cond_2
    move-object/from16 v34, v3

    .line 1060
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_sql":Ljava/lang/String;
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v31, v0

    move/from16 v0, v30

    move-object/from16 v3, v34

    move-object/from16 v30, v4

    const/4 v4, 0x1

    goto :goto_1

    .line 1061
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v34    # "_sql":Ljava/lang/String;
    .local v0, "_cursorIndexOfId":I
    .restart local v3    # "_sql":Ljava/lang/String;
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_3
    move-object/from16 v34, v3

    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v31

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    .restart local v34    # "_sql":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1062
    invoke-direct {v1, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 1063
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 1065
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1067
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1068
    const/4 v3, 0x0

    .local v3, "_tmpId":Ljava/lang/String;
    goto :goto_4

    .line 1070
    .end local v3    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1074
    .restart local v3    # "_tmpId":Ljava/lang/String;
    :goto_4
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1075
    .local v31, "_tmp":I
    sget-object v32, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v31 .. v31}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 1078
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1079
    const/4 v2, 0x0

    .local v2, "_tmp_1":[B
    goto :goto_5

    .line 1081
    .end local v2    # "_tmp_1":[B
    :cond_5
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1083
    .restart local v2    # "_tmp_1":[B
    :goto_5
    invoke-static {v2}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 1085
    .local v38, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v33, v2

    .end local v2    # "_tmp_1":[B
    .local v33, "_tmp_1":[B
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 1087
    .local v46, "_tmpRunAttemptCount":I
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 1089
    .local v53, "_tmpGeneration":I
    const/16 v2, 0xd

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1091
    .local v39, "_tmpInitialDelay":J
    const/16 v2, 0xe

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1093
    .local v41, "_tmpIntervalDuration":J
    const/16 v2, 0xf

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 1096
    .local v43, "_tmpFlexDuration":J
    const/16 v2, 0x10

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1097
    .local v2, "_tmp_2":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v47

    .line 1099
    .local v47, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    move/from16 v59, v2

    .end local v2    # "_tmp_2":I
    .local v59, "_tmp_2":I
    const/16 v2, 0x11

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1101
    .local v48, "_tmpBackoffDelayDuration":J
    const/16 v2, 0x12

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 1103
    .local v50, "_tmpLastEnqueueTime":J
    const/16 v2, 0x13

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 1105
    .local v52, "_tmpPeriodCount":I
    const/16 v2, 0x14

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 1107
    .local v54, "_tmpNextScheduleTimeOverride":J
    const/16 v2, 0x15

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1111
    .local v56, "_tmpStopReason":I
    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1112
    .local v2, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v61

    .line 1115
    .local v61, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v71, v2

    .end local v2    # "_tmp_3":I
    .local v71, "_tmp_3":I
    const/4 v2, 0x6

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1116
    .local v2, "_tmp_4":I
    if-eqz v2, :cond_6

    const/16 v62, 0x1

    goto :goto_6

    :cond_6
    const/16 v62, 0x0

    .line 1119
    .local v62, "_tmpRequiresCharging":Z
    :goto_6
    move/from16 v72, v2

    .end local v2    # "_tmp_4":I
    .local v72, "_tmp_4":I
    const/4 v2, 0x7

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1120
    .local v2, "_tmp_5":I
    if-eqz v2, :cond_7

    const/16 v63, 0x1

    goto :goto_7

    :cond_7
    const/16 v63, 0x0

    .line 1123
    .local v63, "_tmpRequiresDeviceIdle":Z
    :goto_7
    move/from16 v73, v2

    .end local v2    # "_tmp_5":I
    .local v73, "_tmp_5":I
    const/16 v2, 0x8

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1124
    .local v2, "_tmp_6":I
    if-eqz v2, :cond_8

    const/16 v64, 0x1

    goto :goto_8

    :cond_8
    const/16 v64, 0x0

    .line 1127
    .local v64, "_tmpRequiresBatteryNotLow":Z
    :goto_8
    move/from16 v74, v2

    .end local v2    # "_tmp_6":I
    .local v74, "_tmp_6":I
    const/16 v2, 0x9

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1128
    .local v2, "_tmp_7":I
    if-eqz v2, :cond_9

    const/16 v65, 0x1

    goto :goto_9

    :cond_9
    const/16 v65, 0x0

    .line 1130
    .local v65, "_tmpRequiresStorageNotLow":Z
    :goto_9
    move/from16 v32, v2

    .end local v2    # "_tmp_7":I
    .local v32, "_tmp_7":I
    const/16 v2, 0xa

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    .line 1132
    .local v66, "_tmpContentTriggerUpdateDelayMillis":J
    const/16 v2, 0xb

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    .line 1135
    .local v68, "_tmpContentTriggerMaxDelayMillis":J
    const/16 v2, 0xc

    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 1136
    const/4 v2, 0x0

    .local v2, "_tmp_8":[B
    goto :goto_a

    .line 1138
    .end local v2    # "_tmp_8":[B
    :cond_a
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1140
    .restart local v2    # "_tmp_8":[B
    :goto_a
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v70

    .line 1141
    .local v70, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v60, v45

    invoke-direct/range {v60 .. v70}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1142
    .local v45, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v35, 0x0

    .line 1143
    .local v35, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v60, v2

    const/4 v2, 0x0

    .end local v2    # "_tmp_8":[B
    .local v60, "_tmp_8":[B
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v2, v36

    .line 1144
    .local v2, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    move-object/from16 v35, v36

    .line 1145
    if-nez v35, :cond_b

    .line 1146
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v36

    move-object/from16 v75, v35

    goto :goto_b

    .line 1145
    :cond_b
    move-object/from16 v75, v35

    .line 1148
    .end local v35    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v75, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_b
    const/16 v35, 0x0

    .line 1149
    .local v35, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v76, v2

    const/4 v2, 0x0

    .end local v2    # "_tmpKey_2":Ljava/lang/String;
    .local v76, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1150
    .local v2, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/ArrayList;

    .line 1151
    .end local v35    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v29, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v29, :cond_c

    .line 1152
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v35

    .line 1154
    :cond_c
    new-instance v77, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v35, v77

    move-object/from16 v36, v3

    move-object/from16 v57, v75

    move-object/from16 v58, v29

    invoke-direct/range {v35 .. v58}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v77

    .line 1155
    .end local v3    # "_tmpId":Ljava/lang/String;
    .end local v29    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v31    # "_tmp":I
    .end local v32    # "_tmp_7":I
    .end local v33    # "_tmp_1":[B
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpOutput":Landroidx/work/Data;
    .end local v39    # "_tmpInitialDelay":J
    .end local v41    # "_tmpIntervalDuration":J
    .end local v43    # "_tmpFlexDuration":J
    .end local v45    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v46    # "_tmpRunAttemptCount":I
    .end local v47    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v48    # "_tmpBackoffDelayDuration":J
    .end local v50    # "_tmpLastEnqueueTime":J
    .end local v52    # "_tmpPeriodCount":I
    .end local v53    # "_tmpGeneration":I
    .end local v54    # "_tmpNextScheduleTimeOverride":J
    .end local v56    # "_tmpStopReason":I
    .end local v59    # "_tmp_2":I
    .end local v60    # "_tmp_8":[B
    .end local v61    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v62    # "_tmpRequiresCharging":Z
    .end local v63    # "_tmpRequiresDeviceIdle":Z
    .end local v64    # "_tmpRequiresBatteryNotLow":Z
    .end local v65    # "_tmpRequiresStorageNotLow":Z
    .end local v66    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v68    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v70    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v71    # "_tmp_3":I
    .end local v72    # "_tmp_4":I
    .end local v73    # "_tmp_5":I
    .end local v74    # "_tmp_6":I
    .end local v75    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v76    # "_tmpKey_2":Ljava/lang/String;
    .local v2, "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    goto :goto_c

    .line 1156
    .end local v2    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :cond_d
    const/4 v2, 0x0

    .line 1158
    .restart local v2    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    :goto_c
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1159
    nop

    .line 1161
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1162
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1165
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1159
    return-object v2

    .line 1161
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v2    # "_result":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    :catchall_1
    move-exception v0

    goto :goto_d

    .end local v34    # "_sql":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v34, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_d
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1162
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1163
    nop

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v6    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .end local p1    # "id":Ljava/lang/String;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1165
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    .restart local p1    # "id":Ljava/lang/String;
    :catchall_3
    move-exception v0

    goto :goto_e

    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v3    # "_sql":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v34, v3

    .end local v3    # "_sql":Ljava/lang/String;
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_e
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1166
    throw v0
.end method

.method public getWorkStatusPojoForIds(Ljava/util/List;)Ljava/util/List;
    .locals 84
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1171
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1174
    .local v3, "_inputSize":I
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1175
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, "_sql":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x0

    .line 1178
    .local v5, "_argCount":I
    invoke-static {v4, v5}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v6

    .line 1179
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 1180
    .local v0, "_argIndex":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    .end local v0    # "_argIndex":I
    .local v8, "_argIndex":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1181
    .local v0, "_item":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1182
    invoke-virtual {v6, v8}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1184
    :cond_0
    invoke-virtual {v6, v8, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1186
    :goto_1
    nop

    .end local v0    # "_item":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 1187
    goto :goto_0

    .line 1188
    :cond_1
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1189
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1191
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v6, v9, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object v7, v0

    .line 1193
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1194
    .local v0, "_cursorIndexOfId":I
    const/4 v10, 0x1

    .line 1195
    .local v10, "_cursorIndexOfState":I
    const/4 v11, 0x2

    .line 1196
    .local v11, "_cursorIndexOfOutput":I
    const/4 v12, 0x3

    .line 1197
    .local v12, "_cursorIndexOfRunAttemptCount":I
    const/4 v13, 0x4

    .line 1198
    .local v13, "_cursorIndexOfGeneration":I
    const/4 v14, 0x5

    .line 1199
    .local v14, "_cursorIndexOfRequiredNetworkType":I
    const/4 v15, 0x6

    .line 1200
    .local v15, "_cursorIndexOfRequiresCharging":I
    const/16 v16, 0x7

    .line 1201
    .local v16, "_cursorIndexOfRequiresDeviceIdle":I
    const/16 v17, 0x8

    .line 1202
    .local v17, "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v18, 0x9

    .line 1203
    .local v18, "_cursorIndexOfRequiresStorageNotLow":I
    const/16 v19, 0xa

    .line 1204
    .local v19, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const/16 v20, 0xb

    .line 1205
    .local v20, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const/16 v21, 0xc

    .line 1206
    .local v21, "_cursorIndexOfContentUriTriggers":I
    const/16 v22, 0xd

    .line 1207
    .local v22, "_cursorIndexOfInitialDelay":I
    const/16 v23, 0xe

    .line 1208
    .local v23, "_cursorIndexOfIntervalDuration":I
    const/16 v24, 0xf

    .line 1209
    .local v24, "_cursorIndexOfFlexDuration":I
    const/16 v25, 0x10

    .line 1210
    .local v25, "_cursorIndexOfBackoffPolicy":I
    const/16 v26, 0x11

    .line 1211
    .local v26, "_cursorIndexOfBackoffDelayDuration":I
    const/16 v27, 0x12

    .line 1212
    .local v27, "_cursorIndexOfLastEnqueueTime":I
    const/16 v28, 0x13

    .line 1213
    .local v28, "_cursorIndexOfPeriodCount":I
    const/16 v29, 0x14

    .line 1214
    .local v29, "_cursorIndexOfNextScheduleTimeOverride":I
    const/16 v30, 0x15

    .line 1215
    .local v30, "_cursorIndexOfStopReason":I
    :try_start_1
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v32, v31

    .line 1216
    .local v32, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v33, v31

    .line 1217
    .local v33, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    const/4 v9, 0x0

    if-eqz v31, :cond_4

    .line 1218
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v35, v31

    .line 1219
    .local v35, "_tmpKey":Ljava/lang/String;
    move-object/from16 v9, v32

    move/from16 v32, v0

    move-object/from16 v0, v35

    .end local v35    # "_tmpKey":Ljava/lang/String;
    .local v0, "_tmpKey":Ljava/lang/String;
    .local v9, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v32, "_cursorIndexOfId":I
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1220
    .local v35, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v35, :cond_2

    .line 1221
    :try_start_3
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v35, v36

    .line 1222
    move-object/from16 v36, v2

    move-object/from16 v2, v35

    .end local v35    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v36, "_stringBuilder":Ljava/lang/StringBuilder;
    :try_start_4
    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v35, v2

    goto :goto_3

    .line 1331
    .end local v0    # "_tmpKey":Ljava/lang/String;
    .end local v2    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_cursorIndexOfRequiredNetworkType":I
    .end local v15    # "_cursorIndexOfRequiresCharging":I
    .end local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v21    # "_cursorIndexOfContentUriTriggers":I
    .end local v22    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfIntervalDuration":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .end local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v27    # "_cursorIndexOfLastEnqueueTime":I
    .end local v28    # "_cursorIndexOfPeriodCount":I
    .end local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v30    # "_cursorIndexOfStopReason":I
    .end local v32    # "_cursorIndexOfId":I
    .end local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_0
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v33, v4

    goto/16 :goto_f

    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v33, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_f

    .line 1220
    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v0    # "_tmpKey":Ljava/lang/String;
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v10    # "_cursorIndexOfState":I
    .restart local v11    # "_cursorIndexOfOutput":I
    .restart local v12    # "_cursorIndexOfRunAttemptCount":I
    .restart local v13    # "_cursorIndexOfGeneration":I
    .restart local v14    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v15    # "_cursorIndexOfRequiresCharging":I
    .restart local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v21    # "_cursorIndexOfContentUriTriggers":I
    .restart local v22    # "_cursorIndexOfInitialDelay":I
    .restart local v23    # "_cursorIndexOfIntervalDuration":I
    .restart local v24    # "_cursorIndexOfFlexDuration":I
    .restart local v25    # "_cursorIndexOfBackoffPolicy":I
    .restart local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v27    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v28    # "_cursorIndexOfPeriodCount":I
    .restart local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v30    # "_cursorIndexOfStopReason":I
    .restart local v32    # "_cursorIndexOfId":I
    .restart local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v35    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v36, v2

    .line 1224
    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    :goto_3
    const/4 v2, 0x0

    :try_start_5
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1225
    .local v2, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v31, v0

    move-object/from16 v0, v33

    .end local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v31, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 1226
    .local v33, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v33, :cond_3

    .line 1227
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v33, v37

    .line 1228
    move/from16 v37, v3

    move-object/from16 v3, v33

    .end local v33    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v3, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v37, "_inputSize":I
    :try_start_6
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 1331
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_cursorIndexOfRequiredNetworkType":I
    .end local v15    # "_cursorIndexOfRequiresCharging":I
    .end local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v21    # "_cursorIndexOfContentUriTriggers":I
    .end local v22    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfIntervalDuration":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .end local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v27    # "_cursorIndexOfLastEnqueueTime":I
    .end local v28    # "_cursorIndexOfPeriodCount":I
    .end local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v30    # "_cursorIndexOfStopReason":I
    .end local v31    # "_tmpKey":Ljava/lang/String;
    .end local v32    # "_cursorIndexOfId":I
    .end local v35    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v33, v4

    goto/16 :goto_f

    .line 1226
    .end local v37    # "_inputSize":I
    .restart local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v2    # "_tmpKey_1":Ljava/lang/String;
    .local v3, "_inputSize":I
    .restart local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v10    # "_cursorIndexOfState":I
    .restart local v11    # "_cursorIndexOfOutput":I
    .restart local v12    # "_cursorIndexOfRunAttemptCount":I
    .restart local v13    # "_cursorIndexOfGeneration":I
    .restart local v14    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v15    # "_cursorIndexOfRequiresCharging":I
    .restart local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v21    # "_cursorIndexOfContentUriTriggers":I
    .restart local v22    # "_cursorIndexOfInitialDelay":I
    .restart local v23    # "_cursorIndexOfIntervalDuration":I
    .restart local v24    # "_cursorIndexOfFlexDuration":I
    .restart local v25    # "_cursorIndexOfBackoffPolicy":I
    .restart local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v27    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v28    # "_cursorIndexOfPeriodCount":I
    .restart local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v30    # "_cursorIndexOfStopReason":I
    .restart local v31    # "_tmpKey":Ljava/lang/String;
    .restart local v32    # "_cursorIndexOfId":I
    .restart local v33    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .restart local v35    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move/from16 v37, v3

    .line 1230
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_inputSize":I
    .end local v31    # "_tmpKey":Ljava/lang/String;
    .end local v33    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v35    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "_inputSize":I
    :goto_4
    move-object/from16 v33, v0

    move/from16 v0, v32

    move-object/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v32, v9

    const/4 v9, 0x1

    goto :goto_2

    .line 1331
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_cursorIndexOfRequiredNetworkType":I
    .end local v15    # "_cursorIndexOfRequiresCharging":I
    .end local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v21    # "_cursorIndexOfContentUriTriggers":I
    .end local v22    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfIntervalDuration":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .end local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v27    # "_cursorIndexOfLastEnqueueTime":I
    .end local v28    # "_cursorIndexOfPeriodCount":I
    .end local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v30    # "_cursorIndexOfStopReason":I
    .end local v32    # "_cursorIndexOfId":I
    .end local v37    # "_inputSize":I
    .restart local v3    # "_inputSize":I
    :catchall_3
    move-exception v0

    move/from16 v37, v3

    move-object/from16 v33, v4

    .end local v3    # "_inputSize":I
    .restart local v37    # "_inputSize":I
    goto/16 :goto_f

    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v37    # "_inputSize":I
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    :catchall_4
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v33, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v37    # "_inputSize":I
    goto/16 :goto_f

    .line 1231
    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v37    # "_inputSize":I
    .local v0, "_cursorIndexOfId":I
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v10    # "_cursorIndexOfState":I
    .restart local v11    # "_cursorIndexOfOutput":I
    .restart local v12    # "_cursorIndexOfRunAttemptCount":I
    .restart local v13    # "_cursorIndexOfGeneration":I
    .restart local v14    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v15    # "_cursorIndexOfRequiresCharging":I
    .restart local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v21    # "_cursorIndexOfContentUriTriggers":I
    .restart local v22    # "_cursorIndexOfInitialDelay":I
    .restart local v23    # "_cursorIndexOfIntervalDuration":I
    .restart local v24    # "_cursorIndexOfFlexDuration":I
    .restart local v25    # "_cursorIndexOfBackoffPolicy":I
    .restart local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v27    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v28    # "_cursorIndexOfPeriodCount":I
    .restart local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v30    # "_cursorIndexOfStopReason":I
    .local v32, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v33, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_4
    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v9, v32

    move/from16 v32, v0

    move-object/from16 v0, v33

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v33    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v32, "_cursorIndexOfId":I
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v37    # "_inputSize":I
    const/4 v2, -0x1

    :try_start_7
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1232
    invoke-direct {v1, v9}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 1233
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 1234
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1238
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 1239
    const/16 v31, 0x0

    move-object/from16 v3, v31

    .local v31, "_tmpId":Ljava/lang/String;
    goto :goto_6

    .line 1241
    .end local v31    # "_tmpId":Ljava/lang/String;
    :cond_5
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v3, v33

    .line 1245
    .local v3, "_tmpId":Ljava/lang/String;
    :goto_6
    move-object/from16 v33, v4

    const/4 v4, 0x1

    .end local v4    # "_sql":Ljava/lang/String;
    .local v33, "_sql":Ljava/lang/String;
    :try_start_8
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1246
    .local v34, "_tmp":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v34 .. v34}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v40

    .line 1249
    .local v40, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 1250
    const/4 v4, 0x0

    .local v4, "_tmp_1":[B
    goto :goto_7

    .line 1252
    .end local v4    # "_tmp_1":[B
    :cond_6
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1254
    .restart local v4    # "_tmp_1":[B
    :goto_7
    invoke-static {v4}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v41

    .line 1256
    .local v41, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v62, v4

    .end local v4    # "_tmp_1":[B
    .local v62, "_tmp_1":[B
    const/4 v4, 0x3

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 1258
    .local v49, "_tmpRunAttemptCount":I
    const/4 v4, 0x4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1260
    .local v56, "_tmpGeneration":I
    const/16 v4, 0xd

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1262
    .local v42, "_tmpInitialDelay":J
    const/16 v4, 0xe

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 1264
    .local v44, "_tmpIntervalDuration":J
    const/16 v4, 0xf

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1267
    .local v46, "_tmpFlexDuration":J
    const/16 v4, 0x10

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1268
    .local v4, "_tmp_2":I
    sget-object v38, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v50

    .line 1270
    .local v50, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    move/from16 v63, v4

    .end local v4    # "_tmp_2":I
    .local v63, "_tmp_2":I
    const/16 v4, 0x11

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 1272
    .local v51, "_tmpBackoffDelayDuration":J
    const/16 v4, 0x12

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    .line 1274
    .local v53, "_tmpLastEnqueueTime":J
    const/16 v4, 0x13

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 1276
    .local v55, "_tmpPeriodCount":I
    const/16 v4, 0x14

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 1278
    .local v57, "_tmpNextScheduleTimeOverride":J
    const/16 v4, 0x15

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v59

    .line 1282
    .local v59, "_tmpStopReason":I
    const/4 v4, 0x5

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1283
    .local v4, "_tmp_3":I
    sget-object v38, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v65

    .line 1286
    .local v65, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v75, v4

    .end local v4    # "_tmp_3":I
    .local v75, "_tmp_3":I
    const/4 v4, 0x6

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1287
    .local v4, "_tmp_4":I
    if-eqz v4, :cond_7

    const/16 v66, 0x1

    goto :goto_8

    :cond_7
    const/16 v66, 0x0

    .line 1290
    .local v66, "_tmpRequiresCharging":Z
    :goto_8
    move/from16 v76, v4

    .end local v4    # "_tmp_4":I
    .local v76, "_tmp_4":I
    const/4 v4, 0x7

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1291
    .local v4, "_tmp_5":I
    if-eqz v4, :cond_8

    const/16 v67, 0x1

    goto :goto_9

    :cond_8
    const/16 v67, 0x0

    .line 1294
    .local v67, "_tmpRequiresDeviceIdle":Z
    :goto_9
    move/from16 v77, v4

    .end local v4    # "_tmp_5":I
    .local v77, "_tmp_5":I
    const/16 v4, 0x8

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1295
    .local v4, "_tmp_6":I
    if-eqz v4, :cond_9

    const/16 v68, 0x1

    goto :goto_a

    :cond_9
    const/16 v68, 0x0

    .line 1298
    .local v68, "_tmpRequiresBatteryNotLow":Z
    :goto_a
    move/from16 v78, v4

    .end local v4    # "_tmp_6":I
    .local v78, "_tmp_6":I
    const/16 v4, 0x9

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1299
    .local v4, "_tmp_7":I
    if-eqz v4, :cond_a

    const/16 v69, 0x1

    goto :goto_b

    :cond_a
    const/16 v69, 0x0

    .line 1301
    .local v69, "_tmpRequiresStorageNotLow":Z
    :goto_b
    move/from16 v79, v4

    .end local v4    # "_tmp_7":I
    .local v79, "_tmp_7":I
    const/16 v4, 0xa

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v70

    .line 1303
    .local v70, "_tmpContentTriggerUpdateDelayMillis":J
    const/16 v4, 0xb

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v72

    .line 1306
    .local v72, "_tmpContentTriggerMaxDelayMillis":J
    const/16 v4, 0xc

    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 1307
    const/4 v4, 0x0

    .local v4, "_tmp_8":[B
    goto :goto_c

    .line 1309
    .end local v4    # "_tmp_8":[B
    :cond_b
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1311
    .restart local v4    # "_tmp_8":[B
    :goto_c
    sget-object v38, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v4}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v74

    .line 1312
    .local v74, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v48, Landroidx/work/Constraints;

    move-object/from16 v64, v48

    invoke-direct/range {v64 .. v74}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1313
    .local v48, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v38, 0x0

    .line 1314
    .local v38, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v64, v4

    const/4 v4, 0x0

    .end local v4    # "_tmp_8":[B
    .local v64, "_tmp_8":[B
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v4, v39

    .line 1315
    .local v4, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/ArrayList;

    move-object/from16 v38, v39

    .line 1316
    if-nez v38, :cond_c

    .line 1317
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v39

    move-object/from16 v80, v38

    goto :goto_d

    .line 1316
    :cond_c
    move-object/from16 v80, v38

    .line 1319
    .end local v38    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v80, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_d
    const/16 v38, 0x0

    .line 1320
    .local v38, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v81, v4

    const/4 v4, 0x0

    .end local v4    # "_tmpKey_2":Ljava/lang/String;
    .local v81, "_tmpKey_2":Ljava/lang/String;
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v82, v31

    .line 1321
    .local v82, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v4, v82

    .end local v82    # "_tmpKey_3":Ljava/lang/String;
    .local v4, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/ArrayList;

    move-object/from16 v38, v39

    .line 1322
    if-nez v38, :cond_d

    .line 1323
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v38, v39

    move-object/from16 v82, v38

    goto :goto_e

    .line 1322
    :cond_d
    move-object/from16 v82, v38

    .line 1325
    .end local v38    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v82, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_e
    new-instance v83, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v38, v83

    move-object/from16 v39, v3

    move-object/from16 v60, v80

    move-object/from16 v61, v82

    invoke-direct/range {v38 .. v61}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v38, v83

    .line 1326
    .local v38, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v39, v0

    move-object/from16 v0, v38

    .end local v38    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v39, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    move-object/from16 v4, v33

    move-object/from16 v0, v39

    .end local v0    # "_item_1":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v3    # "_tmpId":Ljava/lang/String;
    .end local v4    # "_tmpKey_3":Ljava/lang/String;
    .end local v34    # "_tmp":I
    .end local v40    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v41    # "_tmpOutput":Landroidx/work/Data;
    .end local v42    # "_tmpInitialDelay":J
    .end local v44    # "_tmpIntervalDuration":J
    .end local v46    # "_tmpFlexDuration":J
    .end local v48    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v49    # "_tmpRunAttemptCount":I
    .end local v50    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v51    # "_tmpBackoffDelayDuration":J
    .end local v53    # "_tmpLastEnqueueTime":J
    .end local v55    # "_tmpPeriodCount":I
    .end local v56    # "_tmpGeneration":I
    .end local v57    # "_tmpNextScheduleTimeOverride":J
    .end local v59    # "_tmpStopReason":I
    .end local v62    # "_tmp_1":[B
    .end local v63    # "_tmp_2":I
    .end local v64    # "_tmp_8":[B
    .end local v65    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v66    # "_tmpRequiresCharging":Z
    .end local v67    # "_tmpRequiresDeviceIdle":Z
    .end local v68    # "_tmpRequiresBatteryNotLow":Z
    .end local v69    # "_tmpRequiresStorageNotLow":Z
    .end local v70    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v72    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v74    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v75    # "_tmp_3":I
    .end local v76    # "_tmp_4":I
    .end local v77    # "_tmp_5":I
    .end local v78    # "_tmp_6":I
    .end local v79    # "_tmp_7":I
    .end local v80    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v81    # "_tmpKey_2":Ljava/lang/String;
    .end local v82    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_5

    .line 1328
    .end local v33    # "_sql":Ljava/lang/String;
    .end local v39    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_sql":Ljava/lang/String;
    :cond_e
    move-object/from16 v39, v0

    move-object/from16 v33, v4

    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v33    # "_sql":Ljava/lang/String;
    .restart local v39    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1329
    nop

    .line 1331
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1332
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1335
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1329
    return-object v2

    .line 1331
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v9    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "_cursorIndexOfState":I
    .end local v11    # "_cursorIndexOfOutput":I
    .end local v12    # "_cursorIndexOfRunAttemptCount":I
    .end local v13    # "_cursorIndexOfGeneration":I
    .end local v14    # "_cursorIndexOfRequiredNetworkType":I
    .end local v15    # "_cursorIndexOfRequiresCharging":I
    .end local v16    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v17    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v18    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v19    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v20    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v21    # "_cursorIndexOfContentUriTriggers":I
    .end local v22    # "_cursorIndexOfInitialDelay":I
    .end local v23    # "_cursorIndexOfIntervalDuration":I
    .end local v24    # "_cursorIndexOfFlexDuration":I
    .end local v25    # "_cursorIndexOfBackoffPolicy":I
    .end local v26    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v27    # "_cursorIndexOfLastEnqueueTime":I
    .end local v28    # "_cursorIndexOfPeriodCount":I
    .end local v29    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v30    # "_cursorIndexOfStopReason":I
    .end local v32    # "_cursorIndexOfId":I
    .end local v39    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_5
    move-exception v0

    goto :goto_f

    .end local v33    # "_sql":Ljava/lang/String;
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v33, v4

    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v33    # "_sql":Ljava/lang/String;
    goto :goto_f

    .end local v33    # "_sql":Ljava/lang/String;
    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v37    # "_inputSize":I
    .local v2, "_stringBuilder":Ljava/lang/StringBuilder;
    .local v3, "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v33, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v33    # "_sql":Ljava/lang/String;
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v37    # "_inputSize":I
    :goto_f
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1332
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1333
    nop

    .end local v5    # "_argCount":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_argIndex":I
    .end local v33    # "_sql":Ljava/lang/String;
    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v37    # "_inputSize":I
    .end local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1335
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v5    # "_argCount":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_argIndex":I
    .restart local v33    # "_sql":Ljava/lang/String;
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v37    # "_inputSize":I
    .restart local p1    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    goto :goto_10

    .end local v33    # "_sql":Ljava/lang/String;
    .end local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v37    # "_inputSize":I
    .restart local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "_inputSize":I
    .restart local v4    # "_sql":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v33, v4

    .end local v2    # "_stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "_inputSize":I
    .end local v4    # "_sql":Ljava/lang/String;
    .restart local v33    # "_sql":Ljava/lang/String;
    .restart local v36    # "_stringBuilder":Ljava/lang/StringBuilder;
    .restart local v37    # "_inputSize":I
    :goto_10
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1336
    throw v0
.end method

.method public getWorkStatusPojoForName(Ljava/lang/String;)Ljava/util/List;
    .locals 81
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 2200
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2201
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 2202
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 2203
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 2204
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2206
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2208
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2209
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 2211
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v7, v0

    .line 2213
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2214
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 2215
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 2216
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 2217
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 2218
    .local v11, "_cursorIndexOfGeneration":I
    const/4 v12, 0x5

    .line 2219
    .local v12, "_cursorIndexOfRequiredNetworkType":I
    const/4 v13, 0x6

    .line 2220
    .local v13, "_cursorIndexOfRequiresCharging":I
    const/4 v14, 0x7

    .line 2221
    .local v14, "_cursorIndexOfRequiresDeviceIdle":I
    const/16 v15, 0x8

    .line 2222
    .local v15, "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v16, 0x9

    .line 2223
    .local v16, "_cursorIndexOfRequiresStorageNotLow":I
    const/16 v17, 0xa

    .line 2224
    .local v17, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const/16 v18, 0xb

    .line 2225
    .local v18, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const/16 v19, 0xc

    .line 2226
    .local v19, "_cursorIndexOfContentUriTriggers":I
    const/16 v20, 0xd

    .line 2227
    .local v20, "_cursorIndexOfInitialDelay":I
    const/16 v21, 0xe

    .line 2228
    .local v21, "_cursorIndexOfIntervalDuration":I
    const/16 v22, 0xf

    .line 2229
    .local v22, "_cursorIndexOfFlexDuration":I
    const/16 v23, 0x10

    .line 2230
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const/16 v24, 0x11

    .line 2231
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const/16 v25, 0x12

    .line 2232
    .local v25, "_cursorIndexOfLastEnqueueTime":I
    const/16 v26, 0x13

    .line 2233
    .local v26, "_cursorIndexOfPeriodCount":I
    const/16 v27, 0x14

    .line 2234
    .local v27, "_cursorIndexOfNextScheduleTimeOverride":I
    const/16 v28, 0x15

    .line 2235
    .local v28, "_cursorIndexOfStopReason":I
    :try_start_1
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v30, v29

    .line 2236
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v31, v29

    .line 2237
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v4, 0x0

    if-eqz v29, :cond_3

    .line 2238
    :try_start_2
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v33, v29

    .line 2239
    .local v33, "_tmpKey":Ljava/lang/String;
    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v33

    .end local v33    # "_tmpKey":Ljava/lang/String;
    .local v0, "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2240
    .local v33, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v33, :cond_1

    .line 2241
    :try_start_3
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v34

    .line 2242
    move-object/from16 v2, v33

    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v33, v2

    goto :goto_2

    .line 2351
    .end local v0    # "_tmpKey":Ljava/lang/String;
    .end local v2    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    goto/16 :goto_e

    .line 2244
    .restart local v0    # "_tmpKey":Ljava/lang/String;
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .restart local v30    # "_cursorIndexOfId":I
    .restart local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2245
    .local v2, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v0

    move-object/from16 v0, v31

    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 2246
    .local v31, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v31, :cond_2

    .line 2247
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v31, v34

    .line 2248
    move-object/from16 v34, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v3, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v34, "_sql":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 2351
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .end local v30    # "_cursorIndexOfId":I
    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move/from16 v31, v6

    goto/16 :goto_e

    .line 2246
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v2    # "_tmpKey_1":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .restart local v29    # "_tmpKey":Ljava/lang/String;
    .restart local v30    # "_cursorIndexOfId":I
    .restart local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .restart local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v34, v3

    .line 2250
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_sql":Ljava/lang/String;
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v31, v0

    move/from16 v0, v30

    move-object/from16 v3, v34

    move-object/from16 v30, v4

    const/4 v4, 0x1

    goto :goto_1

    .line 2351
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v3    # "_sql":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .restart local v34    # "_sql":Ljava/lang/String;
    goto/16 :goto_e

    .line 2251
    .end local v34    # "_sql":Ljava/lang/String;
    .local v0, "_cursorIndexOfId":I
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_3
    move-object/from16 v34, v3

    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v31

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    .restart local v34    # "_sql":Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_6
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2252
    invoke-direct {v1, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 2253
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 2254
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2255
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2258
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 2259
    const/16 v29, 0x0

    move-object/from16 v3, v29

    .local v29, "_tmpId":Ljava/lang/String;
    goto :goto_5

    .line 2261
    .end local v29    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v3, v31

    .line 2265
    .local v3, "_tmpId":Ljava/lang/String;
    :goto_5
    move/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "_argIndex":I
    .local v31, "_argIndex":I
    :try_start_7
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 2266
    .local v32, "_tmp":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v32 .. v32}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 2269
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v6, 0x2

    invoke-interface {v7, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 2270
    const/4 v6, 0x0

    .local v6, "_tmp_1":[B
    goto :goto_6

    .line 2272
    .end local v6    # "_tmp_1":[B
    :cond_5
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2274
    .restart local v6    # "_tmp_1":[B
    :goto_6
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 2276
    .local v38, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v59, v6

    .end local v6    # "_tmp_1":[B
    .local v59, "_tmp_1":[B
    const/4 v6, 0x3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 2278
    .local v46, "_tmpRunAttemptCount":I
    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 2280
    .local v53, "_tmpGeneration":I
    const/16 v6, 0xd

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 2282
    .local v39, "_tmpInitialDelay":J
    const/16 v6, 0xe

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 2284
    .local v41, "_tmpIntervalDuration":J
    const/16 v6, 0xf

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 2287
    .local v43, "_tmpFlexDuration":J
    const/16 v6, 0x10

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2288
    .local v6, "_tmp_2":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v47

    .line 2290
    .local v47, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    move/from16 v60, v6

    .end local v6    # "_tmp_2":I
    .local v60, "_tmp_2":I
    const/16 v6, 0x11

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 2292
    .local v48, "_tmpBackoffDelayDuration":J
    const/16 v6, 0x12

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 2294
    .local v50, "_tmpLastEnqueueTime":J
    const/16 v6, 0x13

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 2296
    .local v52, "_tmpPeriodCount":I
    const/16 v6, 0x14

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 2298
    .local v54, "_tmpNextScheduleTimeOverride":J
    const/16 v6, 0x15

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 2302
    .local v56, "_tmpStopReason":I
    const/4 v6, 0x5

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2303
    .local v6, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v62

    .line 2306
    .local v62, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v72, v6

    .end local v6    # "_tmp_3":I
    .local v72, "_tmp_3":I
    const/4 v6, 0x6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2307
    .local v6, "_tmp_4":I
    if-eqz v6, :cond_6

    const/16 v63, 0x1

    goto :goto_7

    :cond_6
    const/16 v63, 0x0

    .line 2310
    .local v63, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v73, v6

    .end local v6    # "_tmp_4":I
    .local v73, "_tmp_4":I
    const/4 v6, 0x7

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2311
    .local v6, "_tmp_5":I
    if-eqz v6, :cond_7

    const/16 v64, 0x1

    goto :goto_8

    :cond_7
    const/16 v64, 0x0

    .line 2314
    .local v64, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v74, v6

    .end local v6    # "_tmp_5":I
    .local v74, "_tmp_5":I
    const/16 v6, 0x8

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2315
    .local v6, "_tmp_6":I
    if-eqz v6, :cond_8

    const/16 v65, 0x1

    goto :goto_9

    :cond_8
    const/16 v65, 0x0

    .line 2318
    .local v65, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v75, v6

    .end local v6    # "_tmp_6":I
    .local v75, "_tmp_6":I
    const/16 v6, 0x9

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2319
    .local v6, "_tmp_7":I
    if-eqz v6, :cond_9

    const/16 v66, 0x1

    goto :goto_a

    :cond_9
    const/16 v66, 0x0

    .line 2321
    .local v66, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v76, v6

    .end local v6    # "_tmp_7":I
    .local v76, "_tmp_7":I
    const/16 v6, 0xa

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    .line 2323
    .local v67, "_tmpContentTriggerUpdateDelayMillis":J
    const/16 v6, 0xb

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    .line 2326
    .local v69, "_tmpContentTriggerMaxDelayMillis":J
    const/16 v6, 0xc

    invoke-interface {v7, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 2327
    const/4 v6, 0x0

    .local v6, "_tmp_8":[B
    goto :goto_b

    .line 2329
    .end local v6    # "_tmp_8":[B
    :cond_a
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2331
    .restart local v6    # "_tmp_8":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v71

    .line 2332
    .local v71, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v61, v45

    invoke-direct/range {v61 .. v71}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 2333
    .local v45, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v35, 0x0

    .line 2334
    .local v35, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v61, v6

    const/4 v6, 0x0

    .end local v6    # "_tmp_8":[B
    .local v61, "_tmp_8":[B
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v6, v36

    .line 2335
    .local v6, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    move-object/from16 v35, v36

    .line 2336
    if-nez v35, :cond_b

    .line 2337
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v36

    move-object/from16 v77, v35

    goto :goto_c

    .line 2336
    :cond_b
    move-object/from16 v77, v35

    .line 2339
    .end local v35    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v77, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_c
    const/16 v35, 0x0

    .line 2340
    .local v35, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v78, v4

    const/4 v4, 0x0

    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v78, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v79, v29

    .line 2341
    .local v79, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v4, v79

    .end local v79    # "_tmpKey_3":Ljava/lang/String;
    .local v4, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    move-object/from16 v35, v36

    .line 2342
    if-nez v35, :cond_c

    .line 2343
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v36

    move-object/from16 v79, v35

    goto :goto_d

    .line 2342
    :cond_c
    move-object/from16 v79, v35

    .line 2345
    .end local v35    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v79, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_d
    new-instance v80, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v35, v80

    move-object/from16 v36, v3

    move-object/from16 v57, v77

    move-object/from16 v58, v79

    invoke-direct/range {v35 .. v58}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v35, v80

    .line 2346
    .local v35, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v36, v0

    move-object/from16 v0, v35

    .end local v35    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v36, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2347
    move/from16 v6, v31

    move-object/from16 v0, v36

    move-object/from16 v4, v78

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v3    # "_tmpId":Ljava/lang/String;
    .end local v4    # "_tmpKey_3":Ljava/lang/String;
    .end local v6    # "_tmpKey_2":Ljava/lang/String;
    .end local v32    # "_tmp":I
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpOutput":Landroidx/work/Data;
    .end local v39    # "_tmpInitialDelay":J
    .end local v41    # "_tmpIntervalDuration":J
    .end local v43    # "_tmpFlexDuration":J
    .end local v45    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v46    # "_tmpRunAttemptCount":I
    .end local v47    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v48    # "_tmpBackoffDelayDuration":J
    .end local v50    # "_tmpLastEnqueueTime":J
    .end local v52    # "_tmpPeriodCount":I
    .end local v53    # "_tmpGeneration":I
    .end local v54    # "_tmpNextScheduleTimeOverride":J
    .end local v56    # "_tmpStopReason":I
    .end local v59    # "_tmp_1":[B
    .end local v60    # "_tmp_2":I
    .end local v61    # "_tmp_8":[B
    .end local v62    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v63    # "_tmpRequiresCharging":Z
    .end local v64    # "_tmpRequiresDeviceIdle":Z
    .end local v65    # "_tmpRequiresBatteryNotLow":Z
    .end local v66    # "_tmpRequiresStorageNotLow":Z
    .end local v67    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v69    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v71    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v72    # "_tmp_3":I
    .end local v73    # "_tmp_4":I
    .end local v74    # "_tmp_5":I
    .end local v75    # "_tmp_6":I
    .end local v76    # "_tmp_7":I
    .end local v77    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v79    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_4

    .line 2348
    .end local v31    # "_argIndex":I
    .end local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v6, "_argIndex":I
    :cond_d
    move-object/from16 v36, v0

    move-object/from16 v78, v4

    move/from16 v31, v6

    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2349
    nop

    .line 2351
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2352
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 2355
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2349
    return-object v2

    .line 2351
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_3
    move-exception v0

    goto :goto_e

    .end local v31    # "_argIndex":I
    .restart local v6    # "_argIndex":I
    :catchall_4
    move-exception v0

    move/from16 v31, v6

    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    goto :goto_e

    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v6    # "_argIndex":I
    :catchall_5
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_e
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2352
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2353
    nop

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2355
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_f

    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v6    # "_argIndex":I
    :catchall_7
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_f
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 2356
    throw v0
.end method

.method public getWorkStatusPojoForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 81
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;"
        }
    .end annotation

    .line 1698
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1700
    .local v3, "_sql":Ljava/lang/String;
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v5

    .line 1701
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v6, 0x1

    .line 1702
    .local v6, "_argIndex":I
    if-nez v2, :cond_0

    .line 1703
    invoke-virtual {v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1705
    :cond_0
    invoke-virtual {v5, v6, v2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1707
    :goto_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 1708
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 1710
    :try_start_0
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v7, 0x0

    invoke-static {v0, v5, v4, v7}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v7, v0

    .line 1712
    .local v7, "_cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1713
    .local v0, "_cursorIndexOfId":I
    const/4 v8, 0x1

    .line 1714
    .local v8, "_cursorIndexOfState":I
    const/4 v9, 0x2

    .line 1715
    .local v9, "_cursorIndexOfOutput":I
    const/4 v10, 0x3

    .line 1716
    .local v10, "_cursorIndexOfRunAttemptCount":I
    const/4 v11, 0x4

    .line 1717
    .local v11, "_cursorIndexOfGeneration":I
    const/4 v12, 0x5

    .line 1718
    .local v12, "_cursorIndexOfRequiredNetworkType":I
    const/4 v13, 0x6

    .line 1719
    .local v13, "_cursorIndexOfRequiresCharging":I
    const/4 v14, 0x7

    .line 1720
    .local v14, "_cursorIndexOfRequiresDeviceIdle":I
    const/16 v15, 0x8

    .line 1721
    .local v15, "_cursorIndexOfRequiresBatteryNotLow":I
    const/16 v16, 0x9

    .line 1722
    .local v16, "_cursorIndexOfRequiresStorageNotLow":I
    const/16 v17, 0xa

    .line 1723
    .local v17, "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    const/16 v18, 0xb

    .line 1724
    .local v18, "_cursorIndexOfContentTriggerMaxDelayMillis":I
    const/16 v19, 0xc

    .line 1725
    .local v19, "_cursorIndexOfContentUriTriggers":I
    const/16 v20, 0xd

    .line 1726
    .local v20, "_cursorIndexOfInitialDelay":I
    const/16 v21, 0xe

    .line 1727
    .local v21, "_cursorIndexOfIntervalDuration":I
    const/16 v22, 0xf

    .line 1728
    .local v22, "_cursorIndexOfFlexDuration":I
    const/16 v23, 0x10

    .line 1729
    .local v23, "_cursorIndexOfBackoffPolicy":I
    const/16 v24, 0x11

    .line 1730
    .local v24, "_cursorIndexOfBackoffDelayDuration":I
    const/16 v25, 0x12

    .line 1731
    .local v25, "_cursorIndexOfLastEnqueueTime":I
    const/16 v26, 0x13

    .line 1732
    .local v26, "_cursorIndexOfPeriodCount":I
    const/16 v27, 0x14

    .line 1733
    .local v27, "_cursorIndexOfNextScheduleTimeOverride":I
    const/16 v28, 0x15

    .line 1734
    .local v28, "_cursorIndexOfStopReason":I
    :try_start_1
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v30, v29

    .line 1735
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v31, v29

    .line 1736
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v4, 0x0

    if-eqz v29, :cond_3

    .line 1737
    :try_start_2
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v33, v29

    .line 1738
    .local v33, "_tmpKey":Ljava/lang/String;
    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v33

    .end local v33    # "_tmpKey":Ljava/lang/String;
    .local v0, "_tmpKey":Ljava/lang/String;
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1739
    .local v33, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v33, :cond_1

    .line 1740
    :try_start_3
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v34

    .line 1741
    move-object/from16 v2, v33

    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v33, v2

    goto :goto_2

    .line 1850
    .end local v0    # "_tmpKey":Ljava/lang/String;
    .end local v2    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    goto/16 :goto_e

    .line 1743
    .restart local v0    # "_tmpKey":Ljava/lang/String;
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .restart local v30    # "_cursorIndexOfId":I
    .restart local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1744
    .local v2, "_tmpKey_1":Ljava/lang/String;
    move-object/from16 v29, v0

    move-object/from16 v0, v31

    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v29, "_tmpKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    .line 1745
    .local v31, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    if-nez v31, :cond_2

    .line 1746
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v31, v34

    .line 1747
    move-object/from16 v34, v3

    move-object/from16 v3, v31

    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v3, "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v34, "_sql":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 1850
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .end local v30    # "_cursorIndexOfId":I
    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move/from16 v31, v6

    goto/16 :goto_e

    .line 1745
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v2    # "_tmpKey_1":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .restart local v29    # "_tmpKey":Ljava/lang/String;
    .restart local v30    # "_cursorIndexOfId":I
    .restart local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .restart local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v34, v3

    .line 1749
    .end local v2    # "_tmpKey_1":Ljava/lang/String;
    .end local v3    # "_sql":Ljava/lang/String;
    .end local v29    # "_tmpKey":Ljava/lang/String;
    .end local v31    # "_tmpProgressCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .end local v33    # "_tmpTagsCollection":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v31, v0

    move/from16 v0, v30

    move-object/from16 v3, v34

    move-object/from16 v30, v4

    const/4 v4, 0x1

    goto :goto_1

    .line 1850
    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v3    # "_sql":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .restart local v34    # "_sql":Ljava/lang/String;
    goto/16 :goto_e

    .line 1750
    .end local v34    # "_sql":Ljava/lang/String;
    .local v0, "_cursorIndexOfId":I
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v8    # "_cursorIndexOfState":I
    .restart local v9    # "_cursorIndexOfOutput":I
    .restart local v10    # "_cursorIndexOfRunAttemptCount":I
    .restart local v11    # "_cursorIndexOfGeneration":I
    .restart local v12    # "_cursorIndexOfRequiredNetworkType":I
    .restart local v13    # "_cursorIndexOfRequiresCharging":I
    .restart local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .restart local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .restart local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .restart local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .restart local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .restart local v19    # "_cursorIndexOfContentUriTriggers":I
    .restart local v20    # "_cursorIndexOfInitialDelay":I
    .restart local v21    # "_cursorIndexOfIntervalDuration":I
    .restart local v22    # "_cursorIndexOfFlexDuration":I
    .restart local v23    # "_cursorIndexOfBackoffPolicy":I
    .restart local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .restart local v25    # "_cursorIndexOfLastEnqueueTime":I
    .restart local v26    # "_cursorIndexOfPeriodCount":I
    .restart local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .restart local v28    # "_cursorIndexOfStopReason":I
    .local v30, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v31, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    :cond_3
    move-object/from16 v34, v3

    move-object/from16 v4, v30

    move/from16 v30, v0

    move-object/from16 v0, v31

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v31    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v30, "_cursorIndexOfId":I
    .restart local v34    # "_sql":Ljava/lang/String;
    const/4 v2, -0x1

    :try_start_6
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1751
    invoke-direct {v1, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    .line 1752
    invoke-direct {v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    .line 1753
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1754
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1757
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1758
    const/16 v29, 0x0

    move-object/from16 v3, v29

    .local v29, "_tmpId":Ljava/lang/String;
    goto :goto_5

    .line 1760
    .end local v29    # "_tmpId":Ljava/lang/String;
    :cond_4
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v3, v31

    .line 1764
    .local v3, "_tmpId":Ljava/lang/String;
    :goto_5
    move/from16 v31, v6

    const/4 v6, 0x1

    .end local v6    # "_argIndex":I
    .local v31, "_argIndex":I
    :try_start_7
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1765
    .local v32, "_tmp":I
    sget-object v33, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static/range {v32 .. v32}, Landroidx/work/impl/model/WorkTypeConverters;->intToState(I)Landroidx/work/WorkInfo$State;

    move-result-object v37

    .line 1768
    .local v37, "_tmpState":Landroidx/work/WorkInfo$State;
    const/4 v6, 0x2

    invoke-interface {v7, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 1769
    const/4 v6, 0x0

    .local v6, "_tmp_1":[B
    goto :goto_6

    .line 1771
    .end local v6    # "_tmp_1":[B
    :cond_5
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1773
    .restart local v6    # "_tmp_1":[B
    :goto_6
    invoke-static {v6}, Landroidx/work/Data;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v38

    .line 1775
    .local v38, "_tmpOutput":Landroidx/work/Data;
    move-object/from16 v59, v6

    .end local v6    # "_tmp_1":[B
    .local v59, "_tmp_1":[B
    const/4 v6, 0x3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 1777
    .local v46, "_tmpRunAttemptCount":I
    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 1779
    .local v53, "_tmpGeneration":I
    const/16 v6, 0xd

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1781
    .local v39, "_tmpInitialDelay":J
    const/16 v6, 0xe

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 1783
    .local v41, "_tmpIntervalDuration":J
    const/16 v6, 0xf

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 1786
    .local v43, "_tmpFlexDuration":J
    const/16 v6, 0x10

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1787
    .local v6, "_tmp_2":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;

    move-result-object v47

    .line 1789
    .local v47, "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    move/from16 v60, v6

    .end local v6    # "_tmp_2":I
    .local v60, "_tmp_2":I
    const/16 v6, 0x11

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1791
    .local v48, "_tmpBackoffDelayDuration":J
    const/16 v6, 0x12

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 1793
    .local v50, "_tmpLastEnqueueTime":J
    const/16 v6, 0x13

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 1795
    .local v52, "_tmpPeriodCount":I
    const/16 v6, 0x14

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 1797
    .local v54, "_tmpNextScheduleTimeOverride":J
    const/16 v6, 0x15

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1801
    .local v56, "_tmpStopReason":I
    const/4 v6, 0x5

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1802
    .local v6, "_tmp_3":I
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->intToNetworkType(I)Landroidx/work/NetworkType;

    move-result-object v62

    .line 1805
    .local v62, "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    move/from16 v72, v6

    .end local v6    # "_tmp_3":I
    .local v72, "_tmp_3":I
    const/4 v6, 0x6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1806
    .local v6, "_tmp_4":I
    if-eqz v6, :cond_6

    const/16 v63, 0x1

    goto :goto_7

    :cond_6
    const/16 v63, 0x0

    .line 1809
    .local v63, "_tmpRequiresCharging":Z
    :goto_7
    move/from16 v73, v6

    .end local v6    # "_tmp_4":I
    .local v73, "_tmp_4":I
    const/4 v6, 0x7

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1810
    .local v6, "_tmp_5":I
    if-eqz v6, :cond_7

    const/16 v64, 0x1

    goto :goto_8

    :cond_7
    const/16 v64, 0x0

    .line 1813
    .local v64, "_tmpRequiresDeviceIdle":Z
    :goto_8
    move/from16 v74, v6

    .end local v6    # "_tmp_5":I
    .local v74, "_tmp_5":I
    const/16 v6, 0x8

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1814
    .local v6, "_tmp_6":I
    if-eqz v6, :cond_8

    const/16 v65, 0x1

    goto :goto_9

    :cond_8
    const/16 v65, 0x0

    .line 1817
    .local v65, "_tmpRequiresBatteryNotLow":Z
    :goto_9
    move/from16 v75, v6

    .end local v6    # "_tmp_6":I
    .local v75, "_tmp_6":I
    const/16 v6, 0x9

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1818
    .local v6, "_tmp_7":I
    if-eqz v6, :cond_9

    const/16 v66, 0x1

    goto :goto_a

    :cond_9
    const/16 v66, 0x0

    .line 1820
    .local v66, "_tmpRequiresStorageNotLow":Z
    :goto_a
    move/from16 v76, v6

    .end local v6    # "_tmp_7":I
    .local v76, "_tmp_7":I
    const/16 v6, 0xa

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    .line 1822
    .local v67, "_tmpContentTriggerUpdateDelayMillis":J
    const/16 v6, 0xb

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    .line 1825
    .local v69, "_tmpContentTriggerMaxDelayMillis":J
    const/16 v6, 0xc

    invoke-interface {v7, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_a

    .line 1826
    const/4 v6, 0x0

    .local v6, "_tmp_8":[B
    goto :goto_b

    .line 1828
    .end local v6    # "_tmp_8":[B
    :cond_a
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1830
    .restart local v6    # "_tmp_8":[B
    :goto_b
    sget-object v35, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->byteArrayToSetOfTriggers([B)Ljava/util/Set;

    move-result-object v71

    .line 1831
    .local v71, "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    new-instance v45, Landroidx/work/Constraints;

    move-object/from16 v61, v45

    invoke-direct/range {v61 .. v71}, Landroidx/work/Constraints;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    .line 1832
    .local v45, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v35, 0x0

    .line 1833
    .local v35, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v61, v6

    const/4 v6, 0x0

    .end local v6    # "_tmp_8":[B
    .local v61, "_tmp_8":[B
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v6, v36

    .line 1834
    .local v6, "_tmpKey_2":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    move-object/from16 v35, v36

    .line 1835
    if-nez v35, :cond_b

    .line 1836
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v36

    move-object/from16 v77, v35

    goto :goto_c

    .line 1835
    :cond_b
    move-object/from16 v77, v35

    .line 1838
    .end local v35    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v77, "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_c
    const/16 v35, 0x0

    .line 1839
    .local v35, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    move-object/from16 v78, v4

    const/4 v4, 0x0

    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v78, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v79, v29

    .line 1840
    .local v79, "_tmpKey_3":Ljava/lang/String;
    move-object/from16 v4, v79

    .end local v79    # "_tmpKey_3":Ljava/lang/String;
    .local v4, "_tmpKey_3":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    move-object/from16 v35, v36

    .line 1841
    if-nez v35, :cond_c

    .line 1842
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v36

    move-object/from16 v79, v35

    goto :goto_d

    .line 1841
    :cond_c
    move-object/from16 v79, v35

    .line 1844
    .end local v35    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    .local v79, "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    :goto_d
    new-instance v80, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move-object/from16 v35, v80

    move-object/from16 v36, v3

    move-object/from16 v57, v77

    move-object/from16 v58, v79

    invoke-direct/range {v35 .. v58}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    move-object/from16 v35, v80

    .line 1845
    .local v35, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    move-object/from16 v36, v0

    move-object/from16 v0, v35

    .end local v35    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v0, "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .local v36, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    move/from16 v6, v31

    move-object/from16 v0, v36

    move-object/from16 v4, v78

    .end local v0    # "_item":Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
    .end local v3    # "_tmpId":Ljava/lang/String;
    .end local v4    # "_tmpKey_3":Ljava/lang/String;
    .end local v6    # "_tmpKey_2":Ljava/lang/String;
    .end local v32    # "_tmp":I
    .end local v37    # "_tmpState":Landroidx/work/WorkInfo$State;
    .end local v38    # "_tmpOutput":Landroidx/work/Data;
    .end local v39    # "_tmpInitialDelay":J
    .end local v41    # "_tmpIntervalDuration":J
    .end local v43    # "_tmpFlexDuration":J
    .end local v45    # "_tmpConstraints":Landroidx/work/Constraints;
    .end local v46    # "_tmpRunAttemptCount":I
    .end local v47    # "_tmpBackoffPolicy":Landroidx/work/BackoffPolicy;
    .end local v48    # "_tmpBackoffDelayDuration":J
    .end local v50    # "_tmpLastEnqueueTime":J
    .end local v52    # "_tmpPeriodCount":I
    .end local v53    # "_tmpGeneration":I
    .end local v54    # "_tmpNextScheduleTimeOverride":J
    .end local v56    # "_tmpStopReason":I
    .end local v59    # "_tmp_1":[B
    .end local v60    # "_tmp_2":I
    .end local v61    # "_tmp_8":[B
    .end local v62    # "_tmpRequiredNetworkType":Landroidx/work/NetworkType;
    .end local v63    # "_tmpRequiresCharging":Z
    .end local v64    # "_tmpRequiresDeviceIdle":Z
    .end local v65    # "_tmpRequiresBatteryNotLow":Z
    .end local v66    # "_tmpRequiresStorageNotLow":Z
    .end local v67    # "_tmpContentTriggerUpdateDelayMillis":J
    .end local v69    # "_tmpContentTriggerMaxDelayMillis":J
    .end local v71    # "_tmpContentUriTriggers":Ljava/util/Set;, "Ljava/util/Set<Landroidx/work/Constraints$ContentUriTrigger;>;"
    .end local v72    # "_tmp_3":I
    .end local v73    # "_tmp_4":I
    .end local v74    # "_tmp_5":I
    .end local v75    # "_tmp_6":I
    .end local v76    # "_tmp_7":I
    .end local v77    # "_tmpTagsCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v79    # "_tmpProgressCollection_1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/work/Data;>;"
    goto/16 :goto_4

    .line 1847
    .end local v31    # "_argIndex":I
    .end local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v0, "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .local v4, "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v6, "_argIndex":I
    :cond_d
    move-object/from16 v36, v0

    move-object/from16 v78, v4

    move/from16 v31, v6

    .end local v0    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v4    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .restart local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1848
    nop

    .line 1850
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1851
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1854
    iget-object v0, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1848
    return-object v2

    .line 1850
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;"
    .end local v8    # "_cursorIndexOfState":I
    .end local v9    # "_cursorIndexOfOutput":I
    .end local v10    # "_cursorIndexOfRunAttemptCount":I
    .end local v11    # "_cursorIndexOfGeneration":I
    .end local v12    # "_cursorIndexOfRequiredNetworkType":I
    .end local v13    # "_cursorIndexOfRequiresCharging":I
    .end local v14    # "_cursorIndexOfRequiresDeviceIdle":I
    .end local v15    # "_cursorIndexOfRequiresBatteryNotLow":I
    .end local v16    # "_cursorIndexOfRequiresStorageNotLow":I
    .end local v17    # "_cursorIndexOfContentTriggerUpdateDelayMillis":I
    .end local v18    # "_cursorIndexOfContentTriggerMaxDelayMillis":I
    .end local v19    # "_cursorIndexOfContentUriTriggers":I
    .end local v20    # "_cursorIndexOfInitialDelay":I
    .end local v21    # "_cursorIndexOfIntervalDuration":I
    .end local v22    # "_cursorIndexOfFlexDuration":I
    .end local v23    # "_cursorIndexOfBackoffPolicy":I
    .end local v24    # "_cursorIndexOfBackoffDelayDuration":I
    .end local v25    # "_cursorIndexOfLastEnqueueTime":I
    .end local v26    # "_cursorIndexOfPeriodCount":I
    .end local v27    # "_cursorIndexOfNextScheduleTimeOverride":I
    .end local v28    # "_cursorIndexOfStopReason":I
    .end local v30    # "_cursorIndexOfId":I
    .end local v36    # "_collectionProgress":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroidx/work/Data;>;>;"
    .end local v78    # "_collectionTags":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_3
    move-exception v0

    goto :goto_e

    .end local v31    # "_argIndex":I
    .restart local v6    # "_argIndex":I
    :catchall_4
    move-exception v0

    move/from16 v31, v6

    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    goto :goto_e

    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .local v3, "_sql":Ljava/lang/String;
    .restart local v6    # "_argIndex":I
    :catchall_5
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_e
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1851
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 1852
    nop

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .end local p1    # "tag":Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 1854
    .end local v7    # "_cursor":Landroid/database/Cursor;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_f

    .end local v31    # "_argIndex":I
    .end local v34    # "_sql":Ljava/lang/String;
    .restart local v3    # "_sql":Ljava/lang/String;
    .restart local v6    # "_argIndex":I
    :catchall_7
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v31, v6

    .end local v3    # "_sql":Ljava/lang/String;
    .end local v6    # "_argIndex":I
    .restart local v31    # "_argIndex":I
    .restart local v34    # "_sql":Ljava/lang/String;
    :goto_f
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 1855
    throw v0
.end method

.method public getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 1342
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1343
    .local v0, "_stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1345
    .local v1, "_inputSize":I
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 1346
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, "_sql":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x0

    .line 1349
    .local v3, "_argCount":I
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 1350
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 1351
    .local v5, "_argIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1352
    .local v7, "_item":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1353
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1355
    :cond_0
    invoke-virtual {v4, v5, v7}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1357
    :goto_1
    nop

    .end local v7    # "_item":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 1358
    goto :goto_0

    .line 1359
    :cond_1
    iget-object v6, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v6}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v6

    const-string v7, "WorkProgress"

    const-string/jumbo v8, "workspec"

    const-string v9, "WorkTag"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$19;

    invoke-direct {v8, p0, v4}, Landroidx/work/impl/model/WorkSpecDao_Impl$19;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v9, v8}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v6

    return-object v6
.end method

.method public getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 2361
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 2362
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2363
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 2364
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 2365
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2367
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2369
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "workname"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$23;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$23;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;>;"
        }
    .end annotation

    .line 2030
    const-string v0, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 2032
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2033
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 2034
    .local v3, "_argIndex":I
    if-nez p1, :cond_0

    .line 2035
    invoke-virtual {v1, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 2037
    :cond_0
    invoke-virtual {v1, v3, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 2039
    :goto_0
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v4

    const-string/jumbo v5, "workspec"

    const-string/jumbo v6, "worktag"

    const-string v7, "WorkTag"

    const-string v8, "WorkProgress"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroidx/work/impl/model/WorkSpecDao_Impl$22;

    invoke-direct {v6, p0, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$22;-><init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-virtual {v4, v5, v2, v6}, Landroidx/room/InvalidationTracker;->createLiveData([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public hasUnfinishedWork()Z
    .locals 5

    .line 2816
    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    .line 2817
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 2818
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 2819
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    .line 2822
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2824
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2825
    .local v4, "_tmp":I
    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 2826
    .end local v4    # "_tmp":I
    .local v2, "_result":Z
    :cond_0
    goto :goto_0

    .line 2827
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    .line 2829
    .restart local v2    # "_result":Z
    :goto_0
    nop

    .line 2831
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2832
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2829
    return v2

    .line 2831
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2832
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 2833
    throw v2
.end method

.method public incrementGeneration(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 667
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 668
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 669
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 670
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 672
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 674
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 676
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 677
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 680
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 681
    nop

    .line 682
    return-void

    .line 679
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 680
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 681
    throw v2
.end method

.method public incrementPeriodCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 459
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 460
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 461
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 462
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 464
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 466
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 468
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 469
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 472
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 473
    nop

    .line 474
    return-void

    .line 471
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 472
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementPeriodCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 473
    throw v2
.end method

.method public incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 528
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 529
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 530
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 531
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 535
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 537
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 538
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    nop

    .line 541
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 542
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 539
    return v2

    .line 541
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 542
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 543
    throw v2
.end method

.method public insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 2
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 370
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 372
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertionAdapterOfWorkSpec:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 376
    throw v0
.end method

.method public markWorkSpecScheduled(Ljava/lang/String;J)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "startTime"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 615
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 616
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 617
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 618
    const/4 v1, 0x2

    .line 619
    if-nez p1, :cond_0

    .line 620
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 622
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 624
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 626
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 627
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    nop

    .line 630
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 631
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 628
    return v2

    .line 630
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 631
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfMarkWorkSpecScheduled:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 632
    throw v2
.end method

.method public pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V
    .locals 3

    .line 652
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 653
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 654
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 656
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 657
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 660
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 661
    nop

    .line 662
    return-void

    .line 659
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 660
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 661
    throw v1
.end method

.method public resetScheduledState()I
    .locals 3

    .line 637
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 638
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 639
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 641
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 642
    .local v1, "_result":I
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    nop

    .line 645
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 646
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 643
    return v1

    .line 645
    .end local v1    # "_result":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 646
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetScheduledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 647
    throw v1
.end method

.method public resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "overrideGeneration"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "overrideGeneration"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 593
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 594
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 595
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 596
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 600
    :goto_0
    const/4 v1, 0x2

    .line 601
    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 602
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 604
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 605
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 608
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 609
    nop

    .line 610
    return-void

    .line 607
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 608
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 609
    throw v2
.end method

.method public resetWorkSpecRunAttemptCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 549
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 550
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 551
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 552
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 554
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 556
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 558
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 559
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    nop

    .line 562
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 563
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 560
    return v2

    .line 562
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 563
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 564
    throw v2
.end method

.method public setCancelledState(Ljava/lang/String;)I
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 438
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetCancelledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 439
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 440
    .local v1, "_argIndex":I
    if-nez p1, :cond_0

    .line 441
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 443
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 445
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 447
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2

    .line 448
    .local v2, "_result":I
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    nop

    .line 451
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 452
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetCancelledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 449
    return v2

    .line 451
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 452
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetCancelledState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 453
    throw v2
.end method

.method public setLastEnqueueTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enqueueTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "enqueueTime"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 506
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueueTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 507
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 508
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 509
    const/4 v1, 0x2

    .line 510
    if-nez p1, :cond_0

    .line 511
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 513
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 515
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 517
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 518
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 521
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueueTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 522
    nop

    .line 523
    return-void

    .line 520
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 521
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetLastEnqueueTime:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 522
    throw v2
.end method

.method public setNextScheduleTimeOverride(Ljava/lang/String;J)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nextScheduleTimeOverrideMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "nextScheduleTimeOverrideMillis"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 571
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 572
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 573
    .local v1, "_argIndex":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 574
    const/4 v1, 0x2

    .line 575
    if-nez p1, :cond_0

    .line 576
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 580
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 582
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 583
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 586
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 587
    nop

    .line 588
    return-void

    .line 585
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 586
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetNextScheduleTimeOverride:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 587
    throw v2
.end method

.method public setOutput(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "output"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "output"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 479
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 480
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 481
    .local v1, "_argIndex":I
    invoke-static {p2}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v2

    .line 482
    .local v2, "_tmp":[B
    if-nez v2, :cond_0

    .line 483
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 487
    :goto_0
    const/4 v1, 0x2

    .line 488
    if-nez p1, :cond_1

    .line 489
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 491
    :cond_1
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 493
    :goto_1
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 495
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 496
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 499
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 500
    nop

    .line 501
    return-void

    .line 498
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 499
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetOutput:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 500
    throw v3
.end method

.method public setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I
    .locals 5
    .param p1, "state"    # Landroidx/work/WorkInfo$State;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "state",
            "id"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 414
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 415
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 416
    .local v1, "_argIndex":I
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-static {p1}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v2

    .line 417
    .local v2, "_tmp":I
    int-to-long v3, v2

    invoke-interface {v0, v1, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 418
    const/4 v1, 0x2

    .line 419
    if-nez p2, :cond_0

    .line 420
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {v0, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 424
    :goto_0
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 426
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v3

    .line 427
    .local v3, "_result":I
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    nop

    .line 430
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 431
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 428
    return v3

    .line 430
    .end local v3    # "_result":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 431
    iget-object v4, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetState:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v4, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 432
    throw v3
.end method

.method public setStopReason(Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "stopReason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "stopReason"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 687
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetStopReason:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 688
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    const/4 v1, 0x1

    .line 689
    .local v1, "_argIndex":I
    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 690
    const/4 v1, 0x2

    .line 691
    if-nez p1, :cond_0

    .line 692
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 694
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 696
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 698
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 699
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 702
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetStopReason:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 703
    nop

    .line 704
    return-void

    .line 701
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 702
    iget-object v3, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfSetStopReason:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v3, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 703
    throw v2
.end method

.method public updateWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 2
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workSpec"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 382
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 384
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__updateAdapterOfWorkSpec:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 385
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 388
    nop

    .line 389
    return-void

    .line 387
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 388
    throw v0
.end method
