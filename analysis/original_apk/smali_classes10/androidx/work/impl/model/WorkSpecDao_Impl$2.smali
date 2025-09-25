.class Landroidx/work/impl/model/WorkSpecDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/work/impl/model/WorkSpecDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V
    .locals 18
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Landroidx/work/impl/model/WorkSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 176
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 180
    :goto_0
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v2

    .line 181
    .local v2, "_tmp":I
    const/4 v3, 0x2

    int-to-long v4, v2

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 182
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v4, 0x3

    if-nez v3, :cond_1

    .line 183
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 185
    :cond_1
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 187
    :goto_1
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v4, 0x4

    if-nez v3, :cond_2

    .line 188
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 190
    :cond_2
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 192
    :goto_2
    iget-object v3, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v3}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v3

    .line 193
    .local v3, "_tmp_1":[B
    const/4 v4, 0x5

    if-nez v3, :cond_3

    .line 194
    invoke-interface {v0, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 196
    :cond_3
    invoke-interface {v0, v4, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 198
    :goto_3
    iget-object v4, v1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v4}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v4

    .line 199
    .local v4, "_tmp_2":[B
    const/4 v5, 0x6

    if-nez v4, :cond_4

    .line 200
    invoke-interface {v0, v5}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 202
    :cond_4
    invoke-interface {v0, v5, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 204
    :goto_4
    const/4 v5, 0x7

    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 205
    const/16 v5, 0x8

    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 206
    const/16 v5, 0x9

    iget-wide v6, v1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {v0, v5, v6, v7}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 207
    iget v5, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v5, v5

    const/16 v7, 0xa

    invoke-interface {v0, v7, v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 208
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object v5, v1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    move-result v5

    .line 209
    .local v5, "_tmp_3":I
    const/16 v6, 0xb

    int-to-long v7, v5

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 210
    const/16 v6, 0xc

    iget-wide v7, v1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 211
    const/16 v6, 0xd

    iget-wide v7, v1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 212
    const/16 v6, 0xe

    iget-wide v7, v1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 213
    const/16 v6, 0xf

    iget-wide v7, v1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {v0, v6, v7, v8}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 214
    iget-boolean v6, v1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 215
    .local v6, "_tmp_4":I
    const/16 v7, 0x10

    int-to-long v8, v6

    invoke-interface {v0, v7, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 216
    sget-object v7, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    iget-object v7, v1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v7}, Landroidx/work/impl/model/WorkTypeConverters;->outOfQuotaPolicyToInt(Landroidx/work/OutOfQuotaPolicy;)I

    move-result v7

    .line 217
    .local v7, "_tmp_5":I
    const/16 v8, 0x11

    int-to-long v9, v7

    invoke-interface {v0, v8, v9, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getPeriodCount()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x12

    invoke-interface {v0, v10, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x13

    invoke-interface {v0, v10, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 220
    const/16 v8, 0x14

    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v9

    invoke-interface {v0, v8, v9, v10}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x15

    invoke-interface {v0, v10, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroidx/work/impl/model/WorkSpec;->getStopReason()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x16

    invoke-interface {v0, v10, v8, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 223
    iget-object v8, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 224
    .local v8, "_tmpConstraints":Landroidx/work/Constraints;
    const/16 v14, 0x18

    const/16 v15, 0x17

    if-eqz v8, :cond_6

    .line 225
    sget-object v16, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {v8}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/NetworkType;)I

    move-result v9

    .line 226
    .local v9, "_tmp_6":I
    int-to-long v10, v9

    invoke-interface {v0, v15, v10, v11}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 227
    invoke-virtual {v8}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v10

    .line 228
    .local v10, "_tmp_7":I
    int-to-long v12, v10

    invoke-interface {v0, v14, v12, v13}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 229
    invoke-virtual {v8}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v12

    .line 230
    .local v12, "_tmp_8":I
    int-to-long v13, v12

    const/16 v15, 0x19

    invoke-interface {v0, v15, v13, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 231
    invoke-virtual {v8}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v13

    .line 232
    .local v13, "_tmp_9":I
    int-to-long v14, v13

    const/16 v11, 0x1a

    invoke-interface {v0, v11, v14, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 233
    invoke-virtual {v8}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v11

    .line 234
    .local v11, "_tmp_10":I
    int-to-long v14, v11

    move/from16 v17, v2

    const/16 v2, 0x1b

    .end local v2    # "_tmp":I
    .local v17, "_tmp":I
    invoke-interface {v0, v2, v14, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 235
    invoke-virtual {v8}, Landroidx/work/Constraints;->getContentTriggerUpdateDelayMillis()J

    move-result-wide v14

    const/16 v2, 0x1c

    invoke-interface {v0, v2, v14, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 236
    invoke-virtual {v8}, Landroidx/work/Constraints;->getContentTriggerMaxDelayMillis()J

    move-result-wide v14

    const/16 v2, 0x1d

    invoke-interface {v0, v2, v14, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 237
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters;->INSTANCE:Landroidx/work/impl/model/WorkTypeConverters;

    invoke-virtual {v8}, Landroidx/work/Constraints;->getContentUriTriggers()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/impl/model/WorkTypeConverters;->setOfTriggersToByteArray(Ljava/util/Set;)[B

    move-result-object v2

    .line 238
    .local v2, "_tmp_11":[B
    if-nez v2, :cond_5

    .line 239
    const/16 v14, 0x1e

    invoke-interface {v0, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 241
    :cond_5
    const/16 v14, 0x1e

    invoke-interface {v0, v14, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 243
    .end local v2    # "_tmp_11":[B
    .end local v9    # "_tmp_6":I
    .end local v10    # "_tmp_7":I
    .end local v11    # "_tmp_10":I
    .end local v12    # "_tmp_8":I
    .end local v13    # "_tmp_9":I
    :goto_5
    goto :goto_6

    .line 244
    .end local v17    # "_tmp":I
    .local v2, "_tmp":I
    :cond_6
    move/from16 v17, v2

    .end local v2    # "_tmp":I
    .restart local v17    # "_tmp":I
    invoke-interface {v0, v15}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 245
    invoke-interface {v0, v14}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 246
    const/16 v2, 0x19

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 247
    const/16 v2, 0x1a

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 248
    const/16 v2, 0x1b

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 249
    const/16 v2, 0x1c

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 250
    const/16 v2, 0x1d

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 251
    const/16 v2, 0x1e

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    .line 253
    :goto_6
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/16 v9, 0x1f

    if-nez v2, :cond_7

    .line 254
    invoke-interface {v0, v9}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 256
    :cond_7
    iget-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v9, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 258
    :goto_7
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 167
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object v0
.end method
